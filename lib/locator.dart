import 'package:dio/dio.dart';
import 'package:food_delivery_app/repository/repository.dart';
import 'package:food_delivery_app/services/api_service.dart';
import 'package:food_delivery_app/ui/home/home_view_model.dart';
import 'package:food_delivery_app/utils/network_util.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  ///NETWORK
  locator.registerLazySingleton<Dio>(() => NetworkUtil().getDio());
  locator.registerLazySingleton(() => ApiService(locator.get()));
  locator.registerLazySingleton(() => Repository(locator.get()));

  locator.registerLazySingleton(() => HomeViewModel());
}
