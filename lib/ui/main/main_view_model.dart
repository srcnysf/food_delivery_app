import 'package:flutter/material.dart';
import 'package:food_delivery_app/ui/base/app_base_view_model.dart';

class MainViewModel extends AppBaseViewModel {
 int _currentTabIndex = 0;
  int get currentTabIndex => _currentTabIndex;

  bool _reverse = false;
  bool get reverse => _reverse;

  void setTabIndex(int value) {
    if (value < _currentTabIndex) {
      _reverse = true;
    }
    _currentTabIndex = value;
    notifyListeners();
  }
  
}
