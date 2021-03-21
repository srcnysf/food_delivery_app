import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/request/search_request.dart';
import 'package:food_delivery_app/models/response/meal_detail_list_response.dart';
import 'package:food_delivery_app/ui/base/app_base_view_model.dart';
import 'package:food_delivery_app/utils/network_error_util.dart';

class SearchViewModel extends AppBaseViewModel {
  TextEditingController controller = new TextEditingController();
  MealDetailListResponse? mealList;

  searchMeals(String ingredient) async {
    SearchRequest searchRequest = SearchRequest()..s = ingredient;
    await repository!.searchMealByName(searchRequest).then((mealList) {
      this.mealList = mealList;
      notifyListeners();
    }).catchError((error) {
      errorMessage = NetworkErrorUtil.handleError(error);
    });
  }
}
