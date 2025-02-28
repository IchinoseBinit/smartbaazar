import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/pending_approval/api/pending_approval_api.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/update_listing/view/update_listing_screen.dart';
import 'package:smartbazar/features/vendor/view/api/delete_listing_api.dart';
import 'package:smartbazar/features/vendor/view/model/my_listing_model.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';
import 'package:smartbazar/features/pending_approval/model/pending_approval_model.dart';

class PendingApprovalScreen extends ConsumerWidget {
  const PendingApprovalScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the API response
    final pendingApprovalAsync = ref.watch(getPendingApprovalResponseProvider);

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
                        'Pending Approval',
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
                Divider(
                  thickness: 2.w,
                  color: const Color(0xffD9D9D9),
                ),
                SizedBox(height: 20.h),

                // Handle the different states (loading, error, data)
                pendingApprovalAsync.when(
                  data: (pendingApprovalData) {
                    // Get the list of products
                    final productList = pendingApprovalData.products.data;

                    return ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, int index) {
                        final product = productList[index];
                        print('pop ${product.pickup}');

                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: PedingApprovalContainer(productData: product),
                        );
                      },
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 14.h),
                      itemCount: productList.length,
                    );
                  },
                  loading: () => Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: Container(
                      height: 150.h,
                      color: Colors.white,
                    ),
                  ),
                  error: (error, stackTrace) => const Center(
                    child: Text('Please login again'),
                  ),
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

class PedingApprovalContainer extends ConsumerWidget {
  final MyListingProduct productData;

  const PedingApprovalContainer({super.key, required this.productData});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        // Navigate to the product details page
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ProductDetailScreen(productId: productData.id!),
          ),
        );
      },
      child: Container(
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
                Text(productData.contactName!),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xffADADAD),
                ),
                InkWell(
                  onTap: () {
                    print("niko ${productData.categoryId}");
                    Navigator.of(context, rootNavigator: true).push(
                        MaterialPageRoute(
                            builder: (context) =>
                                UpdateListing(ref: ref, prod: productData)));

                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (_) => UpdateListing(prod: productData)),
                    // );
                  },
                  child: const Icon(
                    Icons.edit,
                    color: Color(0xffADADAD),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                    onTap: () async {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Deleting item...'),
                            backgroundColor: Colors.grey),
                      );
                      try {
                        await ref.read(
                            deleteListingProvider(productData.id!).future);
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Item deleted successfully'),
                              backgroundColor: Colors.grey),
                        );
                        ref.invalidate(getPendingApprovalResponseProvider);
                      } catch (e) {
                        // Show error message
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text('Failed to delete item: $e'),
                              backgroundColor: Colors.grey),
                        );
                      }
                    },
                    child: SvgPicture.asset(deleteIcon)),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
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
                      productData.image!,
                      height: 70.h,
                      errorBuilder: (context, error, stackTrace) {
                        // Display a fallback icon if the image fails to load
                        return Icon(
                          Icons.image_not_supported,
                          size: 70.h,
                          color: Colors.grey,
                        );
                      },
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return SizedBox(
                          height: 70.h,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: Shimmer.fromColors(
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[100]!,
                              child: Container(
                                width: 50.w,
                                height: 60.h,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        );
                      },
                    )),
                SizedBox(width: 20.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productData.title!,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Order ID: ${productData.id}',
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 40.h),
                      Row(
                        children: [
                          Text(
                            'Rs ${productData.price}',
                            style: TextStyle(
                              color: const Color(0xff36383C),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                            ),
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
      ),
    );
  }
}
