import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/add_to_cart/model/cart_item_model.dart';
import 'package:smartbazar/features/add_to_cart/model/smart_biz_login_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'smart_biz_login_api.g.dart';

@riverpod
Future<BizLoginResponse> loginSmartBiz( ref) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.postWithToken,
      url: 'https://smartbazaar.biz/api/customer/auth/login',
      //  queryParameters: {
      //   'phone_or_email': '+9779808926192',
      //   'password':12341234
      // },
      parameter: {
        'phone_or_email': '+9779810331719',
        'password':12341234
      }
    );

    if (response.statusCode == 200) {
      final data = response.data;
      return BizLoginResponse.fromJson(data);
    } else {
      throw Exception('Failed to login.');
    }
  } catch (e) {
    print('Please login'); // Log specific message
    throw e.toString(); // Rethrow with specific message
  }
}
