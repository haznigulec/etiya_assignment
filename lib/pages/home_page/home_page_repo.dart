import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:etiya_assignment/models/user.dart';

abstract class HomePageRepo {
  Future<Map> getUser(String filter, int skip);
}

class SubHomePageRepo implements HomePageRepo {
  @override
  Future<Map> getUser(String filter, int skip) async {
    var response = await Dio().get('https://dummyjson.com/users/search?q=$filter&skip=$skip&limit=20');
    if (response.statusCode == HttpStatus.ok) {
      var jsonBody = response.data;
      List<User> test = List<User>.from(jsonBody["users"].map((x) => User.fromJson(x)).toList());
      return {"total": jsonBody["total"], "limit": jsonBody["limit"], "skip": jsonBody["skip"], "users": test};
    } else {
      throw Error();
    }
  }
}
