import 'package:etiya_assignment/app_router.dart';
import 'package:etiya_assignment/pages/home_page/home_page_cubit.dart';
import 'package:etiya_assignment/pages/home_page/home_page.dart';
import 'package:etiya_assignment/pages/home_page/home_page_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomePageCubit(SubHomePageRepo())),
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
