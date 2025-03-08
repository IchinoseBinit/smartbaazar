import 'package:dio/dio.dart';
// import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';
// import 'package:http/http.dart' as http;

part 'checkout_form_submission_api.g.dart';



@riverpod
Future<bool> postCheckoutForm(
  PostCheckoutFormRef ref,
  String userName,
  String address,
  String email,
  String payMethod,
  String delivery,
  String deliveryType,
  // String city,
  String street,
  String? coupon,
  List<String?> postId,
  List<String> itemId,
  List<String> postName,
  List<String> qty,
  List<String> price,
  String total,
  // List<String?> imagePath,
) async {
  final SmartClient client = SmartClient();

  try {
    FormData formData = FormData.fromMap({
      'name': userName,
      // 'address': address,
      'address': address,
      'email': email,
      'pay_method': "cod",
      // 'pay_method': payMethod,
      'delivery': delivery,
      'delivery_type': deliveryType,
      'city': null,
      'street': street,
      'coupon': coupon ?? '',
      'post_id[]': postId,
      'item_id[]': itemId,
      'post_name[]': postName,
      'qty[]': qty,
      'price[]': price,
      'total': total,
      'del_cost': "100"
    });

    final response = await client.request(
      requestType: RequestType.postWithTokenFormData,
      url: ApiConstants.finishCheckoutFormUrl,
      parameter: formData,
    );

    if (response.statusCode == 200 && response.data['msg'] != null) {
      print('Order placed successfully!');
      return true;
    } else {
      print('Error: ${response.data}');
      return false;
    }
  } catch (e) {
    print('Error on placing Order: $e');
    return false;
  }
}
