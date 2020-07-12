import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/constants.dart';
import 'package:food_delivery_app/ui/detail/detail_view.dart';
import 'package:food_delivery_app/ui/home/home_view_model.dart';
import 'package:food_delivery_app/widgets/area_item.dart';
import 'package:food_delivery_app/widgets/category_item.dart';
import 'package:food_delivery_app/widgets/meal_item.dart';
import 'package:food_delivery_app/widgets/section_header.dart';
import 'package:stacked/stacked.dart';

import '../../locator.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => locator<HomeViewModel>(),
        disposeViewModel: false,
        //calls onModelReady once at first time.
        //To avoid initialize onModelReady every time when comeback to view from bottom navigation
        fireOnModelReadyOnce: true,
        onModelReady: (model) => model.initialize(),
        builder: (context, model, widget) => model.isBusy
            ? Center(child: CircularProgressIndicator())
            : model.errorMessage.isNotEmpty
                ? Center(child: Text("${model.errorMessage}"))
                : Scaffold(
                    endDrawer: Drawer(
                      child: Container(
                        height: 200,
                        width: 200,
                      ),
                    ),
                    appBar: AppBar(
                      title: Text(
                        "Food Delivery App",
                        style: TextStyle(color: Constants.titleColor),
                      ),
                      actions: [
                        IconButton(
                            icon: Icon(Icons.filter_list),
                            onPressed: () {
                              Scaffold.of(context).openEndDrawer();
                            })
                      ],
                    ),
                    body: SingleChildScrollView(
                      child: SafeArea(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SectionHeader(
                              title: "Near You",
                              onPressed: () {},
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
                                    transitionType:
                                        ContainerTransitionType.fade,
                                    transitionDuration:
                                        const Duration(milliseconds: 400),
                                    openBuilder: (context, action) {
                                      return DetailView(
                                          mealResponse: model
                                              .mealList.meals[index]);
                                    },
                                    closedBuilder: (context, action) {
                                      return MealListItem(
                                          name: model
                                              .mealList.meals[index].strMeal,
                                          url: model.mealList.meals[index]
                                              .strMealThumb);
                                    },
                                  );
                                },
                              ),
                            ),
                            SectionHeader(
                              title: "Categories",
                              onPressed: () {},
                            ),
                            Container(
                              height: 350,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount:
                                    model.categoryList.categories.length > 10
                                        ? 10
                                        : model.categoryList.categories.length,
                                padding: EdgeInsets.all(4),
                                itemBuilder: (context, index) {
                                  return CategoryListItem(
                                      name: model.categoryList.categories[index]
                                          .strCategory,
                                      url: model.categoryList.categories[index]
                                          .strCategoryThumb,
                                      description: model
                                          .categoryList
                                          .categories[index]
                                          .strCategoryDescription,
                                      onPressed: () {});
                                },
                              ),
                            ),
                            SectionHeader(
                              title: "Try Local Foods",
                              onPressed: () {},
                            ),
                            Container(
                              height: 110,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: model.areaList.meals.length,
                                padding: EdgeInsets.all(4),
                                itemBuilder: (context, index) {
                                  return OpenContainer(
                                    closedElevation: 0,
                                    openElevation: 0,
                                    closedColor: Colors.transparent,
                                    openColor: Colors.transparent,
                                    transitionType:
                                        ContainerTransitionType.fade,
                                    transitionDuration:
                                        const Duration(milliseconds: 400),
                                    openBuilder: (context, action) {
                                      return HomeView();
                                    },
                                    closedBuilder: (context, action) {
                                      return AreaListItem(
                                        name:
                                            model.areaList.meals[index].strArea,
                                      );
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
