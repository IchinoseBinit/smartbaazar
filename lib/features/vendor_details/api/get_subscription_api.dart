import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/vendor_details/model/get_subscription_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part'get_subscription_api.g.dart';


@riverpod
Future<GetSubscriptionModel> getSubscription(GetSubscriptionRef ref)async{
  final SmartClinet client = SmartClinet();

  try{
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.getMySubscriptionUrl,
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;
      return GetSubscriptionModel.fromJson(jsonResponse);
    }else {
      throw Exception('Failed to load your subscription');
    }
  }catch (e) {
    // Handle or log the error here
    print('Error loading your subscription $e');

    throw Exception('Failed to load your subscription: $e');
  }
}