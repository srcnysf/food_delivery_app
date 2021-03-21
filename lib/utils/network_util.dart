import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:food_delivery_app/constants/api_constnts.dart';
import 'package:food_delivery_app/utils/dio_connectivity_retrier.dart';
import 'package:food_delivery_app/utils/network_retry_interceptor.dart';

class NetworkUtil {
  final dio = Dio();

  BaseOptions options = BaseOptions(
      receiveTimeout: ApiConstants.RECIEVE_TIMEOUT,
      connectTimeout: ApiConstants.CONNECTION_TIMEOUT,
      headers: {
        "Content-Type": "application/json; charset=utf-8",
      });

  Dio getDio() {
    dio.options = options;
    options.baseUrl = ApiConstants.BASE_URL;
    dio.interceptors.add(
      RetryOnConnectionChangeInterceptor(
        requestRetrier: DioConnectivityRequestRetrier(
          dio: dio,
          connectivity: Connectivity(),
        ),
      ),
    );
    dio.interceptors.add(LogInterceptor(
        requestBody: kDebugMode, error: kDebugMode, responseBody: kDebugMode));
    return dio;
  }
}
