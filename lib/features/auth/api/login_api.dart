import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/auth/model/login_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginApi {
  final SmartClinet _client = SmartClinet();

  login(String email, String password) async {
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
      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        if (response.data != null) {
          final user = LoginData.fromJson(response.data);
          SmartClinet.token = user.extra.authToken;
          final pref = await SharedPreferences.getInstance();
          await pref.setString("session", json.encode(user.toJson()));
          if (kDebugMode) {
            print(response);
          }
          return user;
        } else {
          throw Exception("Failed to login");
        }
      }
    } catch (e) {
      rethrow;
    }
  }
}
