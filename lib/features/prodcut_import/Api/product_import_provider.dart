import 'dart:io';
import 'package:dio/dio.dart'; // Ensure you have Dio imported
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';


@riverpod
Future<String> storeProductImport(File myfile) async {
  SmartClinet client = SmartClinet();

  try {
    FormData formData = FormData.fromMap({
      'image': await MultipartFile.fromFile(
        myfile.path,
        filename: myfile.path.split('/').last,
      ),
    });

    final response = await client.request(
      requestType: RequestType.postWithTokenFormData,
      url: ApiConstants.productimportapi,
      parameter: formData,
    );

    if (response.statusCode == 200 && response.data != null) {
      return response.data['msg'] ?? 'Product Imported Successfully!!!';
    } else {
      return response.data["message"] ?? 'Error occurred';
    }
  } catch (e) {
    print("Error is $e");
    return 'An error occurred: $e';
  }
}

class FileUploadWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        // Assume you have logic to pick a file
        File? file; // Replace with your file picking logic

        if (file != null) {
          final responseMessage = await storeProductImport(file);
          
          // Show the response message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(responseMessage)),
          );
        }
      },
      child: Text('Upload File'),
    );
  }
}
