import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartbazar/features/auth/api/refresh_token_api.dart';
import 'package:smartbazar/utils/request_type.dart';

class SmartClient {
  static final SmartClient _instance = SmartClient._internal();
  factory SmartClient() => _instance;

  final Dio _client = Dio();
  final Duration _timeoutDuration = const Duration(seconds: kDebugMode ? 80 : 120);
  bool _isRefreshingToken = false;

  static String token = '';
  static String refresh = '';
  static String userId = '';
  static String userName = '';
  static String userEmail = '';
  static String laravelSession = '';
  static String phone = '';
  static String userPhoto = '';
   

SmartClient._internal() {
  _loadToken();
  _setupInterceptors();
  _enableKeepAlive();
}

void _enableKeepAlive() {
  (_client.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
      (HttpClient client) {
    client.connectionTimeout = _timeoutDuration;
    client.idleTimeout = const Duration(seconds: 30); // Keep-Alive timeout
    return client;
  };
}

  Future<void> _loadToken() async {
    final prefs = await SharedPreferences.getInstance();
    token = prefs.getString('accessToken') ?? '';
    refresh = prefs.getString('refreshToken') ?? '';
  }

  Future<void> _getLaravelSession() async {
    final prefs = await SharedPreferences.getInstance();
    laravelSession = prefs.getString('laravel') ?? '';
  }

  void _setupInterceptors() {
    if (kDebugMode) {
      _client.interceptors
          .add(LogInterceptor(responseBody: true, requestBody: true));
    }
    _client.interceptors.add(
      InterceptorsWrapper(
        
      onRequest: (options, handler) {
  if (token.isNotEmpty) {
    options.headers['Authorization'] = 'Bearer $token';
  }

  // Debugging: Print request headers
  if (kDebugMode) {
    print("Request Headers: ${options.headers}");
  }

  handler.next(options);
},
        onError: (error, handler) async {
          if (error.response?.statusCode == 401 && !_isRefreshingToken) {
            _isRefreshingToken = true;
            if (await _refreshToken()) {
              error.requestOptions.headers['Authorization'] = 'Bearer $token';
              final response = await _retry(error.requestOptions);
              _isRefreshingToken = false;
              return handler.resolve(response);
            }
            _isRefreshingToken = false;
            await _logout();
          }
          handler.next(error);
        },
      ),
    );
  }

Future<bool> _refreshToken() async {
  try {
    final container = ProviderContainer();
    final refreshTokenResponse =
        await container.read(getRefreshTokenProvider.future);

    // Validate the response
    if (refreshTokenResponse.authToken == null || refreshTokenResponse.refreshToken == null) {
      if (kDebugMode) {
        print("Invalid token response: $refreshTokenResponse");
      }
      return false;
    }

    token = refreshTokenResponse.authToken!;
    refresh = refreshTokenResponse.refreshToken!;

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('accessToken', token);
    await prefs.setString('refreshToken', refresh);

    return true;
  } catch (error, stackTrace) {
    if (kDebugMode) {
      print("Failed to refresh token: $error");
      print(stackTrace);
    }
    return false;
  }
}

  Future<void> _logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('accessToken');
    await prefs.remove('refreshToken');
  }

Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
  await Future.delayed(const Duration(seconds: 2));

  final updatedHeaders = {
    ...requestOptions.headers,
    'Authorization': 'Bearer $token', // Ensure updated token is used
  };

  return _client.request<dynamic>(
    requestOptions.path,
    data: requestOptions.data,
    queryParameters: requestOptions.queryParameters,
    options: Options(
      method: requestOptions.method,
      headers: updatedHeaders, // Use updated headers
    ),
  );
}


  Future<Response> request({
    required RequestType requestType,
    required String url,
    dynamic parameter,
    dynamic queryParameters,
    Map<String, dynamic>? headers,
  }) async {
    await _getLaravelSession();

    final defaultHeaders = {
      'Content-Type': 'application/json',
      'accept': '*/*',
       'Connection': 'Keep-Alive',
      'X-AppApiToken': 'Yala@Techies_Nepal',
      'Cookie': 'laravel_session=$laravelSession',
    };

    final mergedHeaders = {...defaultHeaders, if (headers != null) ...headers};

    switch (requestType) {
      case RequestType.get:
      case RequestType.getWithToken:
        return _client
            .get(url,
                options: Options(headers: mergedHeaders),
                queryParameters: queryParameters)
            .timeout(_timeoutDuration);
      case RequestType.post:
         return await _client
              .post(
                url.trim(),
                queryParameters: queryParameters,
                data: jsonEncode(parameter),
                options: Options(
                   followRedirects: true,
                  headers: mergedHeaders),
              )
              .timeout(_timeoutDuration);
      case RequestType.postWithToken:
        return _client
            .post(url,
                data: jsonEncode(parameter),
                options: Options(headers: mergedHeaders))
            .timeout(_timeoutDuration);
      case RequestType.postWithTokenFormData:
        return _client
            .post(url,
                data: parameter,
                options: Options(headers: {
                  ...mergedHeaders,
                  'Content-Type': 'multipart/form-data'
                }))
            .timeout(_timeoutDuration);
      case RequestType.deleteWithToken:
        return _client
            .delete(url,
                data: parameter, options: Options(headers: mergedHeaders))
            .timeout(_timeoutDuration);
      case RequestType.putWithToken:
        return _client
            .put(url, data: parameter, options: Options(headers: mergedHeaders))
            .timeout(_timeoutDuration);
      case RequestType.putWithTokenEncoded:
        return _client
            .put(url,
                data: parameter,
                options: Options(headers: {
                  ...mergedHeaders,
                  'Content-Type': 'application/x-www-form-urlencoded'
                }))
            .timeout(_timeoutDuration);
      default:
        throw Exception("Unsupported request type");
    }
  }
}
