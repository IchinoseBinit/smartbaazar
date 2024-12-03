import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/features/product_details/constant/product_detail_widget.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';

class PriceRowWidget extends StatelessWidget {
  const PriceRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.arrow_downward_rounded,
        color: ColorConstant.toastBackgroundColor,
        ),
        SizedBox(width: 5.w,),
        Text("30%",
        style: headerstyle,
        ),
        SizedBox(width: 5.w,),
        const Icon(Icons.filter_drama_rounded,
        color: ColorConstant.toastBackgroundColor,
        )
      ],
    );
  }
}
