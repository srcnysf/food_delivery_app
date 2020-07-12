import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:food_delivery_app/models/meal.dart';
import 'package:food_delivery_app/ui/base/app_base_view_model.dart';
import 'package:hive/hive.dart';

class BasketViewModel extends AppBaseViewModel {
  Box get basket => repository.basketBox;
  Box get orders => repository.ordersBox;

  int totalPrice = 0;

  void plusMeal(int index) {
    var meal = basket.getAt(index) as Meal;
    if (meal.count <= 20) meal.count += 1;
    setTotalPrice();

    notifyListeners();
  }

  void minusMeal(int index) {
    var meal = basket.getAt(index) as Meal;
    if (meal.count > 1) meal.count -= 1;
    setTotalPrice();
    notifyListeners();
  }

  setTotalPrice() {
    totalPrice = 0;
    for (int i = 0; i < basket.length; i++) {
      var meal = basket.getAt(i) as Meal;
      totalPrice += meal.price * meal.count;
    }
    notifyListeners();
  }

  setOrder() async {
    setBusy(true);
    await Hive.openBox('orders');
    repository.setOrders(Hive.box('orders'));
    for (int i = 0; i < basket.length; i++) {
      var meal = basket.getAt(i) as Meal;
      orders.put(meal.id, meal);
    }
    for (int i = 0; i < basket.length; i++) {
      var meal = basket.getAt(i) as Meal;
      basket.delete(meal.id);
    }
    repository.setOrders(orders);
    repository.setBasket(basket);
    setBusy(false);
    notifyListeners();
  }
}
