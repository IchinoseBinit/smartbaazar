import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'subscribe_vendor_provider.g.dart';

// Define the provider to accept a parameter
@riverpod
Future<String> subscribevendor(SubscribevendorRef ref,
    {required String vendorid}) async {
  try {
    final SmartClinet clinet = SmartClinet();
    final response = await clinet.request(
      requestType: RequestType.postWithToken,
      url: ApiConstants.followunfollowvendorurl,
      parameter: {'vendor_id': vendorid},
    
    );

    if (response.statusCode == 200) {
      final result = response.data['data'];
      return result; // Expecting "0" for unfollow, other values for follow
    } else {
      print("Failed to subscribe/unsubscribe: ${response.statusCode}");
      return 'Error: ${response.statusCode}';
    }
  } catch (e) {
    print("An error occurred: $e");
    return 'Error: $e';
  }
}
