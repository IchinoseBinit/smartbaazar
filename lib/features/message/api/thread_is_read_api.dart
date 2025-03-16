import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'thread_is_read_api.g.dart';

@riverpod
Future<String> makethreadread(ref, {required String id}) async {
  final SmartClient client = SmartClient();
  try {
    final response = await client.request(
      requestType: RequestType.postWithToken,
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/threads/thread_is_read/$id',
    ); // Use a reasonable timeout (15 sec)

    if (response.statusCode == 200) {
      final responseData = response.data; // Assuming response.data is a Map<String, dynamic>
      return responseData['msg'] ?? 'Thread marked important'; // Extract and return "msg"
    } else {
      throw Exception('Failed to mark thread important: ${response.statusCode}');
    }
  } catch (e) {
    print('Error marking thread important: $e');
    throw Exception('Failed to mark thread important: $e');
  }
}
