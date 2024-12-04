import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/product_item_widget.dart';


class PriceRowWidget extends StatelessWidget {
  const PriceRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(Icons.arrow_downward_rounded,
        size: 15,
        

        color: ColorConstant.toastBackgroundColor,
        ),
        SizedBox(width: 5.w,),
        Text("30%",
        style: headerstyle,
        ),
        SizedBox(width: 5.w,),
      Image.asset("assets/images/bflame.png",
      height: 20,
      color: ColorConstant.blackColor,
      )
       
        
      ],
    );
  }
}
