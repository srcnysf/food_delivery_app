import 'package:dio/dio.dart';
import 'package:food_delivery_app/constants/api_constnts.dart';
import 'package:food_delivery_app/models/request/area_request.dart';
import 'package:food_delivery_app/models/request/category_request.dart';
import 'package:food_delivery_app/models/request/ingredients_request.dart';
import 'package:food_delivery_app/models/request/meal_request.dart';
import 'package:food_delivery_app/models/request/search_request.dart';
import 'package:food_delivery_app/utils/network_util.dart';

class ApiService {
  NetworkUtil networkUtil = NetworkUtil();

  Future<Response> getCategories() {
    return networkUtil.basicGet(ApiConstants.CATEGORIES);
  }

  Future<Response> getMealById(MealRequest mealRequest) {
    return networkUtil.get(ApiConstants.LOOKUP, mealRequest.toMap());
  }

  Future<Response> searchMealByName(SearchRequest searchRequest) {
    return networkUtil.get(ApiConstants.LOOKUP, searchRequest.toMap());
  }

  Future<Response> getCategoryList(CategoryRequest categoryRequest) {
    return networkUtil.get(ApiConstants.LIST, categoryRequest.toMap());
  }

  Future<Response> getAreaList(AreaRequest areaRequest) {
    return networkUtil.get(ApiConstants.LIST, areaRequest.toMap());
  }

  Future<Response> getIngredientsList(IngredientsRequest ingredientsRequest) {
    return networkUtil.get(ApiConstants.LIST, ingredientsRequest.toMap());
  }

  Future<Response> filterByCategory(CategoryRequest categoryRequest) {
    return networkUtil.get(ApiConstants.FILTER_BY, categoryRequest.toMap());
  }

  Future<Response> filterByArea(AreaRequest areaRequest) {
    return networkUtil.get(ApiConstants.FILTER_BY, areaRequest.toMap());
  }

  Future<Response> filterByIngredients(IngredientsRequest ingredientsRequest) {
    return networkUtil.get(ApiConstants.FILTER_BY, ingredientsRequest.toMap());
  }
}
