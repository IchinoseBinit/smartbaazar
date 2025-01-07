import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'scratch_and_win_provider.g.dart';

@riverpod
Future<String> getScratchAndWinResponse(GetScratchAndWinResponseRef ref) async {
  try {
    final SmartClient client = SmartClient();

    // Make the request with the payload
    final response = await client.request(
      requestType: RequestType.postWithToken, // POST request with token
      url: ApiConstants.scratchandwinurl,
    );

    if (response.statusCode == 200) {
      final result = response.data['data'];
      final message = result['message']; // Extract the message

      return message; // Return the message string
    } else {
      // If the request fails, return an error message
      return 'Failed to fetch data: ${response.statusMessage}';
    }
  } catch (e) {
    // Return error message if an exception occurs
    return 'Error occurred: $e';
  }
}
