import 'package:dio/dio.dart';
import 'package:food_delivery_app/constants/api_constnts.dart';

class NetworkUtil {
  Dio _dio;

  NetworkUtil() {
    BaseOptions options =
        BaseOptions(receiveTimeout: ApiConstants.RECIEVE_TIMEOUT, connectTimeout: ApiConstants.CONNECTION_TIMEOUT);
    options.baseUrl = ApiConstants.BASE_URL;
    _dio = Dio(options);
    _dio.interceptors.add(LogInterceptor());
  }

  Future<Response> get(String url, Map<String, String> params) async {
    Response response = await _dio.get(url,
        queryParameters: params,
        options: Options(responseType: ResponseType.json));
    return response;
  }

  Future<Response> basicGet(String url) async {
    Response response = await _dio.get(url,
        options: Options(responseType: ResponseType.json));
    return response;
  }

  Future<Response> post(String url, Map<String, String> params) async {
    Response response = await _dio.post(url,
        data: params, options: Options(responseType: ResponseType.json));
    return response;
  }
}