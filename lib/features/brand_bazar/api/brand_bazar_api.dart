import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/brand_bazar/model/brand_bazar_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'brand_bazar_api.g.dart';

@riverpod
Future<BrandBazarModel> getBrandBazaarResponse(GetBrandBazaarResponseRef ref) async {
  final SmartClinet client = SmartClinet(); // Assuming this is your API client
  try {
    final response = await client.request(
      requestType: RequestType.get,
      url: ApiConstants.getBrandBazzarUrl, // Ensure this is the correct URL
    );
    
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data; // Parse the response data
      return BrandBazarModel.fromJson(jsonResponse); // Convert to your model
    } else {
      throw Exception('Failed to load brandbazar section'); // Handle non-200 responses
    }
  } catch (e) {
    // Log or handle the error
    print('Error loading brandbazar section: $e');
    throw Exception('Failed to load brandbazar section: $e');
  }
}
