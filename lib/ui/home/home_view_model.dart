import 'package:food_delivery_app/models/request/area_request.dart';
import 'package:food_delivery_app/models/request/category_request.dart';
import 'package:food_delivery_app/models/request/ingredients_request.dart';
import 'package:food_delivery_app/models/response/area_list_response.dart';
import 'package:food_delivery_app/models/response/categories_response.dart';
import 'package:food_delivery_app/models/response/ingredient_list_response.dart';
import 'package:food_delivery_app/models/response/meal_list_response.dart';
import 'package:food_delivery_app/ui/base/app_base_view_model.dart';
import 'package:food_delivery_app/utils/network_error_util.dart';
import 'package:hive/hive.dart';

import '../base/app_base_view_model.dart';

class HomeViewModel extends AppBaseViewModel {
  late Categories categoryList;
  late AreaListReponse areaList;
  MealListResponse? mealList;
  IngredientsListResponse? ingredientList;

  void initialize() async {
    setBusy(true);
    await Hive.openBox('basket');
    repository!.setBasket(Hive.box('basket'));
    if (mealList == null) {
      await getCategories();
      await getAreaList("American");
      await getMealsByArea("American");
      await getIngredientsList("list");
    }
    notifyListeners();
    setBusy(false);
  }

  getCategories() async {
    await repository!.getCategories().then((categories) {
      this.categoryList = categories;
      notifyListeners();
    }).catchError((error) {
      setError(NetworkErrorUtil.handleError(error));
    });
  }

  getAreaList(String area) async {
    var areaRequest = AreaRequest()..a = area;
    await repository!.getAreaList(areaRequest.a!).then((areaList) {
      this.areaList = areaList;
      notifyListeners();
    }).catchError((error) {
      errorMessage = NetworkErrorUtil.handleError(error);
    });
  }

  getIngredientsList(String ingredient) async {
    var ingredientsRequest = IngredientsRequest()..i = ingredient;
    await repository!
        .getIngredientsList(ingredientsRequest.i!)
        .then((ingredientList) {
      this.ingredientList = ingredientList;
      notifyListeners();
    }).catchError((error) {
      errorMessage = NetworkErrorUtil.handleError(error);
    });
  }

  getMealsByCategory(String category) async {
    var categoryRequest = CategoryRequest()..c = category;
    await repository!.getMealsByCategory(categoryRequest.c!).then((mealList) {
      this.mealList = mealList;
      notifyListeners();
    }).catchError((error) {
      errorMessage = NetworkErrorUtil.handleError(error);
    });
  }

  getMealsByArea(String area) async {
    var areaRequest = AreaRequest()..a = area;
    await repository!.getMealsByArea(areaRequest.a!).then((mealList) {
      this.mealList = mealList;
      notifyListeners();
    }).catchError((error) {
      errorMessage = NetworkErrorUtil.handleError(error);
    });
  }

  getMealsByIngredients(String ingredients) async {
    var ingredientsRequest = IngredientsRequest()..i = ingredients;
    await repository!
        .getMealsByIngredients(ingredientsRequest.i!)
        .then((mealList) {
      this.mealList = mealList;
      notifyListeners();
    }).catchError((error) {
      errorMessage = NetworkErrorUtil.handleError(error);
    });
  }
}
