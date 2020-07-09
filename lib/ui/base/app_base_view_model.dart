import 'package:flutter/material.dart';
import 'package:food_delivery_app/repository/repository.dart';
import 'package:stacked/stacked.dart';

import '../../locator.dart';

class AppBaseViewModel extends BaseViewModel {
  final Repository repository = locator<Repository>();
  String errorMessage = '';
}
