import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/features/add_to_cart/model/delivery_charge_model.dart';

part 'delivery_charge_api.g.dart';

@riverpod
Future<ParcelFareResponse> getDeliveryCharge(
  ref, 
  String token,
  List<double> pickupCoordinates,
  List<double> destinationCoordinates,
  String parcelCategoryId,
  String parcelWeight,
  String vendorId,
  String pickupAddress,
  String destinationAddress,
) async {
  final Dio dio = Dio();

  try {
    final response = await dio.post(
      'https://smartbazaar.biz/api/customer/smartbazaar/delivery_charge',
      options: Options(
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
          'accept': '*/*',
          'Connection': 'Keep-Alive',
          'X-AppApiToken': 'Yala@Techies_Nepal',
        },
      ),
      data: {
        'pickup_coordinates': pickupCoordinates,
        'destination_coordinates': destinationCoordinates,
        'type': 'parcel',
        'pickup_address': pickupAddress,
        'destination_address': destinationAddress,
        'intermediate_coordinates': "",
        'parcel_category_id': parcelCategoryId,
        'parcel_weight': parcelWeight,
        'vendor_id': vendorId,
      },
    );

    return ParcelFareResponse.fromJson(response.data);
  } catch (e) {
    print('Error fetching delivery charge: $e');
    throw Exception('Failed to fetch delivery charge');
  }
}
