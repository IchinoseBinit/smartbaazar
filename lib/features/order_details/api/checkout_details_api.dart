import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/order_details/model/checkout_details_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'checkout_details_api.g.dart';

@riverpod
Future<CheckoutDetailsModel> postSelectedItemOfCart(
  PostSelectedItemOfCartRef ref,
  List<String> vendorId,
  List<String> selectedProduct,
) async {
  final SmartClinet client = SmartClinet();
  try {
    FormData formData = FormData.fromMap({
      'vendor_id': vendorId,
      'selected[]': selectedProduct,
     
    });
    final response = await client.request(
      requestType: RequestType.postWithTokenFormData,
      url: ApiConstants.getCheckoutDetailsUrl,
      parameter: formData,
    );
    if (response.statusCode == 200 &&
        response.data['msg'] != null &&
        response.data['msg'].contains('success')) {
      print('Membership request posted successfully!');
       final Map<String, dynamic> jsonResponse = response.data;
      return CheckoutDetailsModel.fromJson(jsonResponse);
    } else {
      print('Error: ${response.data}');
       throw Exception('Failed to load cart details');
    }
  } catch (e) {
    print('Error posting brand membership request: $e');
     print('Error loading cart details: $e');
    throw Exception('Failed to load cart details: $e');
  }
}
