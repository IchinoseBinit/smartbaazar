import 'dart:io';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'create_new_listing_providers.g.dart';

@riverpod
Future<String> createlisting(
  CreatelistingRef? ref, {
  List<List<dynamic>>? cf,
  List<String>? tags,
  required String? category,
  required String? stock,
  String? mileage,
  String? warrenty,
  required String? title,
  required String? city,
  required String? price,
  required String? description,
  String? length,
  String? width,
  String? height,
  String? weight,
  String? disprice,
  required String? posttype,
  required String? email,
  required String? phone,
  required String? username,
  required String? pickup,
  List<File?>? images,
  required String? accept,
  required String? address,
  String? offer,
  String? story,
  String? youtube,
}) async {
  final SmartClinet client = SmartClinet();
  print("binodo $cf");
  try {
    // Create FormData to handle text fields and file uploads together
    FormData formData = FormData.fromMap({
      'tags': tags?.isEmpty ?? true ? [] : tags,
      'category_id': category ?? '',
      'post_type_id': posttype ?? '',
      'title': title ?? '',
      'description': description ?? '',
      'contact_name': username ?? '',
      'auth_field': 'phone',
      'phone': phone ?? '',
      'phone_country': 'NP',
      'city_id': city ?? '',
      'accept_terms': accept ?? '',
      'offers': offer ?? '',
      'accept_marketing_offers': accept ?? '',
      'story_display_days': story?.isEmpty ?? true ? '' : '0',
      'email': email ?? '',
      'youtube': youtube ?? '',
      'address': address ?? '',
      'price': price ?? '',
      'discounted_price': disprice ?? '',
      'pickup_address': pickup ?? '',
      'length': length?.isNotEmpty ?? false ? length : '0',
      'width': width?.isNotEmpty ?? false ? width : '0',
      'height': height?.isNotEmpty ?? false ? height : '0',
      'weight': weight?.isNotEmpty ?? false ? weight : '0',
      'stock': stock?.isNotEmpty ?? false ? stock : '0',
      'pickup': pickup?.isNotEmpty ?? false ? pickup : ''
    });

    // Dynamically add cf values based on the list
    if (cf != null && cf.isNotEmpty) {
      for (int i = 0; i < cf.length; i++) {
        final entry = cf[i];
        if (entry.length == 2) {
          final key = entry[0].toString(); // e.g., 'cf.3'
          final value = entry[1].toString(); // e.g., '4'
          formData.fields.add(MapEntry(key, value));
        }
      }
    }

    // Add images to FormData if they are not null
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
     // Print all data being sent to the API
    print("i sent Fields:");
    for (var field in formData.fields) {
      print("${field.key}: ${field.value}");
    }

    print("\nFormData Files:");
    for (var file in formData.files) {
      print("${file.key}: ${file.value.filename}");
    }

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
