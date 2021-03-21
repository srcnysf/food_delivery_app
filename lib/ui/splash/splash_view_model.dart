import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/ui/base/app_base_view_model.dart';

import '../../router.gr.dart';

class SplashViewModel extends AppBaseViewModel {
  init(BuildContext context) {
    openHive();
    new Future<void>.delayed(
        Duration(seconds: 3),
        () => AutoRouter.of(context).pushAndRemoveUntil(MainView(),
            predicate: (Route<dynamic> route) => false));
  }
}
