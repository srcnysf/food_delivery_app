import 'package:food_delivery_app/ui/base/app_base_view_model.dart';
import 'package:hive/hive.dart';

class OrdersViewModel extends AppBaseViewModel {
  Box get orders => repository.ordersBox;

  init() async {
    await Hive.openBox('orders');
    repository.setOrders(Hive.box('orders'));
  }
}
