import 'dart:io';

import 'package:dio/dio.dart';

import 'dio_connectivity_retrier.dart';

class RetryOnConnectionChangeInterceptor extends InterceptorsWrapper {
  final DioConnectivityRequestRetrier requestRetrier;

  RetryOnConnectionChangeInterceptor({
    required this.requestRetrier,
  });

  @override
  Future onError(DioError err, handler) async {
    if (_shouldRetry(err)) {
      try {
        return requestRetrier.scheduleRequestRetry(err.requestOptions);
      } catch (e) {
        // Let any new error from the retrier pass through
        return e;
      }
    }
    // Let the error pass through if it's not the error we're looking for
    return err;
  }

  bool _shouldRetry(DioError err) {
    return err.type == DioErrorType.response &&
        err.error != null &&
        err.error is SocketException;
  }
}
