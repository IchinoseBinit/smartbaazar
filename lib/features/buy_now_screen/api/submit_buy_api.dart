import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/buy_now_screen/model/post_buy_now_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'submit_buy_api.g.dart';

@riverpod
Future<bool> buynowsubmit(
  ref,
  String cityCode,
  String usernmame,
  String address,
  String email,
  double price,
  String payMethod,
  String delivery,
  String deliveryType,
  String city,
  String street,
  double latitude,
  double longitude,
  String? coupon,
  int qty,
  double delCost,
  double couponDiscount,
  double total,
  int productId,
  String productTitle,
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
  String? paymentid
) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      
      requestType: RequestType.postWithToken,
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/users/buynow',
      parameter: {
        'name': usernmame,
        'address': address,
        'email': email,
        'price': price,
        'pay_method': payMethod,
        'delivery': delivery,
        'delivery_type': deliveryType, 
        'city': city,
        'street': street == '0' ? null : street,
        'latitude': latitude == 0 ? null : latitude,
        'longitude': longitude == 0 ? null : longitude,
        'coupon': coupon,
        'qty': qty, 
        'del_cost': delCost,
        'couponDiscount': couponDiscount,
        'total': total,
        'product_id': productId,
        'product_title': productTitle,
        'city_code': cityCode,
        //from delivery
        "zone_id": zoneId,
        "pickup_coordinates": pickupCoordinates.toString(),
        "customer_coordinates": customerCoordinates.toString(),
        "customer_request_coordinates": customerRequestCoordinates.toString(),
        "destination_coordinates": destinationCoordinates.toString(),
        "est_id": getestimateid,
        "estimated_fare": estimatedFare.toString(),
        "estimated_distance": estimatedDistance.toString(),
        "estimated_time": estimatedTime.toString(),
        "pickup_address": pickupAddress,
        "destination_address": destinationAddress,
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
        'ui':paymentid
      },
    );

    if (response.statusCode == 200) {
      return true; // Return true if the request is successful
    } else {
      print('Error: ${response.data}');
      throw Exception('Failed to fetch buy now product');
    }
  } catch (e) {
    print('Exception: $e');
    throw Exception('Something went wrong');
  }
}
