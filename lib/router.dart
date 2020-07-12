import 'package:auto_route/auto_route_annotations.dart';
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
  routes: <AutoRoute>[
    MaterialRoute(page: SplashView, initial: true),
    MaterialRoute(page: MainView),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: BasketView),
    MaterialRoute(page: OrdersView),
    MaterialRoute(page: SearchView),
    MaterialRoute(page: FavouredView),
    MaterialRoute(page: NearView),
    MaterialRoute(page: CategoriesView),
  ],
)
class $Router {}
