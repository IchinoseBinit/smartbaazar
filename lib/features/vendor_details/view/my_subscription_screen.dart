import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class MySubscriptionScreen extends StatelessWidget {
  const MySubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 30.h,
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Row(
                children: [
                  SvgPicture.asset(heartIcon),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    'My Subscriptions',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Text('Go back',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff888888))),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 2.w,
              color: const Color(0xffD9D9D9),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: const Color(0xffF3F3F3),
                    border: Border.all(width: 1.w, color: const Color(0xffADADAD))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('David Wanner'),
                        GeneralTextButton(
                            marginH: 0,
                            height: 28.h,
                            bgColor: const Color(0xff362677),
                            fgColor: Colors.white,
                            title: 'Profile')
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('David Wanner'),
                        GeneralTextButton(
                            marginH: 0,
                            height: 28.h,
                            bgColor: const Color(0xff362677),
                            fgColor: Colors.white,
                            title: 'Profile')
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('David Wanner'),
                        GeneralTextButton(
                            marginH: 0,
                            height: 28.h,
                            bgColor: const Color(0xff362677),
                            fgColor: Colors.white,
                            title: 'Profile')
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('David Wanner'),
                        GeneralTextButton(
                            marginH: 0,
                            height: 28.h,
                            bgColor: const Color(0xff362677),
                            fgColor: Colors.white,
                            title: 'Profile')
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
