import 'package:food_delivery_app/ui/base/app_base_view_model.dart';

import '../../router.gr.dart';

class SplashViewModel extends AppBaseViewModel {
  Future handleStartUpLogic() async {
    return await new Future<String>.delayed(Duration(seconds: 3), () => Routes.mainView);
  }
}
