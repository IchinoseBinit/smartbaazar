import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/constant/color_constant.dart';


class HeaderBannerWidget extends StatelessWidget {
  final String title,img;

   HeaderBannerWidget({
    super.key,
    required this.title,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.only(left: 5.w,top: 4,bottom: 4),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.white, Color(0xFf8c8c8c)])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.network(img,height: 50,width: 50,),
              SizedBox(
                width: 5.w,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    title?? "Trade-hub",
                    style: headerstyle.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
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
               borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10)
               )
            
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 3.w,),
                Image.asset('assets/images/Rectangle.png',
                color: ColorConstant.blackColor,
                ),
                SizedBox(width: 4.w,),
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