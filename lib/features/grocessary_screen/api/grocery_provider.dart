import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/services_screen/api/service_provider.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';
import 'package:dio/dio.dart'; // For better error handling with Dio

part 'grocery_provider.g.dart';

@riverpod
Future<PostTypeFetch> getGrocertResponse(GetGrocertResponseRef ref) async {
  final SmartClinet client = SmartClinet();
  try {
    final Response response = await client.request(
      requestType: RequestType.getWithToken,
      url: "${ApiConstants.producttypeurl}/8", // API endpoint
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;

      return PostTypeFetch.fromJson(jsonResponse);
    } else {
      throw Exception(
          'Failed to load PostTypeFetch. Status code: ${response.statusCode}');
    }
  } catch (e, stackTrace) {
    print('Error fetching PostTypeFetch: $e\nStackTrace: $stackTrace');
    throw Exception('Failed to fetch PostTypeFetch: $e');
  }
}
