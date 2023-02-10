import 'package:etiya_assignment/models/user.dart';

abstract class HomePageState {
  const HomePageState();
}

class HomePageInitial extends HomePageState {
  const HomePageInitial();
}

class HomePageEmpty extends HomePageState {
  const HomePageEmpty();
}

class HomePageDone extends HomePageState {
  final List<User> user;
  final int skip;
  final int total;
  final int limit;

  const HomePageDone(this.user, this.skip, this.total, this.limit);
}
