import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/become_smart_seller/view/smart_seller_screen.dart';
import 'package:smartbazar/features/privacy_policy/view/privacy_policy_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class AntiScamScreen extends StatelessWidget {
  const AntiScamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffF6F1F1),
          toolbarHeight: 50.h,
          automaticallyImplyLeading: false,
          title: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    fileIcon,
                    height: 20.h,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Anti-Scam',
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Text(
                      'Go back',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: const Color(0xff888888),
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Divider(
                thickness: 2.w,
                color: const Color(0xffD9D9D9),
              ),
            ],
          ),
        ),
        backgroundColor: const Color(0xffF6F1F1),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Protect yourself against Internet farud!',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff36383C),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                    "It's very easy to place an ad: click on the button Post free Ads above right",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: const Color(0xff36383C),
                        fontWeight: FontWeight.w400)),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Our advices',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff36383C),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'In general, an listing is automatically deactivated from the website after 3 months. You will receive an email a week before D-Day and another on the day of deactivation. You have the ability to put them online in the following month by logging into your account on the site. After this delay, your listing will be automatically removed permanently from the website.',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff36383C),
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Recognize attempted scam',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff36383C),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Absolutely not because your email address is not visible on the website.',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff36383C),
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 30.h,
                ),
                GeneralTextButton(
                  width: MediaQuery.of(context).size.width,
                  title: 'Next',
                  fgColor: Colors.white,
                  bgColor: const Color(0xff362677),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const BecomeSmartSellerScreen()));
                  },
                ),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
