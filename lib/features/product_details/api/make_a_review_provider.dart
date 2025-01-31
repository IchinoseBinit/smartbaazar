import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'make_a_review_provider.g.dart';

@riverpod
Future<String> postreview(
  ref,
  int id,
  String comment,
  String? rating,
) async {
  try {
    final SmartClient client = SmartClient();

    print("kala ${SmartClient.token}");
    // Make the request with the payload
    final response = await client.request(
      requestType: RequestType.postWithToken,
      url: '${ApiConstants.postreview}/$id',
      parameter: {'comment': comment, 'rating': rating},
    );

    if (response.statusCode == 200) {
      final result = response.data;
      final message = result['msg'] ?? 'No message returned from the server';

      return message; // Return the message string
    } else {
      return 'Failed to fetch data: ${response.statusMessage}';
    }
  } catch (e) {
    return 'Error occurred: $e';
  }
}
