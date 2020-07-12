import 'package:flutter/material.dart';
import 'package:food_delivery_app/repository/repository.dart';
import 'package:hive/hive.dart';
import 'package:stacked/stacked.dart';

import '../../locator.dart';

class AppBaseViewModel extends BaseViewModel {
  final Repository repository = locator<Repository>();
  String errorMessage = '';
  Box get basket => repository.basketBox;

  Future openHive() async {
    await Hive.openBox('basket');
    await Hive.openBox('orders');
    await Hive.openBox('favoured');
    return this;
  }

  @override
  Future<void> dispose() async {
    if (Hive.box('basket').isOpen) Hive.box('basket').compact();
    if (Hive.box('orders').isOpen) Hive.box('orders').compact();
    if (Hive.box('favoured').isOpen) Hive.box('favoured').compact();
    super.dispose();
  }
}
