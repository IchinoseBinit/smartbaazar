// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:smartbazar/constant/image_constant.dart';
// import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
// import 'package:smartbazar/features/favourite_list/api/favourite_list_api.dart';
// import 'package:smartbazar/features/favourite_list/model/favourite_product_list.dart';
// import 'package:smartbazar/features/favourite_list/view/favourite_listing_skeleton.dart';
// import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
// import 'package:smartbazar/general_widget/general_safe_area.dart';

// class FavouriteListingScreen extends ConsumerWidget {
//   const FavouriteListingScreen({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final favouriteListAsyncValue = ref.watch(getFavouriteListProvider);

//     return GenericSafeArea(
//       child: Scaffold(
//         backgroundColor: const Color(0xFFF6F1F1),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.symmetric(vertical: 20.h),
//             child: Column(
//               children: [
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 12.w),
//                   child: Row(
//                     children: [
//                       const Icon(
//                         Icons.shopping_cart,
//                         size: 25,
//                       ),
//                       SizedBox(
//                         width: 5.w,
//                       ),
//                       Text(
//                         'Favourite Listing',
//                         style: TextStyle(
//                             fontSize: 14.sp,
//                             fontWeight: FontWeight.w700,
//                             color: Colors.black),
//                       ),
//                       const Spacer(),
//                       const Icon(
//                         size: 15,
//                         Icons.arrow_back_ios,
//                         color: Color(0xffADADAD),
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.pop(context);
//                         },
//                         child: Text(
//                           'Go back',
//                           style: TextStyle(
//                               fontSize: 14.sp,
//                               fontWeight: FontWeight.w700,
//                               color: const Color(0xff888888)),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 const Divider(
//                   thickness: 2,
//                   color: Color(0xffD9D9D9),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 favouriteListAsyncValue.when(
//                   data: (favouriteListResponse) {
//                     final favouriteList =
//                         favouriteListResponse.data!.savedProducts?.data ?? [];
//                     if (favouriteList.isEmpty) {
//                       return const Center(child: Text('No favourites found.'));
//                     }
//                     return ListView.separated(
//                       physics: const NeverScrollableScrollPhysics(),
//                       shrinkWrap: true,
//                       itemBuilder: (context, index) {
//                         if (index >= favouriteList.length) {
//                           // Prevent accessing out-of-bounds index
//                           return const SizedBox.shrink();
//                         }
//                         final item = favouriteList[index];
//                         return FavouriteListProductDetails(item: item);
//                       },
//                       separatorBuilder: (context, index) => SizedBox(
//                         height: 16.h,
//                       ),
//                       itemCount: favouriteList.length,
//                     );
//                   },
//                   loading: () => ListView.separated(
//                     physics: const NeverScrollableScrollPhysics(),
//                     shrinkWrap: true,
//                     itemBuilder: (context, index) =>
//                         const FavouriteListSkeleton(),
//                     separatorBuilder: (context, index) =>
//                         SizedBox(height: 16.h),
//                     itemCount: 6, // Number of skeleton items
//                   ),
//                   error: (error, stack) =>
//                       const Text('Please login and try again'),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

