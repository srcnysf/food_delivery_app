import 'package:auto_route/auto_route.dart';
import 'package:food_delivery_app/ui/basket/basket_view.dart';
import 'package:food_delivery_app/ui/categories/categories_view.dart';
import 'package:food_delivery_app/ui/favoured/favoured_view.dart';
import 'package:food_delivery_app/ui/home/home_view.dart';
import 'package:food_delivery_app/ui/main/main_view.dart';
import 'package:food_delivery_app/ui/near_you/near_view.dart';
import 'package:food_delivery_app/ui/orders/orders_view.dart';
import 'package:food_delivery_app/ui/search/search_view.dart';
import 'package:food_delivery_app/ui/splash/splash_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashView, initial: true),
    AutoRoute(page: MainView),
    AutoRoute(page: HomeView),
    AutoRoute(page: BasketView),
    AutoRoute(page: OrdersView),
    AutoRoute(page: SearchView),
    AutoRoute(page: FavouredView),
    AutoRoute(page: NearView),
    AutoRoute(page: CategoriesView),
  ],
)
class $AppRouter {}
