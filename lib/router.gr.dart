// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:food_delivery_app/ui/splash/splash_view.dart';
import 'package:food_delivery_app/ui/main/main_view.dart';
import 'package:food_delivery_app/ui/home/home_view.dart';

class Routes {
  static const String splashView = '/';
  static const String mainView = '/main-view';
  static const String homeView = '/home-view';
  static const all = <String>{
    splashView,
    mainView,
    homeView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashView, page: SplashView),
    RouteDef(Routes.mainView, page: MainView),
    RouteDef(Routes.homeView, page: HomeView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashView: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashView(),
        settings: data,
      );
    },
    MainView: (RouteData data) {
      var args =
          data.getArgs<MainViewArguments>(orElse: () => MainViewArguments());
      return MaterialPageRoute<dynamic>(
        builder: (context) => MainView(key: args.key),
        settings: data,
      );
    },
    HomeView: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
  };
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//MainView arguments holder class
class MainViewArguments {
  final Key key;
  MainViewArguments({this.key});
}
