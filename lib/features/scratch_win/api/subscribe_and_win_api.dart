import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/scratch_win/model/subscribe_and_win_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'subscribe_and_win_api.g.dart';

@riverpod
Future<SubscribeAndWinModel> getSubscribeAndWin(
    GetSubscribeAndWinRef ref) async {
  final SmartClinet client = SmartClinet();
  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.getSubscribeAndWinUrl,
    );
    if(response.statusCode == 200) {
      final Map<String,dynamic> jsonResponse = response.data;
      return SubscribeAndWinModel.fromJson(jsonResponse);
    }else{
          throw Exception('Failed to load suscribe and win everyday content');

    }
  } catch (e) {
    print('Error loading suscribe and win everyday :$e');
    throw Exception('Failed to load suscribe and win everyday content: $e');
  }
}
