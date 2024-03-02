import 'package:cloud_funding/services/local_storage.dart';
import 'package:dio/dio.dart';

Dio dioService() {
  Dio dio = Dio(
    BaseOptions(
      baseUrl: 'http://10.200.10.59:3969/api/v1/',
    ),
  );
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) {
        final token = localStorage.read('token');
        if (token != null) {
          options.headers['Authorization'] = "Bearer $token";
        }
        return handler.next(options);
      },
      onResponse: (response, handler) {
        return handler.next(response);
      },
      onError: (error, handler) {
        return handler.next(error);
      },
    ),
  );
  return dio;
}
