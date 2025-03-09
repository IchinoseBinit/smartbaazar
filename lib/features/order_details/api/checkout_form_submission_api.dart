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
  String? delCost,
  String? coupon,
  List<String?> postId,
  List<String> itemId,
  List<String> postName,
  List<String> qty,
  List<String> price,
  String total,
  // List<String?> imagePath,
  //from delivery
  String token,
  String zoneId,
  List<double> pickupCoordinates,
  List<double> customerCoordinates,
  List<double> customerRequestCoordinates,
  List<double> destinationCoordinates,
  int getestimateid,
  double estimatedFare,
  double estimatedDistance,
  double estimatedTime,
  String pickupAddress,
  String destinationAddress,
  int vendorId,
  String type,
  double returnFee,
  double cancellationFee,
  String senderName,
  String senderPhone,
  String senderAddress,
  String receiverName,
  String receiverPhone,
  String receiverAddress,
  String parcelCategoryId,
  double weight,
  String payer,
) async {
  final SmartClient client = SmartClient();

  try {
    FormData formData = FormData.fromMap({
      'name': userName,
      // 'address': address,
      'address': address,
      'email': email,
      'pay_method': payMethod, //cod
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
      'del_cost': delCost,
      //from delivery
      "zone_id": zoneId,
      "pickup_coordinates": pickupCoordinates.toString(),
      "customer_coordinates": customerCoordinates.toString(),
      "customer_request_coordinates": customerRequestCoordinates.toString(),
      // "destination_coordinates": destinationCoordinates.toString(),
      "est_id": getestimateid,
      "estimated_fare": estimatedFare.toString(),
      "estimated_distance": estimatedDistance.toString(),
      "estimated_time": estimatedTime.toString(),
      "pickup_address": pickupAddress,
      // "destination_address": destinationAddress,
      "vendor_id": vendorId.toString(),
      "type": type,
      "return_fee": 0,
      "cancellation_fee": 0,
      "sender_name": senderName,
      "sender_phone": senderPhone,
      "sender_address": senderAddress,
      "receiver_name": receiverName,
      "receiver_phone": receiverPhone,
      "receiver_address": receiverAddress,
      "parcel_category_id": parcelCategoryId,
      "weight": weight.toString(),
      "payer": payer,
      "intermediate_coordinates": "", // Empty if no intermediate coordinates
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
