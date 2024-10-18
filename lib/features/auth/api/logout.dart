import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/auth/view/login_screen.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

class LogoutApi {
  Future<void> logout(String userId,BuildContext context) async {
    try {
      final SmartClinet client = SmartClinet();

      // Logout endpoint with the user ID appended to the URL
      final url = '${ApiConstants.logoutUrl}/$userId';

      // Make the logout request
      final response = await client.request(
        requestType: RequestType.postWithToken,  // POST request with token
        url: url,
      );

    if (response.statusCode == 200) {
        final message = response.data['message'];
        print('Logout Successful: $message');

        // Clear SharedPreferences
        final prefs = await SharedPreferences.getInstance();
        await prefs.clear();  // Clear all preferences

        // Reset tokens in the client
        SmartClinet.token = '';
        SmartClinet.refresh = '';
        SmartClinet.userId = '';

        print('SharedPreferences cleared and tokens reset.');

        // Navigate to the login screen after successful logout
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen(),)
        );
      } else {
        print('Failed to logout: ${response.statusMessage}');
      }
    } catch (e) {
      print('Error occurred during logout: $e');
    }
  }
  }

