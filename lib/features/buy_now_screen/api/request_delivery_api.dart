import 'package:dio/dio.dart';
import 'package:smartbazar/features/add_to_cart/model/delivery_charge_model.dart';

Future<ParcelFareResponse> requestdelivery(
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
    String payer) async {
  final Dio dio = Dio();

  try {
    FormData formData = FormData.fromMap({
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
      "sender_phone": '+9779855487766',
      "sender_address": senderAddress,
      "receiver_name": receiverName,
      "receiver_phone": receiverPhone,
      "receiver_address": receiverAddress,
      "parcel_category_id": parcelCategoryId,
      "weight": weight.toString(), 
      "payer": payer,
      "intermediate_coordinates": "", // Empty if no intermediate coordinates
    });

    // Debugging: Print the final request payload
    print("Form Data: ${formData.fields}");
    Duration(seconds: 4);
    Response response = await dio.post(
      "https://smartbazaar.biz/api/customer/smartbazaar/delivery",
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

//sir , client le saturday ko date extend garera holi ko din ma fix vako cha , client le venue ni book garisakkya cha . aba hami sanga 4 days cha payment integration,ani
