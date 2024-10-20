import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/general_elevated_button_widget.dart';
import 'package:smartbazar/features/vendor/view/api/my_subscribe_and_win_api.dart';
import 'package:smartbazar/features/vendor/view/model/my_subscribe_and_win_model.dart';
import 'package:smartbazar/features/widgets/custom_drawer_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class MySubscribeAndWinPage extends ConsumerStatefulWidget {
  const MySubscribeAndWinPage({super.key});

  @override
  ConsumerState<MySubscribeAndWinPage> createState() =>
      _MySubscribeAndWinPageState();
}

class _MySubscribeAndWinPageState extends ConsumerState<MySubscribeAndWinPage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final mySubscribeAndWinAsyncValue =
        ref.watch(getMySubscribeAndWinResponseProvider);

    return GenericSafeArea(
      color: Colors.white,
      child: Scaffold(
        key: _key,
        backgroundColor: const Color(0xffF6F1F1),
        appBar: AppBar(
          toolbarHeight: 85.h,
          leadingWidth: 30.h,
          titleSpacing: 5,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: SvgPicture.asset(drawerIcon),
            onPressed: () {
              _key.currentState!.openDrawer();
            },
          ),
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SizedBox(
                  height: 33.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      prefixIconConstraints: BoxConstraints(minWidth: 40.w),
                      hintStyle: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffBFBFBF),
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(top: 5.h, left: 8.w),
                        child: Icon(
                          Icons.search,
                          size: 20.sp,
                        ),
                      ),
                      suffixIcon: Container(
                        width: 70.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(25.r),
                            topRight: Radius.circular(25.r),
                          ),
                          color: const Color(0xff362677),
                        ),
                        child: Icon(
                          Icons.search,
                          size: 30.sp,
                          color: Colors.white,
                        ),
                      ),
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Container(
                height: 30.h,
                width: 30.h,
                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.w),
                ),
                child: SvgPicture.asset(openCart),
              ),
            ],
          ),
        ),
        drawer: const CustomDrawer(),
        body: mySubscribeAndWinAsyncValue.when(
          data: (data) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeaderSection(data),
                  _buildUserDetailsSection(data),
                  _buildGiftsSection(data),
                  _buildWinnersSection(data),
                  _buildPrizeSponsorSection(data),
                  _buildTermsAndConditionsSection(data),
                ],
              ),
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(
            child: Text('Error: $error'),
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderSection(MySubscribeAndWinModel data) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'MY Subscribe AND WIN',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 5.h),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: Image.asset(ImageConstant.vendorCard),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }

  Widget _buildUserDetailsSection(MySubscribeAndWinModel data) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(50.r),
              //   child: Image.network(
              //     data.user?.photo ?? '',
              //     height: 90,
              //     width: 80,
              //     fit: BoxFit.contain,
              //   ),
              // ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50.r),
                child: Image.network(
                  // Construct the full URL using the base URL
                  (data.user?.photo != null && data.user!.photo!.isNotEmpty)
                      ? '${ApiConstants.baseUrl}/${data.user!.photo}'
                      : 'https://example.com/default-avatar.jpg', // Fallback URL to a default image
                  height: 90,
                  width: 80,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    // Show a placeholder or error widget if the image fails to load
                    return const Icon(Icons.person, size: 80);
                  },
                ),
              ),

              SizedBox(height: 12.h),
              Text(
                data.user?.name ?? 'Unknown user',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
          SizedBox(width: 30.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildGiftInfoContainer(
                  title: 'Total gifts won worth',
                  value: 'Rs. ${data.totalWorth ?? 0}',
                ),
                SizedBox(height: 8.h),
                _buildGiftInfoContainer(
                  title: 'Total gifts won worth',
                  value: '${data.giftCount ?? 0}',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGiftsAndPrizesSection(MySubscribeAndWinModel data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Gifts and Prizes',
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10.h),
        ...data.gifts!.map((gift) {
          // You may need to cast gift to a proper model class if it's more than dynamic
          return Card(
            elevation: 3,
            child: Padding(
              padding: EdgeInsets.all(8.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image of gift
                  Image.network(
                    gift.giftDetails!.imageUrl!, // Update with correct path
                    width: 60.w,
                    height: 60.w,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 10.w),

                  // Details about the gift
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          gift.giftDetails!.name ?? 'Gift Name',
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          'Rs. ${gift.giftDetails!.worth ?? ''}',
                          style: TextStyle(fontSize: 12.sp),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          'Date: ${gift.giftDetails!.createdAt ?? ''}',
                          style: TextStyle(fontSize: 12.sp),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ],
    );
  }

  Widget _buildGiftInfoContainer(
      {required String title, required String value}) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 18.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: const Color.fromARGB(255, 235, 234, 234),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            value,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGiftsSection(MySubscribeAndWinModel data) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      color: const Color.fromARGB(255, 235, 234, 234),
      child: Column(
        children: [
          SizedBox(height: 10.h),
          Text(
            'Gifts and Prizes',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: const Color(0xff362677),
            ),
          ),
          SizedBox(height: 18.h),
          ListView.separated(
            primary: false,
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.only(left: 5.w),
            shrinkWrap: true,
            itemCount: data.gifts?.length ?? 0,
            itemBuilder: (context, index) {
              final gift = data.gifts?[index];
              return GiftDetails(
                giftName: gift?.giftDetails?.name ?? '',
                giftImage: gift?.giftDetails?.imageUrl ?? '',
                giftWorth: gift?.giftDetails?.worth ?? '',
                vendorName: gift?.vendor?.name ?? '',
                vendorPhoto: gift?.vendor?.photo ?? '',
                status: gift?.status ?? '',
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(height: 12.h);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildWinnersSection(MySubscribeAndWinModel data) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
      width: MediaQuery.of(context).size.width,
      color: const Color.fromARGB(255, 235, 234, 234),
      child: Column(
        children: [
          Text(
            "Today's Winners",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: const Color(0xff362677),
            ),
          ),
          SizedBox(height: 18.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(data.winners?.length ?? 0, (index) {
              // Cast the dynamic list to a Winner model object
              final Winner winner = data.winners?[index] as Winner;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Correctly accessing the name property within the Winner object
                  Text(
                    '${winner.name!.name}', // Accessing the name inside Name class
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '${winner.giftWorth!.worth}', // Accessing the name inside Name class
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildPrizeSponsorSection(MySubscribeAndWinModel data) {
    // Extract the mileage content from content3
    final mileageBlock = data.content3?.firstWhere(
      (contentBlock) => contentBlock.title?.contains('Mileage') ?? false,
      orElse: () => Content3(title: '', content: ''),
    );

    // Parse the JSON string from 'title' and 'content' fields
    final parsedTitle = jsonDecode(mileageBlock?.title ?? '{}');
    final parsedContent = jsonDecode(mileageBlock?.content ?? '{}');

    // List of sponsors
    List<Map<String, String?>> sponsors = data.sponsorVendors?.map((vendor) {
          return {
            'name': vendor.name,
            'photo': vendor.photo,
            'username': vendor.username,
          };
        }).toList() ??
        [];

    return Padding(
      padding: EdgeInsets.all(8.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Prize Sponsor",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: const Color(0xff362677),
              ),
            ),
          ),
          SizedBox(height: 18.h),
          // Sponsors Row
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 20.w, // Space between logos
            children: sponsors.map((sponsor) {
              return Column(
                children: [
                  CircleAvatar(
                    radius: 30.h,
                    backgroundImage: NetworkImage(sponsor['photo']!),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    sponsor['name']!,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff362677),
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
          SizedBox(height: 20.h),
          Text(
            parsedTitle['en'] ?? 'Mileage', // Display the parsed title
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xff362677),
            ),
          ),
          SizedBox(height: 10.h),
          if (parsedContent['en'] != null)
            // Render HTML content
            Html(
              data: parsedContent['en'], // Render English content
              style: {
                "ul": Style(
                  margin: Margins.symmetric(vertical: 8.h),
                ),
                "li": Style(
                  fontSize: FontSize(12.sp),
                ),
              },
            )
          else
            Text(
              'No mileage information available',
              style: TextStyle(fontSize: 12.sp, color: Colors.black),
            ),
        ],
      ),
    );
  }

  Widget _buildTermsAndConditionsSection(MySubscribeAndWinModel data) {
    return Container(
      color: const Color.fromARGB(255, 235, 234, 234),
      padding: EdgeInsets.symmetric(vertical: 10.h),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Text(
              'Terms & Conditions',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 4.h),
          Container(
            width: 173.w,
            height: 3.h,
            color: const Color(0xff362677),
          ),
          SizedBox(height: 5.h),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Center(
              child: Html(
                data: _formatHtmlContent(data.content4?.first.content),
                style: {
                  "ul": Style(
                    margin: Margins.all(0), // Use Margins instead of EdgeInsets
                    padding: HtmlPaddings.all(
                        0), // Use HtmlPaddings instead of EdgeInsets
                  ),
                  "li": Style(
                    margin: Margins.only(bottom: 2), // Space between list items
                  ),
                },
              ),
            ),
          ),
          SizedBox(height: 3.h),
          Center(
            child: GeneralEelevatedButton(
              width: MediaQuery.of(context).size.width / 1.5,
              text: 'Become a Prize Sponsor',
              onPresssed: () {},
            ),
          ),
        ],
      ),
    );
  }

  String _formatHtmlContent(String? content) {
    if (content == null || content.isEmpty) {
      return 'No terms and conditions available.';
    }

    // Replace \r and \n with <br>
    String formattedContent =
        content.replaceAll(r'\r', '<br>').replaceAll(r'\n', '<br>');

    // Remove escaped slashes from HTML tags
    formattedContent = formattedContent.replaceAll(r'\/', '/');

    // Remove the specific patterns at the start and end
    formattedContent = formattedContent
        .replaceFirst(r'{"en":"', '') // Remove beginning pattern
        .replaceFirst(r'"}', ''); // Remove ending pattern

    // Normalize spacing
    formattedContent = formattedContent
        .replaceAll(RegExp(r'<br>\s*<br>'), '<br>') // Remove extra <br> tags
        .replaceAll(
            RegExp(r'<br>\s*(?=<h\d>|<p>|<ul>|<li>|<div>|<strong>|<em>)'),
            '<br>') // Remove <br> before headers and list items
        .replaceAll(
            RegExp(
                r'(?<=<\/h\d>|<\/p>|<\/ul>|<\/li>|<\/div>|<\/strong>|<\/em>)\s*<br>'),
            ''); // Remove <br> after headers and list items

    // Adjust specific spaces before and after certain keywords if necessary
    List<String> keywords = [
      'Acceptance',
      'Responsibility',
      'Modification of these terms',
      'Miscellaneous'
    ];

    for (String keyword in keywords) {
      formattedContent = formattedContent.replaceAll(
          RegExp(r'\s*($keyword)\s*'),
          keyword // Remove space around the keyword
          );
    }

    return formattedContent;
  }
}

class GiftDetails extends StatelessWidget {
  final String giftName;
  final String giftImage;
  final String giftWorth;
  final String vendorName;
  final String vendorPhoto;
  final String status;

  const GiftDetails({
    Key? key,
    required this.giftName,
    required this.giftImage,
    required this.giftWorth,
    required this.vendorName,
    required this.vendorPhoto,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: const Color(0xFFF5F2F2),
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
          Text(
            vendorName,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color(0xffF6F1F1),
                ),
                child: Image.network(
                  giftImage,
                  height: 45.h,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 20.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      giftName,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Worth: Rs $giftWorth',
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'Status: $status',
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
