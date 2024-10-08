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

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    var options = Options(
      method: requestOptions.method,
      headers: {
        ...requestOptions.headers,
        'Authorization': 'Bearer $token', // Ensure the new token is used
      },
    );
    return _client.request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }

  Future<Response> request({
    required RequestType requestType,
    required String url,
    dynamic parameter,
    dynamic queryParameters,
    dynamic headers,
  }) async {
    try {
      // Create default headers
      Map<String, String> defaultHeaders = {
        'Content-Type': 'application/json',
        'accept': '*/*',
        'Connection': 'Keep-Alive',
        'X-AppApiToken': 'Yala@Techies_Nepal',
      };

      // Merge headers with token if needed
      Map<String, String> mergedHeaders = _mergeHeaders(defaultHeaders, headers);

      switch (requestType) {
        case RequestType.get:
          return await _client.get(
            url,
            options: Options(headers: mergedHeaders),
            queryParameters: queryParameters,
          ).timeout(timeOutDuration);

        case RequestType.getWithToken:
          return await _client.get(
            url,
            options: Options(headers: mergedHeaders),
            queryParameters: queryParameters,
          ).timeout(timeOutDuration);

        case RequestType.post:
          return await _client.post(
            url.trim(),
            queryParameters: queryParameters,
            data: jsonEncode(parameter),
            options: Options(headers: mergedHeaders),
          ).timeout(timeOutDuration);

        case RequestType.postWithHeaders:
          return await _client.post(
            url.trim(),
            data: jsonEncode(parameter),
            options: Options(headers: {...defaultHeaders, ...headers}),
          ).timeout(timeOutDuration);

        case RequestType.postWithToken:
          return await _client.post(
            url,
            data: jsonEncode(parameter),
            options: Options(headers: mergedHeaders),
          ).timeout(timeOutDuration);

        case RequestType.postWithTokenFormData:
          return await _client.post(
            url,
            data: parameter,
            options: Options(
              headers: {
                ...mergedHeaders,
                'Content-Type': 'multipart/form-data',
              },
            ),
          ).timeout(timeOutDuration);

        case RequestType.deleteWithToken:
          return await _client.delete(
            url,
            options: Options(headers: mergedHeaders),
            data: parameter,
          ).timeout(timeOutDuration);

        case RequestType.putWithToken:
          return await _client.put(
            url,
            options: Options(headers: mergedHeaders),
            data: parameter,
          ).timeout(timeOutDuration);

        case RequestType.putWithTokenFormData:
          return await _client.post(
            url,
            data: parameter,
            options: Options(
              headers: {
                ...mergedHeaders,
                'Content-Type': 'multipart/form-data',
              },
            ),
          ).timeout(timeOutDuration);

        default:
          throw Exception("Unsupported request type");
      }
    } catch (e) {
      // Handle DioExceptions specifically
      if (e is DioException) {
        // Log or rethrow with a user-friendly message
        throw Exception("API request failed: ${e.message}");
      } else {
        throw Exception("Unexpected error: $e");
      }
    }
  }

  // Method to merge headers
  Map<String, String> _mergeHeaders(Map<String, String> defaultHeaders, dynamic additionalHeaders) {
    if (additionalHeaders != null) {
      return {...defaultHeaders, ...additionalHeaders};
    }
    return defaultHeaders;
  }
}
