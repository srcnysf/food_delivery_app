import 'package:food_delivery_app/models/request/area_request.dart';
import 'package:food_delivery_app/models/response/area_list_response.dart';
import 'package:food_delivery_app/models/response/categories_response.dart';
import 'package:food_delivery_app/models/response/meal_detail_list_response.dart';
import 'package:food_delivery_app/ui/base/app_base_view_model.dart';
import 'package:food_delivery_app/utils/network_error_util.dart';

class HomeViewModel extends AppBaseViewModel {
  Categories categoryList;
  AreaListReponse areaList;

  initialize() {
    getCategories();
    getAreaList("American");
  }

  getCategories() {
    setBusy(true);
    repository.getCategories().then((categories) {
      this.categoryList = categories;
    }).catchError((error) {
      errorMessage = NetworkErrorUtil.handleError(error);
    }).whenComplete(() {
      setBusy(false);
      notifyListeners();
    });
  }  
  getAreaList(String area) {
    setBusy(true);
    var areaRequest = AreaRequest()..a = area.toString();
    repository.getAreaList(areaRequest).then((areaList) {
      this.areaList = areaList;
    }).catchError((error) {
      errorMessage = NetworkErrorUtil.handleError(error);
    }).whenComplete(() {
      setBusy(false);
      notifyListeners();
    });
  }
}
