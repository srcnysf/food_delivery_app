import 'package:food_delivery_app/models/response/categories_response.dart';
import 'package:food_delivery_app/ui/base/app_base_view_model.dart';
import 'package:food_delivery_app/utils/network_error_util.dart';

class CategoriesViewModel extends AppBaseViewModel {
  Categories categoryList;

  void initialize() async {
    setBusy(true);
    if (categoryList == null) {
      await getCategories();
    }
    notifyListeners();
    setBusy(false);
  }

  getCategories() async {
    await repository.getCategories().then((categories) {
      this.categoryList = categories;
      notifyListeners();
    }).catchError((error) {
      setError(NetworkErrorUtil.handleError(error));
    });
  }
}
