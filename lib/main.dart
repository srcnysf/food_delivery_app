import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/constants.dart';
import 'package:food_delivery_app/locator.dart';
import 'package:food_delivery_app/router.gr.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Constants.primaryColor,
          bottomNavigationBarTheme:
              BottomNavigationBarThemeData(backgroundColor: Colors.white),
          cardColor: Colors.white),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Constants.primaryColor,
          scaffoldBackgroundColor: Constants.backroundColor,
          cardColor: Constants.boxItemGrey),
      initialRoute: Routes.splashView,
      onGenerateRoute: Router(),
    );
  }
}
