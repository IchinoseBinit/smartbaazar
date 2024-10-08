import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/brand_bazar/model/brand_bazar_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'brand_bazar_api.g.dart';

@riverpod
Future<BrandBazarModel> getBrandBazaarResponse(
    GetBrandBazaarResponseRef ref) async {
  final SmartClinet client = SmartClinet();
  try {
    final response = await client.request(
      requestType: RequestType.get,
      url: ApiConstants.getBrandBazzarUrl,
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;
      return BrandBazarModel.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load brandbazar section');
    }
  } catch (e) {
    // Handle or log the error here
    print('Error loading load brandbazar section: $e');

    throw Exception('Failed to load load brandbazar section: $e');
  }
}