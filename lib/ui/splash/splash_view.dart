import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/constants.dart';
import 'package:food_delivery_app/ui/splash/splash_view_model.dart';
import 'package:food_delivery_app/widgets/splash.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
        viewModelBuilder: () => SplashViewModel(),
        onModelReady: (model) => model.init(context),
        builder: (context, model, widget) {
          return Splash(
              image: Image.asset('assets/logo.png'),
              title: Text("Food Delyvery App",
                  style: TextStyle(
                      fontSize: 40,
                      color: Constants.primaryColor,
                      fontWeight: FontWeight.w900)),
              photoSize: 100.0,
              backgroundColor: Constants.backroundColor,
              loaderColor: Constants.primaryColor);
        });
  }
}
