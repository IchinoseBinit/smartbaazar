import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';
import 'package:http/http.dart' as http;

part 'checkout_form_submission_api.g.dart';

// Define the convertUrlToFile function
Future<File> convertUrlToFile(String imageUrl) async {
  final directory = await getApplicationDocumentsDirectory();
  final filePath =
      '${directory.path}/${DateTime.now().millisecondsSinceEpoch}.jpg';
  final file = File(filePath);

  final response = await http.get(Uri.parse(imageUrl));
  await file.writeAsBytes(response.bodyBytes);

  return file;
}

@riverpod
Future<bool> postCheckoutForm(
  PostCheckoutFormRef ref,
  String userName,
  String address,
  String email,
  String payMethod,
  String delivery,
  String deliveryType,
  String city,
  String street,
  String? coupon,
  List<String?> postId,
  List<String> itemId,
  List<String> postName,
  List<String> qty,
  List<String> price,
  String total,
  List<String?> imagePath,
) async {
  final SmartClinet client = SmartClinet();

  try {
    FormData formData = FormData.fromMap({
      'name': userName,
      'address': address,
      'email': email,
      'pay_method': payMethod,
      'delivery': delivery,
      'delivery_type': deliveryType,
      'city': city,
      'street': street,
      'coupon': coupon ?? '',
      'post_id[]': postId,
      'item_id[]': itemId,
      'post_name[]': postName,
      'qty[]': qty,
      'price[]': price,
      'total': total,
    });

    // Add image(s) to the form data
    if (imagePath != null && imagePath.isNotEmpty) {
      for (var path in imagePath) {
        if (path != null) {
          File localFile;

          // Convert URL to local file
          if (path.startsWith('http')) {
            localFile = await convertUrlToFile(path);
          } else {
            // It's already a local file path, so we can use it directly
            localFile = File(path);
          }

          // Get the file extension
          String extension = localFile.path.split('.').last.toLowerCase();

          // Check if the file type is allowed
          if (!['jpg', 'jpeg', 'png', 'gif', 'svg'].contains(extension)) {
            print('Warning: Unsupported file type $extension');
            continue;
          }

          // Add the file to the form data using the correct name
          formData.files.add(
            MapEntry(
              'image[]',
              MultipartFile.fromBytes(await localFile.readAsBytes(),
                  filename: 'image.$extension'),
            ),
          );
        }
      }
    }

    final response = await client.request(
      requestType: RequestType.postWithTokenFormData,
      url: ApiConstants.finishCheckoutFormUrl,
      parameter: formData,
    );

    if (response.statusCode == 200 && response.data['success']) {
      print('Order placed successfully!');
      return true;
    } else {
      print('Error: ${response.data}');
      return false;
    }
  } catch (e) {
    print('Error on placing Order: $e');
    return false;
  }
}
