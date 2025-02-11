import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ProductImage extends StatefulWidget {
  final String? productImage;

  const ProductImage({Key? key, this.productImage}) : super(key: key);

  @override
  _ProductImageState createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  String? imageUrl;

  @override
  void initState() {
    super.initState();
    // Initialize the image URL
    imageUrl = widget.productImage;
  }

  @override
  Widget build(BuildContext context) {
    // Check if the imageUrl is valid, if not show a placeholder
    return widget.productImage == null || widget.productImage!.isEmpty
        ? SizedBox(
            width: 200.w,
            height: 130.h,
            child: const Icon(Icons.error),
          )
        : Image.network(
            widget.productImage ?? '',
            height: 130.h,
            width: 200.w,
            fit: BoxFit.fill,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) {
                return child; // If no loading, show the image
              } else {
                return Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    width: 200.w,
                    height: 130.h,
                    color: Colors.white, // Placeholder shimmer container
                  ),
                );
              }
            },
            errorBuilder: (context, error, stackTrace) {
              return SizedBox(
                width: 200.w,
                height: 130.h,
                child: const Icon(Icons.error), // Show error icon if image fails to load
              );
            },
          );
  }
}
