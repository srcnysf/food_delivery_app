import 'package:food_delivery_app/models/request/area_request.dart';
import 'package:food_delivery_app/models/request/category_request.dart';
import 'package:food_delivery_app/models/request/ingredients_request.dart';
import 'package:food_delivery_app/models/request/meal_request.dart';
import 'package:food_delivery_app/models/request/search_request.dart';
import 'package:food_delivery_app/models/response/area_list_response.dart';
import 'package:food_delivery_app/models/response/categories_response.dart';
import 'package:food_delivery_app/models/response/category_list_response.dart';
import 'package:food_delivery_app/models/response/ingredient_list_response.dart';
import 'package:food_delivery_app/models/response/meal_detail_list_response.dart';
import 'package:food_delivery_app/models/response/meal_list_response.dart';
import 'package:food_delivery_app/services/api_service.dart';
import 'package:hive/hive.dart';

import '../locator.dart';

class Repository {
  final ApiService _apiService = locator<ApiService>();

  Box _ordersBox;
  Box get ordersBox => _ordersBox;
  setOrders(Box orders) {
    this._ordersBox = orders;
  }

  Box _basketBox;
  Box get basketBox => _basketBox;
  setBasket(Box orders) {
    this._basketBox = orders;
  }

  Box _favouredMealsBox;
  Box get favouredMealsBox => _favouredMealsBox;
  setFavouredMeals(Box meals) {
    this._favouredMealsBox = meals;
  }

  Future<Categories> getCategories() async {
    return await _apiService.getCategories().catchError((error) => throw error);
  }

  Future<CategoryListResponse> getCategoryList(
      CategoryRequest categoryRequest) async {
    return await _apiService
        .getCategoryList(categoryRequest)
        .catchError((error) => throw error);
  }

  Future<AreaListReponse> getAreaList(AreaRequest areaRequest) async {
    return await _apiService
        .getAreaList(areaRequest)
        .catchError((error) => throw error);
  }

  Future<IngredientsListResponse> getIngredientsList(
      IngredientsRequest ingredientsRequest) async {
    return await _apiService
        .getIngredientsList(ingredientsRequest)
        .catchError((error) => throw error);
  }

  Future<MealListResponse> getMealsByCategory(
      CategoryRequest categoryRequest) async {
    return await _apiService
        .filterByCategory(categoryRequest)
        .catchError((error) => throw error);
  }

  Future<MealListResponse> getMealsByArea(AreaRequest areaRequest) async {
    return await _apiService
        .filterByArea(areaRequest)
        .catchError((error) => throw error);
  }

  Future<MealListResponse> getMealsByIngredients(
      IngredientsRequest ingredientsRequest) async {
    return await _apiService
        .filterByIngredients(ingredientsRequest)
        .catchError((error) => throw error);
  }

  Future<MealDetailListResponse> getMeal(MealRequest mealRequest) async {
    return await _apiService
        .getMealById(mealRequest)
        .catchError((error) => throw error);
  }

  Future<MealDetailListResponse> searchMealByName(
      SearchRequest searchRequest) async {
    return await _apiService
        .searchMealByName(searchRequest)
        .then((value) => null)
        .catchError((error) => throw error);
  }
}
