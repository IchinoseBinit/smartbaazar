import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

@riverpod
Future<Map<String, String>> followvendor(String id) async {
  SmartClient client = SmartClient();
  try {
    final response = await client.request(
      requestType: RequestType.postWithToken,
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/users/follow',
      parameter: {
        'vendor_id': id,
      },
    );

    // Ensure the response is cast to Map<String, String>
    final data = Map<String, String>.from(response.data as Map);

    return data;
  } catch (e) {
    print("Error has occurred: $e");
  }

  // Return an empty map in case of error
  return {};
}
