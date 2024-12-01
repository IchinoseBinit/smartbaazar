import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/faq/view/faq_screen.dart';
import 'package:smartbazar/features/privacy_policy/api/privacy_policy_api.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class PrivacyPolicyScreen extends ConsumerWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final privacyPolicyAsync = ref.watch(getPrivacyPolicyProvider);

    return GenericSafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffF6F1F1),
          toolbarHeight: 50.h,
          automaticallyImplyLeading: false,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    fileIcon,
                    height: 20.h,
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    'Privacy',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Text(
                      'Go back',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: const Color(0xff888888),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.h),
              Divider(thickness: 2.w, color: const Color(0xffD9D9D9)),
            ],
          ),
        ),
        backgroundColor: const Color(0xffF6F1F1),
        body: privacyPolicyAsync.when(
          data: (privacyPolicy) {
            final content = privacyPolicy.content;

            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 5.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      privacyPolicy.title,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: const Color(0xff362677),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Html(
                      data: content,
                      style: {
                        'p': Style(
                          fontSize: FontSize(12.sp),
                          color: const Color(0xff36383C),
                          lineHeight: const LineHeight(1.5),
                        ),
                        'h4': Style(
                          fontSize: FontSize(14.sp),
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff362677),
                        ),
                        'a': Style(
                          color: Colors.blue,
                        ),
                      },
                    ),
                    SizedBox(height: 30.h),
                    GeneralTextButton(
                      width: MediaQuery.of(context).size.width,
                      title: 'Next',
                      fgColor: Colors.white,
                      bgColor: const Color(0xff362677),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const FAQScreen()),
                      ),
                    ),
                    SizedBox(height: 30.h),
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
