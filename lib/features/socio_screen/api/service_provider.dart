import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/services_screen/api/service_provider.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'service_provider.g.dart';

@riverpod
Future<PostTypeFetch> getSocioData(GetSocioDataRef ref) async {
  final SmartClient client = SmartClient();
  try {
    final Response response = await client.request(
      requestType: RequestType.getWithToken,
      url: "${ApiConstants.producttypeurl}/1", // API endpoint
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;
      print("bikash ${PostTypeFetch.fromJson(jsonResponse)}");

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
