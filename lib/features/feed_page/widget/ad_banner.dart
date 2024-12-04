import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/product_item_widget.dart';

class AdsWidget extends StatelessWidget {
  const AdsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      margin: EdgeInsets.only(top: 5.h),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Colors.white,
          Color.fromARGB(255, 231, 219, 219),
          Color(0xFFa4a4a4)
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      )),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/images/group.png"),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 7.w,),
                       Text("Adidas",
                      style: headerstyle.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 17
                      ),
                      ),
                                                                                  Image.asset('assets/images/back.png')
              
              
                    ],
                  ),
                  SizedBox(
                    width: 150.w,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/Rectangle.png',
                        color: ColorConstant.blackColor,
                      ),
                      Text(
                        "GLOBAL BRAND ",
                        style: headerstyle.copyWith(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 5.h,),
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text("4.5K",
                      style: headerstyle.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.black

                      ),
                      ),
                      Text("SUBSCRIBERS",
                      style: headerstyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.black

                      ),
                      )
                    ],
                  ),
SizedBox(width: 20.w,),                   Column(
                    children: [
                      Text("1.5K",
                      style: headerstyle.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.black

                      ),
                      ),
                      Text("PRODUCTS",
                      style: headerstyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.black

                      ),
                      )
                    ],
                  ),
SizedBox(width: 20.w,),                 Column(
                    children: [
                      Text("8",
                      style: headerstyle.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.black

                      ),
                      ),
                      Text("LIVE PRIZES",
                      style: headerstyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.black

                      ),
                      )
                    ],
                  ),
                  SizedBox(width: 20.w,),
                   Column(
                    children: [
                     Icon(Icons.location_on_outlined),
                      Text("2.4",
                      style: headerstyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.black

                      ),
                      )
                    ],
                  ),
                ],
              )
            ],
          )
          
          // Image.asset(
          //     fit: BoxFit.cover,
          //     height: 110,
          //     "assets/images/subscribe.png"),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [

          //             Container(
          //               padding: const EdgeInsets.all(3),
          //               decoration: BoxDecoration(
          //                   color: const Color(0xffD9D9D9).withOpacity(0.5),
          //                   borderRadius: BorderRadius.circular(10)),
          //               child: Row(
          //                 children: [
          //                   SizedBox(
          //                     width: 3.w,
          //                   ),
          // Image.asset(
          //   'assets/images/Rectangle.png',
          //   color: ColorConstant.blackColor,
          // ),
          // Text(
          //   "GLOBAL BRAND ",
          //   style: headerstyle.copyWith(
          //       color: Colors.black,
          //       fontWeight: FontWeight.w600),
          // ),
          //                 ],
          //               ),
          //             )
          //           ],
          //         ),
          //       ],
          //     ),
          //     Row(
          //       children: [
          //         Text("data"),
          //         Text("data"),
          //         Text("data"),
          //         Text("data"),
          //       ],
          //     )
          //   ],
          // ),
        ],
      ),
    );
  }
}
