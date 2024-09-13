import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class PageNotFoundScreen extends StatelessWidget {
  const PageNotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xffF6F1F1),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 100.h),
            child: Column(
              children: [
                Center(
                    child: Image.asset(
                  ImageConstant.pageNotFound,
                )),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Oops!',
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  'Seems like the link is not working.',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 30.h,
                ),
                GeneralTextButton(
                    width: MediaQuery.of(context).size.width,
                    title: 'Back to the home page',
                    fgColor: Colors.white,
                    bgColor: const Color(0xff362677),
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => HomeScreen())))
              ],
            ),
          )),
    );
  }
}
