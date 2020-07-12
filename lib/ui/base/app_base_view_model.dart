import 'package:flutter/material.dart';
import 'package:food_delivery_app/repository/repository.dart';
import 'package:hive/hive.dart';
import 'package:stacked/stacked.dart';

import '../../locator.dart';

class AppBaseViewModel extends BaseViewModel {
  final Repository repository = locator<Repository>();
  String errorMessage = '';

  Future openHive() async {
    await Hive.openBox('meals');
    await Hive.openBox('orders');
    return this;
  }

  @override
  Future<void> dispose() async {
    if (Hive.box('meals').isOpen) Hive.box('meals').compact();
    if (Hive.box('orders').isOpen) Hive.box('orders').compact();
    super.dispose();
  }
}
