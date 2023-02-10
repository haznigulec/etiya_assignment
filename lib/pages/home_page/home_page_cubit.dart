// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:etiya_assignment/models/user.dart';
import 'package:etiya_assignment/pages/home_page/home_page_repo.dart';
import 'package:etiya_assignment/pages/home_page/home_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit(this._homePageRepo) : super(const HomePageInitial());

  final HomePageRepo _homePageRepo;

  Future<void> getUsers(String filter, int skip) async {
    Map response = await _homePageRepo.getUser(filter, skip);
    emit(HomePageDone(response["users"], response["skip"], response["total"], response["limit"]));
  }

  Future<List<User>> getUsersLazyLoad(String filter, int skip) async {
    Map response = await _homePageRepo.getUser(filter, skip);
    return response["users"];
  }
}
