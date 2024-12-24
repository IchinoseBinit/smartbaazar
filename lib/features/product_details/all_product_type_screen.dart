// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:smartbazar/constant/image_constant.dart';
// import 'package:smartbazar/features/vendor/view/disputes_screen.dart';
// import 'package:smartbazar/features/widgets/item_description_widget.dart';
// import 'package:smartbazar/features/widgets/product_model.dart';
// import 'package:smartbazar/general_widget/general_safe_area.dart';

// class AllProductType extends StatefulWidget {
//   const AllProductType({super.key});

//   @override
//   State<AllProductType> createState() => _AllProductTypeState();
// }

// class _AllProductTypeState extends State<AllProductType> {
//   List<Product> product = [
//     // Your list of products
//     Product(
//       name: 'Acer Aspire 5 A515-56-32DK Intel Core i3 11th Gen/15.6 FHD',
//     ),
//     Product(
//       name: 'Dell Aspire 5 A515-56-32DK Intel Core i3 11th Gen/15.6 FHD',
//     ),
//     Product(
//       name: 'Acer Aspire 5 A515-56-32DK Intel Core i3 11th Gen/15.6 FHD',
//     ),
//     Product(
//       name: 'Leneov Aspire 5 A515-56-32DK Intel Core i3 11th Gen/15.6 FHD',
//     ),
//   ];
//   List<Product> filteredProducts = [];

//   @override
//   void initState() {
//     filteredProducts = product;
//     super.initState();
//   }

//   void filterProducts(String query) {
//     setState(() {
//       if (query.isNotEmpty) {
//         filteredProducts = product
//             .where((product) =>
//                 product.name.toLowerCase().contains(query.toLowerCase()))
//             .toList();
//       } else {
//         filteredProducts = product;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GenericSafeArea(
//       color: Colors.white,
//       child: Scaffold(
//         appBar: AppBar(
//           toolbarHeight: 85.h,
//           leadingWidth: 30.h,
//           titleSpacing: 5,
//           automaticallyImplyLeading: false,
//           // leading: IconButton(
//           //   icon: SvgPicture.asset(drawerIcon),
//           //   // onPressed: () {
//           //   //   _key.currentState!.openDrawer();
//           //   // },
//           // ),
//           title: Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Expanded(
//                 child: SizedBox(
//                   height: 33.h,
//                   child: TextFormField(
//                     onChanged: (query) {
//                       filterProducts(query);
//                     },
//                     decoration: InputDecoration(
//                         hintText: 'Search...',
//                         prefixIconConstraints: BoxConstraints(minWidth: 40.w),
//                         hintStyle: TextStyle(
//                             fontSize: 12.sp,
//                             fontWeight: FontWeight.w500,
//                             color: const Color(0xffBFBFBF)),
//                         prefixIcon: Padding(
//                           padding: EdgeInsets.only(top: 5.h, left: 8.w),
//                           child: Icon(
//                             Icons.search,
//                             size: 20.sp,
//                           ),
//                         ),
//                         suffixIcon: Container(
//                           width: 70.w,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.only(
//                                 bottomRight: Radius.circular(25.r),
//                                 topRight: Radius.circular(25.r)),
//                             color: Color(0xff362677),
//                           ),
//                           child: Icon(
//                             Icons.search,
//                             size: 30.sp,
//                             color: Colors.white,
//                           ),
//                         ),
//                         contentPadding: EdgeInsets.zero,
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30.r))),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 width: 10.w,
//               ),
//               Container(
//                 height: 30.h,
//                 width: 30.h,
//                 padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
//                 decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     border: Border.all(
//                       width: 1.w,
//                     )),
//                 child: SvgPicture.asset(openCart),
//               ),
//             ],
//           ),
//         ),
//         body: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 14.w),
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text('Showing the result'),
//                   DropdownButton<String>(
//                     value: 'Sort By',
//                     onChanged: (String? newValue) {
//                       print(newValue);
//                     },
//                     items: <String>[
//                       'Sort By',
//                       'Price: Hight to Low',
//                       'Price: Low to high',
//                       'Date'
//                     ].map((String value) {
//                       return DropdownMenuItem<String>(
//                         value: value,
//                         child: SizedBox(
//                             width: 85.w,
//                             child: Padding(
//                               padding: const EdgeInsets.all(2.0),
//                               child: Text(
//                                 value,
//                                 style: TextStyle(
//                                   fontSize: 12.sp,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             )),
//                       );
//                     }).toList(),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 10),
//               Expanded(
//                 child: DefaultTabController(
//                   length: 4, // Number of tabs
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     children: [
//                       TabBar(
//                         tabAlignment: TabAlignment.start,
//                         unselectedLabelColor: Colors.red,
//                         isScrollable: true,
//                         dividerColor: Color(0xffD9D9D9),
//                         tabs: [
//                           Tab(
//                             iconMargin: EdgeInsets.zero,
//                             icon: Row(
//                               children: [
//                                 Text(
//                                   'All Product',
//                                   style: TextStyle(
//                                       fontSize: 14.sp,
//                                       fontWeight: FontWeight.w700,
//                                       color: Colors.black),
//                                 ),
//                                 SizedBox(
//                                   width: 8.w,
//                                 ),
//                                 Container(
//                                   height: 18.h,
//                                   width: 19.w,
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(5.r),
//                                       color: Color(0xff781740)),
//                                   child: Center(
//                                     child: Text(
//                                       '21',
//                                       style: TextStyle(
//                                           fontSize: 10.sp, color: Colors.white),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Tab(
//                             iconMargin: EdgeInsets.zero,
//                             icon: Row(
//                               children: [
//                                 Text(
//                                   ' Brand New',
//                                   style: TextStyle(
//                                       fontSize: 14.sp,
//                                       fontWeight: FontWeight.w700,
//                                       color: Colors.black),
//                                 ),
//                                 SizedBox(
//                                   width: 8.w,
//                                 ),
//                                 Container(
//                                   height: 18.h,
//                                   width: 19.w,
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(5.r),
//                                       color: Color(0xff362677)),
//                                   child: Center(
//                                     child: Text(
//                                       '21',
//                                       style: TextStyle(
//                                           fontSize: 10.sp, color: Colors.white),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Tab(
//                             iconMargin: EdgeInsets.zero,
//                             icon: Row(
//                               children: [
//                                 Text(
//                                   'Used',
//                                   style: TextStyle(
//                                       fontSize: 14.sp,
//                                       fontWeight: FontWeight.w700,
//                                       color: Colors.black),
//                                 ),
//                                 SizedBox(
//                                   width: 8.w,
//                                 ),
//                                 Container(
//                                   height: 18.h,
//                                   width: 19.w,
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(5.r),
//                                       color: Color(0xff362677)),
//                                   child: Center(
//                                     child: Text(
//                                       '21',
//                                       style: TextStyle(
//                                           fontSize: 10.sp, color: Colors.white),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Tab(
//                             iconMargin: EdgeInsets.zero,
//                             icon: Row(
//                               children: [
//                                 Text(
//                                   'Services',
//                                   style: TextStyle(
//                                       fontSize: 14.sp,
//                                       fontWeight: FontWeight.w700,
//                                       color: Colors.black),
//                                 ),
//                                 SizedBox(
//                                   width: 8.w,
//                                 ),
//                                 Container(
//                                   height: 18.h,
//                                   width: 19.w,
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(5.r),
//                                       color: Color(0xff362677)),
//                                   child: Center(
//                                     child: Text(
//                                       '21',
//                                       style: TextStyle(
//                                           fontSize: 10.sp, color: Colors.white),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                       Expanded(
//                         child: TabBarView(
//                           physics: ScrollPhysics(),
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.symmetric(vertical: 20.h),
//                               child: SingleChildScrollView(
//                                 child: Column(
//                                   children: [
//                                     SizedBox(
//                                       height: 292.h,
//                                       child: ListView.separated(
//                                           primary: false,
//                                           physics: BouncingScrollPhysics(),
//                                           scrollDirection: Axis.horizontal,
//                                           padding: EdgeInsets.only(left: 5.w),
//                                           shrinkWrap: true,
//                                           itemBuilder: (context, int index) {
//                                             final product =
//                                                 filteredProducts[index];
//                                             return ItemDescriptionWidget(
//                                               product: product,
//                                               onTap: (product) {
//                                                 // Navigator.push(
//                                                 //     context,
//                                                 //     MaterialPageRoute(
//                                                 //         builder: (_) =>
//                                                 //             ProductDetailsScreen(
//                                                 //               product: product,
//                                                 //             )));
//                                               },
//                                               // productName: product.name,
//                                             );
//                                           },
//                                           separatorBuilder: (context, index) =>
//                                               SizedBox(
//                                                 height: 14.h,
//                                               ),
//                                           itemCount: filteredProducts.length),
//                                     ),
//                                     SizedBox(
//                                       height: 20.h,
//                                     ),
//                                     SizedBox(
//                                       height: 292.h,
//                                       child: ListView.separated(
//                                           primary: false,
//                                           physics: BouncingScrollPhysics(),
//                                           scrollDirection: Axis.horizontal,
//                                           padding: EdgeInsets.only(left: 5.w),
//                                           shrinkWrap: true,
//                                           itemBuilder: (context, int index) {
//                                             final product =
//                                                 filteredProducts[index];
//                                             return ItemDescriptionWidget(
//                                               product: product,
//                                               onTap: (product) {
//                                                 // Navigator.push(
//                                                 //     context,
//                                                 //     MaterialPageRoute(
//                                                 //         builder: (_) =>
//                                                 //             ProductDetailsScreen(
//                                                 //               product: product,
//                                                 //             )));
//                                               },
//                                               // productName: product.name,
//                                             );
//                                           },
//                                           separatorBuilder: (context, index) =>
//                                               SizedBox(
//                                                 height: 14.h,
//                                               ),
//                                           itemCount: filteredProducts.length),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
