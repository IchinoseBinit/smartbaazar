import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/features/button_nav_bar/cusom_btn_bar/custom_bottom_nav.dart';
import 'package:smartbazar/features/vendor_details/model/get_subscription_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'get_subscription_api.g.dart';

@riverpod
Future<SubscriptionResponse> getSubscription( ref, {int pageval = 1}) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/subscription?page=$pageval',
    );

    if (response.statusCode == 200) {
      return SubscriptionResponse.fromJson(response.data);
    } else {
      throw Exception('Failed to load subscription');
    }
  } catch (e) {
    print('Error loading subscription: $e');

    if (e.toString().contains("Unauthorized")) {
      ref.read(isLogin.notifier).state = false; // Ensure `isLogin` is available in the scope
    }

    throw Exception('Failed to load subscription');
  }
}
