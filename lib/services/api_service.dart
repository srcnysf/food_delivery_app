import 'package:food_delivery_app/constants/api_constnts.dart';
import 'package:food_delivery_app/models/request/area_request.dart';
import 'package:food_delivery_app/models/request/category_request.dart';
import 'package:food_delivery_app/models/request/ingredients_request.dart';
import 'package:food_delivery_app/models/request/meal_request.dart';
import 'package:food_delivery_app/models/request/search_request.dart';
import 'package:food_delivery_app/models/response/categories.dart';
import 'package:food_delivery_app/models/response/meals.dart';
import 'package:food_delivery_app/utils/network_util.dart';

class ApiService {
  NetworkUtil networkUtil = NetworkUtil();

  Future<Categories> getCategories() async {
    try {
      final res = await networkUtil.get(ApiConstants.CATEGORIES);
      return Categories.fromJson(res);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<Meals> getMealById(MealRequest mealRequest) async {
    try {
      final res = await networkUtil.get(ApiConstants.LOOKUP,
          params: mealRequest.toMap());
      return Meals.fromJson(res);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<Meals> searchMealByName(SearchRequest searchRequest) async {
    try {
      final res = await networkUtil.get(ApiConstants.SEARCH,
          params: searchRequest.toMap());
      return Meals.fromJson(res);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<Meals> getCategoryList(CategoryRequest categoryRequest) async {
    try {
      final res = await networkUtil.get(ApiConstants.LIST,
          params: categoryRequest.toMap());
      return Meals.fromJson(res);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<Meals> getAreaList(AreaRequest areaRequest) async {
    try {
      final res =
          await networkUtil.get(ApiConstants.LIST, params: areaRequest.toMap());
      return Meals.fromJson(res);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<Meals> getIngredientsList(
      IngredientsRequest ingredientsRequest) async {
    try {
      final res = await networkUtil.get(ApiConstants.LIST,
          params: ingredientsRequest.toMap());
      return Meals.fromJson(res);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<Meals> filterByCategory(CategoryRequest categoryRequest) async {
    try {
      final res = await networkUtil.get(ApiConstants.FILTER_BY,
          params: categoryRequest.toMap());
      return Meals.fromJson(res);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<Meals> filterByArea(AreaRequest areaRequest) async {
    try {
      final res = await networkUtil.get(ApiConstants.FILTER_BY,
          params: areaRequest.toMap());
      return Meals.fromJson(res);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<Meals> filterByIngredients(
      IngredientsRequest ingredientsRequest) async {
    try {
      final res = await networkUtil.get(ApiConstants.FILTER_BY,
          params: ingredientsRequest.toMap());
      return Meals.fromJson(res);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }
}
