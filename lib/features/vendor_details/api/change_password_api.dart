import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/vendor_details/model/update_user_detail_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'change_password_api.g.dart';

@riverpod
Future<UpdateUserDetail> changePassword(
  ChangePasswordRef ref,
  String password,
  String confirmPassword,
  String userId,
  String email,
  String userName
) async {
  final SmartClinet client = SmartClinet();

  try {
    Map<String, dynamic> formData = {
       'country_code': 'NP',
      'language_code': 'en',
      'remove_photo': 0,
      'auth_field': 'phone',
      'phone_country': 'NP',
      'password': password,
      'name': userName,
      'password_confirmation': confirmPassword,
       'ip_addr': '127.0.0.1',
      'accept_terms': 1,
      'accept_marketing_offers': 1,
      'email': email,
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
