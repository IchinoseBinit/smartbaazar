// SizedBox(
//   height: 50,
//   width: 800.w,
//   child: Row(
//     children: List.generate(categories.length, (index) {
//       return GestureDetector(
//         onTap: () {
//           setState(() {
//             myselectedindex = index;
//             alldata = [
//               data.brandnew,
//               data.used,
//               data.services,
//               data.events,
//               data.b2b,
//               data.jobs,
//               data.grocery
//             ][index] ?? [];
//           });
//         },
//         child: Container(
//           padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.h),
//           margin: EdgeInsets.symmetric(horizontal: 10.w),
//           decoration: BoxDecoration(
//             color: myselectedindex == index
//                 ? ColorConstant.blackColor
//                 : Colors.grey[300],
//             borderRadius: BorderRadius.circular(8),
//           ),
//           child: Text(
//             categories[index],
//             style: TextStyle(
//               color: myselectedindex == index ? Colors.white : Colors.black,
//             ),
//           ),
//         ),
//       );
//     }),
//   ),
// ),
// alldata?.isEmpty ?? true
//     ? Padding(
//         padding: const EdgeInsets.all(40.0),
//         child: Center(child: Text("No Listing available.....")),
//       )
//     : AnimatedContainer(
//         duration: const Duration(milliseconds: 400),
//         child: SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Wrap(
//             spacing: 3.w,
//             children: List.generate(alldata?.length ?? 0, (index) {
//               BrandNewModel prod = alldata![index];
//               return GestureDetector(
//                 onTap: () {
//                   // Add onTap functionality if needed
//                 },
//                 child: ProductDetailWidget(
//                   posttype: prod.post_type,
//                   id: int.tryParse(prod.id),
//                   membershipid: prod.userdetails?.membership_id,
//                   didcountpercentage: prod.discount_percentage?.toInt(),
//                   lefttile: "TradeHub",
//                   vendorname: prod.userdetails?.name ?? "",
//                   Vimage: prod.userdetails?.photo ?? "",
//                   avg_rating: prod.avg_rating?.toDouble() ?? 0,
//                   comment: prod.commentcount?.toString() ?? "0",
//                   discounttedPrice: prod.discounted_price?.toString() ?? "0",
//                   distance: double.tryParse(prod.shortestDistance?.toString() ?? "0"),
//                   issponsored: prod.userdetails?.sponsored ?? false,
//                   membershipColor: prod.userdetails?.membership_color ?? "",
//                   membershipTitle: prod.userdetails?.membership_title ?? "",
//                   offer: prod.wow ?? "",
//                   price: prod.price ?? "",
//                   productImage: prod.image,
//                   shortestDistance: prod.shortestDistance ?? 0.0,
//                   similarproductCount: prod.similarProductCount ?? 0,
//                   title: prod.title ?? "",
//                   wow: prod.wow ?? "",
//                 ),
//               );
//             }),
//           ),
//         ),
//       ),
