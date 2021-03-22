import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/constants.dart';
import 'package:food_delivery_app/ui/meal_detail/detail_view.dart';
import 'package:food_delivery_app/ui/search/search_view_model.dart';
import 'package:food_delivery_app/widgets/search_item.dart';
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
                body: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: model.controller,
                        onChanged: (value) => model.searchMeals(value),
                        decoration: InputDecoration(
                            hintText: "Search Meals by name",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                    model.mealList == null || model.mealList!.meals == null
                        ? Expanded(
                            child: Center(
                              child: Text("No items to show"),
                            ),
                          )
                        : Expanded(
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
                                        id: model
                                            .mealList!.meals![index].idMeal,
                                        name: model
                                            .mealList!.meals![index].strMeal,
                                        url: model.mealList!.meals![index]
                                            .strMealThumb);
                                  },
                                  closedBuilder: (context, action) {
                                    return SearchListItem(
                                        name: model
                                            .mealList!.meals![index].strMeal,
                                        url: model.mealList!.meals![index]
                                            .strMealThumb);
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
