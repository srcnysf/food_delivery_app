import 'package:food_delivery_app/models/request/area_request.dart';
import 'package:food_delivery_app/models/request/category_request.dart';
import 'package:food_delivery_app/models/request/ingredients_request.dart';
import 'package:food_delivery_app/models/request/meal_request.dart';
import 'package:food_delivery_app/models/request/search_request.dart';
import 'package:food_delivery_app/models/response/categories.dart';
import 'package:food_delivery_app/models/response/meals.dart';
import 'package:food_delivery_app/services/api_service.dart';

class Repository {
  ApiService _apiService;

  Future<Categories> getCategories() async {
    return await _apiService.getCategories().catchError((error) => throw error);
  }

  Future<Meals> getCategoryList(CategoryRequest categoryRequest) async {
    return await _apiService
        .getCategoryList(categoryRequest)
        .catchError((error) => throw error);
  }

  Future<Meals> getAreaList(AreaRequest areaRequest) async {
    return await _apiService
        .getAreaList(areaRequest)
        .catchError((error) => throw error);
  }

  Future<Meals> getIngredientsList(
      IngredientsRequest ingredientsRequest) async {
    return await _apiService
        .getIngredientsList(ingredientsRequest)
        .catchError((error) => throw error);
  }

  Future<Meals> getMeals(MealRequest mealRequest) async {
    return await _apiService
        .getMealById(mealRequest)
        .catchError((error) => throw error);
  }

  Future<Meals> searchMealByName(SearchRequest searchRequest) async {
    return await _apiService
        .searchMealByName(searchRequest)
        .catchError((error) => throw error);
  }
}
