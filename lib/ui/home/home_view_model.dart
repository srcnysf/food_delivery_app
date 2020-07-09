import 'package:food_delivery_app/models/request/area_request.dart';
import 'package:food_delivery_app/models/response/area_list_response.dart';
import 'package:food_delivery_app/models/response/categories_response.dart';
import 'package:food_delivery_app/ui/base/app_base_view_model.dart';
import 'package:food_delivery_app/utils/network_error_util.dart';

class HomeViewModel extends AppBaseViewModel {
  Categories categoryList;
  AreaListReponse areaList;

  void initialize() async {
    setBusy(true);
    await getCategories();
    await getAreaList("American");
    setBusy(false);
  }

  getCategories() async {
    await repository.getCategories().then((categories) {
      this.categoryList = categories;
      notifyListeners();
    }).catchError((error) {
      errorMessage = NetworkErrorUtil.handleError(error);
    });
  }

  getAreaList(String area) async {
    var areaRequest = AreaRequest()..a = area.toString();
    await repository.getAreaList(areaRequest).then((areaList) {
      this.areaList = areaList;
      notifyListeners();
    }).catchError((error) {
      errorMessage = NetworkErrorUtil.handleError(error);
    });
  }
}
