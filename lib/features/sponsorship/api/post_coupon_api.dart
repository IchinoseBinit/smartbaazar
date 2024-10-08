import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'post_coupon_api.g.dart';

@riverpod
Future<bool> postCoupon(
    PostCouponRef ref,
    String couponPercentage,
    String couponTotalWorth,
    String giftType,
    String couponQty,
    String discountupto,
    String couponImpression) async {
  final SmartClinet client = SmartClinet();
  try {
    FormData formData = FormData.fromMap({
      'coupon_percentage': couponPercentage,
      'discountupto': discountupto,
      'coupon_qty': couponQty,
      'coupon_total_worth': couponTotalWorth,
      'gift_type': giftType,
      'coupon_impression': couponImpression,
    });
    final response = await client.request(
      requestType: RequestType.postWithTokenFormData,
      url: ApiConstants.postCouponStoreUrl,
      parameter: formData,
    );
    if (response.statusCode == 200 && response.data['data'] == 'success') {
      print('Coupon posted successfully!');
      return true;
    } else {
      print('Error: ${response.data}');
      return false;
    }
  } catch (e) {
    print('Error posting Coupon: $e');
    return false;
  }
}
