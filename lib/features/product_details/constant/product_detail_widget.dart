import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';

class ProductDetailWidget extends StatelessWidget {
  const ProductDetailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250.w,
      child: Card(
        shape: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorConstant.grayColor),
            borderRadius: BorderRadius.circular(20)),
        elevation: 1,
        shadowColor: ColorConstant.blackColor.withOpacity(0.8),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SvgPicture.asset(
                            b2bIcon,
                            height: 10,
                            color: Colors.grey,
                          ),
                          Text(
                            "TradeHub",
                            style: headerstyle.copyWith(
                                fontSize: 10, color: Colors.grey),
                          )
                        ],
                      ),
                      PopupMenuButton(
                        padding: EdgeInsets.zero,
                        elevation: 0,
                        iconColor: const Color(0xffB6B4B4),
                        color: const Color.fromARGB(102, 101, 102, 106),
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                                child: Text(
                              "Share",
                              style: headerstyle.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            )),
                            PopupMenuItem(
                                child: Text(
                              "Save",
                              style: headerstyle.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            )),
                            PopupMenuItem(
                                child: Text(
                              "Conatct Seller",
                              style: headerstyle.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            )),
                            PopupMenuItem(
                                child: Text(
                              "Get Seler Directives",
                              style: headerstyle.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            )),
                            PopupMenuItem(
                                child: Text(
                              "Report",
                              style: headerstyle.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            )),
                          ];
                        },
                      ),
                    ],
                  ),
                ),
                Image.asset("assets/images/ear.png"),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Himalayan Brightening Vitamin...",
                        style: headerstyle.copyWith(
                            color: ColorConstant.blackColor,
                            fontSize: 13,
                            fontWeight: FontWeight.w800),
                        softWrap: true,
                        maxLines: 1,
                      ),
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "RS 60,000",
                            style: headerstyle.copyWith(
                                color: ColorConstant.blackColor,
                                fontSize: 13,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          const Icon(
                            Icons.track_changes_sharp,
                            color: Color(0xff901B41),
                            size: 15,
                          ),
                          Text(
                            "Best Proce",
                            style: headerstyle.copyWith(
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff901B41),
                                fontSize: 10),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "RS 10,000",
                            style: headerstyle.copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                                decoration:
                                    TextDecoration.lineThrough,
                                decorationColor: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: const Color(0xff901B41),
                            child: Text(
                              "129",
                              style:
                                  headerstyle.copyWith(fontSize: 10),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5)),
                                border:
                                    Border.all(color: Colors.grey)),
                            child: RatingBar.builder(
                              initialRating: 5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 12,
                              itemPadding: const EdgeInsets.symmetric(
                                  horizontal: 1.0),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Color(0xff901B41),
                              ),
                              onRatingUpdate: (rating) {},
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/flameIcon.png",
                            height: 10,
                            width: 10,
                             color: const Color(0xff901B41),
                          ),
                          Text(
                            "30%",
                            style: headerstyle.copyWith(
                              fontWeight: FontWeight.w600,
                                color: const Color(0xff901B41),
                                fontSize: 10),
                          ),
                          const Icon(
                            Icons.arrow_downward_rounded,
                            size: 15,
                            color: Color(0xff901B41),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                  'assets/icon/Rectangle.png'),
                              const Text("78")
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/icon/Vector.png"),
                              const Text("3.2K")
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/icon/solar.png",
                                color: Colors.grey,
                              ),
                              const Text("345")
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 15.w, vertical: 3.h),
                  decoration: const BoxDecoration(color: Colors.grey),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ENQUIRE",
                        style: headerstyle.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: ColorConstant.blackColor),
                      ),
                      Text(
                        '|',
                        style: headerstyle.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: ColorConstant.blackColor),
                      ),
                      Text(
                        "wIN",
                        style: headerstyle.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: ColorConstant.blackColor),
                      ),
                      Text(
                        '|',
                        style: headerstyle.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: ColorConstant.blackColor),
                      ),
                      Text(
                        "BUY",
                        style: headerstyle.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: ColorConstant.blackColor),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(7),
                  decoration: const BoxDecoration(
                    color: Color(0xff3D215F),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/power.png"),
                          ),
                          Column(
                            mainAxisAlignment:
                                MainAxisAlignment.start,
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 4.w,),
                                  Text(
                                    "Dozoko",
                                    style: headerstyle.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(width: 4.w,),
                                  const Icon(
                                    Icons.logout,
                                    color: Colors.white,
                                    size: 12,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 4.w,),
                                  Image.asset(
                                      "assets/images/nepalFlag.png",
                                      height: 9.h,
                                      ),
                                      SizedBox(width: 4.w,),
                                  Text(
                                    "DOMESTIC BRAND",
                                    style: headerstyle.copyWith(
                                        fontSize: 7,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                                color: Colors.white,
                                size: 12,
                              ),
                              Text(
                                "2.5 km",
                                style: headerstyle.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset("assets/images/mike.png"),
                              Text(
                                "SPONSERED",
                                style: headerstyle.copyWith(
                                    fontSize: 7,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
            // Icon(icons)
          ],
        ),
      ),
    );
  }
}
