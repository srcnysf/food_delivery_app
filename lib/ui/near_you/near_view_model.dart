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

class NearViewModel extends AppBaseViewModel {
  MealListResponse? mealList;

  void initialize() async {
    setBusy(true);
    await Hive.openBox('basket');
    repository!.setBasket(Hive.box('basket'));
    if (mealList == null) {
      await getMealsByArea("American");
    }
    notifyListeners();
    setBusy(false);
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
}
