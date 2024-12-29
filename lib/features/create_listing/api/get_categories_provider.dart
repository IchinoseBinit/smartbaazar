import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/brand_bazar/model/brand_bazar_model.dart';
import 'package:smartbazar/features/create_listing/model/fields_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'get_categories_provider.g.dart';

@riverpod
Future<FieldsResponse> getCategoryResponse(
    GetCategoryResponseRef ref, int id) async {
  final SmartClinet client = SmartClinet(); // Assuming this is your API client
  try {
    final response = await client.request(
      requestType: RequestType.post,
      url:
          'https://smartbazaar.jianjun-rnd.com.np/api/categories/$id/fields', // Ensure this is the correct URL
    );
    print("lodu ${response.data}");
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse =
          response.data; // Parse the response data>
      return FieldsResponse.fromJson(jsonResponse); // Convert to your model
    } else {
      throw Exception(
          'Failed to load brandbazar section'); // Handle non-200 responses
    }
  } catch (e) {
    // Log or handle the error
    print('Error loading brandbazar section: $e');
    throw Exception('Failed to load brandbazar section: $e');
  }
}
