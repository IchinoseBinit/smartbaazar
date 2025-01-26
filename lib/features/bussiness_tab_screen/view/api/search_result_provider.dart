import 'dart:convert'; // For jsonEncode
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/features/bussiness_tab_screen/model/business_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';
import 'package:dio/dio.dart';

part 'search_result_provider.g.dart';

@riverpod
Future<BusinessResponse> getSearchResponse(
  ref,
  String query,
) async {
  final SmartClient client = SmartClient();

  try {
    final Response response = await client.request(
      requestType: RequestType.postWithToken,
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/homeSections/search',
      parameter: {'query': query},
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data['data'];
      return BusinessResponse.fromJson(jsonResponse);
    } else {
      throw Exception(
          'Failed to load PostTypeFetch. Status code: ${response.statusCode}');
    }
  } on DioError catch (dioError) {
    // Enhanced error handling with Dio
    print('DioError: ${dioError.message}');
    print('Response data: ${dioError.response?.data}');
    print('Status code: ${dioError.response?.statusCode}');
    throw Exception(
        'Failed to fetch data. Error: ${dioError.message}. Response: ${dioError.response?.data}');
  } catch (e, stackTrace) {
    // General error handling
    print('Error fetching PostTypeFetch: $e\nStackTrace: $stackTrace');
    throw Exception('Failed to fetch PostTypeFetch: $e');
  }
}
