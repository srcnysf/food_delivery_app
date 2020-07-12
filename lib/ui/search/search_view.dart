import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/constants.dart';
import 'package:food_delivery_app/ui/search/search_view_model.dart';
import 'package:food_delivery_app/widgets/meal_item.dart';
import 'package:stacked/stacked.dart';

class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SearchViewModel>.reactive(
        viewModelBuilder: () => SearchViewModel(),
        builder: (context, model, widget) => model.isBusy
            ? Center(child: CircularProgressIndicator())
            : Scaffold(
                appBar: AppBar(
                  title: Text(
                    "Search",
                    style: TextStyle(color: Constants.titleColor),
                  ),
                ),
                body: SingleChildScrollView(
                  child: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          controller: model.controller,
                          decoration: InputDecoration(
                              hintText: "Search Meals by name",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                        Container(
                          height: 350,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: model.mealList.meals.length > 10
                                ? 10
                                : model.mealList.meals.length,
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
                                  // return DetailView(
                                  //     mealResponse: model.mealList.meals[index]);
                                },
                                closedBuilder: (context, action) {
                                  return MealListItem(
                                      name: model.mealList.meals[index].strMeal,
                                      url: model
                                          .mealList.meals[index].strMealThumb);
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ));
  }
}
