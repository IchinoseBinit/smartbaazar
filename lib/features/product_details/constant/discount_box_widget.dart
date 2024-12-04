import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/product_item_widget.dart';



class DiscountBoxWidget extends StatelessWidget {
  const DiscountBoxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110.h,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
        return  Container(
        margin: const EdgeInsets.only(left: 10,top: 5),
            // height: 95.h,
            // width: 100.w,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Color(0xffD9D9D9))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text("5-8 Pieces",
              style: headerstyle.copyWith(
                fontSize: 12,
                color: ColorConstant.blackColor,
                fontWeight: FontWeight.w600
                
              ),
              ),
              SizedBox(height: 5.h,),
               Text("Rs 45,000",
               style: headerstyle.copyWith(
                fontSize: 12,
                color: ColorConstant.blackColor,
                fontWeight: FontWeight.w600
                
              ),
              
              ),
              SizedBox(height: 5.h,),
               Row(
                children: [
                  Icon(Icons.arrow_downward_rounded,
                  size: 14,
                  ),
                  Text("30%",
                   style: headerstyle.copyWith(
                fontSize: 12,
                color: ColorConstant.blackColor,
                fontWeight: FontWeight.w600
                
              ),
                  )
                ],
              )
            ],
          ),
        );
        
      },),
    );
  }
}
