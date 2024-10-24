import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/b2b_screen/model/b2b_model.dart';
import 'package:smartbazar/features/used_screen/model/used_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';
import 'package:dio/dio.dart'; // For better error handling with Dio

part 'service_provider.g.dart';

@riverpod
Future<UsedModel> getServiceProvider(GetServiceProviderRef ref) async {
  final SmartClinet client = SmartClinet();
  try {
    final Response response = await client.request(
      requestType: RequestType.getWithToken,
      url: "${ApiConstants.producttypeurl}/3", // Consider moving to a constant
    );

    print("Response: $response");

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;
      return UsedModel.fromJson(jsonResponse);
    } else {
      throw Exception(
          'Failed to load B2B section. Status code: ${response.statusCode}');
    }
  } catch (e, stackTrace) {
    // Improved logging can be done here
    print('Error loading B2B: $e');
    throw Exception('Failed to load B2B section: $e\nStackTrace: $stackTrace');
  }
}
