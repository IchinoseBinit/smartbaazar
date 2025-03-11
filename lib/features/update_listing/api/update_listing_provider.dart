import 'dart:io';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'update_listing_provider.g.dart';

@riverpod
Future<String> updatelisting(
  ref,
  String num, {
  String? category,
  String? posttype,
  String? title,
  String? description,
  String? username,
  String? phone,
  String? city_id,
  String? email,
  String? price,
  String? disprice,
  String? stock,
  String? address,
  String? length,
  String? width,
  String? height,
  String? weight,
  String? pickup,
  String? offer,
  String? story,
  String? youtube,
  double? lat,
  double? long,
  int? hyperd,
  int? seller,
  int? package,
  String? accept,
  List<String>? tags,
  List<Map<String, String>>? pieces,
  List<File?>? images,
}) async {
  final SmartClient client = SmartClient();

  try {
    Map<String, dynamic> formDataMap = {
      'category_id': category,
      'post_type_id': posttype ?? '1',
      'title': title,
      'description': description,
      'contact_name': username,
      'auth_field': 'phone',
      'phone': phone,
      'phone_country': 'NP',
      'city_id': city_id,
      'accept_terms': accept ?? '1',
      'email': email,
      'country_code': 'NP',
      'price': price,
      'discounted_price': disprice,
      'negotiable': '0',
      'phone_hidden': '1',
      'captcha': 'embed',
      'ip_addr': '127.0.0.1',
      'accept_marketing_offers': '1',
      'is_permanent': '0',
      'tags': '',
      'package_id': package?.toString(),
      'payment_method_id': '1',
      'trending': '1',
      // 'stock': stock,
      'address': address,
      'length': length,
      'width': width,
      'height': height,
      'weight': weight,
      'pickup': pickup,
      'longitude': long?.toString(),
      'latitude': lat?.toString(),
      'hyper_del': hyperd?.toString(),
      'seller_del': seller?.toString(),
      'offer': offer,
    };

    // Handle tags array
    if (tags != null && tags.isNotEmpty) {
      formDataMap['tags[]'] = tags;
    }

    // Handle pieces array
    if (pieces != null && pieces.isNotEmpty) {
      formDataMap['piece_from[]'] = pieces.map((e) => e['from']).toList();
      formDataMap['piece_to[]'] = pieces.map((e) => e['to']).toList();
      formDataMap['rate[]'] = pieces.map((e) => e['rate']).toList();
    }

    FormData formData = FormData.fromMap(formDataMap);

    // Handle image uploads
    if (images != null) {
      for (var file in images) {
        if (file != null && await file.exists()) {
          formData.files.add(MapEntry(
            'pictures[]',
            await MultipartFile.fromFile(
              file.path,
              filename: file.path.split('/').last,
            ),
          ));
        }
      }
    }

    final response = await client.request(
      requestType: RequestType.putWithTokenEncoded,
      url: "https://smartbazaar.jianjun-rnd.com.np/api/posts/$num",
      parameter: formDataMap, // Using formDataMap with proper values
    );

    if (response.statusCode == 200) {
      return response.data['message'];
    } else {
      throw Exception("Failed to update listing: ${response.data['message']}");
    }
  } on DioException catch (e) {
    return "Dio Error: ${e.message}";
  } catch (e) {
    return "API request failed: ${e.toString()}";
  }
}


