import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/message/model/alert_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'alert_message_api.g.dart';

@riverpod
Future<AlertModel> getAlertMessage(GetAlertMessageRef ref) async {
  final SmartClinet client = SmartClinet();

  try {
    final response = await client.request(
      requestType: RequestType.get,
      url: ApiConstants.getAlertMessageUrl,
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;
      return AlertModel.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load notifications');
    }
  } catch (e) {
    print('Error loading notifications: $e');
    throw Exception('Failed to load notifications: $e');
  }
}
