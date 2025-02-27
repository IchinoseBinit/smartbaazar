import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/features/product_details/model/enquire_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'check_enquire_provider.g.dart';

@riverpod
Future<EnquireResponse> checkEnquire( ref, String id) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/threads/message_enquire/$id',
    );

    print("Raw API Response: ${response.data}"); // Debug API data

    if (response.statusCode == 200) {
      return EnquireResponse.fromJson(response.data);
    } else {
      throw Exception("Invalid Response: ${response.data}");
    }
  } catch (e) {
    print("Error occurred: $e");
    throw Exception("Error fetching enquiry data");
  }
}
