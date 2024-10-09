import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/vendor_details/model/update_user_detail_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'update_user_details_api.g.dart';

@riverpod
Future<UpdateUserDetail> updateUserDetails(
    UpdateUserDetailsRef ref,
    String genderID,
    String fullName,
    String phoneNumber,
    String userName,
    String email,
    String userId) async {
  final SmartClinet client = SmartClinet();

  try {
    FormData formData = FormData.fromMap({
      'gender_id': genderID,
      'name': fullName,
      'phone_number': phoneNumber,
      'user_name': userName,
      'email': email,

      // 'image': await MultipartFile.fromFile(imageFile.path,
      //     filename: imageFile.path.split('/').last),
    });
    final response = await client.request(
      requestType: RequestType.putWithTokenFormData,
      url: "${ApiConstants.updateUserDetailsUrl}/$userId",
      parameter: formData,
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;
      final userDetails = UpdateUserDetail.fromJson(jsonResponse);
      return userDetails;
    } else {
      throw Exception('Failed to update your details');
    }
  } catch (e) {
    print('Error updating your details: $e');
    throw Exception('Failed to update your details: $e');
  }
}
