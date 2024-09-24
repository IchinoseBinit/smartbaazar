import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/contact_us/view/contact_us_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class ExchangeAdBostScreen extends StatelessWidget {
  const ExchangeAdBostScreen({super.key});

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
                    'Introducing Exchange AdBoost',
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
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(ImageConstant.adBoostImage),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Advertise Without Paying Cash. Offer Your Products, Services or Deals Instead of Cash to Advertise!',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff36383C),
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'How does it work?',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff36383C),
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'Advertise in Smartbazaar by offering your products, services or deals instead of paying cash that will go in as ‘Smartbazaar Subscribe & Win’ prize for customers.',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff36383C),
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'What do I have to pay?',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff36383C),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'You simply sponsor your business’s products, services or deals as prize for ‘Smartbazaar Subscribe & Win’ customers through Smartbazaar website! A 2% processing fee applies.',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff36383C),
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'What Mileage do I Get?',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff36383C),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Get as many customer reach as your prize worth. Example: if you offer prize worth Rs.10,000, your ad reach will be 10,000 customers plus potential increase in ‘Smartbazaar Subscribers’ as customers get prize incentives on Subscribing your ‘Virtual Store’',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff36383C),
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Benfits- Why Adertise in Smartbazar?',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff36383C),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Find Manufacturers | Importers | Exporters | Dealers | Distributors | Wholesellers | Retailers',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff36383C),
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 30.h,
                ),
                GeneralTextButton(
                  marginH: 0,
                  title: 'Contact Us',
                  fgColor: Colors.white,
                  bgColor: const Color(0xff362677),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const ContactUsScreen()));
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
