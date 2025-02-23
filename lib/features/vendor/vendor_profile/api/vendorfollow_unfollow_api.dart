import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

Future<FollowResponse> followUnfollowVendor(String id) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.postWithToken,
      parameter: {
        'vendor_id': id, // Move vendor_id to the request body
      },
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/users/follow',
    );

    // Check if response data exists and return the parsed FollowResponse
    if (response.data != null) {
      return FollowResponse(
        data: response.data['data'],
        msg: response.data['msg'], // Ensure key is correct as per API response
        scratchAva: response.data['scratch_ava'],
      );
    } else {
      throw Exception('No response data received');
    }
  } catch (e) {
    print("Error: $e");
    throw Exception('Failed to follow/unfollow vendor: $e');
  }
}

class FollowResponse {
  String? data;
  String? scratchAva;
  String? msg;

  // Constructor to initialize the class with values
  FollowResponse({this.data, this.scratchAva, this.msg});

  // Named constructor to create a FollowResponse from a JSON object
  FollowResponse.fromJson(Map<String, dynamic> json) {
    data = json['data'];
    scratchAva = json['scratch_ava'];
    msg = json['msg'];
  }

  // Method to convert the object to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'data': data,
      'scratch_ava': scratchAva,
      'msg': msg,
    };
  }
}
