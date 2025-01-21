import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/feed-form_screen/model/products_feed_dropdown.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'products_feed_dropdown_api.g.dart';

@riverpod
Future<ProductsFeedDropdown> getProductsFeedDropdown(
    GetProductsFeedDropdownRef ref) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.getFeedProductDropDownUrl,
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;
      return ProductsFeedDropdown.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load your dropdown value');
    }
  } catch (e) {
    // Handle or log the error here
    print('Error loading your dropdown value $e');

    throw Exception('Failed to load your dropdown value: $e');
  }
}
