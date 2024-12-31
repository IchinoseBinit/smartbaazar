import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/features/home/view/custom_card_backclipper.dart';

class buyorwin_widget extends StatelessWidget {
  const buyorwin_widget({
    super.key,
    required this.vendorname,
    required this.winners,
    required this.proctimage,
    required this.vendorImage,
        required this.productname,
        required this.worth,
        required this.gift_qty,


  });

  final String vendorname, winners, proctimage, vendorImage,productname,worth,gift_qty;

  @override
  Widget build(BuildContext context) {
    print("maka $proctimage");
    return Padding(
      padding: const EdgeInsets.only(left: 5, bottom: 10),
      child: Card(
        elevation: 8,
        child: Container(
            // margin: const EdgeInsets.only(top: 5),
            height: 290.h,
            width: 282.w,
            // padding: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: ClipPath(
                    clipper: CustomCardBackgroundClipper(),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      width: 300.w,
                      height: 200.h,
                      color: const Color(0xffA50157),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            productname,
                            style: headerstyle.copyWith(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: "worth  ",
                                style: headerstyle.copyWith(
                                  fontSize: 11,
                                )),
                            TextSpan(
                                text: "$worth x${gift_qty}",
                                style: headerstyle.copyWith(
                                    fontSize: 15, fontWeight: FontWeight.bold))
                          ]))
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                    left: 60.h,
                    bottom: 100.h,
                    child: CircleAvatar(
                      radius: 75.sp,
                      backgroundColor: const Color(0xffA50157),
                    )),
                Positioned(
                    left: 55.h,
                    bottom: 100.h,
                    child: CircleAvatar(
                        radius: 75.sp,
                        backgroundImage: NetworkImage(proctimage))),
                Positioned(
                  top: 65.h,
                  left: 125.h,
                  child: CircleAvatar(
                      radius: 28.5.sp,
                      backgroundColor: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("x ${gift_qty}",
                                style: headerstyle.copyWith(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xffEC325D))),
                            Text("PRIZES",
                                style: headerstyle.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 9,
                                )),
                          ],
                        ),
                      )),
                ),
                Positioned(
                  bottom: 0,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              // CircleAvatar(
                              //   backgroundImage: NetworkImage(vendorImage),
                              //   radius: 20.0,
                              // ),
                              Container(
                                padding: const EdgeInsets.all(2),
                                // Thickness of the border
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.grey, // Border color
                                    width: 2.0, // Border width
                                  ),
                                ),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(vendorImage),
                                  radius:
                                      18.0, // Adjust radius based on padding
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              // Text("by $vendorname"),

                              // Text(
                              //   "by $vendorname",
                              //   style: headerstyle.copyWith(
                              //     fontSize: 12.sp, // Adjust font size if needed
                              //   ),
                              //   textAlign: TextAlign.center, // Centers the text
                              //   overflow: TextOverflow.ellipsis, // Truncates text with ellipsis
                              //   maxLines: 1, // Ensures a single line with ellipsis if overflowed
                              //   softWrap: false, // Prevents wrapping to a new line
                              // ),

                              // SizedBox(
                              //   width: 200.w, // Fixed width for the text box
                              //   child: Text(
                              //     "by ${vendorname.length > 12 ? vendorname.substring(0, 12) + '...' : vendorname}",
                              //     style: headerstyle.copyWith(
                              //       fontSize: 12.sp, // Adjust font size if needed
                              //     ),
                              //     textAlign: TextAlign.center, // Centers the text
                              //     overflow: TextOverflow.ellipsis, // Truncates text with ellipsis
                              //     maxLines: 1, // Keeps the text on a single line
                              //   ),
                              // ),

                              Text(
                                "by ${vendorname.length > 15 ? '${vendorname.substring(0, 12)}...' : vendorname}",
                                style: const TextStyle(
                                  fontSize: 14,
                                  // Use a fixed font size for debugging
                                  color: Colors.black, // Ensure visible text
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.w,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/icon/jobIcon.svg",
                                height: 10,
                                width: 10,
                                color: const Color(0xff831F67),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                winners,
                                style: headerstyle.copyWith(
                                    color: const Color(0xff831F67),
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "WINNERS",
                                style: headerstyle.copyWith(
                                    color: const Color(0xff831F67),
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/icon/Vector.png",
                                color: const Color(0xff831F67),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "13.5K",
                                style: headerstyle.copyWith(
                                    color: const Color(0xff831F67),
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.w,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 25.w,
                          ),
                          Text(
                            "ENQUIRE",
                            style: headerstyle.copyWith(
                                color: Colors.black, fontSize: 12),
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          Text(
                            "|",
                            style: headerstyle.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          Text(
                            "WIN",
                            style: headerstyle.copyWith(
                                color: Colors.black, fontSize: 12),
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          Text(
                            "|",
                            style: headerstyle.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          Text(
                            "BUY",
                            style: headerstyle.copyWith(
                                color: Colors.black, fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),),
      ),
    );
  }
}
