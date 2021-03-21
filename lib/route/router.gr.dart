// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;

import '../ui/basket/basket_view.dart' as _i5;
import '../ui/categories/categories_view.dart' as _i10;
import '../ui/favoured/favoured_view.dart' as _i8;
import '../ui/home/home_view.dart' as _i4;
import '../ui/main/main_view.dart' as _i3;
import '../ui/near_you/near_view.dart' as _i9;
import '../ui/orders/orders_view.dart' as _i6;
import '../ui/search/search_view.dart' as _i7;
import '../ui/splash/splash_view.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashView.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry,
          child: _i2.SplashView(),
          maintainState: true,
          fullscreenDialog: false);
    },
    MainView.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry,
          child: const _i3.MainView(),
          maintainState: true,
          fullscreenDialog: false);
    },
    HomeView.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry,
          child: _i4.HomeView(),
          maintainState: true,
          fullscreenDialog: false);
    },
    BasketView.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry,
          child: _i5.BasketView(),
          maintainState: true,
          fullscreenDialog: false);
    },
    OrdersView.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry,
          child: _i6.OrdersView(),
          maintainState: true,
          fullscreenDialog: false);
    },
    SearchView.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry,
          child: _i7.SearchView(),
          maintainState: true,
          fullscreenDialog: false);
    },
    FavouredView.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry,
          child: _i8.FavouredView(),
          maintainState: true,
          fullscreenDialog: false);
    },
    NearView.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry,
          child: _i9.NearView(),
          maintainState: true,
          fullscreenDialog: false);
    },
    CategoriesView.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry,
          child: _i10.CategoriesView(),
          maintainState: true,
          fullscreenDialog: false);
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashView.name,
            path: '/', fullMatch: false, usesTabsRouter: false),
        _i1.RouteConfig(MainView.name,
            path: '/main-view', fullMatch: false, usesTabsRouter: false),
        _i1.RouteConfig(HomeView.name,
            path: '/home-view', fullMatch: false, usesTabsRouter: false),
        _i1.RouteConfig(BasketView.name,
            path: '/basket-view', fullMatch: false, usesTabsRouter: false),
        _i1.RouteConfig(OrdersView.name,
            path: '/orders-view', fullMatch: false, usesTabsRouter: false),
        _i1.RouteConfig(SearchView.name,
            path: '/search-view', fullMatch: false, usesTabsRouter: false),
        _i1.RouteConfig(FavouredView.name,
            path: '/favoured-view', fullMatch: false, usesTabsRouter: false),
        _i1.RouteConfig(NearView.name,
            path: '/near-view', fullMatch: false, usesTabsRouter: false),
        _i1.RouteConfig(CategoriesView.name,
            path: '/categories-view', fullMatch: false, usesTabsRouter: false)
      ];
}

class SplashView extends _i1.PageRouteInfo {
  const SplashView() : super(name, path: '/');

  static const String name = 'SplashView';
}

class MainView extends _i1.PageRouteInfo {
  const MainView() : super(name, path: '/main-view');

  static const String name = 'MainView';
}

class HomeView extends _i1.PageRouteInfo {
  const HomeView() : super(name, path: '/home-view');

  static const String name = 'HomeView';
}

class BasketView extends _i1.PageRouteInfo {
  const BasketView() : super(name, path: '/basket-view');

  static const String name = 'BasketView';
}

class OrdersView extends _i1.PageRouteInfo {
  const OrdersView() : super(name, path: '/orders-view');

  static const String name = 'OrdersView';
}

class SearchView extends _i1.PageRouteInfo {
  const SearchView() : super(name, path: '/search-view');

  static const String name = 'SearchView';
}

class FavouredView extends _i1.PageRouteInfo {
  const FavouredView() : super(name, path: '/favoured-view');

  static const String name = 'FavouredView';
}

class NearView extends _i1.PageRouteInfo {
  const NearView() : super(name, path: '/near-view');

  static const String name = 'NearView';
}

class CategoriesView extends _i1.PageRouteInfo {
  const CategoriesView() : super(name, path: '/categories-view');

  static const String name = 'CategoriesView';
}
