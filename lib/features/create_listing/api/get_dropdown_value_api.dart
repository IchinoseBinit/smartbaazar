
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/create_listing/model/dropdown_value_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

class NewListingRepository {
  final SmartClinet client = SmartClinet();

  Future<List<TypeList>> fetchTypeList() async {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.fetchType,
    );
    
    if (response.statusCode == 200) {
      // Use response.data instead of response.body
      List<dynamic> data = response.data['types'];
      return data.map((item) => TypeList.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load types');
    }
  }

   Future<List<Category>> fetchCategoryList() async {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.fetchCategoryList,
    );

    if (response.statusCode == 200) {
      List<dynamic> data = response.data['result']['data'];
      return data.map((item) => Category.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }
  Future<List<ProductType>> fetchProductType() async {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.fetchProductType,
    );

    if (response.statusCode == 200) {
      List<dynamic> data = response.data['result']['data'];
      return data.map((item) => ProductType.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load Product Type');
    }
  }
  Future<List<CityList>> fetchCities(int page) async {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: '${ApiConstants.fetchCities}?page=$page',
    );

    if (response.statusCode == 200) {
      List<dynamic> data = response.data['result']['data'];
      return data.map((item) => CityList.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load cities');
    }
  }
}


