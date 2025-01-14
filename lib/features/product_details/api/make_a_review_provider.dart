import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
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
    final SmartClinet client = SmartClinet();

    // Ensure the rating is properly handled
    // final Map<String, dynamic> queryParameters = {
    //   'comment': comment,
    //   'rating': 2
    // };
    // if (rating != null) {
    //   queryParameters['rating'] = rating;
    // }
    print("kala ${SmartClinet.token}");
    // Make the request with the payload
    final response = await client.request(
        requestType: RequestType.postWithTokenFormData,
        url: '${ApiConstants.postreview}/$id',
        queryParameters: {'comment': comment, 'rating': 2},
        parameter: {'comment': comment, 'rating': 2});

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
