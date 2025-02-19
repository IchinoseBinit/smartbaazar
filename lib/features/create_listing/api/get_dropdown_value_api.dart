import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/create_listing/model/dropdown_value_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

class NewListingRepository {
  final SmartClient client = SmartClient();

  Future<List<TypeList>> fetchTypeList() async {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.fetchType,
    );

    if (response.statusCode == 200) {
      List<dynamic> data = response.data['types'];
      return data.map((item) => TypeList.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load types');
    }
  }

  Future<List<MyCategory>> fetchCategoryList({String? parentId}) async {
    // Map of parent IDs to their respective values
    final parentIdMapping = {
      '1': 0,
      '2': 0,
      '3': 97,
      '7': 217,
      '4': 73,
      '5': 122,
      '8': 171,
    };

    // Determine the value to use for 'parentId'
    final resolvedParentId = parentIdMapping[parentId] ??
        0; // Default to 97 if parentId is not in the map

    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.fetchCategoryList,
      queryParameters: {
        'parentId': resolvedParentId,
        'nestedIncluded': 1,
      },
    );

    if (response.statusCode == 200) {
      List<dynamic> data = response.data['result']['data'];
      return data.map((item) => MyCategory.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }

  Future<OffersResponse> fetchOffers() async {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.getoffers,
    );

    // Parse the JSON response to OffersResponse
    print("babu ${OffersResponse.fromJson(response.data)}");
    return OffersResponse.fromJson(response.data);
  }

  Future<List<MyCategory>> fetchSubCategoryList(int parentId) async {
    // Fetch subcategories based on parentId
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url:
          '${ApiConstants.fetchCategoryList}?parentId=$parentId&nestedIncluded=1',
    );

    if (response.statusCode == 200) {

      List<dynamic> data = response.data['result']['data'];
      return data.map((item) => MyCategory.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load subcategories');
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

  Future<List<CityList>> fetchCities(int? pagenum) async {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: '${ApiConstants.fetchCities}?page=$pagenum',
    );

    if (response.statusCode == 200) {
      List<dynamic> data = response.data['result']['data'];
      return data.map((item) => CityList.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load cities');
    }
  }
}
