import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/exchange_adBost/view/exchange_adBost_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class BecomeSmartSellerScreen extends StatelessWidget {
  const BecomeSmartSellerScreen({super.key});

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
                    'Become a Smart Seller',
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
                  'Sell online at 0% commission',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff36383C),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'WHAT CAN I SELL?',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff36383C),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Retails & Brands',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff36383C),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Clothing | Mobile | Electronics | Furniture | Computer | Sports & Fitness | Automobile | Health & Beauty | Grocery...',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff36383C),
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'B2B Wholesale',
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
                  height: 15.h,
                ),
                Text(
                  'Services',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff36383C),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Education Consultancy | Real Estate | Hotels | Electrician | Carpenter | Schools & Colleges...',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff36383C),
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  'Benfits',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff36383C),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Education Consultancy | Real Estate | Hotels | Electrician | Carpenter | Schools & Colleges...',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff36383C),
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 30.h,
                ),
                GeneralTextButton(
                  // width: MediaQuery.of(context).size.wid,
                  marginH: 0,
                  title: 'Next',
                  fgColor: Colors.white,
                  bgColor: const Color(0xff362677),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const ExchangeAdBostScreen()));
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
