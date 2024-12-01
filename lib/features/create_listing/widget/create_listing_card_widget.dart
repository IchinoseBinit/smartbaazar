import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateListingCardWidget extends StatelessWidget {
  final Widget child;
  final double? width;

  const CreateListingCardWidget({super.key, required this.child, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: width ?? MediaQuery.of(context).size.width,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
          const BoxShadow(
            color: Colors.white,
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 18.h),
          child: child,
        ),
      ),
    );
  }
}
