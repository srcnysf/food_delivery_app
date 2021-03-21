import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:food_delivery_app/models/meal.dart';
import 'package:food_delivery_app/ui/base/app_base_view_model.dart';
import 'package:hive/hive.dart';

class BasketViewModel extends AppBaseViewModel {
  Box? get basket => repository!.basketBox;
  Box? get orders => repository!.ordersBox;

  int totalPrice = 0;

  void plusMeal(int index) {
    var meal = basket!.getAt(index) as Meal;
    if (meal.count! <= 20) {
      var i = meal.count!;
      i++;
      meal.count = i;
    }
    setTotalPrice();

    notifyListeners();
  }

  void minusMeal(int index) {
    var meal = basket!.getAt(index) as Meal;
    if (meal.count! > 1) {
      var i = meal.count!;
      i--;
      meal.count = i;
    }
    setTotalPrice();
    notifyListeners();
  }

  setTotalPrice() {
    totalPrice = 0;
    for (int i = 0; i < basket!.length; i++) {
      var meal = basket!.getAt(i) as Meal;
      totalPrice += meal.price! * meal.count!;
    }
    notifyListeners();
  }

  setOrder() async {
    setBusy(true);
    await Hive.openBox('orders');
    repository!.setOrders(Hive.box('orders'));
    for (int i = 0; i < basket!.length; i++) {
      var meal = basket!.getAt(i) as Meal;
      orders!.put(meal.id, meal);
    }
    await repository!.setOrders(orders);
    basket!.clear();
    await repository!.setBasket(basket);
    notifyListeners();
    setBusy(false);
  }
}
