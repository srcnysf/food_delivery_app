import 'package:flutter/material.dart';
import 'package:food_delivery_app/ui/home/home_view_model.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, model, widget) => Container(

          
        ));
  }
}
