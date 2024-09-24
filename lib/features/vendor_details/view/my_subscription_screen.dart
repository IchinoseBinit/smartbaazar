import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/vendor_details/api/get_subscription_api.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';
import 'package:smartbazar/features/vendor_details/model/get_subscription_model.dart';

class MySubscriptionScreen extends ConsumerWidget {
  const MySubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Fetch the subscription data
    final subscriptionAsyncValue = ref.watch(getSubscriptionProvider);

    return GenericSafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 30.h,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Row(
                  children: [
                    SvgPicture.asset(heartIcon),
                    SizedBox(width: 8.w),
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
                      child: Text(
                        'Go back',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff888888)),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2.w,
                color: const Color(0xffD9D9D9),
              ),
              // Subscription Data UI
              subscriptionAsyncValue.when(
                data: (subscriptionData) => _buildSubscriptionList(subscriptionData),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stackTrace) => Center(
                  child: Text(
                    'Error: $error',
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build the subscription list from the data
  Widget _buildSubscriptionList(GetSubscriptionModel subscriptionData) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: const Color(0xffF3F3F3),
          border: Border.all(width: 1.w, color: const Color(0xffADADAD)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: subscriptionData.subscriptions!.map((subscription) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(subscription.vendor.name!),
                    GeneralTextButton(
                      marginH: 0,
                      height: 28.h,
                      bgColor: const Color(0xff362677),
                      fgColor: Colors.white,
                      title: 'Profile',
                      onPressed: () {
                        // Handle profile button tap
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
