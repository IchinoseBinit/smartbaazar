import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/privacy_policy/model/privacy_policy_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'privacy_policy_api.g.dart';

@riverpod
Future<PrivacyPolicyModel> getPrivacyPolicy(GetPrivacyPolicyRef ref) async {
  final SmartClinet client = SmartClinet();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.getPrivacyPolicyUrl,
    );
    if (response.statusCode == 200) {
       final Map<String, dynamic> jsonResponse = response.data;
      final result = jsonResponse['result'];
      return PrivacyPolicyModel.fromJson(result);
    } else {
      throw Exception('Failed to load privacy policy');
    }
  } catch (e) {
    // print('Error getting privacy policy: $e');
    throw Exception('Failed to load privacy policy: $e');
  }
}
