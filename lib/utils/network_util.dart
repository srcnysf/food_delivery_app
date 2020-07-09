import 'package:dio/dio.dart';
import 'package:food_delivery_app/constants/api_constnts.dart';

class NetworkUtil {
  Dio _dio;

  NetworkUtil() {
    BaseOptions options = BaseOptions(
        receiveTimeout: ApiConstants.RECIEVE_TIMEOUT,
        connectTimeout: ApiConstants.CONNECTION_TIMEOUT);
    options.baseUrl = ApiConstants.BASE_URL;
    _dio = Dio(options);
    _dio.interceptors.add(LogInterceptor());
  }

  Future<dynamic> get(String url, {Map<String, dynamic> params}) async {
    try {
      Response response = await _dio.get(url,
          queryParameters: params,
          options: Options(responseType: ResponseType.json));
      return response.data;
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<dynamic> post(String url, Map<String, String> params) async {
    try {
      Response response = await _dio.post(url,
          data: params, options: Options(responseType: ResponseType.json));
      return response.data;
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }
}
