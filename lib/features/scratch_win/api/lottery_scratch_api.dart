import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/features/scratch_win/model/lottery_scratch_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'lottery_scratch_api.g.dart';

@riverpod
Future<GiftResponseModel> getscratchdata(ref) async {
  final SmartClient client = SmartClient();
  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/users/lottery',
    );

    print("Response Data: $response");

    if (response.statusCode == 200) {
      final data = response.data; // Assuming response.data contains JSON

      // ✅ Deserialize into GiftResponseModel
      return GiftResponseModel.fromJson(data);
    } else {
      throw Exception('Failed to load lottery scratch data');
    }
  } catch (e) {
    print('Error loading lottery scratch data: $e');
    throw Exception('Failed to load lottery scratch data: $e');
  }
}
