import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/vendor/view/api/my_listing_api.dart';
import 'package:smartbazar/features/vendor/view/update_listing_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';
import 'package:smartbazar/features/vendor/view/model/my_listing_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class MyListingScreen extends ConsumerWidget {
  const MyListingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listingResponse = ref.watch(getMyListingResponseProvider);

    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F1F1),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Row(
                  children: [
                    const Icon(Icons.mic),
                    SizedBox(width: 8.w),
                    Text(
                      'My Listing',
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
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 2,
                color: Color(0xffD9D9D9),
              ),
              listingResponse.when(
                data: (data) {
                  final products = data.products?.data ?? [];
                  return products.isEmpty
                      ? const Center(child: Text('No listings available'))
                      : Expanded(
                          child: ListView.separated(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            itemBuilder: (context, int index) {
                              final product = products[index];
                              return MyListinDetails(product: product);
                            },
                            separatorBuilder: (context, index) =>
                                SizedBox(height: 14.h),
                            itemCount: products.length,
                          ),
                        );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (err, stack) => Center(child: Text('Error: $err')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyListinDetails extends StatelessWidget {
  final ProductData product;

  const MyListinDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    // Parse the created_at string into a DateTime object
    final DateTime createdAt =
        DateTime.tryParse(product.createdAt ?? '') ?? DateTime.now();

    // Format the parsed DateTime object to only show the date
    final String formattedDate = formatDateTime(createdAt);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.white,
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
        children: [
          Row(
            children: [
              SizedBox(width: 7.w),
              const Text('Options'),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const UpdateListing()),
                  );
                },
                child: const Icon(
                  Icons.edit,
                  color: Color(0xffADADAD),
                ),
              ),
              SizedBox(width: 10.w),
              const Icon(
                Icons.visibility_off,
                color: Color(0xffADADAD),
              ),
              SizedBox(width: 10.w),
              SvgPicture.asset(deleteIcon),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color(0xffF6F1F1),
                ),
                child: Image.network(
                  product.image ?? ImageConstant.laptopImage,
                  height: 55.h,
                ),
              ),
              SizedBox(width: 20.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title ?? 'No title',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Icon(Icons.visibility,
                                size: 16, color: Color(0xff888888)),
                            Text(
                              '${product.visits ?? '0'} Views',
                              style: TextStyle(
                                  fontSize: 9.sp,
                                  color: const Color(0xff888888)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.lock_clock,
                              size: 16.sp,
                              color: const Color(0xff888888),
                            ),
                            Text(
                              formattedDate, // Display formatted date here
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 9.sp,
                                color: const Color(0xff888888),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.location_on,
                                size: 16, color: Color(0xff888888)),
                            Text(
                              product.address ?? 'Unknown Address',
                              style: TextStyle(
                                  fontSize: 9.sp,
                                  color: const Color(0xff888888)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'Rs ${product.price ?? 'N/A'}',
                      style: TextStyle(
                          color: const Color(0xff36383C),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700),
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

  // Define the formatDateTime method to show only the date
  String formatDateTime(DateTime dateTime) {
    return DateFormat('MMM dd, yyyy').format(dateTime); // Only date
  }
}
