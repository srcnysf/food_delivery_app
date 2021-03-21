import 'package:food_delivery_app/ui/base/app_base_view_model.dart';
import 'package:hive/hive.dart';

class FavouredViewModel extends AppBaseViewModel {
  Box? get favoured => repository!.favouredMealsBox;

  init() async {
    await Hive.openBox('favoured');
    repository!.setFavouredMeals(Hive.box('favoured'));
    notifyListeners();
  }
}
