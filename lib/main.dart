import 'package:flutter/material.dart';
import 'package:food_delivery_app/locator.dart';
import 'package:food_delivery_app/router.gr.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import 'constants/theme.dart';
import 'models/meal.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  Hive.registerAdapter(MealAdapter());
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeConst.light,
      darkTheme: ThemeConst.dark,
      initialRoute: Routes.splashView,
      onGenerateRoute: Router(),
    );
  }
}
