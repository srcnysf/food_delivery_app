import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:food_delivery_app/constants/constants.dart';
import 'package:food_delivery_app/models/response/meal_response.dart';
import 'package:smart_select/smart_select.dart';
import 'package:stacked/stacked.dart';

import '../../router.gr.dart';
import 'detail_view_model.dart';

class DetailView extends StatelessWidget {
  final String url;
  final String name;
  final String id;
  const DetailView({Key key, this.url, this.name, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DetailViewModel>.reactive(
        viewModelBuilder: () => DetailViewModel(),
        onModelReady: (model) => model.initialize(id),
        builder: (context, model, widget) => GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: Scaffold(
                resizeToAvoidBottomInset: false,
                body: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      actions: [
                        model.mealList != null
                            ? IconButton(
                                icon: model.favorite.containsKey(
                                        model.mealList.meals.first.idMeal)
                                    ? Icon(Icons.favorite)
                                    : Icon(Icons.favorite_border),
                                onPressed: () {
                                  model
                                      .setFavourite(model.mealList.meals.first);
                                },
                              )
                            : Container()
                      ],
                      expandedHeight: 300,
                      pinned: true,
                      floating: false,
                      flexibleSpace: FlexibleSpaceBar(
                        title: Text(
                          name,
                          style: TextStyle(color: Constants.titleColor),
                        ),
                        background: Hero(
                            tag: url,
                            child: ShaderMask(
                              shaderCallback: (Rect bounds) {
                                return LinearGradient(
                                  end: Alignment(0.0, 0.8),
                                  begin: Alignment(0.0, 0.2),
                                  colors: [Colors.white, Colors.grey[600]],
                                  stops: [0, 1],
                                ).createShader(bounds);
                              },
                              child: Image.network(
                                url,
                                fit: BoxFit.fitWidth,
                              ),
                            )),
                      ),
                    ),
                    SliverFillRemaining(
                      child: model.isBusy
                          ? Center(child: CircularProgressIndicator())
                          : model.hasError
                              ? Text(model.modelError.toString())
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SmartSelect.multiple(
                                        trailing: Icon(Icons.add),
                                        modalConfig: SmartSelectModalConfig(
                                            style: SmartSelectModalStyle()),
                                        value: model.selectedIngredients,
                                        enabled: true,
                                        title: "Ingredients",
                                        options: <SmartSelectOption<String>>[
                                          if (model.mealList.meals.first
                                                  .strIngredient1 !=
                                              null)
                                            SmartSelectOption<String>(
                                                value: model.mealList.meals
                                                    .first.strIngredient1,
                                                title: model.mealList.meals
                                                    .first.strIngredient1),
                                          if (model.mealList.meals.first
                                                  .strIngredient2 !=
                                              null)
                                            SmartSelectOption<String>(
                                                value: model.mealList.meals
                                                    .first.strIngredient2,
                                                title: model.mealList.meals
                                                    .first.strIngredient2),
                                          if (model.mealList.meals.first
                                                  .strIngredient3 !=
                                              null)
                                            SmartSelectOption<String>(
                                                value: model.mealList.meals
                                                    .first.strIngredient3,
                                                title: model.mealList.meals
                                                    .first.strIngredient3),
                                          if (model.mealList.meals.first
                                                  .strIngredient4 !=
                                              null)
                                            SmartSelectOption<String>(
                                                value: model.mealList.meals
                                                    .first.strIngredient4,
                                                title: model.mealList.meals
                                                    .first.strIngredient4),
                                          if (model.mealList.meals.first
                                                  .strIngredient5 !=
                                              null)
                                            SmartSelectOption<String>(
                                                value: model.mealList.meals
                                                    .first.strIngredient5,
                                                title: model.mealList.meals
                                                    .first.strIngredient5),
                                        ],
                                        choiceConfig: SmartSelectChoiceConfig(
                                            style: SmartSelectChoiceStyle(
                                          activeColor: Constants.primaryColor,
                                          activeTitleStyle: TextStyle(
                                              color: Constants.primaryColor),
                                          activeSubtitleStyle: TextStyle(
                                              color: Constants.primaryColor),
                                        )),
                                        onChange: (val) =>
                                            model.setSelectedIngredients(val),
                                        modalType:
                                            SmartSelectModalType.bottomSheet),
                                    SmartSelect.multiple(
                                        trailing: Icon(Icons.add),
                                        modalConfig: SmartSelectModalConfig(
                                            style: SmartSelectModalStyle()),
                                        value: model.selectedAddsOnList,
                                        title: "Adds On",
                                        options: <SmartSelectOption<String>>[
                                          SmartSelectOption<String>(
                                              value: "Mayoniese",
                                              title: "Mayoniese +1\$"),
                                          SmartSelectOption<String>(
                                              value: "Soy Sauce",
                                              title: "Soy Sauce +2\$"),
                                          SmartSelectOption<String>(
                                              value: "Cheddar Cheese",
                                              title: "Cheddar Cheese +3\$"),
                                          SmartSelectOption<String>(
                                              value: "Salt", title: "Salt"),
                                        ],
                                        choiceConfig: SmartSelectChoiceConfig(
                                            style: SmartSelectChoiceStyle(
                                          activeColor: Constants.primaryColor,
                                          activeTitleStyle: TextStyle(
                                              color: Constants.primaryColor),
                                          activeSubtitleStyle: TextStyle(
                                              color: Constants.primaryColor),
                                        )),
                                        onChange: (val) =>
                                            model.setSelectedAddsOnList(val),
                                        modalType:
                                            SmartSelectModalType.bottomSheet),
                                    SmartSelect.single(
                                        trailing: Icon(Icons.add),
                                        modalConfig: SmartSelectModalConfig(
                                            style: SmartSelectModalStyle()),
                                        dense: false,
                                        value: model.time,
                                        title: "When",
                                        options: <SmartSelectOption<String>>[
                                          SmartSelectOption<String>(
                                              value: "In 1 Hour",
                                              title: 'In 1 Hour'),
                                          SmartSelectOption<String>(
                                              value: "In 2 Hours",
                                              title: 'In 2 Hours'),
                                          SmartSelectOption<String>(
                                              value: "In 3 Hours",
                                              title: 'In 3 Hours'),
                                        ],
                                        choiceConfig: SmartSelectChoiceConfig(
                                            style: SmartSelectChoiceStyle(
                                          activeColor: Constants.primaryColor,
                                          activeTitleStyle: TextStyle(
                                              color: Constants.primaryColor),
                                          activeSubtitleStyle: TextStyle(
                                              color: Constants.primaryColor),
                                        )),
                                        onChange: (val) => model.setTime(val),
                                        modalType:
                                            SmartSelectModalType.bottomSheet),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16.0, top: 8, bottom: 8),
                                      child: Text("Order Note",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontSize: 16)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      child: TextField(
                                        focusNode: model.focusNode,
                                        controller: model.noteController,
                                        maxLines: 5,
                                        maxLength: 200,
                                        decoration: InputDecoration(
                                            hintText: "Please write your note",
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5))),
                                      ),
                                    ),
                                    Center(
                                      child: MaterialButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        color: Constants.primaryColor,
                                        onPressed: () {
                                          if (model.time != null &&
                                              model.time.isNotEmpty) {
                                            model.addToBasket(
                                                model.mealList.meals.first);
                                            Fluttertoast.showToast(
                                              toastLength: Toast.LENGTH_SHORT,
                                              msg: "ItemAdded",
                                              gravity: ToastGravity.BOTTOM,
                                              timeInSecForIosWeb: 1,
                                            );
                                            // Navigator.pop(context);
                                            Navigator.pushNamedAndRemoveUntil(
                                                context,
                                                Routes.mainView,
                                                (Route<dynamic> route) =>
                                                    false);
                                          }
                                        },
                                        child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                2,
                                            child: Center(
                                                child: Text(
                                                    "Add to Basket ${model.price}\$"))),
                                      ),
                                    )
                                  ],
                                ),
                    )
                  ],
                ),
              ),
            ));
  }
}
