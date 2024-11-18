import 'package:flutter/material.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/auth/model/signup_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

class SignUpAPi {
  final SmartClinet _clinet = SmartClinet();

  Future<SignupModel> signUp({
    required String name,
    required String phone,
    required String email,
    required String passsword,
    required String password_confirmation,
    required String country_code,
    required String username,
    required String dob,
    required String gender,
    required int accept_terms,
    required int accept_marketing_offers,
  }) async {
    final body = {
      'name': name,
      'phone': phone,
      'email': email,
      'password': passsword,
      'password_confirmation': password_confirmation,
      'country_Code': country_code,
      'username': username,
      'accept_terms': accept_terms,
      'accept_marketing_offer': accept_marketing_offers,
      'dob': dob,
      'gender': gender,
    };

    try {
      final response = await _clinet.request(
        requestType: RequestType.postWithToken,
        url: ApiConstants.signUpUrl,
        parameter: body,
      );

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        if (response.data != null) {
          return SignupModel.fromJson(response.data);
        }
      }
      throw Exception(response.data['error'] ?? 'Sign-up failed');
    } catch (e) {
      rethrow; // Let exceptions propagate
    }
  }
}
