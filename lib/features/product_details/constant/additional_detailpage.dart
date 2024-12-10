import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/constant/color_constant.dart';

class AdditonalDetailsWidget extends StatelessWidget {
  final String title;
  final String desp;

  // Constructor to require title and description parameters
  const AdditonalDetailsWidget({
    super.key,
    required this.title,
    required this.desp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.symmetric(horizontal: 10.w),
      padding: const EdgeInsets.all(5),
      width: double.infinity,
      color: const Color(0xFFf9fbfe),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Text(title,
          style: headerstyle.copyWith(
            fontWeight: FontWeight.bold,
            color: ColorConstant.blackColor,
            fontSize: 13
          ),
          ), // Directly use title without checking null
          Wrap(
            alignment: WrapAlignment.start,
            children: [Text(desp)], // Directly use desp without checking null
          ),
        ],
      ),
    );
  }
}
