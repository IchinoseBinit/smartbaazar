import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/constant/color_constant.dart';


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
        size: 16,
        

        color: ColorConstant.toastBackgroundColor,
        ),
        SizedBox(width: 5.w,),
        Text("30%",
            style: headerstyle.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,)
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
