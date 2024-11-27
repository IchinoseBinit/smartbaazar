import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/order_details/model/shipping_cities_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'shipping_cities_api.g.dart';

@riverpod
Future<List<ShippingCitiesModel>> getShippingCities(GetShippingCitiesRef ref) async {
  final SmartClinet client = SmartClinet();
  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.getShippingCitiesUrl,
    );
    if (response.statusCode == 200) {
      //final Map<String, dynamic> jsonResponse = response.data;
     // return ShippingCitiesModel.fromJson(jsonResponse);
      List<dynamic> data = response.data['data'];
      return data.map((item) => ShippingCitiesModel.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load cities');
    }
  } catch (e) {
    throw Exception('Failed to load cities: $e');
  }
}
