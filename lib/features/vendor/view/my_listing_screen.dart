import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/update_listing/view/update_listing_screen.dart';
import 'package:smartbazar/features/vendor/view/api/delete_listing_api.dart';
import 'package:smartbazar/features/vendor/view/api/my_listing_api.dart';
import 'package:smartbazar/features/vendor/view/api/post_offline_listing.dart';
import 'package:smartbazar/features/vendor/view/model/my_listing_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class MyListingScreen extends ConsumerWidget {
  const MyListingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listingResponse = ref.watch(getMyListingResponseProvider);

    return SafeArea(
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
                              print("lakau ${product.postTypeId}");
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

class MyListinDetails extends ConsumerWidget {
  final MyListingProduct product;

  const MyListinDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            color: const Color(0xFF000040).withOpacity(0.1),
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
                  // print("niko ${product.postTypeId}");
                  Navigator.of(context, rootNavigator: true)
                      .push(MaterialPageRoute(
                          builder: (context) => UpdateListing(
                                prod: product,
                              )));

                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (_) => UpdateListing(prod: product)),
                  // );
                },
                child: const Icon(
                  Icons.edit,
                  color: Color(0xffADADAD),
                ),
              ),
              SizedBox(width: 10.w),
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      bool isOperationSuccessful = false;
                      String productName = product.title!;
                      DateTime deletionDate =
                          DateTime.now().add(const Duration(days: 30));

                      return StatefulBuilder(
                        builder:
                            (BuildContext context, StateSetter setStateDialog) {
                          return AlertDialog(
                            title: Column(
                              children: [
                                isOperationSuccessful
                                    ? const SizedBox()
                                    : const Icon(
                                        Icons.report,
                                        color: Color(0xFF781740),
                                        size: 100,
                                      ),
                                Text(
                                  isOperationSuccessful
                                      ? "Listing Put Offline Successfully"
                                      : "Are you sure you want to perform this action?",
                                  style: TextStyle(
                                    color: const Color(0xff362677),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const Divider(),
                              ],
                            ),
                            content: isOperationSuccessful
                                ? Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'The listing "$productName" has been put offline successfully.',
                                        style: TextStyle(fontSize: 14.sp),
                                      ),
                                      SizedBox(height: 10.h),
                                      Text(
                                        'You can re-publish it by browsing the list of the offline listings.',
                                        style: TextStyle(fontSize: 14.sp),
                                      ),
                                      SizedBox(height: 10.h),
                                      Text(
                                        'If you do nothing, the listing will be permanently deleted on ${DateFormat('MMM d, yyyy').format(deletionDate)}.',
                                        style: TextStyle(fontSize: 14.sp),
                                      ),
                                    ],
                                  )
                                : null,
                            actions: !isOperationSuccessful
                                ? [
                                    GeneralTextButton(
                                      width: MediaQuery.of(context).size.width,
                                      marginH: 0,
                                      fgColor: Colors.white,
                                      bgColor: const Color(0xff362677),
                                      title: 'Yes',
                                      onPressed: () async {
                                        try {
                                          await ref.read(
                                              addToOfflineListingProvider(
                                                      product.id!)
                                                  .future);
                                          setStateDialog(() {
                                            isOperationSuccessful = true;
                                            // Refresh the listing data after adding to offline
                                            ref.refresh(
                                                getMyListingResponseProvider);
                                          });
                                        } catch (e) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                  'Failed to save product: $e'),
                                              backgroundColor: Colors.red,
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                    SizedBox(height: 15.h),
                                    GeneralTextButton(
                                      width: MediaQuery.of(context).size.width,
                                      marginH: 0,
                                      fgColor: Colors.white,
                                      bgColor: const Color(0xffADADAD),
                                      title: 'No',
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ]
                                : [
                                    GeneralTextButton(
                                      width: MediaQuery.of(context).size.width,
                                      marginH: 0,
                                      fgColor: Colors.white,
                                      bgColor: const Color(0xff362677),
                                      title: 'OK',
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                          );
                        },
                      );
                    },
                  );
                },
                icon: const Icon(
                  Icons.visibility_off,
                  color: Color(0xffADADAD),
                ),
              ),
              SizedBox(width: 10.w),
              GestureDetector(
                  onTap: () async {
                    // Show deleting message
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Deleting item...',
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.grey,
                      ),
                    );

                    try {
                      // Delete the listing
                      await ref.read(deleteListingProvider(product.id!).future);

                      // Refresh the listing provider to get updated data
                      ref.invalidate(getMyListingResponseProvider);

                      // Notify the user of successful deletion
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Item deleted successfully'),
                          backgroundColor: Colors.green,
                        ),
                      );
                    } catch (e) {
                      // Show error message if deletion fails
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Failed to delete item: $e'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(deleteIcon),
                  )),
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
