import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'store_device_token.g.dart';

// Define the provider to accept a parameter
@riverpod
Future<String> storeDeviceToken(Ref ref, {required String token}) async {
  try {
    final SmartClient clinet = SmartClient();
    final response = await clinet.request(
      requestType: RequestType.postWithToken,
      url: ApiConstants.storeDeviceTokenUrl,
      parameter: {'device_token': token},
    );

    if (response.statusCode == 200) {
      final result = response.data['data'];

      return response.data['msg'];
    } else {
      return 'Error: ${response.statusCode}';
    }
  } catch (e) {
    print("An error occurred: $e");
    return 'Error: $e';
  }
}
