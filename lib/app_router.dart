import 'package:auto_route/auto_route.dart';
import 'package:etiya_assignment/models/user.dart';
import 'package:etiya_assignment/pages/home_page/home_page.dart';
import 'package:etiya_assignment/pages/user_detail_page.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[AutoRoute(page: HomeView, path: "/", initial: true), AutoRoute(page: UserDetailView, path: "/detail")],
)
class AppRouter extends _$AppRouter {}
