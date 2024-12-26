import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';

class HeaderBannerWidget extends StatelessWidget {
  final String title, img, vname;
  final int id;

  const HeaderBannerWidget(
      {super.key,
      required this.title,
      required this.img,
      required this.id,
      required this.vname});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 6.w, top: 10, bottom: 10),
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.white, Color(0xFf8c8c8c)])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            VendorHomeScreen(vendorName: vname, vid: id),
                      ));
                },
                child: CircleAvatar(
                  backgroundColor: ColorConstant.blackColor,
                  backgroundImage: NetworkImage(img),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    title ?? "Trade-hub",
                    style: headerstyle.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
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
                    bottomLeft: Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 3.w,
                ),
                Image.asset(
                  'assets/images/Rectangle.png',
                  color: ColorConstant.blackColor,
                ),
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  "GLOBAL BRAND ",
                  style: headerstyle.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
