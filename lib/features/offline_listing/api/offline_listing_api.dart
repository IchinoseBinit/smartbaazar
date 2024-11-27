import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/offline_listing/model/offline_listing_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part'offline_listing_api.g.dart';

@riverpod 
Future<OfflineListingModel> getOfflineListing(GetOfflineListingRef ref)async{
final SmartClinet client = SmartClinet();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.getOfflineListingUrl,
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;
      return OfflineListingModel.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load notifications');
    }
  } catch (e) {
    print('Error loading notifications: $e');
    throw Exception('Failed to load notifications: $e');
  }
}