import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'contact_seller_provider.g.dart';

@riverpod
Future<bool> contactSeller(
  ContactSellerRef? ref1, // Optional ref for Riverpod state
  String username,
  String phoneNumber, // Assuming phone number is an int, will convert to string later
  String body,
  int postId,
) async {
  final SmartClinet client = SmartClinet();

  try {
    // Check that mandatory fields are not empty
    if (username.isEmpty || phoneNumber == 0 || body.isEmpty || postId == 0) {
      throw Exception("All fields must be filled correctly.");
    }

    final response = await client.request(
      requestType: RequestType.postWithToken,
      url: ApiConstants.getcontactSellerUrl, // No need to interpolate if static
      parameter: {
        'from_name': username,            // Ensure this value is provided
        'from_phone': phoneNumber.toString(), // Convert phone number to string
        'body': body,                     // Ensure message body is provided
        'post_id': postId.toString(),     // Ensure 'post_id' is passed as string
      },
    );

    // Check if the response is successful
    if (response.statusCode == 201 && response.data['success'] == true) {
      return true;
    } else {
      print("Failed: ${response.data}");
      return false;
    }
  } catch (e) {
    // Log the error for debugging purposes
    print("Error occurred: $e");
    return false;
  }
}
