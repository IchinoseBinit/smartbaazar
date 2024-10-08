import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/offline_listing/api/offline_listing_api.dart';
import 'package:smartbazar/features/offline_listing/model/offline_listing_model.dart';
import 'package:smartbazar/features/prodcut_import/product_import_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

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
                  loading: () => const Center(child: CircularProgressIndicator()),
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
                GeneralTextButton(
                  width: MediaQuery.of(context).size.width,
                  title: 'Product Import',
                  fgColor: Colors.white,
                  bgColor: const Color(0xff362677),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const ProductImportScreen()),
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

class OfflineListingContainer extends StatelessWidget {
  final ProductData productData;

  const OfflineListingContainer({
    required this.productData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
              const Icon(Icons.share),
              SizedBox(width: 10.w),
              SvgPicture.asset(deleteIcon),
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
                    Text(
                      'Order ID: ${productData.id}',
                      style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
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
