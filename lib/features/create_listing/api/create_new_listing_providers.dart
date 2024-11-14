import 'dart:io';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'create_new_listing_providers.g.dart';

@riverpod
Future<String> createlisting(
  CreatelistingRef? ref,
  String category,
  String title,
  String city,
  String price,
  String description,
  String length,
  String width,
  String height,
  String weight,
  String disprice,
  String type,
  String email,
  String phone,
  String username,
  String pickup,
  List<File?> images,
  String accept,
  String address,
) async {
  final SmartClinet client = SmartClinet();

  try {
    // Create FormData to handle text fields and file uploads together
    FormData formData = FormData.fromMap({
      'category_id': category,
      'post_type_id': type,
      'title': title,
      'description': description,
      'contact_name': username,
      'auth_field': 'phone',
      'phone': phone,
      'phone_country': 'NP',
      'city_id': city,
      'accept_terms': accept,
      'accept_marketing_offers': accept,
      'email': email,
      'address': address,
      'price': price,
      'discounted_price': disprice,
      'pickup_address': pickup,
      'length': length.isNotEmpty ? length : '0',
      'width': width.isNotEmpty ? width : '0',
      'height': height.isNotEmpty ? height : '0',
      'weight': weight.isNotEmpty ? weight : '0',
    });

    // Add images to FormData if they are not null
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
