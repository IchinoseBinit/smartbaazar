// buyorwin.when(
//   data: (data) {
//     // Defer ValueNotifier updates
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       if (data.insidearr.isEmpty) {
//         if (sizedboxval.value != 150.h) {
//           sizedboxval.value = 150.h; // Example condition
//         }
//       } else {
//         if (sizedboxval.value != 500.h) {
//           sizedboxval.value = 500.h; // Default height
//         }
//       }
//     });

//     return ValueListenableBuilder<double>(
//       valueListenable: sizedboxval,
//       builder: (context, height, child) {
//         return SizedBox(
//           height: height, // Use the listened value
//           child: TabBarView(
//             controller: tabController,
//             children: [
//               // First Tab
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   if (data.global.isNotEmpty)
//                     SizedBox(
//                       height: 130.h,
//                       child: ListView.builder(
//                         padding: EdgeInsets.zero,
//                         shrinkWrap: true,
//                         scrollDirection: Axis.horizontal,
//                         itemCount: data.global.length,
//                         itemBuilder: (context, index) {
//                           LogoData dat = data.global[index];
//                           return Padding(
//                             padding: EdgeInsets.only(left: 5.w, top: 5.w),
//                             child: Column(
//                               children: [
//                                 CircleAvatar(
//                                   backgroundColor: Colors.grey,
//                                   radius: 27,
//                                   child: CircleAvatar(
//                                     radius: 26,
//                                     backgroundImage:
//                                         NetworkImage(dat.brandLogo!),
//                                   ),
//                                 ),
//                                 Text(
//                                   dat.brandName!,
//                                   style: headerstyle.copyWith(
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.w500,
//                                     color: ColorConstant.blackColor,
//                                   ),
//                                 )
//                               ],
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                   SizedBox(
//                     height: data.insidearr.isNotEmpty &&
//                             data.insidearr[0].isNotEmpty
//                         ? 340.h
//                         : 200,
//                     child: data.insidearr.isNotEmpty &&
//                             data.insidearr[0].isNotEmpty
//                         ? ListView.builder(
//                             clipBehavior: Clip.antiAlias,
//                             padding: const EdgeInsets.all(3),
//                             scrollDirection: Axis.horizontal,
//                             itemCount: data.insidearr[0].length,
//                             itemBuilder: (context, index) {
//                               GlobalModel prod = data.insidearr[0][index];
//                               return InkWell(
//                                 onTap: () {},
//                                 child: ProductDetailWidget(
//                                   issponsored: prod.user[0].sponsored!,
//                                   vendorname: prod.contactName,
//                                   discounttedPrice: prod.discont,
//                                   Vimage: prod.title,
//                                   price: prod.price,
//                                   title: prod.title,
//                                   productImage: prod.imageUrl,
//                                   similarproductCount:
//                                       prod.similarproductCount,
//                                   membershipColor:
//                                       prod.user.first.memberColor,
//                                   membershipTitle:
//                                       prod.user.first.membershipTitle,
//                                 ),
//                               );
//                             },
//                           )
//                         : null,
//                   ),
//                 ],
//               ),

//               // Second Tab
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   if (data.domestic.isNotEmpty)
//                     SizedBox(
//                       height: 130.h,
//                       child: ListView.builder(
//                         padding: EdgeInsets.zero,
//                         shrinkWrap: true,
//                         scrollDirection: Axis.horizontal,
//                         itemCount: data.domestic.length,
//                         itemBuilder: (context, index) {
//                           WidgetsBinding.instance.addPostFrameCallback((_) {
//                             if (data.doma.isEmpty) {
//                               if (sizedboxval.value != 150) {
//                                 sizedboxval.value = 150;
//                               }
//                             } else {
//                               if (sizedboxval.value != 500) {
//                                 sizedboxval.value = 500;
//                               }
//                             }
//                           });

//                           LogoData res = data.domestic[index];
//                           return Padding(
//                             padding: EdgeInsets.only(left: 5.w, top: 5.w),
//                             child: Column(
//                               children: [
//                                 CircleAvatar(
//                                   backgroundColor: Colors.grey,
//                                   radius: 27,
//                                   child: CircleAvatar(
//                                     radius: 26,
//                                     backgroundImage:
//                                         NetworkImage(res.brandLogo!),
//                                   ),
//                                 ),
//                                 Text(
//                                   res.brandName!,
//                                   style: headerstyle.copyWith(
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.w500,
//                                     color: ColorConstant.blackColor,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                 ],
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   },
// );
