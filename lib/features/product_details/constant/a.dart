  //  Expanded(
  //                       // To allow spacing between elements
  //                       child: Row(
  //                         crossAxisAlignment: CrossAxisAlignment.start,
  //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                         children: [
  //                           // Vendor Name
  //                           Column(
  //                             mainAxisAlignment: MainAxisAlignment.start,
  //                             crossAxisAlignment: CrossAxisAlignment.start,
  //                             children: [
  //                               Row(
  //                                 mainAxisAlignment: MainAxisAlignment.start,
  //                                 crossAxisAlignment: CrossAxisAlignment.center,
  //                                 children: [
  //                                   Text(
  //                                     vendorname != null &&
  //                                             vendorname!.length > 10
  //                                         ? '${vendorname!.substring(0, 10)}...'
  //                                         : vendorname ?? '',
  //                                     style: headerstyle.copyWith(
  //                                       fontFamily:
  //                                           GoogleFonts.quicksand().fontFamily,
  //                                       fontSize: 13.sp,
  //                                       fontWeight: FontWeight.w600,
  //                                     ),
  //                                   ),
  //                                   SizedBox(
  //                                     width: 3.w,
  //                                   ),
  //                                   const Icon(
  //                                     Icons.logout,
  //                                     color: Colors.white,
  //                                     size: 11,
  //                                   ),
  //                                 ],
  //                               ),
  //                               Row(
  //                                 children: [
  //                                   Image.asset(
  //                                     membershipid == "2"
  //                                         ? spotlighticon
  //                                         : membershipid == "1"
  //                                             ? basicsellericon
  //                                             : membershipid == "3"
  //                                                 ? domesticseller
  //                                                 : membershipid == "25"
  //                                                     ? globalicon
  //                                                     : basicsellericon, // Provide a default icon if no match
  //                                     height: 9.h,
  //                                   ),
  //                                   SizedBox(
  //                                     width: 2.w,
  //                                   ),
  //                                   Text(
  //                                     membershipTitle ?? "Domestic Brand",
  //                                     style: headerstyle.copyWith(
  //                                       fontSize: 10.sp,
  //                                       fontFamily:
  //                                           GoogleFonts.quicksand().fontFamily,

  //                                       // Adjust font size based on length
  //                                       fontWeight: FontWeight.w700,
  //                                     ),
  //                                     // overflow: TextOverflow.ellipsis,
  //                                     // Apply ellipsis for overflow
  //                                     // maxLines:
  //                                     //     1, // Restrict to a single line
  //                                   ),
  //                                 ],
  //                               ),
  //                             ],
  //                           ),

  //                           // Shortest Distance
  //                           Padding(
  //                             padding: EdgeInsets.only(right: 10.w),
  //                             child: Column(
  //                               mainAxisAlignment: MainAxisAlignment.start,
  //                               crossAxisAlignment: CrossAxisAlignment.start,
  //                               children: [
  //                                 SizedBox(
  //                                   height: 3.h,
  //                                 ),
  //                                 shortestDistance != null &&
  //                                         shortestDistance != 0.0
  //                                     ? Row(
  //                                         children: [
  //                                           const Icon(
  //                                             Icons.location_on,
  //                                             color: Colors.white,
  //                                             size: 12,
  //                                           ),
  //                                           SizedBox(
  //                                               width: 2
  //                                                   .w), // Space between icon and text
  //                                           Text(
  //                                             "${double.parse(shortestDistance.toString()).toStringAsFixed(2)} km",
  //                                             style: headerstyle.copyWith(
  //                                               fontFamily:
  //                                                   GoogleFonts.quicksand()
  //                                                       .fontFamily,
  //                                               fontSize: 9.sp,
  //                                               fontWeight: FontWeight.w700,
  //                                             ),
  //                                           ),
  //                                         ],
  //                                       )
  //                                     : SizedBox(
  //                                         height: 15.h,
  //                                       ),
  //                                 issponsored
  //                                     ? Row(
  //                                         children: [
  //                                           SizedBox(
  //                                             height: 2.h,
  //                                           ),
  //                                           Image.asset(
  //                                               "assets/images/mike.png"),
  //                                           Text(
  //                                             "SPONSORED",
  //                                             style: headerstyle.copyWith(
  //                                                 fontSize: 6.sp,
  //                                                 fontWeight: FontWeight.w700),
  //                                           ),
  //                                         ],
  //                                       )
  //                                     : SizedBox(
  //                                         height: 5.h,
  //                                       ),
  //                               ],
  //                             ),
  //                           )
  //                         ],
  //                       ),
  //                     ),