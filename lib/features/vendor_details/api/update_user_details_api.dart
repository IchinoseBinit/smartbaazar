import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/vendor_details/model/update_user_detail_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'update_user_details_api.g.dart';

@riverpod
Future<UpdateUserDetail> updateUserDetails(
  ref,
  String? fullName,
  String? phoneNumber,
  String? userName,
  String? email,
  String? userId,
  String? genderID,
  List<Map<String, dynamic>> branchLocations,
  // Map<String, Map<String, dynamic>> openingHours,
  String? bio,
  List<String>? day,
  List<String?>? fromList,
  List<String?>? toList,
  List<bool>? closed,

  // String dob,
) async {
  final SmartClient client = SmartClient();

  try {
    Map<String, dynamic> formData = {
      'country_code': 'NP',
      'language_code': 'en',
      'gender_id': genderID,
      'name': fullName,
      'remove_photo': 0,
      'auth_field': 'phone',
      'email': email,
      'phone': phoneNumber,
      'phone_country': 'NP',
      'username': userName,
      'ip_addr': '127.0.0.1',
      'accept_terms': 1,
      'accept_marketing_offers': 1,
      'bio': bio,
      'branch_location': branchLocations != null
          ? jsonEncode(branchLocations.map((location) {
              return {
                'location': location,
                'longitude': '', // Add longitude if available
                'latitude': '', // Add latitude if available
              };
            }).toList())
          : null,
      'day[]': day,
      'from[]': fromList,
      'to[]': toList,
      'closed[]': closed,
      // 'opening_hours[]': openingHours.entries.map((entry) {
      //   return {
      //     'day[]': entry.key,
      //     'from[]': entry.value['from'],
      //     'to[]': entry.value['to'],
      //     'closed[]': entry.value['closed']
      //   };
      // }).toList()

      //    'dob': dob,
    };
    final response = await client.request(
      requestType: RequestType.putWithTokenEncoded,
      url: "${ApiConstants.updateUserDetailsUrl}/$userId",
      parameter: formData,
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;
      final userDetails = UpdateUserDetail.fromJson(jsonResponse);
      return userDetails;
    } else {
      throw Exception('Failed to update user details');
    }
  } on DioException catch (e) {
    if (e.response != null) {
      throw Exception('API error: ${e.response?.statusCode}');
    } else {
      throw Exception('Network error: ${e.message}');
    }
  } catch (e) {
    print('Error updating user details: $e');
    rethrow; // Re-throw the exception to propagate it up the call stack
  }
}

@riverpod
Future<UpdateUserDetail> updateBuyerUserDetails(
  UpdateBuyerUserDetailsRef ref,
  String fullName,
  String phoneNumber,
  String userName,
  String email,
  String userId,
  String genderID,
  String branchLocations,

  // String dob,
) async {
  final SmartClient client = SmartClient();

  try {
    Map<String, dynamic> formData = {
      'country_code': 'NP',
      'language_code': 'en',
      'gender_id': genderID,
      'name': fullName,
      'remove_photo': 0,
      'auth_field': 'phone',
      'email': email,
      'phone': phoneNumber,
      'phone_country': 'NP',
      'username': userName,
      'ip_addr': '127.0.0.1',
      'accept_terms': 1,
      'accept_marketing_offers': 1,
      'users_location': branchLocations,
      // 'users_location': jsonEncode({
      //   'location': branchLocations,
      // }),
    };

    final response = await client.request(
      requestType: RequestType.putWithTokenEncoded,
      url: "${ApiConstants.updateUserDetailsUrl}/$userId",
      parameter: formData,
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;
      final userDetails = UpdateUserDetail.fromJson(jsonResponse);
      return userDetails;
    } else {
      throw Exception('Failed to update user details');
    }
  } catch (e) {
    print('Error updating user details: $e');
    rethrow; // Re-throw the exception to propagate it up the call stack
  }
}
