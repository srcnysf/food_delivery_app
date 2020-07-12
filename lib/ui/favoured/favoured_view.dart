import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/constants.dart';
import 'package:food_delivery_app/models/meal.dart';
import 'package:food_delivery_app/ui/meal_detail/detail_view.dart';
import 'package:food_delivery_app/widgets/order_item.dart';
import 'package:food_delivery_app/widgets/search_item.dart';
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
                    "Favorites",
                    style: TextStyle(color: Constants.titleColor),
                  ),
                ),
                body: model.favoured == null || model.favoured.isEmpty
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

                                return OpenContainer(
                                  closedElevation: 0,
                                  openElevation: 0,
                                  closedColor: Colors.transparent,
                                  openColor: Colors.transparent,
                                  transitionType: ContainerTransitionType.fade,
                                  transitionDuration:
                                      const Duration(milliseconds: 400),
                                  openBuilder: (context, action) {
                                    return DetailView(
                                      id: meal.id,
                                      name: meal.name,
                                      url: meal.url,
                                    );
                                  },
                                  closedBuilder: (context, action) {
                                    return SearchListItem(
                                        name: meal.name, url: meal.url);
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
              ));
  }
}
