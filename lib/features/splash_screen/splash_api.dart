import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/splash_screen/splash_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'splash_api.g.dart';

@riverpod
Future<SplashModel> getSplashApi(GetSplashApiRef ref) async {
  final SmartClinet client = SmartClinet();
  try {
    final response = await client.request(
      requestType: RequestType.get,
      url: ApiConstants.logoUrl,
    );
    print('API Response: ${response.data}');
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;

      return SplashModel.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to fetch logo data');
    }
  } catch (e) {
    print('Error fetching logo: $e');
    throw Exception('Error fetching splash data');
  }
}
