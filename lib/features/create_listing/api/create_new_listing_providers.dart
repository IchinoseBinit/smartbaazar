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
    String accept, // Parameter to accept marketing offers
    String address // Parameter for address
    ) async {
  final SmartClinet client = SmartClinet();

  try {
    // Basic validation
    if (email.isEmpty ||
        phone.isEmpty ||
        username.isEmpty ||
        category.isEmpty ||
        title.isEmpty) {
      throw Exception("All required fields must be filled out correctly.");
    }

    // Prepare FormData
    FormData formData = FormData();
    formData.fields.addAll([
      MapEntry('category_id', category),
      MapEntry('post_type_id', type),
      MapEntry('title', title),
      MapEntry('description', description),
      MapEntry('contact_name', username),
      const MapEntry('auth_field', 'phone'),
      MapEntry('phone', phone),
      const MapEntry('phone_country', "NP"), // assuming Nepal
      MapEntry('city_id', city),
            MapEntry('accept_terms', accept),

      MapEntry('accept_marketing_offers', accept),
      MapEntry('email', email),
      MapEntry('address', address),
      MapEntry('price', price),
      MapEntry('discounted_price', disprice),
      MapEntry('pickup_address', pickup),
      MapEntry('length', length.isNotEmpty ? length : '0'),
      MapEntry('width', width.isNotEmpty ? width : '0'),
      MapEntry('height', height.isNotEmpty ? height : '0'),
      MapEntry('weight', weight.isNotEmpty ? weight : '0'),
    ]);

    // Prepare multipart file data for images
    for (var file in images) {
      if (file != null) {
        formData.files.add(MapEntry(
          'pictures', // Assuming 'pictures[]' is the key for images
          await MultipartFile.fromFile(
            file.path,
            filename: file.path.split('/').last, // Optional: Use the actual file name
          ),
        ));
      }
    }

    // Log the prepared data for debugging
    print("Form Data: ${formData.fields}");

    // Send the request using SmartClinet's request method
    final response = await client.request(
      requestType: RequestType.postWithTokenFormData, // Multipart with Token
      url: ApiConstants.postlisting,
      parameter: formData,
    );

    // Log the response
    print("Response: ${response.data}");

    if (response.statusCode == 201 && response.data['success'] == true) {
      final result = response.data['result'];
      final extra = response.data['extra'];

      // Validate expected keys in the response
      if (result != null &&
          result['id'] != null &&
          result['title'] != null &&
          extra != null &&
          extra['pictures'] != null) {
        return response.data['message']; // Success message from API
      } else {
        throw Exception("Response keys do not match expected structure.");
      }
    } else {
      throw Exception("Failed to create listing: ${response.data['message']}");
    }
 } catch (e) {
  print("Error occurred: $e");
  if (e is DioException) {
    // Print the error response if available
    print("Response Text: ${e.response?.data}");
  }
  throw Exception("API request failed: ${e.toString()}");
}

}
