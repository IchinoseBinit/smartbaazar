import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/buy_now_screen/model/post_buy_now_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'buy_now_api.g.dart';

@riverpod
Future<PostBuyNowModel> buynowproduct(
  ref,
  int postid,
  int vendorid,
) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.postWithToken,
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/users/getbuynow',
      parameter: {
        'post_id': postid,
        'vendor_id': vendorid, // ← Fixed missing comma
      },
    );

    if (response.statusCode == 200 && response.data['msg'] == "success") {
      return PostBuyNowModel.fromJson(response.data); // Return parsed model
    } else {
      print('Error: ${response.data}');
      throw Exception('Failed to fetch buy now product');
    }
  } catch (e) {
    print('Exception: $e');
    throw Exception('Something went wrong');
  }
}
