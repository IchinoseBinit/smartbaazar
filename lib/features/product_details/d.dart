// InkWell(
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => VendorHomeScreen(
//                                 vendorName: vendorname!, vid: id!)));
//                   },
//                   child: Container(
//                     width: double.infinity,
//                     // height: 50.h,
//                     margin: EdgeInsets.zero,
//                     padding: EdgeInsets.symmetric(vertical: 10.9.h),
//                     decoration: BoxDecoration(
//                       color: membershipColor != null
//                           ? Color(int.parse(
//                               membershipColor!.replaceFirst('#', '0xFF'),),)
//                           : const Color(0xff3D215F), // Default color
//                       borderRadius: const BorderRadius.only(
//                         bottomLeft: Radius.circular(13),
//                         bottomRight: Radius.circular(13),
//                       ),
//                     ),
//                     // ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         SizedBox(
//                           width: 13.w,
//                         ),
//                         CircleAvatar(
//                           backgroundImage: NetworkImage(Vimage!),
//                           radius: 19.sp,
//                         ),
//                         SizedBox(
//                           height: 10.h,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     SizedBox(
//                                       width: 5.w,
//                                     ),
//                                     Text(
//                                       vendorname != null &&
//                                               vendorname!.length > 19
//                                           ? '${vendorname!.substring(0, 14)}...'
//                                           : vendorname ?? '',
//                                       style: headerstyle.copyWith(
//                                         fontFamily:
//                                             GoogleFonts.quicksand().fontFamily,
//                                         fontSize: 13.sp,
//                                         fontWeight: FontWeight.w600,
//                                       ),
//                                     ),
//                                     // SizedBox(
//                                     //   width: 4.w,
//                                     // ),
//                                     const Icon(
//                                       Icons.logout,
//                                       color: Colors.white,
//                                       size: 12,
//                                     ),
//                                     if (shortestDistance != null &&
//                                         shortestDistance != 0.0)
//                                       Row(
//                                         children: [
//                                           const Icon(
//                                             Icons.location_on,
//                                             color: Colors.white,
//                                             size: 12,
//                                           ),
//                                           Text(
//                                             "${double.parse(shortestDistance.toString()).toStringAsFixed(2) ?? 2.0} km",
//                                             style: headerstyle.copyWith(
//                                               fontFamily:
//                                                   GoogleFonts.quicksand()
//                                                       .fontFamily,
//                                               fontSize: 9.sp,
//                                               fontWeight: FontWeight.w700,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                   ],
//                                 ),
//                                 Row(
//                                   // mainAxisAlignment:
//                                   //     MainAxisAlignment.spaceBetween,
//                                   // crossAxisAlignment: CrossAxisAlignment.s,
//                                   children: [
//                                     Row(
//                                       children: [
//                                         SizedBox(
//                                           width: 3.5.w,
//                                         ),
//                                         Image.asset(
//                                           membershipid == "2"
//                                               ? spotlighticon
//                                               : membershipid == "1"
//                                                   ? basicsellericon
//                                                   : membershipid == "3"
//                                                       ? domesticseller
//                                                       : membershipid == "25"
//                                                           ? globalicon
//                                                           : basicsellericon, // Provide a default icon if no match
//                                           height: 9.h,
//                                         ),
//                                         SizedBox(
//                                           width: 1.w,
//                                         ),
//                                         SizedBox(
//                                           child: Text(
//                                             membershipTitle ?? "Domestic Brand",
//                                             style: headerstyle.copyWith(
//                                               fontSize: 10.sp,
//                                               fontFamily:
//                                                   GoogleFonts.quicksand()
//                                                       .fontFamily,

//                                               // Adjust font size based on length
//                                               fontWeight: FontWeight.w700,
//                                             ),
//                                             // overflow: TextOverflow.ellipsis,
//                                             // Apply ellipsis for overflow
//                                             // maxLines:
//                                             //     1, // Restrict to a single line
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     SizedBox(
//                                       width: 65.w,
//                                     ),

//                                     if (issponsored)
//                                       Row(
//                                         children: [
//                                           Image.asset("assets/images/mike.png"),
//                                           Text(
//                                             "SPONSORED",
//                                             style: headerstyle.copyWith(
//                                                 fontSize: 10.sp,
//                                                 fontWeight: FontWeight.w700),
//                                           ),
//                                         ],
//                                       )

//                                     // : const SizedBox(),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
