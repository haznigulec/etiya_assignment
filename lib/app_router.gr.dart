// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomeView(),
      );
    },
    UserDetailRoute.name: (routeData) {
      final args = routeData.argsAs<UserDetailRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: UserDetailView(
          key: args.key,
          user: args.user,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        RouteConfig(
          UserDetailRoute.name,
          path: '/detail',
        ),
      ];
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [UserDetailView]
class UserDetailRoute extends PageRouteInfo<UserDetailRouteArgs> {
  UserDetailRoute({
    Key? key,
    required User user,
  }) : super(
          UserDetailRoute.name,
          path: '/detail',
          args: UserDetailRouteArgs(
            key: key,
            user: user,
          ),
        );

  static const String name = 'UserDetailRoute';
}

class UserDetailRouteArgs {
  const UserDetailRouteArgs({
    this.key,
    required this.user,
  });

  final Key? key;

  final User user;

  @override
  String toString() {
    return 'UserDetailRouteArgs{key: $key, user: $user}';
  }
}
