import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:smartbazar/utils/request_type.dart';

class SmartClinet {
  static String token = '';
  static String refresh = '';
  static final SmartClinet _instance = SmartClinet._internal();

  factory SmartClinet() {
    return _instance;
  }

  late Dio _client;
  final timeOutDuration = const Duration(seconds: kDebugMode ? 30 : 60);

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    var options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );
    return _client.request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }

  SmartClinet._internal() {
    _client = Dio();
    if (kDebugMode) {
      _client.interceptors.add(
        LogInterceptor(
          responseBody: true,
          requestHeader: false,
          responseHeader: false,
          requestBody: true,
        ),
      );
    }
    _client.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, handler) {
          options.headers['Authorization'] = 'Bearer $token';
          return handler.next(options);
        },
        onError: (DioException error, handler) async {
          if (error.response?.statusCode == 401) {
            return handler.next(error);
          }
          try {
            return handler.next(error);
          } catch (e) {
            return;
          }
        },
        onResponse: (options, handler) {
          return handler.next(options);
        },
      ),
    );
  }

  Future<Response> request({
    required RequestType requestType,
    required String url,
    dynamic parameter,
    dynamic queryParameters,
    dynamic headers,
  }) async {
    Map<String, String> heading = {
      'Content-Type': 'application/json',
      'accept': '*/*',
      'Connection': 'Keep-Alive',
      'X-AppApiToken': 'Yala@Techies_Nepal'
    };

    Map<String, String> headingWithToken = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
      'Connection': 'Keep-Alive',
      'X-AppApiToken': 'Yala@Techies_Nepal'
    };

    switch (requestType) {
      case RequestType.get:
        return _client
            .get(
              url,
              options: Options(headers: heading),
              queryParameters: queryParameters,
            )
            .timeout(timeOutDuration);
      case RequestType.getWithToken:
        return _client
            .get(
              url,
              options: Options(headers: headingWithToken),
              queryParameters: queryParameters,
            )
            .timeout(timeOutDuration);
      case RequestType.post:
        return _client
            .post(
              url.trim(),
              data: jsonEncode(parameter),
              options: Options(
                headers: heading,
              ),
            )
            .timeout(timeOutDuration);
      case RequestType.postWithHeaders:
        return _client
            .post(
              url.trim(),
              data: jsonEncode(parameter),
              options: Options(
                headers: {...heading, ...headers},
              ),
            )
            .timeout(timeOutDuration);
      case RequestType.postWithToken:
        return _client
            .post(
              url,
              data: jsonEncode(parameter),
              options: Options(
                headers: headingWithToken,
              ),
            )
            .timeout(timeOutDuration);
      case RequestType.postWithTokenFormData:
        return _client
            .post(
              url,
              data: parameter,
              options: Options(
                headers: headingWithToken,
              ),
            )
            .timeout(timeOutDuration);
         case RequestType.deleteWithToken:  // Add this case
        return _client
            .delete(
              url,
              options: Options(headers: headingWithToken),
              data: parameter, // Optional: use if you need to pass body data in delete request
            )
            .timeout(timeOutDuration);
    }
  }
}
