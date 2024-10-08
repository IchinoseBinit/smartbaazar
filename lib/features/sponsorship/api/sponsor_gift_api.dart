import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/sponsorship/model/sponsor_gift_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'sponsor_gift_api.g.dart';

@riverpod
Future<SponsorGiftModel> getSponsorGiftModelResponse(
    GetSponsorGiftModelResponseRef ref) async {
  final SmartClinet client = SmartClinet();
  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.getSponsorshipUrl,
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;

      return SponsorGiftModel.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load sponsrship details');
    }
  } catch (e) {
    print('Error loading sponsrship details: $e');
    throw Exception('Failed to load sponsrship details: $e');
  }
}
