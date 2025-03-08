import 'dart:io';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'create_new_listing_providers.g.dart';

@riverpod
Future<String> createlisting(
  ref, {
  List<List<dynamic>>? cf,
  List<String>? tags,
  required String category,
  required String stock,
  String? mileage,
  String? warrenty,
  required String title,
  required String city,
  required String price,
  required String description,
  String? length,
  String? width,
  String? height,
  String? weight,
  String? disprice,
  required String posttype,
  required String email,
  required String phone,
  required String username,
  required String pickup,
  List<File?>? images,
  required String accept,
  required String address,
  String? offer,
  String? story,
  String? youtube,
  int? package,
  List<Map<String, String>>? pieces,
  double? lat,
  double? long,
  int? hyperd,
  int? seller,
  int? trending,
}) async {
  print('raju $cf');
  final SmartClient client = SmartClient();

  try {
    // Create FormData to handle text fields and file uploads dynamically
    Map<String, dynamic> formDataMap = {
      'category_id': category,
      'post_type_id': posttype,
      'title': title,
      'description': description,
      'contact_name': username,
      'auth_field': "phone",
      'phone': phone,
      'phone_country': "NP",
      'city_id': city,
      'accept_terms': accept,
      'email': email,
      'country_code': "NP",
      'price': price,
      'discounted_price': disprice,
      'negotiable': "0",
      'phone_hidden': "1",
      'captcha': "embed",
      'trending': trending ?? '0',
      'ip_addr': "127.0.0.1",
      'accept_marketing_offers': accept,
      'is_permanent': "0",
      'package_id': package ?? 0,
      'payment_method_id': "1",
      'stock': stock ?? 0,
      'address': address ?? 'world',
      'length': length,
      'width': width,
      'height': height,
      'weight': weight,
      'pickup': pickup,
      'longitude': long?.toString() ?? "75",
      'latitude': lat?.toString() ?? "85",
      'hyper_del': hyperd,
      'seller_del': seller,
      'story_display_days': story,
      'offers': offer ?? "Seasonal Offer",
      'youtube': youtube ?? "www.google.com",
      'piece_from[]': pieces?.map((e) => e['from']).toList() ?? [],
      'piece_to[]': pieces?.map((e) => e['to']).toList() ?? [],
      'rate[]': pieces?.map((e) => e['rate']).toList() ?? [],
    };

    // Handle dynamic tags
    if (tags != null && tags.isNotEmpty) {
      formDataMap['tags[]'] = tags;
    }

    // Handle dynamic cf values
    if (cf != null && cf.isNotEmpty) {
      for (var item in cf) {
        String key = item[0]; // cf.<number> (e.g., cf.35)
        var value = item[1];  // Value can be a list or a single value

        // If the value is a list, join it into a string
        if (value is List) {
          formDataMap[key] = value.join(',');
        } else {
          formDataMap[key] = value.toString();
        }
      }
    }

    // Create FormData
    FormData formData = FormData.fromMap(formDataMap);

    // Handle images
    if (images != null) {
      for (var file in images) {
        if (file != null) {
          formData.files.add(MapEntry(
            'pictures',
            await MultipartFile.fromFile(
              file.path,
              filename: file.path.split('/').last,
            ),
          ));
        }
      }
    }

    // Generate cURL command from formData for debugging (if needed)
    String curlCommand = 'curl -X POST <API_URL> \\ \n';
    for (var entry in formData.fields) {
      curlCommand += '--form \'${entry.key}=${entry.value}\' \\ \n';
    }

    for (var file in formData.files) {
      curlCommand += '--form \'${file.key}=@${file.value.filename}\' \\ \n';
    }

    // Print cURL command
    print("rembo\n $curlCommand");

    // Send the request
    final response = await client.request(
      requestType: RequestType.postWithTokenFormData,
      url: ApiConstants.postlisting,
      parameter: formData,
    );

    if (response.statusCode == 200 && response.data['success'] == true) {
      return response.data['message'];
    } else {
      throw Exception("Failed to create listing: ${response.data['message']}");
    }
  } catch (e) {
    throw Exception("API request failed: ${e.toString()}");
  }
}
