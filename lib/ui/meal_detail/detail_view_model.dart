import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:food_delivery_app/models/meal.dart';
import 'package:food_delivery_app/models/request/meal_request.dart';
import 'package:food_delivery_app/models/response/meal_detail_list_response.dart';
import 'package:food_delivery_app/models/response/meal_detail_response.dart';
import 'package:food_delivery_app/ui/base/app_base_view_model.dart';
import 'package:food_delivery_app/utils/network_error_util.dart';
import 'package:hive/hive.dart';

class DetailViewModel extends AppBaseViewModel {
  TextEditingController noteController = new TextEditingController();
  FocusNode focusNode = new FocusNode();

  MealDetailListResponse? mealList;
  List<String>? selectedAddsOnList = [];
  List<String?> selectedIngredients = [];
  String time = "In 1 Hour";
  Random random = new Random();

  int price = 10;

  void initialize(String? id) async {
    setBusy(true);
    await Hive.openBox('basket');
    repository!.setBasket(Hive.box('basket'));
    await Hive.openBox('favoured');
    repository!.setFavouredMeals(Hive.box('favoured'));
    await getCategories(id);
    setBusy(false);
  }

  getCategories(String? id) async {
    MealRequest mealRequest = MealRequest()..i = id;
    await repository!.getMeal(mealRequest).then((meals) {
      this.mealList = meals;
      if (mealList!.meals!.first.strIngredient1 != null)
        this.selectedIngredients.add(mealList!.meals!.first.strIngredient1);
      if (mealList!.meals!.first.strIngredient2 != null)
        this.selectedIngredients.add(mealList!.meals!.first.strIngredient2);
      if (mealList!.meals!.first.strIngredient3 != null)
        this.selectedIngredients.add(mealList!.meals!.first.strIngredient3);
      if (mealList!.meals!.first.strIngredient4 != null)
        this.selectedIngredients.add(mealList!.meals!.first.strIngredient4);
      if (mealList!.meals!.first.strIngredient5 != null)
        this.selectedIngredients.add(mealList!.meals!.first.strIngredient5);
      notifyListeners();
    }).catchError((error) {
      setError(NetworkErrorUtil.handleError(error));
    });
  }

  setSelectedAddsOnList(List val) {
    price = 10;
    selectedAddsOnList = val.cast<String>();
    price += val.length;
    notifyListeners();
  }

  setSelectedIngredients(List val) {
    selectedIngredients = val.cast<String?>();
    notifyListeners();
  }

  setTime(val) {
    time = val;
    notifyListeners();
  }

  setFavourite(MealDetailResponse mMeal) {
    if (favorite!.containsKey(mMeal.idMeal)) {
      favorite!.delete(mMeal.idMeal);
    } else {
      Meal meal = new Meal();
      meal.id = mMeal.idMeal;
      meal.name = mMeal.strMeal;
      meal.url = mMeal.strMealThumb;
      favorite!.put(mMeal.idMeal, meal);
    }
    notifyListeners();
  }

  addToBasket(MealDetailResponse mMeal) {
    Meal meal = new Meal();
    meal.id = mMeal.idMeal;
    meal.name = mMeal.strMeal;
    meal.url = mMeal.strMealThumb;
    meal.price = price;
    meal.ingrediendsList = selectedIngredients;
    meal.addsOnList = selectedAddsOnList;
    meal.time = time;
    meal.desc = noteController.text;
    meal.count = 1;

    basket!.put("${mMeal.idMeal}", meal);
    repository!.setBasket(basket);
    notifyListeners();
    print(basket!.length);
  }
}
