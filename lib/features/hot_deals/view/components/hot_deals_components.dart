import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/constant/color_constant.dart';

class hot_deals_container extends StatelessWidget {
  const hot_deals_container({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
          border: Border.all(color: ColorConstant.grayColor)),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.directions_car,
                        color: ColorConstant.blackColor,
                        size: 20,
                      ),
                      Text(
                        "Automobiles",
                        style: headerstyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: ColorConstant.blackColor),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Column(
                        children: [
                          const Icon(
                            Icons.spa,
                            color: ColorConstant.blackColor,
                            size: 20,
                          ),
                          Text(
                            "Beauty & Well",
                            style: headerstyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: ColorConstant.blackColor),
                          ),
                          Text(
                            "Being",
                            style: headerstyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: ColorConstant.blackColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const Icon(
                            Icons.phone_android_rounded,
                            size: 20,
                            color: ColorConstant.blackColor,
                          ),
                          Text(
                            "Phone and",
                            style: headerstyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: ColorConstant.blackColor),
                          ),
                          Text(
                            "Tablets",
                            style: headerstyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: ColorConstant.blackColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.sports_basketball,
                            size: 20,
                            color: ColorConstant.blackColor,
                          ),
                          Text(
                            "Sports and",
                            style: headerstyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: ColorConstant.blackColor),
                          ),
                          Text(
                            "Fitness",
                            style: headerstyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: ColorConstant.blackColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const Icon(
                            Icons.laptop,
                            size: 20,
                            color: ColorConstant.blackColor,
                          ),
                          Text(
                            "Computer",
                            style: headerstyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: ColorConstant.blackColor),
                          ),
                          Text(
                            "Laptop",
                            style: headerstyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: ColorConstant.blackColor),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.tv_rounded,
                            size: 20,
                            color: ColorConstant.blackColor,
                          ),
                          Text(
                            "Electronics &",
                            style: headerstyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: ColorConstant.blackColor),
                          ),
                          Text(
                            "Appliances",
                            style: headerstyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: ColorConstant.blackColor),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const Icon(
                            Icons.chair,
                            size: 20,
                          ),
                          Text(
                            "Furniture",
                            style: headerstyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: ColorConstant.blackColor),
                          ),
                          Text(
                            "Appliances",
                            style: headerstyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: ColorConstant.blackColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/guitar.png'),
                          Text(
                            "Audio &",
                            style: headerstyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: ColorConstant.blackColor),
                          ),
                          Text(
                            "Musical",
                            style: headerstyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: ColorConstant.blackColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 5.h,
                          ),
                          Image.asset('assets/images/piggy.png'),
                          Text(
                            "Plants,Animals",
                            style: headerstyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: ColorConstant.blackColor),
                          ),
                          Text(
                            "& Pets",
                            style: headerstyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: ColorConstant.blackColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Column(
                        children: [
                          Image.asset('assets/images/unbox.png'),
                          Text(
                            "Made in Nepal",
                            style: headerstyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: ColorConstant.blackColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                  
                ],
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}
