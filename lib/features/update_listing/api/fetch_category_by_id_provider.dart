import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';



Future<CategoryByIdModel> getcategorybyid(String id) async {
  final SmartClient client = SmartClient();
  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/categories/$id',
    );
    print("API Response: ${response.data}");
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data['result'];
      return CategoryByIdModel.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load category');
    }
  } catch (e) {
    print('Error loading category: $e');
    throw Exception('Failed to load category: $e');
  }
}
class CategoryByIdModel {
  final int id;
  final String? parentId;
  final String name;
  final String slug;
  final String? description;

 

  CategoryByIdModel({
    required this.id,
    this.parentId,
    required this.name,
    required this.slug,
    this.description,

 
  });

  factory CategoryByIdModel.fromJson(Map<String, dynamic> json) {
    return CategoryByIdModel(
      id: json['id'],
      parentId: json['parent_id'],
      name: json['name'],
      slug: json['slug'],


    );
  }
}
