import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/constants.dart';
import 'package:food_delivery_app/ui/category_detail/category_detail.dart';
import 'package:food_delivery_app/widgets/category_list_item.dart';
import 'package:stacked/stacked.dart';

import 'categories_view_model.dart';

class CategoriesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CategoriesViewModel>.reactive(
        viewModelBuilder: () => CategoriesViewModel(),
        onModelReady: (model) => model.initialize(),
        disposeViewModel: false,
        builder: (context, model, widget) => Scaffold(
              appBar: AppBar(
                title: Text(
                  "Categories",
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
                            itemCount: model.categoryList.categories.length,
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
                                  return CategoryDetailView(
                                      name: model.categoryList.categories[index]
                                          .strCategory);
                                },
                                closedBuilder: (context, action) {
                                  return CategoryListItem(
                                    name: model.categoryList.categories[index]
                                        .strCategory,
                                    url: model.categoryList.categories[index]
                                        .strCategoryThumb,
                                    description: model
                                        .categoryList
                                        .categories[index]
                                        .strCategoryDescription,
                                  );
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
