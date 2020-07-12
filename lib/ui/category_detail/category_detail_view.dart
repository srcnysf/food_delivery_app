import 'package:food_delivery_app/models/request/category_request.dart';
import 'package:food_delivery_app/models/response/categories_response.dart';
import 'package:food_delivery_app/models/response/meal_list_response.dart';
import 'package:food_delivery_app/ui/base/app_base_view_model.dart';
import 'package:food_delivery_app/utils/network_error_util.dart';

class CategoryDetailViewModel extends AppBaseViewModel {
  MealListResponse mealList;

  void initialize(String name) async {
    setBusy(true);
    if (mealList == null) {
      await getMealsByCategory(name);
    }
    notifyListeners();
    setBusy(false);
  }

  getMealsByCategory(String category) async {
    var categoryRequest = CategoryRequest()..c = category;
    await repository.getMealsByCategory(categoryRequest).then((mealList) {
      this.mealList = mealList;
      notifyListeners();
    }).catchError((error) {
      errorMessage = NetworkErrorUtil.handleError(error);
    });
  }
}
