import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/constant/color_constant.dart';

class DiscountBoxWidget extends StatelessWidget {
  final String b2bPricingString;

  const DiscountBoxWidget({super.key, required this.b2bPricingString});

  @override
  Widget build(BuildContext context) {
    List<dynamic> b2bPricing = json.decode(b2bPricingString);

    return SizedBox(
      height: 100.h,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: b2bPricing.length,
        itemBuilder: (context, index) {
          var item = b2bPricing[index];
          return Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: const Color(0xffD9D9D9)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${item['piece_from'] ?? 'N/A'} - ${item['piece_to'] ?? 'N/A'} Pieces",
                  style: headerstyle.copyWith(
                    fontSize: 12,
                    color: ColorConstant.blackColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  "Rs ${item['rate']}",
                  style: headerstyle.copyWith(
                    fontSize: 12,
                    color: ColorConstant.blackColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5.h),
                Row(
                  children: [
                    const Icon(Icons.arrow_downward_rounded, size: 14),
                    Text(
                      "30%", // Modify this if discount is dynamic
                      style: headerstyle.copyWith(
                        fontSize: 12,
                        color: ColorConstant.blackColor,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
