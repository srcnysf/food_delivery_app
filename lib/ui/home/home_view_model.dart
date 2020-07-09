import 'package:food_delivery_app/models/response/categories.dart';
import 'package:food_delivery_app/ui/base/app_base_view_model.dart';
import 'package:food_delivery_app/utils/network_error_util.dart';

class HomeViewModel extends AppBaseViewModel {
  Categories categoryList;

  initialize() {
    getCategories();
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
}
