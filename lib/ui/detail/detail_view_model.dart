import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/request/meal_request.dart';
import 'package:food_delivery_app/models/response/meal_detail_list_response.dart';
import 'package:food_delivery_app/models/response/meal_detail_response.dart';
import 'package:food_delivery_app/ui/base/app_base_view_model.dart';
import 'package:food_delivery_app/utils/network_error_util.dart';

class DetailViewModel extends AppBaseViewModel {
  TextEditingController noteController;
  FocusNode focusNode = new FocusNode();

  MealDetailListResponse mealList;
  List<Map<String, String>> addsOnList = [
    {"value": "1", "title": "Mayoniese"},
    {"value": "2", "title": "Soy Sauce"},
    {"value": "3", "title": "Cheddar Cheese"},
    {"value": "0", "title": "Salt"}
  ];
  List<dynamic> selectedAddsOnList = [];
  List<dynamic> selectedIngredients = [];
  String time;

  void initialize(String id) async {
    setBusy(true);
    await getCategories(id);
    setBusy(false);
  }

  getCategories(String id) async {
    MealRequest mealRequest = MealRequest()..i = id;
    await repository.getMeal(mealRequest).then((meals) {
      this.mealList = meals;
      if (mealList.meals.first.strIngredient1 != null)
        this.selectedIngredients.add(mealList.meals.first.strIngredient1);
      if (mealList.meals.first.strIngredient2 != null)
        this.selectedIngredients.add(mealList.meals.first.strIngredient2);
      if (mealList.meals.first.strIngredient3 != null)
        this.selectedIngredients.add(mealList.meals.first.strIngredient3);
      if (mealList.meals.first.strIngredient4 != null)
        this.selectedIngredients.add(mealList.meals.first.strIngredient4);
      if (mealList.meals.first.strIngredient5 != null)
        this.selectedIngredients.add(mealList.meals.first.strIngredient5);
      notifyListeners();
    }).catchError((error) {
      setError(NetworkErrorUtil.handleError(error));
    });
  }

  setSelectedAddsOnList(List val) {
    selectedAddsOnList = val;
    notifyListeners();
  }

  setSelectedIngredients(List val) {
    selectedIngredients = val;
    notifyListeners();
  }

  setTime(val) {
    time = val;
    notifyListeners();
  }

  void addToBasket(MealDetailResponse first) {}
}
