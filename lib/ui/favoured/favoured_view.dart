import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/constants.dart';
import 'package:food_delivery_app/models/meal.dart';
import 'package:food_delivery_app/widgets/order_item.dart';
import 'package:stacked/stacked.dart';

import 'favoured_view_model.dart';

class FavouredView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FavouredViewModel>.reactive(
        viewModelBuilder: () => FavouredViewModel(),
        onModelReady: (model) => model.init(),
        disposeViewModel: false,
        builder: (context, model, widget) => model.isBusy
            ? Center(child: CircularProgressIndicator())
            : Scaffold(
                appBar: AppBar(
                  title: Text(
                    "Favoured",
                    style: TextStyle(color: Constants.titleColor),
                  ),
                ),
                body: model.favoured.length == null
                    ? Center(
                        child: Text("You have no Favourite Meals"),
                      )
                    : Column(
                        children: [
                          Expanded(
                            child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: model.favoured.length,
                              padding: EdgeInsets.all(4),
                              itemBuilder: (context, index) {
                                var meal = model.favoured.getAt(index) as Meal;
                                return OrdersMealListItem(meal: meal);
                              },
                            ),
                          ),
                          SizedBox(
                            height: 70,
                          )
                        ],
                      ),
              ));
  }
}
