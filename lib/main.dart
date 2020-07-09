import 'package:flutter/material.dart';
import 'package:food_delivery_app/locator.dart';

import 'ui/home/home.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: HomeView(),
    );
  }
}
