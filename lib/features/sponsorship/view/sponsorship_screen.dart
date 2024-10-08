import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/sponsorship/api/post_sponsor_banner_api.dart';
import 'package:smartbazar/features/sponsorship/api/sponsor_gift_api.dart';
import 'package:smartbazar/features/sponsorship/model/sponsor_gift_model.dart';
import 'package:smartbazar/features/sponsorship/view/apply_sponsorship_price_screen.dart';
import 'package:smartbazar/features/vendor_details/widgets/bank_details_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class SponsorshipScreen extends ConsumerStatefulWidget {
  const SponsorshipScreen({super.key});

  @override
  ConsumerState<SponsorshipScreen> createState() => _SponsorshipScreenState();
}

class _SponsorshipScreenState extends ConsumerState<SponsorshipScreen> {
  File? imageFile;

  Future<void> submitbanner() async {
    if (imageFile == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please provide an image'),backgroundColor: Colors.white70,),
      );
      return;
    }
    try {
      await ref.read(postSponsorBannerProvider(imageFile!).future);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Banner posted successfully! for sponsership'),backgroundColor: Colors.white70,),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to post Banner: $e'),backgroundColor: Colors.white70,),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final sponsorshipData = ref.watch(getSponsorGiftModelResponseProvider);

    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF6F4F4),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Row(
                    children: [
                      const Icon(Icons.card_giftcard),
                      SizedBox(width: 8.w),
                      Text(
                        'Sponsorship',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Text(
                          'Go back',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff888888),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(thickness: 2.w, color: const Color(0xffD9D9D9)),
                SizedBox(height: 10.h),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                          width: 1.w, color: const Color(0xffADADAD)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 11.w, top: 15.h, bottom: 10.w),
                          child: Text(
                            "Sponsor Banner",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Divider(thickness: 1.w, color: const Color(0xffADADAD)),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 20.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Display the banner fetched from API
                              sponsorshipData.when(
                                data: (data) {
                                  // Check if banners list is not empty
                                  if (data.data!.banners != null &&
                                      data.data!.banners!.isNotEmpty) {
                                    final bannerUrl = data
                                            .data!.banners![0].image ??
                                        ''; // Access the first banner's image
                                    return bannerUrl.isNotEmpty
                                        ? Image.network(
                                            bannerUrl,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 61.h,
                                            fit: BoxFit.cover,
                                          )
                                        : Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 61.h,
                                            color: const Color(0xffD9D9D9),
                                            child: const Center(
                                              child:
                                                  Text('No banner available'),
                                            ),
                                          );
                                  } else {
                                    return Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 61.h,
                                      color: const Color(0xffD9D9D9),
                                      child: const Center(
                                        child: Text('No banners available'),
                                      ),
                                    );
                                  }
                                },
                                loading: () => Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 61.h,
                                  color: const Color(0xffD9D9D9),
                                  child: const Center(
                                      child: CircularProgressIndicator()),
                                ),
                                error: (error, stack) => Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 61.h,
                                  color: const Color(0xffD9D9D9),
                                  child: const Center(
                                      child: Text('Error loading banner')),
                                ),
                              ),

                              SizedBox(height: 10.h),
                              Text(
                                'Recommended Size 480 * 80',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xffD33636),
                                ),
                              ),
                              SizedBox(height: 8.h),
                              //  ChooseFileWidget(),
                              ChooseFileWidget(
                                textColor: Colors.red,
                                onImageSelected: (selectedImage) {
                                  setState(() {
                                    imageFile = selectedImage;
                                  });
                                },
                              ),
                              SizedBox(height: 8.h),
                              Text(
                                'Hint: Upload your banner here',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff36383C),
                                ),
                              ),
                              SizedBox(height: 10.h),
                              GeneralTextButton(
                                onPressed: submitbanner,
                                marginH: 0,
                                width: 100.w,
                                height: 28.h,
                                title: 'Add',
                                fgColor: Colors.white,
                                bgColor: const Color(0xff362677),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                // Display the sponsorship gifts list
                sponsorshipData.when(
                  data: (data) {
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemCount: data.data?.gifts?.length ?? 0,
                      itemBuilder: (context, index) {
                        final gift = data.data!.gifts![index];
                        return SponsorShipDetailsWidget(giftModel: gift);
                      },
                    );
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (error, stack) => Center(child: Text('Error: $error')),
                ),
                SizedBox(height: 20.h),
                GeneralTextButton(
                  width: MediaQuery.of(context).size.width,
                  title: 'Apply Sponsorship',
                  fgColor: Colors.white,
                  bgColor: const Color(0xff362677),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const ApplySponsorshipPriceScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SponsorShipDetailsWidget extends StatelessWidget {
  final GiftModel giftModel;

  const SponsorShipDetailsWidget({super.key, required this.giftModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: Colors.white70,
          boxShadow: [
            BoxShadow(
              color: const Color(0xff00000040).withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    giftModel.name ?? 'Gift Name',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      height: 1.3.h,
                      color: Colors.black,
                    ),
                  ),
                ),
                SvgPicture.asset(deleteIcon),
              ],
            ),
            SizedBox(height: 10.h),

            SponsorShipExpansionTileWidget(
              giftModel: giftModel,
            ),
            SizedBox(
              height: 10.h,
            )

            // _buildInfoRow('Name', giftModel.name ?? ''),
            // _buildInfoRow('Worth', giftModel.worth ?? '0'),
            // _buildInfoRow('Gift Qty', giftModel.giftQty ?? '0'),
            // _buildInfoRow('Total Worth', giftModel.totalWorth ?? '0'),
            // _buildInfoRow('Approved', giftModel.approved ?? 'In Review'),
            // _buildInfoRow('Status', giftModel.status ?? 'In Review'),
            // _buildInfoRow('Mileage', giftModel.mileage ?? '0'),
            // _buildInfoRow('Remaining Mileage', giftModel.mileageCount ?? '0'),
            // _buildInfoRow('Gift Qty Count', giftModel.giftQtyCount ?? '0'),
            // _buildInfoRow('Created At', giftModel.created_at ?? ''),
            // _buildInfoRow('Updated At', giftModel.updated_at ?? ''),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: const Color(0xff36383C),
          ),
        ),
      ],
    );
  }
}

class SponsorShipExpansionTileWidget extends StatelessWidget {
  final GiftModel giftModel;

  const SponsorShipExpansionTileWidget({
    super.key,
    required this.giftModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.zero, // Ensure there is no extra padding around the card
      child: ExpansionTile(
        title: Text(
          'Rs ${giftModel.worth ?? '0'}',
          style: TextStyle(
            color: const Color(0xff36383C),
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        children: [
          // Apply background color only to the expanded content
          Container(
            color: const Color(0xffF6F1F1), // Apply background color here
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildRow('Total Mileage', giftModel.mileage ?? '0'),
                  SizedBox(height: 5.h),
                  _buildRow('Remaining Mileage', giftModel.mileageCount ?? '0'),
                  SizedBox(height: 5.h),
                  _buildRow('Gift Qty', giftModel.giftQty ?? '0'),
                  SizedBox(height: 5.h),
                  _buildRow('Approval', giftModel.approved ?? 'In Review'),
                  SizedBox(height: 5.h),
                  _buildRow('Status', giftModel.status ?? 'In Review'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Banner:",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 20.w),
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.network(
                              giftModel.image ?? '',
                              fit: BoxFit.cover,
                              loadingBuilder: (BuildContext context,
                                  Widget child,
                                  ImageChunkEvent? loadingProgress) {
                                if (loadingProgress == null) {
                                  return child; // Image has loaded completely
                                }
                                return Center(
                                  child: CircularProgressIndicator(
                                    value: loadingProgress.expectedTotalBytes !=
                                            null
                                        ? loadingProgress
                                                .cumulativeBytesLoaded /
                                            loadingProgress.expectedTotalBytes!
                                        : null,
                                  ),
                                ); // Show CircularProgressIndicator while loading
                              },
                              errorBuilder: (context, error, stackTrace) {
                                return const Center(
                                  child: Text('Failed to load image'),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Submission:",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            giftModel.createdAt ?? '',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff36383C),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: const Color(0xff36383C),
          ),
        ),
      ],
    );
  }
}
