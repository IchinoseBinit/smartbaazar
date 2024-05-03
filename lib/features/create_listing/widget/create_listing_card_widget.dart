import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/auth/widgets/custom_drop_down_widget.dart';

class CreateListingCardWidget extends StatelessWidget {
  final Widget child;
  const CreateListingCardWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4), // Normal shadow color
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
          BoxShadow(
            color: Colors.white, // Spread effect color
            spreadRadius: 0, // Adjust the spread radius as needed
            blurRadius: 10,
            offset: Offset(0, 0), // No offset for the spread effect
          ),
        ],
      ),
      child: Card(
        color: Colors.white,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 18.h),
          child: child,
        ),
      ),
    );
  }
}
