import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/general_elevated_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/general_text_field_widget.dart';
import 'package:smartbazar/features/auth/widgets/rich_text_widget.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Center(
                    child: Column(
                  children: [
                    Image.asset(ImageConstant.appLogo),
                    SizedBox(
                      height: 40.h,
                    ),
                    Text(
                      'Reset Passowrd',
                      style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff000000)),
                    ),
                    SizedBox(
                      height: 13.h,
                    ),
                    Text(
                      'Enter your new password for\n Smart bazar login',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xffADADAD)),
                    )
                  ],
                )),
                SizedBox(
                  height: 40.h,
                ),
                CustomTextFieldWidget(
                  icon: Icons.lock,
                  hintText: 'New Pasword',
                  suffixIcon: const Icon(
                    Icons.visibility,
                    size: 30,
                    color: Color(0xffADADAD),
                  ),
                  validator: (String) {
                    return null;
                  },
                ),
                SizedBox(
                  height: 22.h,
                ),
                CustomTextFieldWidget(
                  icon: Icons.lock,
                  hintText: 'Re-type New Password',
                  suffixIcon: const Icon(
                    Icons.visibility,
                    size: 30,
                    color: Color(0xffADADAD),
                  ),
                  validator: (String) {
                    return null;
                  },
                ),
                SizedBox(
                  height: 60.h,
                ),
                GeneralEelevatedButton(
                  text: 'Confirm',
                  onPresssed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const HomeScreen()));
                  },
                ),
                SizedBox(
                  height: 100.h,
                ),
                RichTextWidget(
                  title: 'Want to reach home screen? ',
                  subtitle: 'Go back',
                  onPressed: () {},
                ),
                SizedBox(
                  height: 20.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
