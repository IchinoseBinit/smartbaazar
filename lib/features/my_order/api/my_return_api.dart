import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/my_order/model/my_return_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'my_return_api.g.dart';

@riverpod
Future<MyReturnModel> getMyReturns(GetMyReturnsRef ref) async {
  final SmartClinet client = SmartClinet();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.getMyReturnsUrl,
    );
   
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;
      print('Raw JSON Response: $jsonResponse');

      return MyReturnModel.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load returns details');
    }
  } catch (e) {
    // Handle or log the error here
    print('Error loading returns details: $e');
    throw Exception('Failed to load returns details: $e');
  }
}
