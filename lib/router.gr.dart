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
import 'package:food_delivery_app/ui/basket/basket_view.dart';
import 'package:food_delivery_app/ui/orders/orders_view.dart';
import 'package:food_delivery_app/ui/search/search_view.dart';
import 'package:food_delivery_app/ui/favoured/favoured_view.dart';
import 'package:food_delivery_app/ui/near_you/near_view.dart';
import 'package:food_delivery_app/ui/categories/categories_view.dart';

class Routes {
  static const String splashView = '/';
  static const String mainView = '/main-view';
  static const String homeView = '/home-view';
  static const String basketView = '/basket-view';
  static const String ordersView = '/orders-view';
  static const String searchView = '/search-view';
  static const String favouredView = '/favoured-view';
  static const String nearView = '/near-view';
  static const String categoriesView = '/categories-view';
  static const all = <String>{
    splashView,
    mainView,
    homeView,
    basketView,
    ordersView,
    searchView,
    favouredView,
    nearView,
    categoriesView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashView, page: SplashView),
    RouteDef(Routes.mainView, page: MainView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.basketView, page: BasketView),
    RouteDef(Routes.ordersView, page: OrdersView),
    RouteDef(Routes.searchView, page: SearchView),
    RouteDef(Routes.favouredView, page: FavouredView),
    RouteDef(Routes.nearView, page: NearView),
    RouteDef(Routes.categoriesView, page: CategoriesView),
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
    BasketView: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => BasketView(),
        settings: data,
      );
    },
    OrdersView: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OrdersView(),
        settings: data,
      );
    },
    SearchView: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SearchView(),
        settings: data,
      );
    },
    FavouredView: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => FavouredView(),
        settings: data,
      );
    },
    NearView: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => NearView(),
        settings: data,
      );
    },
    CategoriesView: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CategoriesView(),
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
