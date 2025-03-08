import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/button_nav_bar/cusom_btn_bar/custom_bottom_nav.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';

class HeaderBannerWidget extends StatelessWidget {
  final WidgetRef ref;
  final String title, img, vname, brandname, membershipid, membershiptitle;
  final int id;
  final String posttypeid;

  const HeaderBannerWidget(
      {super.key,
      required this.title,
      required this.img,
      required this.id,
      required this.vname,
      required this.brandname,
      required this.membershipid,
      required this.posttypeid,
      required this.membershiptitle,
      required this.ref});

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
                  navigateToPage(
                    context: context,
                    page: VendorHomeScreen(vendorName: vname, vid: id),
                    ref: ref,
                    showNavBar:
                        true, // Hide the navbar when moving to this screen
                  );

                  //        Navigator.of(context, rootNavigator: false).push(MaterialPageRoute(
                  // builder: (context) => VendorHomeScreen(
                  //      vendorName: vname,
                  //      vid: id,
                  //     )));
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) =>
                  //           VendorHomeScreen(vendorName: vname, vid: id),
                  //     ));
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
                ],
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(5),
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
                  membershipid == "2"
                      ? spotlighticon
                      : membershipid == "1"
                          ? basicsellericon
                          : membershipid == "3"
                              ? domesticseller
                              : membershipid == "25"
                                  ? globalicon
                                  : basicsellericon, // Default icon
                  height: 15.h,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  membershiptitle,
                  style: headerstyle.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
                // Text(
                //   brandname,
                //   style: headerstyle.copyWith(
                //       color: Colors.black, fontWeight: FontWeight.w600),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
