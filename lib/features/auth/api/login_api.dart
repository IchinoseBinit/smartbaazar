import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/auth/model/login_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

class LoginApi {
  final SmartClient _client = SmartClient();

Future<LoginData> login(String email, String password) async {
  final loginBody = {'login': email, 'password': password};

  try {
    final response = await _client.request(
      requestType: RequestType.post,
      url: ApiConstants.loginUrl,
      parameter: loginBody,
    );
    
    debugPrint("Login response: ${response.data}");

    // Check if response is successful
    if (_isSuccessfulResponse(response)) {
      return await _handleSuccessfulLogin(response);
    } else {
      _handleErrorResponse(response);
    }
  } on DioException catch (e) {
    // Handle Dio exceptions
    debugPrint("Dio error: $e");
    throw Exception(_handleDioError(e));
  } catch (e) {
    // Handle any other unexpected exceptions
    debugPrint("Unexpected error: $e");
    throw Exception('An unexpected error occurred: $e');
  }

  // Ensure that the function doesn't return null if control reaches here
  throw Exception('Login failed due to an unexpected issue');
}


  // Refresh token method
  Future<Map<String, dynamic>> refreshToken(String refreshToken) async {
    final refreshBody = {'refreshToken': refreshToken};

    try {
      final response = await _client.request(
        requestType: RequestType.post,
        url: ApiConstants.refreshTokenUrl,
        parameter: refreshBody,
      );

      if (_isSuccessfulResponse(response)) {
        return response.data;
      } else {
        throw Exception("Failed to refresh token");
      }
    } on DioException catch (e) {
      throw Exception(_handleDioError(e));
    }
  }

  // Check if the response is successful
  bool _isSuccessfulResponse(Response response) {
    return response.statusCode != null &&
        response.statusCode! >= 200 &&
        response.statusCode! < 300;
  }

  // Handle a successful login response
  Future<LoginData> _handleSuccessfulLogin(Response response) async {
    final user = LoginData.fromJson(response.data);
    await _storeSessionDetails(user);
    return user;
  }

  // Store session details (tokens and user data)
  Future<void> _storeSessionDetails(LoginData user) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("session", json.encode(user.toJson()));
    await prefs.setString("accessToken", SmartClient.token);
    await prefs.setString("refreshToken", SmartClient.refresh);
  }

  // Handle error response (non-2xx HTTP status)
  void _handleErrorResponse(Response response) {
    if (response.data is Map<String, dynamic>) {
      final errorMessage = response.data['message'] ?? 'Unexpected error occurred';
      throw Exception(errorMessage);
    }
    throw Exception("Login failed. Status code: ${response.statusCode}");
  }

  // Handle Dio-specific errors (e.g., timeouts, server issues)
  String _handleDioError(DioException e) {
    if (e.response != null) {
      final errorMessage = e.response?.data['message'] ?? 'Unknown server error';
      return errorMessage;
    } else if (e.type == DioExceptionType.connectionTimeout) {
      return 'Connection timeout. Please try again.';
    } else if (e.type == DioExceptionType.receiveTimeout) {
      return 'Server took too long to respond. Please try again.';
    } else if (e.type == DioExceptionType.sendTimeout) {
      return 'Request timed out. Please check your connection.';
    }
    return 'Something went wrong. Please check your connection.';
  }
}
