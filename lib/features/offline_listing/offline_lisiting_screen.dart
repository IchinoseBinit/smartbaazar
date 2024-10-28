import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/offline_listing/api/offline_listing_api.dart';
import 'package:smartbazar/features/offline_listing/model/offline_listing_model.dart';
import 'package:smartbazar/features/prodcut_import/product_import_screen.dart';
import 'package:smartbazar/features/vendor/view/api/delete_listing_api.dart';
import 'package:smartbazar/features/vendor/view/api/my_listing_api.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';
import 'package:intl/intl.dart';

class OfflineListingScreen extends ConsumerWidget {
  const OfflineListingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the provider that fetches the offline listing data
    final asyncOfflineListing = ref.watch(getOfflineListingProvider);

    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F1F1),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Row(
                    children: [
                      const Icon(Icons.pending),
                      SizedBox(width: 8.w),
                      Text(
                        'Offline Listing',
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
                Divider(thickness: 2.w, color: const Color(0xffD9D9D9)),
                SizedBox(height: 20.h),
                // Display loading, error, or success based on the state of the provider
                asyncOfflineListing.when(
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (error, stack) => Center(
                    child: Text('Error loading data: $error'),
                  ),
                  data: (offlineListing) {
                    // Extract product data
                    final products = offlineListing.products?.data ?? [];

                    // Check if there are any products
                    if (products.isEmpty) {
                      return const Center(child: Text('No products available'));
                    }

                    return ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, int index) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        // Pass product data to the container widget
                        child: OfflineListingContainer(
                            productData: products[index]),
                      ),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 14.h),
                      itemCount: products.length,
                    );
                  },
                ),
                SizedBox(height: 25.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OfflineListingContainer extends ConsumerWidget {
  final ProductData productData;

  const OfflineListingContainer({
    required this.productData,
    super.key,
  });
  String extractLocation(String address) {
    List<String> parts = address.split(',').map((s) => s.trim()).toList();

    // Check if we have at least two parts; if so, return the second-last and last part
    if (parts.length >= 2) {
      return '${parts[parts.length - 2]}, ${parts.last}';
    }

    // If only one part is available, return that part; otherwise, fallback to "Kathmandu"
    return parts.isNotEmpty ? parts.last : "Kathmandu";
  }

  String timeAgo(String dateString) {
    DateTime updatedDate = DateFormat("yyyy-MM-dd HH:mm:ss").parse(dateString);
    Duration difference = DateTime.now().difference(updatedDate);

    if (difference.inDays > 365) {
      int years = (difference.inDays / 365).floor();
      return "$years year${years > 1 ? 's' : ''} ago";
    } else if (difference.inDays > 30) {
      int months = (difference.inDays / 30).floor();
      return "$months month${months > 1 ? 's' : ''} ago";
    } else if (difference.inDays >= 7) {
      int weeks = (difference.inDays / 7).floor();
      return "$weeks week${weeks > 1 ? 's' : ''} ago";
    } else if (difference.inDays > 0) {
      return "${difference.inDays} day${difference.inDays > 1 ? 's' : ''} ago";
    } else if (difference.inHours > 0) {
      return "${difference.inHours} hour${difference.inHours > 1 ? 's' : ''} ago";
    } else if (difference.inMinutes > 0) {
      return "${difference.inMinutes} minute${difference.inMinutes > 1 ? 's' : ''} ago";
    } else {
      return "Just now";
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return StatefulBuilder(
                        builder:
                            (BuildContext context, StateSetter setStateDialog) {
                          return AlertDialog(
                              title: Column(
                                children: [
                                  const Icon(
                                    Icons.report,
                                    color: Color(0xFF781740),
                                    size: 100,
                                  ),
                                  Text(
                                    "Are you sure you want to perform this action?",
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
                              actions: [
                                GeneralTextButton(
                                  width: MediaQuery.of(context).size.width,
                                  marginH: 0,
                                  fgColor: Colors.white,
                                  bgColor: const Color(0xff362677),
                                  title: 'Yes',
                                  onPressed: () async {
                                    // try {
                                    //   await ref.read(
                                    //       addToOfflineListingProvider(
                                    //               product.id!)
                                    //           .future);
                                    //   setStateDialog(() {
                                    //     isOperationSuccessful = true;
                                    //     // Refresh the listing data after adding to offline
                                    //     ref.refresh(
                                    //         getMyListingResponseProvider);
                                    //   });
                                    // } catch (e) {
                                    //   ScaffoldMessenger.of(context)
                                    //       .showSnackBar(
                                    //     SnackBar(
                                    //       content: Text(
                                    //           'Failed to save product: $e'),
                                    //       backgroundColor: Colors.red,
                                    //     ),
                                    //   );
                                    // }
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
                              // :
                              //  [
                              //     GeneralTextButton(
                              //       width: MediaQuery.of(context).size.width,
                              //       marginH: 0,
                              //       fgColor: Colors.white,
                              //       bgColor: const Color(0xff362677),
                              //       title: 'OK',
                              //       onPressed: () {
                              //         Navigator.of(context).pop();
                              //       },
                              //     ),
                              //   ],
                              );
                        },
                      );
                    },
                  );
                },
                icon: const Icon(
                  Icons.recycling_rounded,
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: 10.w),
              GestureDetector(
                onTap: () async {
                  // Show deleting message
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Deleting item...'),
                        backgroundColor: Colors.grey),
                  );
                  try {
                    await ref
                        .read(deleteListingProvider(productData.id!).future);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('Item deleted successfully'),
                          backgroundColor: Colors.grey),
                    );
                    ref.invalidate(getMyListingResponseProvider);
                  } catch (e) {
                    // Show error message
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text('Failed to delete item: $e'),
                          backgroundColor: Colors.grey),
                    );
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(deleteIcon),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 7.w),
              Container(
                padding: EdgeInsets.only(
                    top: 15.h, left: 8.w, right: 8.w, bottom: 20.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color(0xffF6F1F1),
                ),
                child: Image.network(
                  productData.image ?? 'https://via.placeholder.com/150',
                  height: 70.h,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.image_not_supported),
                ),
              ),
              SizedBox(width: 20.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productData.title ?? 'Unknown Title',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.visibility,
                          size: 15,
                          color: Color(0xff888888),
                        ),
                        Text(
                          "${productData.visits!}K Views",
                          style: TextStyle(fontSize: 8.sp),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.watch_later,
                          size: 15,
                          color: Color(0xff888888),
                        ),
                        Text(
                          "${timeAgo(productData.updatedAt!)}",
                          style: TextStyle(fontSize: 8.sp),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.location_on,
                          size: 15,
                          color: Color(0xff888888),
                        ),
                        Text(
                          (productData.pickup != null &&
                                  productData.pickup.isNotEmpty)
                              ? extractLocation(productData.pickup)
                              : "Kathmandu", // Fallback if pickup is null or empty
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 8.sp),
                        ),
                        const SizedBox(
                          width: 2.5,
                        )
                      ],
                    ),
                    SizedBox(height: 40.h),
                    Row(
                      children: [
                        Text(
                          'Rs ${productData.price ?? 'N/A'}',
                          style: TextStyle(
                              color: const Color(0xff36383C),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700),
                        ),
                        const Spacer(),
                      ],
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
