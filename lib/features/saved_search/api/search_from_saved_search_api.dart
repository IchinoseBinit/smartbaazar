import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/saved_search/model/saved_search_response_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'search_from_saved_search_api.g.dart';

@riverpod
Future<List<BrandNew>?> searchFromSavedSearch(SearchFromSavedSearchRef ref, String query) async {
  final SmartClinet client = SmartClinet();
  try {
    final response = await client.request(
      requestType: RequestType.post,
      url: '${ApiConstants.searchFromSavedSearchUrl}?$query',
    );
    
    print('API Response: ${response.data}');
    
    if (response.statusCode == 200 && response.data['brand_new'] != null) {
      final brandNewList = response.data['brand_new'];
      
      print('Brand New List: $brandNewList');
      
      if (brandNewList is List) {
        return brandNewList.map((item) => BrandNew.fromJson(item)).toList();
      } else {
        print('Invalid brand new data');
        return null;
      }
    } else {
      print('Error: ${response.data}');
      return null;
    }
  } catch (e) {
    print('Error search request: $e');
    return null;
  }
}
