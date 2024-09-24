import 'package:flutter/material.dart';
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
                  _buildPrizeSponsorSection(),
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
                    return Icon(Icons.person, size: 80);
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
                  value: 'Rs. ${data.totalWoth ?? 0}',
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
                    gift['imageUrl'], // Update with correct path
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
                          gift['name'] ?? 'Gift Name',
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          'Rs. ${gift['price'] ?? ''}',
                          style: TextStyle(fontSize: 12.sp),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          'Date: ${gift['date'] ?? ''}',
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
            itemCount: data.content3?.length ?? 0,
            itemBuilder: (context, index) {
              final contentBlock = data.content3?[index];
              return VendorProductDetails(
                title: contentBlock?.title ?? '',
                content: contentBlock?.content ?? '',
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
              final winner = data.winners?[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${winner?.name ?? 'Winner Name'}',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Gift Rs ${winner?.giftPrice ?? 0}',
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

  Widget _buildPrizeSponsorSection() {
    return Padding(
      padding: EdgeInsets.all(8.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Prize Sponser",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: const Color(0xff362677),
              ),
            ),
          ),
          SizedBox(height: 18.h),
          Row(
            children: [
              Text('Samsung',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff362677))),
            ],
          ),
          // SvgPicture.asset(addidasIcon)
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
              child: Text(
                data.content4?.first.content ??
                    'No terms and conditions available.',
                style: TextStyle(
                  fontSize: 10.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Center(
            child: GeneralEelevatedButton(
              width: MediaQuery.of(context).size.width / 1.5,
              text: 'Become a Prize Sponsor',
              onPresssed: () {},
            ),
          )
        ],
      ),
    );
  }
}

class VendorProductDetails extends StatelessWidget {
  final String title;
  final String content;

  const VendorProductDetails({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.white,
        // color: Colors.red,
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
          const Text('Tech Store'),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 7.w,
              ),
              Container(
                  padding: EdgeInsets.only(
                      top: 15.h, left: 8.w, right: 8.w, bottom: 20.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: const Color(0xffF6F1F1),
                  ),
                  child: Image.asset(
                    ImageConstant.laptopImage,
                    height: 45.h,
                  )),
              SizedBox(
                width: 20.w,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Acer Aspire 5 A515-56-32DK Intel Core i3, 11th Gen/15.6 FHD',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Text(
                    'Order ID: 12345',
                    style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'Rs 60,000',
                        style: TextStyle(
                            color: const Color(0xff36383C),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      const Spacer(),
                      Text(
                        'Win Date: 2023-01-02',
                        style: TextStyle(
                            // decoration: TextDecoration.underline,
                            color: const Color(0xff36383C),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ))
            ],
          ),
        ],
      ),
    );
  }
}
