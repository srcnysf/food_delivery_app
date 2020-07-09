import 'package:food_delivery_app/constants/api_constnts.dart';
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
import 'package:food_delivery_app/utils/network_util.dart';

class ApiService {
  NetworkUtil networkUtil = NetworkUtil();

  Future<Categories> getCategories() async {
    try {
      final res = await networkUtil.get(ApiConstants.CATEGORIES.toString());
      return Categories.fromJson(res);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<MealDetailListResponse> getMealById(MealRequest mealRequest) async {
    try {
      final res = await networkUtil.get(ApiConstants.LOOKUP,
          params: mealRequest.toMap());
      return MealDetailListResponse.fromJson(res);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<MealDetailListResponse> searchMealByName(SearchRequest searchRequest) async {
    try {
      final res = await networkUtil.get(ApiConstants.SEARCH,
          params: searchRequest.toMap());
      return MealDetailListResponse.fromJson(res);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<CategoryListResponse> getCategoryList(CategoryRequest categoryRequest) async {
    try {
      final res = await networkUtil.get(ApiConstants.LIST,
          params: categoryRequest.toMap());
      return CategoryListResponse.fromJson(res);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<AreaListReponse> getAreaList(AreaRequest areaRequest) async {
    try {
      final res =
          await networkUtil.get(ApiConstants.LIST, params: areaRequest.toMap());
      return AreaListReponse.fromJson(res);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<IngredientsListResponse> getIngredientsList(
      IngredientsRequest ingredientsRequest) async {
    try {
      final res = await networkUtil.get(ApiConstants.LIST,
          params: ingredientsRequest.toMap());
      return IngredientsListResponse.fromJson(res);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<MealListResponse> filterByCategory(CategoryRequest categoryRequest) async {
    try {
      final res = await networkUtil.get(ApiConstants.FILTER_BY,
          params: categoryRequest.toMap());
      return MealListResponse.fromJson(res);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<MealListResponse> filterByArea(AreaRequest areaRequest) async {
    try {
      final res = await networkUtil.get(ApiConstants.FILTER_BY,
          params: areaRequest.toMap());
      return MealListResponse.fromJson(res);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<MealListResponse> filterByIngredients(
      IngredientsRequest ingredientsRequest) async {
    try {
      final res = await networkUtil.get(ApiConstants.FILTER_BY,
          params: ingredientsRequest.toMap());
      return MealListResponse.fromJson(res);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }
}
