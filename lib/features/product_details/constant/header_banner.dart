import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/product_item_widget.dart';


class HeaderBannerWidget extends StatelessWidget {
  const HeaderBannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.symmetric(horizontal: 5.w),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.white, Color(0xFf8c8c8c)])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset("assets/images/product_logo.png"),
              SizedBox(
                width: 5.w,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "NIC Asia Capital",
                    style: headerstyle.copyWith(
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                
                                                            Image.asset('assets/images/back.png')

                  //assets\images\back.png
                  // Image.asset("assets/images/back.png",
                  // height: 10,
                  // width: 10,
                  // )
                ],
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
               color: const Color(0xffD9D9D9).withOpacity(0.5),
               borderRadius: BorderRadius.circular(10)
            
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: 3.w,),
                Image.asset('assets/images/Rectangle.png',
                color: ColorConstant.blackColor,
                ),
                Text(
                  "GLOBAL BRAND ",
                  style: headerstyle.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}