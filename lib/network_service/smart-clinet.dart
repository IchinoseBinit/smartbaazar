import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartbazar/features/auth/api/refresh_token_api.dart';
import 'package:smartbazar/utils/request_type.dart';

class SmartClinet {
  static String token = '';
  static String refresh = '';
  static String userId = '';
  static final SmartClinet _instance = SmartClinet._internal();

  factory SmartClinet() {
    return _instance;
  }

  late Dio _client;
  final timeOutDuration = const Duration(seconds: kDebugMode ? 30 : 60);

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    var options = Options(
      method: requestOptions.method,
      headers: {
        ...requestOptions.headers,
        'Authorization': 'Bearer $token' // Ensure the new token is used
      },
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
        final success = await _refreshToken();
        if (success) {
          RequestOptions requestOptions = error.requestOptions;
          requestOptions.headers['Authorization'] = 'Bearer $token';
          try {
            final response = await _retry(requestOptions);
            return handler.resolve(response); // Return successful retry response
          } on DioException catch (retryError) {
            return handler.next(retryError); // Handle retry failure properly
          }
        }
        return handler.next(error); // If token refresh fails, return original error
      }
      return handler.next(error); // Forward any other error
    },
    onResponse: (options, handler) {
      return handler.next(options);
    },
  ),
);

  }

  Future<bool> _refreshToken() async {
    try {
      final container = ProviderContainer(); // Create a Riverpod container
      final refreshTokenResponse =
          await container.read(getRefreshTokenProvider.future);

      SmartClinet.token = refreshTokenResponse.authToken;
      SmartClinet.refresh = refreshTokenResponse.refreshToken;

      // Update the SharedPreferences with the new tokens
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('accessToken', refreshTokenResponse.authToken);
      await prefs.setString('refreshToken', refreshTokenResponse.refreshToken);

      return true;
    } catch (e) {
      print("Error refreshing token using API: $e");
      return false;
    }
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
              queryParameters: queryParameters,
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
                headers: {
                  'Authorization': 'Bearer $token',
                  'Content-Type': 'multipart/form-data',
                  'X-AppApiToken': 'Yala@Techies_Nepal',
                  'Connection': 'Keep-Alive',
                },
              ),
            )
            .timeout(timeOutDuration);
      case RequestType.deleteWithToken:
        return _client
            .delete(
              url,
              options: Options(headers: headingWithToken),
              data: parameter, // Optional body data in delete request
            )
            .timeout(timeOutDuration);
      case RequestType.putWithToken:
        return _client.put(
          url,
          options: Options(headers: headingWithToken),
          data: parameter,
        );
      case RequestType.putWithTokenFormData:
        return _client
            .post(
              url,
              data: parameter,
              options: Options(
                headers: {
                  'Authorization': 'Bearer $token',
                  'Content-Type': 'multipart/form-data',
                  'X-AppApiToken': 'Yala@Techies_Nepal',
                  'Connection': 'Keep-Alive',
                },
              ),
            )
            .timeout(timeOutDuration);
    }
  }
}
