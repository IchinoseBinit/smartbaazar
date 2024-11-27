import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/terms_condition/model/terms_condition_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'terms_condition_api.g.dart';

@riverpod
Future<TermsConditionsModel> getTermsCondition(GetTermsConditionRef ref) async {
  final SmartClinet client = SmartClinet();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.getTermsAndConditionUrl,
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;
      return TermsConditionsModel.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load terms and conditions');
    }
  } catch (e) {
    // Handle or log the error here
    print('Error loading terms and conditions: $e');

    throw Exception('Failed to load terms and conditions: $e');
  }
}
