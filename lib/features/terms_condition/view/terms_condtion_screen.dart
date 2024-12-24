import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/privacy_policy/view/privacy_policy_screen.dart';
import 'package:smartbazar/features/terms_condition/api/terms_condition_api.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class TermsConditionScreen extends ConsumerWidget {
  const TermsConditionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final termsConditionAsyncValue = ref.watch(getTermsConditionProvider);
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
                    'Terms and Conditions',
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
        body: termsConditionAsyncValue.when(
          data: (termsCondition) {
             final result = termsCondition.result;
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 5.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Html(
                      data: result.content,
                      style: {
                        "body": Style(
                          fontSize: FontSize(12.sp),
                          color: const Color(0xff36383C),
                        ),
                        "h4": Style(
                          fontSize: FontSize(12.sp),
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff36383C),
                        ),
                        "p": Style(
                          fontSize: FontSize(12.sp),
                          color: const Color(0xff36383C),
                          fontWeight: FontWeight.w400,
                        ),
                        "a": Style(
                          color: Colors.blue,
                          textDecoration: TextDecoration.underline,
                        ),
                      },
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    SizedBox(
                      height: 10.h,
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
                                builder: (_) => const PrivacyPolicyScreen()));
                      },
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                  ],
                ),
              ),
            );
          },
          error: (error, stack) => Center(child: Text('Error: $error')),
          loading: () => const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
