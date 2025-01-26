import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart'; // SharedPreferences
import 'package:smartbazar/features/auth/api/refresh_token_api.dart';
import 'package:smartbazar/utils/request_type.dart';

class SmartClient {
  static String token = '';
  static String refresh = '';
  static String userId = '';
  static String userName = '';
  static String userEmail = '';
  static String laravelsession = '';
  static String phone = '';
  static final SmartClient _instance = SmartClient._internal();
  factory SmartClient() {
    return _instance;
  }

  late Dio _client;
  final timeOutDuration = const Duration(seconds: kDebugMode ? 35 : 60);
  bool _isRefreshingToken = false; // Flag to avoid multiple refresh attempts

  Future<void> getlaravel() async {
    SharedPreferences stf = await SharedPreferences.getInstance();
    if(SmartClient.laravelsession.length==0)
      SmartClient.laravelsession= stf.getString('laravel') ?? '';
  }

  SmartClient._internal() {
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
        onRequest: (options, handler) {
          if (SmartClient.token.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer ${SmartClient.token}';
          }
          return handler.next(options);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (error, handler) async {
          if (error.response != null && error.response!.statusCode == 401) {
            if (!_isRefreshingToken) {
              _isRefreshingToken = true;
              final refreshed = await _refreshToken();
              _isRefreshingToken = false;
              if (refreshed) {
                error.requestOptions.headers['Authorization'] =
                    'Bearer ${SmartClient.token}';
                final response = await _retry(error.requestOptions);
                return handler.resolve(response);
              } else {
                await _logout();
                return handler.reject(error);
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
    SmartClient.token = prefs.getString('accessToken') ?? '';
    SmartClient.refresh = prefs.getString('refreshToken') ?? '';

    if (SmartClient.token.isEmpty) {
      print("Warning: No access token loaded. User might need to log in.");
    }
  }

  // Refresh Token Logic
  Future<bool> _refreshToken() async {
    try {
      final container = ProviderContainer(); // Create a Riverpod container
      final refreshTokenResponse =
          await container.read(getRefreshTokenProvider.future);

      SmartClient.token = refreshTokenResponse.authToken;
      SmartClient.refresh = refreshTokenResponse.refreshToken;

      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('accessToken', refreshTokenResponse.authToken);
      await prefs.setString('refreshToken', refreshTokenResponse.refreshToken);

      print("Token refreshed successfully: ${SmartClient.token}");
      return true;
    } catch (e) {
      print("Error refreshing token: $e");
      return false;
    }
  }

  // Logout logic to clear stored tokens
  Future<void> _logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('accessToken');
    await prefs.remove('refreshToken');
    print("Tokens cleared, user logged out.");
  }

  // Retry request after token refresh
  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    var options = Options(
      method: requestOptions.method,
      headers: {
        ...requestOptions.headers,
        'Authorization': 'Bearer ${SmartClient.token}',
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
    getlaravel();
    Map<String, String> defaultHeaders = {
      'Content-Type': 'application/json',
      'accept': '*/*',
      'Connection': 'Keep-Alive',
      'X-AppApiToken': 'Yala@Techies_Nepal',
      'Cookie':
          'laravel_session=${SmartClient.laravelsession}',
    };

    Map<String, String> mergedHeaders = _mergeHeaders(defaultHeaders, headers);

    switch (requestType) {
      case RequestType.get:
        return await _client
            .get(url,
                options: Options(headers: mergedHeaders),
                queryParameters: queryParameters)
            .timeout(timeOutDuration);

      case RequestType.getWithToken:
        return await _client
            .get(url,
                options: Options(headers: mergedHeaders),
                queryParameters: queryParameters)
            .timeout(timeOutDuration);

      case RequestType.post:
        return await _client
            .post(url.trim(),
                queryParameters: queryParameters,
                data: jsonEncode(parameter),
                options: Options(headers: mergedHeaders))
            .timeout(timeOutDuration);

      case RequestType.postWithToken:
        return await _client
            .post(url,
                data: jsonEncode(parameter),
                options: Options(headers: mergedHeaders))
            .timeout(timeOutDuration);

      case RequestType.postWithTokenFormData:
        return await _client
            .post(url,
                data: parameter,
                options: Options(headers: {
                  ...mergedHeaders,
                  'Content-Type': 'multipart/form-data',
                }))
            .timeout(timeOutDuration);

      case RequestType.deleteWithToken:
        return await _client
            .delete(url,
                options: Options(headers: mergedHeaders), data: parameter)
            .timeout(timeOutDuration);

      case RequestType.putWithToken:
        return await _client
            .put(url, options: Options(headers: mergedHeaders), data: parameter)
            .timeout(timeOutDuration);

      case RequestType.putWithTokenEncoded:
        return await _client
            .put(url,
                data: parameter,
                options: Options(headers: {
                  ...mergedHeaders,
                  "Content-Type": "application/x-www-form-urlencoded"
                }))
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
