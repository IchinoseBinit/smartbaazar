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
  static String userName = '';
  static String userEmail = '';
  static final SmartClinet _instance = SmartClinet._internal();

  factory SmartClinet() {
    return _instance;
  }

  late Dio _client;
  final timeOutDuration = const Duration(seconds: kDebugMode ? 30 : 60);
  bool _isRefreshingToken = false; // Flag to avoid multiple refresh attempts

  SmartClinet._internal() {
    _client = Dio();
    _loadToken(); // Load the token at initialization

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
          // Ensure the token is correctly set in headers
          if (SmartClinet.token.isNotEmpty) {
            print('Sending request with token: ${SmartClinet.token}');
            options.headers['Authorization'] = 'Bearer ${SmartClinet.token}';
          } else {
            print('No token found!');
          }
          return handler.next(options);
        },
        onError: (DioException error, handler) async {
          if (error.response != null && error.response!.statusCode! == 400) {
            if (error.response?.data['success'] == false) {
              print('Token expired, attempting refresh');
              // Avoid multiple refresh token requests by using the flag
              if (!_isRefreshingToken) {
                _isRefreshingToken = true;
                final refreshed = await _refreshToken();
                _isRefreshingToken = false;
                if (refreshed) {
                  final response = await _retry(error.requestOptions);
                  return handler.resolve(response);
                }
              }
            }
          }
          return handler.next(error);
        },
      ),
    );
  }

  // Load token from SharedPreferences
  Future<void> _loadToken() async {
    final prefs = await SharedPreferences.getInstance();
    SmartClinet.token = prefs.getString('accessToken') ?? '';
    SmartClinet.refresh = prefs.getString('refreshToken') ?? '';
    print("Token loaded: ${SmartClinet.token}");
  }

  // Token Refresh Logic
  Future<bool> _refreshToken() async {
    try {
      final container = ProviderContainer(); // Create a Riverpod container
      final refreshTokenResponse =
          await container.read(getRefreshTokenProvider.future);

      SmartClinet.token = refreshTokenResponse.authToken;
      SmartClinet.refresh = refreshTokenResponse.refreshToken;

      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('accessToken', refreshTokenResponse.authToken);
      await prefs.setString('refreshToken', refreshTokenResponse.refreshToken);

      print("Token refreshed successfully: ${SmartClinet.token}");
      return true;
    } catch (e) {
      print("Error refreshing token using API: $e");
      return false;
    }
  }

  // Retry request after token refresh
  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    var options = Options(
      method: requestOptions.method,
      headers: {
        ...requestOptions.headers,
        'Authorization': 'Bearer $token',
      },
    );
    return _client.request<dynamic>(requestOptions.path,
        data: requestOptions.data,
        queryParameters: requestOptions.queryParameters,
        options: options);
  }

  // Main request method handling various HTTP methods
  Future<Response> request({
    required RequestType requestType,
    required String url,
    dynamic parameter,
    dynamic queryParameters,
    dynamic headers,
  }) async {
    // Ensure the token is available before making the request
    if (SmartClinet.token.isEmpty) {
      print("No token found. Please log in.");
      throw Exception("No token found. Please log in.");
    }

    Map<String, String> defaultHeaders = {
      'Content-Type': 'application/json',
      'accept': '*/*',
      'Connection': 'Keep-Alive',
      'X-AppApiToken': 'Yala@Techies_Nepal',
    };

    Map<String, String> mergedHeaders = _mergeHeaders(defaultHeaders, headers);
    print('Merged Headers before request: $mergedHeaders');

    switch (requestType) {
      case RequestType.get:
        return await _client
            .get(
              url,
              options: Options(headers: mergedHeaders),
              queryParameters: queryParameters,
            )
            .timeout(timeOutDuration);

      case RequestType.getWithToken:
        print('Sending GET request with token to URL: $url');
        return await _client
            .get(
              url,
              options: Options(headers: mergedHeaders),
              queryParameters: queryParameters,
            )
            .timeout(timeOutDuration);

      case RequestType.post:
        return await _client
            .post(
              url.trim(),
              queryParameters: queryParameters,
              data: jsonEncode(parameter),
              options: Options(headers: mergedHeaders),
            )
            .timeout(timeOutDuration);

      case RequestType.postWithToken:
        return await _client
            .post(
              url,
              data: jsonEncode(parameter),
              options: Options(headers: mergedHeaders),
            )
            .timeout(timeOutDuration);

      case RequestType.deleteWithToken:
        return await _client
            .delete(
              url,
              options: Options(headers: mergedHeaders),
              data: parameter,
            )
            .timeout(timeOutDuration);

      case RequestType.putWithToken:
        return await _client
            .put(
              url,
              options: Options(headers: mergedHeaders),
              data: parameter,
            )
            .timeout(timeOutDuration);

      case RequestType.putWithTokenEncoded:
        return await _client
            .put(
              url,
              data: parameter,
              options: Options(
                headers: {
                  ...mergedHeaders,
                  "Content-Type": "application/x-www-form-urlencoded"
                },
              ),
            )
            .timeout(timeOutDuration);

      default:
        throw Exception("Unsupported request type");
    }
  }

  // Merge custom headers with default headers
  Map<String, String> _mergeHeaders(
      Map<String, String> defaultHeaders, dynamic additionalHeaders) {
    if (additionalHeaders != null) {
      return {...defaultHeaders, ...additionalHeaders};
    }
    return defaultHeaders;
  }
}
