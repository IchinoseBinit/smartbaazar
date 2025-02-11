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
  List<List<dynamic>>? cf,
  List<String>? tags,
  String? category,
  String? stock,
  String? mileage,
  String? warrenty,
  String? title,
  String? city,
  String? price,
  String? description,
  String? length,
  String? width,
  String? height,
  String? weight,
  String? disprice,
  String? posttype,
  String? email,
  String? phone,
  String? username,
  String? pickup,
  List<File?>? images,
  String? accept,
  String? address,
  String? offer,
  String? story,
  String? youtube,
  int? package,
  List<Map<String, String>>? pieces,
  double? lat,
  double? long,
  int? hyperd,
  int? seller,
}) async {
  final SmartClient client = SmartClient();

  try {
    Map<String, dynamic> formDataMap = {};

    // Add only non-null fields to the map
    if (category != null) formDataMap['category_id'] = category;
    if (posttype != null) formDataMap['post_type_id'] = posttype;
    if (title != null) formDataMap['title'] = title;
    if (description != null) formDataMap['description'] = description;
    if (username != null) formDataMap['contact_name'] = username;
    if (phone != null) formDataMap['phone'] = phone;
    if (city != null) formDataMap['city_id'] = city;
    if (email != null) formDataMap['email'] = email;
    if (price != null) formDataMap['price'] = price;
    if (disprice != null) formDataMap['discounted_price'] = disprice;
    if (stock != null) formDataMap['stock'] = stock;
    if (address != null) formDataMap['address'] = address;
    if (length != null) formDataMap['length'] = length;
    if (width != null) formDataMap['width'] = width;
    if (height != null) formDataMap['height'] = height;
    if (weight != null) formDataMap['weight'] = weight;
    if (pickup != null) formDataMap['pickup'] = pickup;
    if (offer != null) formDataMap['offers'] = offer;
    if (story != null) formDataMap['story_display_days'] = story;
    if (youtube != null) formDataMap['youtube'] = youtube;
    if (lat != null) formDataMap['latitude'] = lat.toString();
    if (long != null) formDataMap['longitude'] = long.toString();
    if (hyperd != null) formDataMap['hyper_del'] = hyperd;
    if (seller != null) formDataMap['seller_del'] = seller;
    if (package != null) formDataMap['package_id'] = package;

    // Accept terms should be '1' if true, '0' if false, and excluded if null
    if (accept != null) formDataMap['accept_terms'] = accept;

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
      parameter: formData,
    );

    if (response.statusCode == 200 && response.data['success'] == true) {
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
