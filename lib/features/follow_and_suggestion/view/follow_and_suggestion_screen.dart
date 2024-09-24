import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class FollowAndSuggestionScreen extends StatelessWidget {
  const FollowAndSuggestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F1F1),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xffF6F1F1),
          toolbarHeight: 70.h,
          leadingWidth: 30.h,
          title: Row(
            children: [
              Text(
                "Following",
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              SizedBox(
                width: 100.w,
              ),
              Text(
                'Suggestion',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black.withOpacity(0.5)),
              )
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 12.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const VendorProductContianer(),
                SizedBox(
                  height: 14.h,
                ),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) => Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'HoT PICKS FROM BHOJ DEALS',
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const Icon(Icons.more_horiz)
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 160.h,
                        color: const Color(0xffD9D9D9),
                      )
                    ],
                  ),
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                    height: 10.h,
                  ),
                ),
                SizedBox(
                  height: 40.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class VendorProductContianer extends StatelessWidget {
  const VendorProductContianer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
              width: 110.w,
              padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 7.w),
              decoration: BoxDecoration(
                  color: const Color(0xff362677),
                  borderRadius: BorderRadius.circular(10.r)),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        top: 19.h, bottom: 19.h, left: 10.w, right: 12.w),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Image.asset(
                      ImageConstant.laptopImage,
                      // height: 50.h,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      'Vendor X has uploaded a new product',
                      style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                ],
              ));
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 12.w,
          );
        },
      ),
    );
  }
}
