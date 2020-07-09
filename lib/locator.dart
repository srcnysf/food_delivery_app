import 'package:food_delivery_app/repository/repository.dart';
import 'package:food_delivery_app/services/api_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => Repository());
  locator.registerLazySingleton(() => ApiService());
}