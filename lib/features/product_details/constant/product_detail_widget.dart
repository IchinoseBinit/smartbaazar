import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/report_complain/view/report_complain_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_profile_screen.dart';

class ProductDetailWidget extends StatelessWidget {
  ProductDetailWidget(
      {super.key,
      // this.membership_title,

      this.offer = '',
      this.title = "Trade",
      this.discounttedPrice = '0',
      this.comment = '0',
      this.price = '1',
      this.vendorname = 'John',
      this.distance = 2,
      this.Vimage = '',
      this.productImage = '',
      this.lefttile = 'TradeHub',
      this.similarproductCount,
      this.membershipColor,
      this.wow,
      this.issponsored = false,
      this.shortestDistance,
      this.membershipTitle,
      this.avg_rating=1});
  String? title;
  String? price;
  String? discounttedPrice;
  int? similarproductCount;
  String? views, comment, share;
  String? vendorname;
  // String? membership_title;
  double? distance;
  String? Vimage, productImage, lefttile;
  String? membershipColor;
  String? membershipTitle;
  bool issponsored;
  String? offer, wow;
  int? avg_rating;
  double? shortestDistance;

  @override
  Widget build(BuildContext context) {
    String showRs = "Rs";
    showRs = discounttedPrice == '0' ? '' : '';
  
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 7.h),
      child: Card(
        shadowColor: const Color(0xff3D215F).withOpacity(0.5),
        elevation: 9,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        // child: SizedBox(
        //   width: 200.w,
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Padding(
        //         padding: EdgeInsets.symmetric(horizontal: 10.w),
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             Column(
        //               children: [
        //                 SvgPicture.asset(
        //                   b2bIcon,
        //                   height: 10,
        //                   color: Colors.grey,
        //                 ),
        //                 Text(
        //                   lefttile!,
        //                   style: headerstyle.copyWith(
        //                       fontSize: 9.sp, color: Colors.grey),
        //                 )
        //               ],
        //             ),
        //             PopupMenuButton(
        //               padding: EdgeInsets.zero,
        //               elevation: 0,
        //               shape: const RoundedRectangleBorder(
        //                   borderRadius: BorderRadius.all(Radius.circular(6))),
        //               constraints:
        //                   const BoxConstraints.expand(width: 150, height: 150),
        //               // menuPadding: const EdgeInsets.only(left: 10),
        //               iconColor: const Color(0xffB6B4B4),
        //               color: const Color(0xff766c7a).withOpacity(0.9),
        //               itemBuilder: (context) {
        //                 return [
        //                   PopupMenuItem(
        //                       height: 30,
        //                       padding: EdgeInsets.only(left: 5.w, top: 10.h),
        //                       onTap: () {
        //                         Share.share('Cshare this');
        //                       },
        //                       child: Text(
        //                         "Share",
        //                         style: headerstyle.copyWith(
        //                           fontFamily:
        //                               GoogleFonts.quicksand().fontFamily,
        //                           fontWeight: FontWeight.w600,
        //                           fontSize: 9,
        //                         ),
        //                       )),
        //                   PopupMenuItem(
        //                       height: 30,
        //                       padding: const EdgeInsets.only(left: 5),
        //                       child: Text(
        //                         "Save",
        //                         style: headerstyle.copyWith(
        //                           fontFamily:
        //                               GoogleFonts.quicksand().fontFamily,
        //                           fontWeight: FontWeight.w600,
        //                           fontSize: 8,
        //                         ),
        //                       )),
        //                   PopupMenuItem(
        //                       height: 30,
        //                       padding: const EdgeInsets.only(left: 5),
        //                       onTap: () {
        //                         Navigator.push(
        //                             context,
        //                             MaterialPageRoute(
        //                               builder: (context) =>
        //                                   const VendorProfileScreen(),
        //                             ));
        //                       },
        //                       child: Text(
        //                         "Conatct Seller",
        //                         style: headerstyle.copyWith(
        //                           fontFamily:
        //                               GoogleFonts.quicksand().fontFamily,
        //                           fontWeight: FontWeight.w600,
        //                           fontSize: 8,
        //                         ),
        //                       )),
        //                   PopupMenuItem(
        //                       height: 30,
        //                       padding: const EdgeInsets.only(left: 5),
        //                       child: Text(
        //                         "Get Seller Directives",
        //                         style: headerstyle.copyWith(
        //                           fontFamily:
        //                               GoogleFonts.quicksand().fontFamily,
        //                           fontWeight: FontWeight.w600,
        //                           fontSize: 8,
        //                         ),
        //                       )),
        //                   PopupMenuItem(
        //                       height: 30,
        //                       padding: const EdgeInsets.only(left: 5),
        //                       onTap: () {
        //                         Navigator.push(
        //                             context,
        //                             MaterialPageRoute(
        //                               builder: (context) =>
        //                                   const ReportComplainScreen(
        //                                       productId: "167",
        //                                       productName: "techstore"),
        //                             ));
        //                       },
        //                       child: Text(
        //                         "Report",
        //                         style: headerstyle.copyWith(
        //                           fontFamily:
        //                               GoogleFonts.quicksand().fontFamily,
        //                           fontWeight: FontWeight.w600,
        //                           fontSize: 8,
        //                         ),
        //                       )),
        //                 ];
        //               },
        //             ),
        //           ],
        //         ),
        //       ),
        //       productImage == 'null'
        //           ? Image.asset(
        //               'assets/images/shoppingimages.png',
        //               height: 130.h,
        //               width: 200.2,
        //               fit: BoxFit.fill,
        //             )
        //           : Image.network(
        //               productImage ?? '', // Ensure Vimage is not null or empty
        //               height: 130.h, // Adjust size accordingly
        //               width: 200.w,
        //               fit: BoxFit.fill,
        //               loadingBuilder: (context, child, loadingProgress) {
        //                 if (loadingProgress == null) {
        //                   return child; // If no loading, show the image
        //                 } else {
        //                   return const Center(
        //                       child:
        //                           CircularProgressIndicator()); // Show loading indicator
        //                 }
        //               },
        //               errorBuilder: (context, error, stackTrace) {
        //                 return const Icon(Icons
        //                     .error); // Show error icon if image fails to load
        //               },
        //             ),
        //       SizedBox(
        //         height: 5.h,
        //       ),
        //       Padding(
        //         padding: EdgeInsets.symmetric(horizontal: 10.w),
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.start,
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Text(
        //               title!,
        //               style: headerstyle.copyWith(
        //                   color: ColorConstant.blackColor,
        //                   fontSize: 13,
        //                   fontWeight: FontWeight.w800),
        //               softWrap: true,
        //               maxLines: 1,
        //             ),
        //             Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 Text(
        //                   'Rs ${price?? "0"}',
        //                   style: headerstyle.copyWith(
        //                       color: ColorConstant.blackColor,
        //                       fontSize: 12.sp,
        //                       fontWeight: FontWeight.w800),
        //                 ),
        //                 offer == ''
        //                     ? const SizedBox()
        //                     : Row(
        //                         children: [
        //                            offer!=''? const SizedBox(): const Icon(
        //                             Icons.track_changes_sharp,
        //                             color: Color(0xff901B41),
        //                             size: 15,
        //                           ),
        //                           Text(
        //                             offer ?? '',
        //                             style: headerstyle.copyWith(
        //                                 fontWeight: FontWeight.w700,
        //                                 color: const Color(0xff901B41),
        //                                 fontSize: 8.sp),
        //                           ),
        //                         ],
        //                       ),
        //                 discounttedPrice != "0"
        //                     ? Row(
        //                         children: [
        //                             offer!=''? const Icon(
        //                             Icons.track_changes_sharp,
        //                             color: Color(0xff901B41),
        //                             size: 15,
        //                           ): const SizedBox(),
        //                       offer==''?      Text(
        //                             "$offer",
        //                             style: headerstyle.copyWith(
        //                                 fontWeight: FontWeight.w700,
        //                                 color: const Color(0xff901B41),
        //                                 fontSize: 8.sp),
        //                           ): const SizedBox(),
        //                         ],
        //                       )
        //                     : const SizedBox(),
        //                 if (discounttedPrice != '0')
        //                   Text(
        //                     "$showRs$discounttedPrice",
        //                     style: headerstyle.copyWith(
        //                       fontSize: 8.sp,
        //                       fontWeight: FontWeight.w600,
        //                       color: Colors.grey,
        //                       decoration: TextDecoration.lineThrough,
        //                       decorationColor: Colors.grey,
        //                     ),
        //                   ),
        //               ],
        //             ),
        //           ],
        //         ),
        //       ),
        //       Padding(
        //         padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 1.h),
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             Row(
        //               children: [
        //                 CircleAvatar(
        //                   radius: 10,
        //                   backgroundColor: const Color(0xff901B41),
        //                   child: Text(
        //                     avg_rating.toString() ?? '1',
        //                     style: headerstyle.copyWith(fontSize: 8.sp),
        //                   ),
        //                 ),
        //                 Container(
        //                   decoration: BoxDecoration(
        //                       borderRadius: const BorderRadius.only(
        //                           topRight: Radius.circular(5),
        //                           bottomRight: Radius.circular(5)),
        //                       border: Border.all(color: Colors.grey)),
        //                   child: RatingBar.builder(
        //                     initialRating: 5,
        //                     minRating: 1,
        //                     direction: Axis.horizontal,
        //                     allowHalfRating: true,
        //                     itemCount: avg_rating ?? 1,
        //                     itemSize: 12,
        //                     itemPadding:
        //                         const EdgeInsets.symmetric(horizontal: 1.0),
        //                     itemBuilder: (context, _) => const Icon(
        //                       Icons.star,
        //                       color: Color(0xff901B41),
        //                     ),
        //                     onRatingUpdate: (rating) {},
        //                   ),
        //                 ),
        //               ],
        //             ),
        //             discounttedPrice!=null?   const SizedBox()
        //                 : Row(
        //                     children: [
        //                  discounttedPrice!=null?   const SizedBox():     Image.asset(
        //                         "assets/images/flameIcon.png",
        //                         height: 10,
        //                         width: 10,
        //                         color: const Color(0xff901B41),
        //                       ),
        //                       Text(
        //                         "30%",
        //                         style: headerstyle.copyWith(
        //                             fontWeight: FontWeight.w600,
        //                             color: const Color(0xff901B41),
        //                             fontSize: 10),
        //                       ),
        //                       const Icon(
        //                         Icons.arrow_downward_rounded,
        //                         size: 15,
        //                         color: Color(0xff901B41),
        //                       )
        //                     ],
        //                   ),
        //           ],
        //         ),
        //       ),
        //       Padding(
        //         padding: EdgeInsets.symmetric(horizontal: 10.w),
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             Row(
        //               children: [
        //                 Row(
        //                   children: [
        //                     Image.asset('assets/icon/Rectangle.png'),
        //                     Text(
        //                       wow ?? '0',
        //                       style: headerstyle.copyWith(
        //                           fontSize: 10,
        //                           color: const Color(0xff807C7C),
        //                           fontWeight: FontWeight.w700),
        //                     )
        //                   ],
        //                 )
        //               ],
        //             ),
        //             Row(
        //               children: [
        //                 Row(
        //                   children: [
        //                     Image.asset("assets/icon/Vector.png"),
        //                     Text(
        //                       comment ?? '0',
        //                       style: headerstyle.copyWith(
        //                           fontSize: 10,
        //                           color: const Color(0xff807C7C),
        //                           fontWeight: FontWeight.w700),
        //                     )
        //                   ],
        //                 )
        //               ],
        //             ),
        //             Row(
        //               children: [
        //                 Row(
        //                   children: [
        //                     Image.asset(
        //                       "assets/icon/solar.png",
        //                       color: Colors.grey,
        //                     ),
        //                     Text(
        //                       similarproductCount?.toString() ?? '0',
        //                       style: headerstyle.copyWith(
        //                           fontSize: 10,
        //                           color: const Color(0xff807C7C),
        //                           fontWeight: FontWeight.w700),
        //                     )
        //                   ],
        //                 )
        //               ],
        //             ),
        //           ],
        //         ),
        //       ),
        //       Column(
        //         children: [
        //           Container(
        //             padding:
        //                 EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
        //             decoration: const BoxDecoration(color: Color(0xffD5D5D5)),
        //             child: Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 Text(
        //                   "ENQUIRE",
        //                   style: headerstyle.copyWith(
        //                       fontWeight: FontWeight.w500,
        //                       fontSize: 13,
        //                       color: ColorConstant.blackColor),
        //                 ),
        //                 Text(
        //                   '|',
        //                   style: headerstyle.copyWith(
        //                       fontWeight: FontWeight.w500,
        //                       fontSize: 13,
        //                       color: ColorConstant.blackColor),
        //                 ),
        //                 Text(
        //                   "WIN",
        //                   style: headerstyle.copyWith(
        //                       fontWeight: FontWeight.w500,
        //                       fontSize: 13,
        //                       color: ColorConstant.blackColor),
        //                 ),
        //                 Text(
        //                   '|',
        //                   style: headerstyle.copyWith(
        //                       fontWeight: FontWeight.w500,
        //                       fontSize: 13,
        //                       color: ColorConstant.blackColor),
        //                 ),
        //                 Text(
        //                   "BUY",
        //                   style: headerstyle.copyWith(
        //                       fontWeight: FontWeight.w500,
        //                       fontSize: 13,
        //                       color: ColorConstant.blackColor),
        //                 ),
        //               ],
        //             ),
        //           ),
        //           Container(
        //             margin: EdgeInsets.zero,
        //             padding: const EdgeInsets.all(7),
        //             decoration: BoxDecoration(
        //               color: membershipColor != null
        //                   ? Color(int.parse(
        //                       membershipColor!.replaceFirst('#', '0xFF')))
        //                   : const Color(0xff3D215F), // Default color
        //               borderRadius: const BorderRadius.only(
        //                 bottomLeft: Radius.circular(13),
        //                 bottomRight: Radius.circular(13),
        //               ),
        //             ),
        //             child: SingleChildScrollView(
        //               scrollDirection: Axis.horizontal,
        //               child: Row(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                 children: [
        //                   Row(
        //                     children: [
        //                       CircleAvatar(
        //                         backgroundImage: NetworkImage(Vimage!),
        //                         radius: 14.sp,
        //                       ),
        //                       Column(
        //                         mainAxisAlignment: MainAxisAlignment.start,
        //                         crossAxisAlignment: CrossAxisAlignment.start,
        //                         children: [
        //                           Row(
        //                             children: [
        //                               SizedBox(
        //                                 width: 4.w,
        //                               ),
        //                               Text(
        //                                 vendorname != null &&
        //                                         vendorname!.length > 19
        //                                     ? '${vendorname!.substring(0, 15)}...'
        //                                     : vendorname ?? '',
        //                                 style: headerstyle.copyWith(
        //                                   fontSize: 12.sp,
        //                                   fontWeight: FontWeight.w700,
        //                                 ),
        //                               ),
        //                               SizedBox(
        //                                 width: 4.w,
        //                               ),
        //                               const Icon(
        //                                 Icons.logout,
        //                                 color: Colors.white,
        //                                 size: 12,
        //                               )
        //                             ],
        //                           ),
        //                           Row(
        //                             mainAxisAlignment: MainAxisAlignment.center,
        //                             crossAxisAlignment: CrossAxisAlignment.center,
        //                             children: [
        //                               SizedBox(
        //                                 width: 2.w,
        //                               ),
        //                               Image.asset(
        //                                 "assets/images/nepalFlag.png",
        //                                 height: 9.h,
        //                               ),
        //                               SizedBox(
        //                                 width: 1.w,
        //                               ),
        //                               Text(
        //                                 membershipTitle ?? "Domestic Brand",
        //                                 style: headerstyle.copyWith(
        //                                     fontSize: 8.sp,
        //                                     fontWeight: FontWeight.w700),
        //                               ),
        //                             ],
        //                           ),
        //                         ],
        //                       ),
        //                     ],
        //                   ),
        //                   Column(
        //                     children: [
        //                       Row(
        //                         children: [
        //                           const Icon(
        //                             Icons.location_on,
        //                             color: Colors.white,
        //                             size: 12,
        //                           ),
        //                           Text(
        //                             "2.5 km",
        //                             style: headerstyle.copyWith(
        //                                 fontSize: 8.sp,
        //                                 fontWeight: FontWeight.w700),
        //                           ),
        //                         ],
        //                       ),
        //                       SizedBox(
        //                         height: 3.h,
        //                       ),
        //                       issponsored
        //                           ? const SizedBox()
        //                           : Row(
        //                               children: [
        //                                 Image.asset("assets/images/mike.png"),
        //                                 Text(
        //                                   "Sponsored",
        //                                   style: headerstyle.copyWith(
        //                                       fontSize: 10.sp,
        //                                       fontWeight: FontWeight.w700),
        //                                 ),
        //                               ],
        //                             ),
        //                     ],
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           )
        //         ],
        //       ),
        //     ],
        //   ),
        ),
      // ),
    );
  }
}
