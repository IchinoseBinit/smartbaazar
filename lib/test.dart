// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:shimmer/shimmer.dart';
// import 'package:smartbazar/constant/image_constant.dart';
// import 'package:smartbazar/features/button_nav_bar/cusom_btn_bar/custom_bottom_nav.dart';
// import 'package:smartbazar/features/pending_approval/api/pending_approval_api.dart';
// import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
// import 'package:smartbazar/features/update_listing/view/update_listing_screen.dart';
// import 'package:smartbazar/features/vendor/view/api/delete_listing_api.dart';
// import 'package:smartbazar/features/vendor/view/model/my_listing_model.dart';
// import 'package:smartbazar/general_widget/general_safe_area.dart';
// import 'package:smartbazar/features/pending_approval/model/pending_approval_model.dart';

// class PendingApprovalScreen extends ConsumerWidget {
//   const PendingApprovalScreen({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // Watch the API response
//     final pendingApprovalAsync = ref.watch(getPendingApprovalResponseProvider);

//     return GenericSafeArea(
//       child: Scaffold(
//         backgroundColor: const Color(0xffF6F1F1),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.symmetric(vertical: 20.h),
//             child: Column(
//               children: [
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 8.w),
//                   child: Row(
//                     children: [
//                       const Icon(Icons.pending),
//                       SizedBox(width: 8.w),
//                       Text(
//                         'Pending Approval',
//                         style: TextStyle(
//                           fontSize: 14.sp,
//                           fontWeight: FontWeight.w700,
//                           color: Colors.black,
//                         ),
//                       ),
//                       const Spacer(),
//                       InkWell(
//                         onTap: () => Navigator.pop(context),
//                         child: Text(
//                           'Go back',
//                           style: TextStyle(
//                             fontSize: 14.sp,
//                             fontWeight: FontWeight.w700,
//                             color: const Color(0xff888888),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Divider(
//                   thickness: 2.w,
//                   color: const Color(0xffD9D9D9),
//                 ),
//                 SizedBox(height: 20.h),

//                 // Handle the different states (loading, error, data)
//                 pendingApprovalAsync.when(
//                   data: (pendingApprovalData) {
//                     // Get the list of products
//                     final productList = pendingApprovalData.products.data;

//                     return ListView.separated(
//                       physics: const NeverScrollableScrollPhysics(),
//                       shrinkWrap: true,
//                       itemBuilder: (context, int index) {
//                         final product = productList[index];
//                         print('pop ${product.pickup}');

//                         return Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 10.w),
//                           child: PedingApprovalContainer(productData: product),
//                         );
//                       },
//                       separatorBuilder: (context, index) =>
//                           SizedBox(height: 14.h),
//                       itemCount: productList.length,
//                     );
//                   },
//                   loading: () => Shimmer.fromColors(
//                     baseColor: Colors.grey[300]!,
//                     highlightColor: Colors.grey[100]!,
//                     child: Container(
//                       height: 150.h,
//                       color: Colors.white,
//                     ),
//                   ),
//                   error: (error, stackTrace) => const Center(
//                     child: Text('Please login again'),
//                   ),
//                 ),

//                 SizedBox(height: 25.h),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


