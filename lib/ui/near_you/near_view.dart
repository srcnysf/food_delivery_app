import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/constants.dart';
import 'package:food_delivery_app/ui/meal_detail/detail_view.dart';
import 'package:food_delivery_app/ui/near_you/near_view_model.dart';
import 'package:food_delivery_app/widgets/search_item.dart';
import 'package:stacked/stacked.dart';

class NearView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NearViewModel>.reactive(
        viewModelBuilder: () => NearViewModel(),
        onModelReady: (model) => model.initialize(),
        disposeViewModel: false,
        builder: (context, model, widget) => Scaffold(
              appBar: AppBar(
                title: Text(
                  "Near You",
                  style: TextStyle(color: Constants.titleColor),
                ),
              ),
              body: model.isBusy
                  ? Center(child: CircularProgressIndicator())
                  : Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: model.mealList!.meals!.length,
                            padding: EdgeInsets.all(4),
                            itemBuilder: (context, index) {
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
                                    id: model.mealList!.meals![index].idMeal,
                                    name: model.mealList!.meals![index].strMeal,
                                    url: model
                                        .mealList!.meals![index].strMealThumb,
                                  );
                                },
                                closedBuilder: (context, action) {
                                  return SearchListItem(
                                      name: model.mealList!.meals![index].strMeal,
                                      url: model
                                          .mealList!.meals![index].strMealThumb);
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
