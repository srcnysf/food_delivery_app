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

import '../di/locator.dart';

class Repository {
  final ApiService _apiService;

  Repository(this._apiService);

  Box? _ordersBox;
  Box? get ordersBox => _ordersBox;
  setOrders(Box? orders) {
    this._ordersBox = orders;
  }

  Box? _basketBox;
  Box? get basketBox => _basketBox;
  setBasket(Box? orders) {
    this._basketBox = orders;
  }

  Box? _favouredMealsBox;
  Box? get favouredMealsBox => _favouredMealsBox;
  setFavouredMeals(Box meals) {
    this._favouredMealsBox = meals;
  }

  Future<Categories> getCategories() async {
    return await _apiService.getCategories().catchError((error) => throw error);
  }

  Future<CategoryListResponse> getCategoryList(String category) async {
    return await _apiService
        .getCategoryList(category)
        .catchError((error) => throw error);
  }

  Future<AreaListReponse> getAreaList(String area) async {
    return await _apiService
        .getAreaList(area)
        .catchError((error) => throw error);
  }

  Future<IngredientsListResponse> getIngredientsList(String ingredient) async {
    return await _apiService
        .getIngredientsList(ingredient)
        .catchError((error) => throw error);
  }

  Future<MealListResponse> getMealsByCategory(String category) async {
    return await _apiService
        .filterByCategory(category)
        .catchError((error) => throw error);
  }

  Future<MealListResponse> getMealsByArea(String area) async {
    return await _apiService
        .filterByArea(area)
        .catchError((error) => throw error);
  }

  Future<MealListResponse> getMealsByIngredients(String ingredient) async {
    return await _apiService
        .filterByIngredients(ingredient)
        .catchError((error) => throw error);
  }

  Future<MealDetailListResponse> getMeal(String mealId) async {
    return await _apiService
        .getMealById(mealId)
        .catchError((error) => throw error);
  }

  Future<MealDetailListResponse> searchMealByName(String search) async {
    return await _apiService
        .searchMealByName(search)
        .catchError((error) => throw error);
  }
}
