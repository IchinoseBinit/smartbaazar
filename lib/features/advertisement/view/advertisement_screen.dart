import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/advertisement/api/advertisment_api.dart';
import 'package:smartbazar/features/advertisement/view/apply_advertisement_screeen.dart';
import 'package:smartbazar/features/auth/widgets/general_elevated_button_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartbazar/features/advertisement/model/advertisement_model.dart';

class AdvertisementScreen extends ConsumerWidget {
  const AdvertisementScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the provider that fetches the advertisement data
    final advertisementAsyncValue = ref.watch(getUsersAdvertisementProvider);

    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F1F1),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Column(
            children: [
              // Header
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Row(
                  children: [
                    const Icon(Icons.ad_units),
                    SizedBox(width: 8.w),
                    Text(
                      'Advertisement',
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
              Divider(thickness: 2.w, color: const Color(0xffD9D9D9)),
              SizedBox(height: 10.h),

              // Body: Advertisement List
              Expanded(
                child: advertisementAsyncValue.when(
                  data: (advertisementResponse) {
                    final ads = advertisementResponse.data.ads;

                    // If no ads available
                    if (ads.isEmpty) {
                      return Center(
                        child: Text(
                          'No advertisements available',
                          style: TextStyle(fontSize: 14.sp),
                        ),
                      );
                    }

                    return ListView.builder(
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemCount: ads.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        final ad = ads[index];
                        return AdvertisementDetailsWidget(ad: ad);
                      },
                    );
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (error, stackTrace) => Center(
                    child: Text('Error: ${error.toString()}'),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Divider(thickness: 2.w, color: const Color(0xffD9D9D9)),
              SizedBox(height: 20.h),

              // Add New Advertisement Button
              GeneralEelevatedButton(
                text: 'Add New',
                onPresssed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const ApplyAdvertisementScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AdvertisementDetailsWidget extends StatelessWidget {
  final Ad ad;

  const AdvertisementDetailsWidget({
    required this.ad,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0x00000040).withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Submission Date: ${ad.createdAt}',
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                InkWell(
                  onTap: () {
                    // Handle delete functionality
                  },
                  child: SvgPicture.asset(deleteIcon),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            Container(
              padding: EdgeInsets.symmetric(vertical: 12.h),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color(0xffF6F1F1),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Center(
                child: Image.network(ad.image),
              ),
            ),
            SizedBox(height: 5.h),
            // Link to open the ad
            InkWell(
              onTap: () {
                // Handle link redirection
              },
              child: Text(
                ad.link,
                style: const TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}