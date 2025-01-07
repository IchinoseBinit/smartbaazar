import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/features/bussiness_tab_screen/model/business_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';
import 'package:dio/dio.dart'; // For better error handling with Dio

part 'search_result_provider.g.dart';

@riverpod
Future<BusinessResponse> getSearchResponse(
  GetSearchResponseRef ref,
  String query,
) async {
  final SmartClient client = SmartClient();
  try {
    final Response response = await client.request(
      requestType: RequestType.postWithToken,
      headers: {'X-AppApiToken': 'Yala@Techies_Nepal'},
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/homeSections/search',
      queryParameters: {'query': query},

      // parameter: {'query': query},
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data['data'];
      // print(
      //     "bibash ${BusinessResponse.fromJson(jsonResponse).brandNew!}");
      return BusinessResponse.fromJson(jsonResponse);
    } else {
      throw Exception(
          'Failed to load PostTypeFetch. Status code: ${response.statusCode}');
    }
  } catch (e, stackTrace) {
    print('Error fetching PostTypeFetch: $e\nStackTrace: $stackTrace');
    throw Exception('Failed to fetch PostTypeFetch: $e');
  }
}
