// import 'dart:io';
// import 'package:dio/dio.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:smartbazar/constant/api_constant.dart';
// import 'package:smartbazar/network_service/smart-clinet.dart';
// import 'package:smartbazar/utils/request_type.dart';

// part 'create_new_listing_providers.g.dart';

// @riverpod
// Future<String> createlisting(
//     CreatelistingRef? ref,
//     String category,
//     String title,
//     String city,
//     String price,
//     String description,
//     String length,
//     String width,
//     String height,
//     String weight,
//     String disprice,
//     String type,
//     String email,
//     String phone,
//     String username,
//     String pickup,
//     List<File?> images,
//     String accept, // Parameter to accept marketing offers
//     String address // Parameter for address
//     ) async {
//   final client = SmartClinet();

//   try {
//     // Basic validation for required fields
  

//     // Prepare FormData
//     FormData formData = FormData.fromMap({
    
//     });

//     // Add image files
//     for (var file in images) {
//       if (file != null) {
//         formData.files.add(
//           MapEntry(
//             'pictures',
//             await MultipartFile.fromFile(file.path,
//                 filename: file.path.split('/').last),
//           ),
//         );
//       }
//     }

//     // Send the request using SmartClinet's request method
//     final response = await client.request(
//       requestType: RequestType.postWithTokenFormData,
//       url: ApiConstants.postlisting,
//       parameter: {
//           'category_id': "15",
//       'post_type_id': '2',
//       'title': "title asd ",
//       'description': " asd adasdas asdbj bjabsdb jba b u jbajsbd",
//       'contact_name': "Prajen Shakya",
//       'auth_field': 'phone',
//       'phone': '9813465780',
//       'phone_country': 'NP', // assuming Nepal
//       'city_id': '16',
//       'accept_terms': '1',
//       'accept_marketing_offers': '1',
//       'email': 'shakyaprajen@gmail.com',
//       'address': 'address',
//       'price': '120',
//       'discounted_price': '1',
//       'pickup_address': "pickup",
//       'length': length.isNotEmpty ? length : '0',
//       'width': width.isNotEmpty ? width : '0',
//       'height': height.isNotEmpty ? height : '0',
//       'weight': weight.isNotEmpty ? weight : '0',

//       },
//     );
//     print(
//         "status code is ${response.statusCode} and ${response.headers} also ${response.statusMessage}");
//     if (response.statusCode == 200) {
//       final result = response.data['result'];
//       final extra = response.data['extra'];

//       if (result?['id'] != null && extra?['pictures'] != null) {
//         return response.data['message']; // Success message from API
//       } else {
//         throw Exception("Unexpected response format.");
//       }
//     } else {
//       throw Exception("Failed to create listing: ${response.data['message']}");
//     }
//   } catch (e) {
//     print("Error occurred: $e");
//     if (e is DioException) {
//       print("Response Text: ${e.response?.data}");
//     }
//     throw Exception("API request failed: ${e.toString()}");
//   }
// }
