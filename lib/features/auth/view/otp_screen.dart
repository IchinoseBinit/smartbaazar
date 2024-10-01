import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/view/bottom_navigation_bar.dart';
import 'package:smartbazar/features/auth/widgets/general_elevated_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/rich_text_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';
import 'package:smartbazar/theme/otp_theme.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  late Timer timer;
  ValueNotifier<int> otpTime = ValueNotifier(60);
  String formattedTime(int otpTime) {
    int sec = otpTime % 60;
    int min = (otpTime / 60).floor();
    String minute = min.toString().length <= 1 ? "0$min" : "$min";
    String second = sec.toString().length <= 1 ? "0$sec" : "$sec";
    return second;
  }

  void startTimer() {
    const oneSecond = Duration(seconds: 1);
    timer = Timer.periodic(oneSecond, (timer) {
      if (otpTime.value != 0) {
        otpTime.value--;
      }
    });
  }

  final TextEditingController otpController = TextEditingController();
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

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
                      'Enter your OTP',
                      style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff000000)),
                    ),
                    SizedBox(
                      height: 13.h,
                    ),
                    ValueListenableBuilder<int>(
                        valueListenable: otpTime,
                        builder: (context, value, child) {
                          return Text(
                            'You will recive an OTP on your\n email within ${formattedTime(59)} secs',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xffADADAD)),
                          );
                        })
                  ],
                )),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 11.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: const Color(
                            0xffAEC5FF,
                          )),
                      child: const Icon(
                        Icons.mail,
                        color: Color(0xff362677),
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Pinput(
                      controller: otpController,
                      length: 4,
                      defaultPinTheme: defaultPinTheme,
                      focusedPinTheme: defaultPinTheme.copyWith(
                          decoration: defaultPinTheme.decoration!.copyWith()),
                      onCompleted: (pin) => debugPrint(pin),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60.h,
                ),
                GeneralEelevatedButton(
                  text: 'Send',
                  onPresssed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const BottomNavigationScreen()));
                  },
                ),
                SizedBox(
                  height: 120.h,
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
