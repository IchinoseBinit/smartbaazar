import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/order_details/model/street_address_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'street_address_api.g.dart';

@riverpod
Future<List<StreetAddressModel>> getStreetAddress(
    GetStreetAddressRef ref, String query) async {
  final SmartClinet client = SmartClinet();
  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: '${ApiConstants.getStreetAddressUrl}?input=$query',
    );
    if (response.statusCode == 200) {
      List<dynamic> data = response.data['places'];
      return data.map((item) => StreetAddressModel.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load street addresses');
    }
  } catch (e) {
    throw Exception('Failed to load street addresses: $e');
  }
}
