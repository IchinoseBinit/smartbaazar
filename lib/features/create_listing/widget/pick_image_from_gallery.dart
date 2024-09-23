import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerService {
  final ImagePicker _picker = ImagePicker();

  Future<List<File?>> pickMultipleImages(BuildContext context) async {
    List<File?> images = [];
    try {
      // Picking multiple images
      final List<XFile> pickedFiles = await _picker.pickMultiImage();
      if (pickedFiles != null) {
        images = pickedFiles.map((pickedFile) => File(pickedFile.path)).toList();
      }
    } catch (e) {
      print(e);
      showSnackBar(context: context, content: e.toString());
    }
    return images;
  }

  void showSnackBar({required BuildContext context, required String content}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.grey,
        content: Text(content),
      ),
    );
  }
}
