import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/vendor/view/model/dispute_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'dispute_api.g.dart';

@riverpod
Future<DisputeModel> getDisputeResponse(GetDisputeResponseRef ref) async {
  final SmartClinet client = SmartClinet();

  try {
    final response = await client.request(
      requestType: RequestType.get,
      url: ApiConstants.getDisputeUrl,
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;
      return DisputeModel.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load dispute');
    }
  } catch (e) {
    print('Error loading dispute: $e');
    throw Exception('Failed to load dispute: $e');
  }
}
