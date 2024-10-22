import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/auth/model/login_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginApi {
  final SmartClinet _client = SmartClinet(); // Ensure consistent naming

  Future<LoginData?> login(String email, String password) async {
    final loginBody = {
      'login': email,
      'password': password,
    };

    try {
      final response = await _client.request(
        requestType: RequestType.post,
        url: ApiConstants.loginUrl,
        parameter: loginBody,
      );

      // Check for successful response
      if (response.statusCode != null &&
          response.statusCode! >= 200 &&
          response.statusCode! < 300) {
        if (response.data != null) {
          // Parse user data from response
          final user = LoginData.fromJson(response.data);
          print("ram${user.result.email}");
          final name = user.result.name;
          // Update tokens
          SmartClinet.token = user.extra.authToken;
          SmartClinet.refresh = user.extra.refreshToken;

          // Store session and tokens in SharedPreferences
          final prefs = await SharedPreferences.getInstance();
          await prefs.setString("session", json.encode(user.toJson()));
          await prefs.setString("accessToken", SmartClinet.token);
          await prefs.setString("refreshToken", SmartClinet.refresh);
          await prefs.setString('name', name);

          if (kDebugMode) {
            print("Login successful: $response");
          }
          return user; // Return logged-in user
        } else {
          throw Exception("No user data found in response");
        }
      } else {
        throw Exception(
            "Login failed with status code: ${response.statusCode}");
      }
    } catch (e) {
      if (kDebugMode) {
        print("Login error: $e");
      }
      // Optionally, wrap in a custom exception
      throw Exception("An error occurred during login: $e");
    }
  }
}
