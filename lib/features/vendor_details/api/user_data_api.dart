
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/vendor_details/model/user_data_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part'user_data_api.g.dart';

@riverpod
Future<UserDataModel> getUserDetails(GetUserDetailsRef ref) async {
  final SmartClinet client = SmartClinet();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.getUserDataUrl,
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;
      return UserDataModel.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load order details');
    }
  } catch (e) {
    // Handle or log the error here
    print('Error loading order details: $e');
    throw Exception('Failed to load order details: $e');
  }
}


