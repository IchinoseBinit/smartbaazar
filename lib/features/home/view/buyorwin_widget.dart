import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/features/home/view/custom_card_backclipper.dart';
import 'package:smartbazar/features/product_details/constant/product_detail_widget.dart';

class buyorwin_widget extends StatelessWidget {
  const buyorwin_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5,bottom: 10),
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(5),
        child: Container(
            margin: const EdgeInsets.only(top: 5),
            height: 310.h,
            width: 200.w,
            padding: const EdgeInsets.symmetric(horizontal: 5),
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
                      width: 190.w,
                      height: 240.h,
                      color: const Color(0xffA50157),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            'Adidas EQT Sneakers for M',
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
                                text: "Rs 15,999 x25",
                                style: headerstyle.copyWith(
                                    fontSize: 15, fontWeight: FontWeight.bold))
                          ]))
                        ],
                      ),
                    ),
                  ),
                ),
                const Positioned(
                    left: 50,
                    bottom: 100,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Color(0xffA50157),
                    )),
                const Positioned(
                    left: 45,
                    bottom: 100,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("assets/images/shoeh.png"),
                    )),
                Positioned(
                  top: 60,
                  left: 110,
                  child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("x25",
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
                                Image.asset("assets/images/group.png"),
                                SizedBox(
                                  width: 10.w,
                                ),
                                const Text("by ADIDAS"),
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
                                  "4",
                                  style: headerstyle.copyWith(
                                      color: const Color(0xff831F67),
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  "WINNDERS",
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
                                  "4",
                                  style: headerstyle.copyWith(
                                      color: const Color(0xff831F67),
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
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
                              width: 15.w,
                            ),
                            Text(
                              "ENQUIRE",
                              style: headerstyle.copyWith(
                                  color: Colors.black, fontSize: 12),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              "|",
                              style: headerstyle.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              "WIN",
                              style: headerstyle.copyWith(
                                  color: Colors.black, fontSize: 12),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              "|",
                              style: headerstyle.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              "BUY",
                              style: headerstyle.copyWith(
                                  color: Colors.black, fontSize: 12),
                            )
                          ],
                        ),
                        SizedBox(height: 5.h,)
                      ],
                    )),
                    SizedBox(height: 10.h,),
              ],
            )),
      ),
    );
  }
}
