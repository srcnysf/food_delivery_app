import 'package:flutter/material.dart';
import 'package:food_delivery_app/di/locator.dart';
import 'package:food_delivery_app/route/router.gr.dart';
import 'package:hive/hive.dart';

import 'constants/theme.dart';
import 'models/meal.dart';
import 'package:hive_flutter/hive_flutter.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(MealAdapter());
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      theme: ThemeConst.light,
      darkTheme: ThemeConst.dark,
    );
  }
}
