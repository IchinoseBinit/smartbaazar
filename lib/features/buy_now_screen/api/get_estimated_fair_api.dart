import 'package:dio/dio.dart';
import 'package:smartbazar/features/add_to_cart/model/delivery_charge_model.dart';

Future<ParcelFareResponse> getDeliveryChargeSmartbiz(
  String token,
  List<double> pickupCoordinates,
  List<double> destinationCoordinates,
  String type,
  String pickupAddress,
  String destinationAddress,
  List<List<double>> intermediateCoordinates,
  int parcelWeight,
  String parcelCategoryId,
  String vendorId,
) async {
  final Dio dio = Dio();

  try {
    FormData formData = FormData.fromMap({
      "pickup_coordinates[]":
          pickupCoordinates.map((c) => c.toString()).toList(),
      "destination_coordinates[]":
          destinationCoordinates.map((c) => c.toString()).toList(),
      "intermediate_coordinates": null,
      "type": type,
      "pickup_address": pickupAddress,
      "destination_address": destinationAddress,
      "parcel_category_id": parcelCategoryId,
      "parcel_weight": parcelWeight,
      "vendor_id": vendorId,
    });

    // Debugging: Print the final request payload
    print("Form Data: ${formData.fields}");

    Response response = await dio.post(
      "https://smartbazaar.biz/api/customer/smartbazaar/delivery_charge",
      data: formData,
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
          "Content-Type": "multipart/form-data",
        },
      ),
    );

    // Debugging: Print the raw response
    print("Response Status Code: ${response.statusCode}");
    print("Response Data: ${response.data}");

    if (response.statusCode == 200) {
      return ParcelFareResponse.fromJson(response.data);
    } else {
      throw Exception("Failed to fetch estimated fare: ${response.data}");
    }
  } catch (e) {
    print("Exception: $e");
    throw Exception("Error fetching delivery charge: $e");
  }
}
