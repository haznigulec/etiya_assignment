// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:etiya_assignment/models/user.dart';
import 'package:etiya_assignment/pages/home_page/home_page_cubit.dart';
import 'package:etiya_assignment/pages/home_page/home_page_state.dart';
import 'package:etiya_assignment/widgets/appbar.dart';
import 'package:etiya_assignment/widgets/list_tile.dart';
import 'package:etiya_assignment/widgets/process.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  final TextEditingController _filter = TextEditingController();
  List<User> userResult = [];
  int pageCount = 1;
  bool initialAdd = true;
  @override
  initState() {
    super.initState();

    context.read<HomePageCubit>().getUsers("", 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: const MyAppBar(),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .89,
            width: MediaQuery.of(context).size.width * .95,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextField(
                  controller: _filter,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      hintText: "Search User",
                      fillColor: Colors.grey.withOpacity(.1),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Colors.grey.withOpacity(.4)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Colors.grey.withOpacity(.4)),
                      ),
                      suffixIcon: IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(Icons.close, color: Colors.black.withOpacity(0.7)),
                        onPressed: () async {
                          _filter.clear();
                          userResult.clear();
                          userResult.addAll(await context.read<HomePageCubit>().getUsersLazyLoad("", 0));
                          pageCount = 1;
                          setState(() {});
                        },
                      )),
                  onChanged: (value) async {
                    await Future.delayed(const Duration(milliseconds: 500));
                    if (value == _filter.text) {
                      userResult.clear();
                      userResult.addAll(await context.read<HomePageCubit>().getUsersLazyLoad(_filter.text, 0));
                      pageCount = 1;
                      setState(() {});
                    }
                  },
                ),
                const SizedBox(height: 10),
                BlocBuilder<HomePageCubit, HomePageState>(builder: (context, state) {
                  if (state is HomePageInitial) {
                    return const Expanded(child: Center(child: Process()));
                  } else if (state is HomePageDone) {
                    if (initialAdd) {
                      userResult.addAll(state.user);
                      initialAdd = false;
                    }
                    return Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * .8,
                        width: MediaQuery.of(context).size.width * .95,
                        child: LazyLoadScrollView(
                          scrollOffset: 800,
                          onEndOfPage: () async {
                            if (userResult.length < state.total) {
                              userResult.addAll(await context.read<HomePageCubit>().getUsersLazyLoad(_filter.text, pageCount * 20));
                              pageCount++;
                              setState(() {});
                              log(userResult.length.toString());
                            }
                          },
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            itemCount: userResult.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (_, index) {
                              return MyListTile(user: userResult[index]);
                            },
                          ),
                        ),
                      ),
                    );
                  } else {
                    return const Text("Somethink goes wrong");
                  }
                })
              ],
            ),
          ),
        ));
  }
}
