import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/features/create_listing/model/fields_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'get_categories_provider.g.dart';

@riverpod
Future<FieldsResponse> getCategoryResponse(ref, int id) async {
  final SmartClient client = SmartClient();
  try {
    final response = await client.request(
      requestType: RequestType.postWithToken,
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/categories/$id/fields',
    );
    print("API Response: ${response.data}");
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse =
          response.data; // Ensure it's a Map
      return FieldsResponse.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load brandbazar section');
    }
  } catch (e) {
    print('Error loading brandbazar section: $e');
    throw Exception('Failed to load brandbazar section: $e');
  }
}
