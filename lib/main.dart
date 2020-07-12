import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/constants.dart';
import 'package:food_delivery_app/locator.dart';
import 'package:food_delivery_app/models/response/meal_detail_response.dart';
import 'package:food_delivery_app/router.gr.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  Hive.registerAdapter(MealDetailResponseAdapter());
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
