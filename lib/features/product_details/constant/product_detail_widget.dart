import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/button_nav_bar/cusom_btn_bar/custom_bottom_nav.dart';
import 'package:sprintf/sprintf.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/favourite_list/api/add_product_to_favourite_list_api.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/report_complain/view/report_complain_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';
import 'package:url_launcher/url_launcher.dart';

// This is your ConsumerStatefulWidget to handle all the parameters
class ProductDetailWidget extends ConsumerStatefulWidget {
  final String productid;
  final String? title;
  final String? price;
  final String? discounttedPrice;
  final int? similarproductCount;
  final String? vendorname;
  final int? didcountpercentage;
  final String? posttype;
  final String? comment;
  final double? distance;
  final String? Vimage, productImage, lefttile;
  final String? membershipColor;
  final String? membershipTitle;
  final bool issponsored;
  final String? offer, wow;
  final double? avg_rating;
  final double? shortestDistance;
  final String? vendorid;
  final String? tradeImage;
  final String? membershipid;
  final String? lat, long;
  final List<dynamic>? savedid;
  final VoidCallback? onRefresh;
  final Function()? onenquiredclicked;
  final WidgetRef? reffromvendor;

  // Constructor
  const ProductDetailWidget(
      {Key? key,
      required this.productid,
      this.title,
      this.price,
      this.discounttedPrice = '0',
      this.similarproductCount,
      this.vendorname = 'John',
      this.didcountpercentage,
      this.posttype = '1',
      this.comment = '0',
      this.distance = 2.0,
      this.Vimage = '',
      this.productImage,
      this.lefttile = 'TradeHub',
      this.membershipColor,
      this.membershipTitle,
      this.issponsored = false,
      this.offer,
      this.wow,
      this.avg_rating = 1.0,
      this.shortestDistance,
      this.vendorid,
      this.tradeImage,
      this.membershipid = '1',
      this.lat,
      this.long,
      this.savedid,
      this.onRefresh,
      this.onenquiredclicked,
      this.reffromvendor})
      : super(key: key);

  @override
  _ProductDetailWidgetState createState() => _ProductDetailWidgetState();
}

class _ProductDetailWidgetState extends ConsumerState<ProductDetailWidget> {
  String formatToTwoDecimals(double value) {
    return sprintf("%.2f", [value]); // Format the price to 2 decimal places
  }

  String? views, comment, share;
  int? userId;

  // Method to get the userId from shared preferences
  void getUserId() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? session = pref.getString('session');
    if (session != null) {
      userId = jsonDecode(session)['result']['id'];
    }
  }

  @override
  Widget build(BuildContext context) {
    getUserId(); // Fetch user ID

    // Format price and discount
    String showRs = widget.discounttedPrice == '0' ? '' : 'Rs.';

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: InkWell(
        onTap: () {
          navigateToPage(
            context: context,
            page: ProductDetailScreen(productId: widget.productid),
            ref: widget.reffromvendor ?? ref,
            showNavBar: false, // Hide bottom navbar
          );
        },
        child: Card(
          clipBehavior: Clip.antiAlias,
          // shadowColor: const Color.fromARGB(150, 17, 16, 18).withOpacity(0.5),
          elevation: 10,
          margin: EdgeInsets.symmetric(horizontal: 5.w),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: SizedBox(
            width: 260.w,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Positioned(
                      child: CachedNetworkImage(
                        imageUrl: widget.productImage ?? '',
                        height: 240.h,
                        width: 260.w,
                        fit: BoxFit.cover,
                        // width: 200.w,
                        // fit: BoxFit.fill,
                        placeholder: (context, url) => Shimmer.fromColors(
                          baseColor: Colors.grey[300]!,
                          highlightColor: Colors.grey[100]!,
                          child: Container(
                            width: 200.w,
                            height: 140.h,
                            color: Colors.white,
                          ),
                        ),
                        errorWidget: (context, url, error) {
                          // If the image is null or failed to load, retry automatically
                          return CachedNetworkImage(
                            imageUrl: widget.productImage ?? '',
                            height: 130.h,
                            width: 200.w,
                            fit: BoxFit.fill,
                            placeholder: (context, url) => Shimmer.fromColors(
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[100]!,
                              child: Container(
                                width: 200.w,
                                height: 130.h,
                                color: Colors.white,
                              ),
                            ),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.broken_image, size: 50),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      width: 250.w,
                      height: 50.h,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 5.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SvgPicture.asset(
                                  widget.posttype == '1'
                                      ? productsicon
                                      : widget.posttype == '7'
                                          ? b2bIcon
                                          : widget.posttype == '2'
                                              ? usedIcon
                                              : widget.posttype == '3'
                                                  ? servicesIcon
                                                  : widget.posttype == '4'
                                                      ? jobIcon
                                                      : widget.posttype == '5'
                                                          ? eventIcon
                                                          : widget.posttype ==
                                                                  '8'
                                                              ? grocaryicon
                                                              : productsicon, // Provide a default icon path if no match is found
                                  height: 15,
                                  color: Colors.black,
                                ),
                                Text(
                                  widget.posttype == '1'
                                      ? 'Products'
                                      : widget.posttype == '7'
                                          ? 'B2B'
                                          : widget.posttype == '2'
                                              ? 'Used'
                                              : widget.posttype == '3'
                                                  ? 'Services'
                                                  : widget.posttype == '4'
                                                      ? 'Jobs'
                                                      : widget.posttype == '5'
                                                          ? 'Events'
                                                          : widget.posttype ==
                                                                  '8'
                                                              ? 'Grocery'
                                                              : '', // Default to an empty string if no match
                                  style: headerstyle.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 9.sp,
                                      color: Colors.black,
                                      shadows: [
                                          Shadow(
                                            offset: Offset(1, 1), // Adjust for shadow position
                                            blurRadius: 3, // Adjust for shadow softness
                                            color: Colors.white, // White shadow color
                                          ),
                                        ],
                                      ),
                                ),
                              ],
                            ),
                            PopupMenuButton(
                              menuPadding: EdgeInsets.only(left: 10.w),
                              onSelected: (value) {},
                              padding: EdgeInsets.symmetric(horizontal: 5.h),
                              elevation: 0,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              constraints: const BoxConstraints.expand(
                                  width: 150, height: 150),
                              iconColor: Colors.black,
                              color: Colors.black,
                              itemBuilder: (context) {
                                return [
                                  PopupMenuItem(
                                      height: 30,
                                      padding:
                                          EdgeInsets.only(left: 5.w, top: 10.h),
                                      onTap: () {
                                        Share.share(
                                            "It's about ${widget.productImage}",
                                            subject: widget.title);
                                      },
                                      child: Text(
                                        "Share",
                                        style: headerstyle.copyWith(
                                          fontFamily: GoogleFonts.quicksand()
                                              .fontFamily,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 9,
                                        ),
                                      )),
                                  PopupMenuItem(
                                      onTap: () async {
                                        addToFavorites(null, userId.toString(),
                                                widget.productid)
                                            .then(
                                          (value) {
                                            widget.onRefresh?.call();
                                            final snackBar = SnackBar(
                                              content: Text(value),
                                            );
                                            widget.onRefresh?.call();
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(snackBar);
                                            setState(() {});
                                          },
                                        ).catchError((error) {
                                          const errorSnackBar = SnackBar(
                                            content: Text(
                                                'Please login and try again'),
                                          );
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(errorSnackBar);
                                        });
                                        widget.onRefresh?.call();
                                      },
                                      height: 30,
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        widget.savedid == null ||
                                                widget.savedid!.isEmpty
                                            ? "Save"
                                            : "UnSave",
                                        style: headerstyle.copyWith(
                                          fontFamily: GoogleFonts.quicksand()
                                              .fontFamily,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 8,
                                        ),
                                      )),
                                  PopupMenuItem(
                                      height: 30,
                                      padding: const EdgeInsets.only(left: 5),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  VendorHomeScreen(
                                                      vendorName:
                                                          widget.vendorname!,
                                                      vid: int.tryParse(widget
                                                          .vendorid!
                                                          .toString())!),
                                            ));
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //       builder: (context) => VendorHomeScreen(
                                        //         vendorName: widget.vendorname!,
                                        //         vid: int.parse(widget.vendorid!),
                                        //       ),
                                        //     ));
                                      },
                                      child: Text(
                                        "Conatct Seller",
                                        style: headerstyle.copyWith(
                                          fontFamily: GoogleFonts.quicksand()
                                              .fontFamily,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 8,
                                        ),
                                      )),
                                  PopupMenuItem(
                                    onTap: () async {
                                      String googleUrl =
                                          'https://www.google.com/maps/search/?api=1&query=${widget.lat},${widget.long}';
                                      if (await canLaunchUrl(
                                          Uri.parse(googleUrl))) {
                                        await launchUrl(Uri.parse(googleUrl),
                                            mode: LaunchMode.inAppBrowserView);
                                      } else {
                                        throw 'Could not open the map.';
                                      }
                                    },
                                    height: 30.h,
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      "Get Seller Directives",
                                      style: headerstyle.copyWith(
                                        fontFamily:
                                            GoogleFonts.quicksand().fontFamily,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 8,
                                      ),
                                    ),
                                  ),
                                  PopupMenuItem(
                                    height: 30,
                                    padding: const EdgeInsets.only(left: 5),
                                    onTap: () {
                                      // print('value ${userId}');
                                      navigateToPage(
                                        context: context,
                                        page: ReportComplainScreen(
                                            productId: userId.toString(),
                                            productName: widget.vendorname!),
                                        ref: ref,
                                        showNavBar: false, // Hide bottom navbar
                                      );
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //       builder: (context) => ReportComplainScreen(
                                      //           productId: userId.toString(),
                                      //           productName: widget.vendorname!),
                                      //     ));
                                    },
                                    child: Text(
                                      "Report",
                                      style: headerstyle.copyWith(
                                        fontFamily:
                                            GoogleFonts.quicksand().fontFamily,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 8,
                                      ),
                                    ),
                                  ),
                                ];
                              },
                              child: const Icon(
                                size: 25,
                                color: ColorConstant.blackColor,
                                Icons.more_vert,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                //image

                SizedBox(
                  height: 7.h,
                ),
                //title
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title!.isNotEmpty
                            ? widget.title![0].toUpperCase() +
                                widget.title!.substring(1)
                            : widget.title!,
                        style: headerstyle.copyWith(
                          color: ColorConstant.blackColor,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        softWrap: true,
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            // height: 20.h,
                            width: 100.w,
                            child: Text(
                              'Rs ${widget.price ?? 0}',
                              style: headerstyle.copyWith(
                                  color: ColorConstant.blackColor,
                                  fontSize: 12.sp,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                          widget.offer == ''
                              ? const SizedBox()
                              : Row(
                                  children: [
                                    const Icon(
                                      Icons.track_changes_sharp,
                                      color: Color(0xff901B41),
                                      size: 15,
                                    ),
                                    Text(
                                      widget.offer ?? '',
                                      style: headerstyle.copyWith(
                                          fontWeight: FontWeight.w700,
                                          color: const Color(0xff901B41),
                                          fontSize: 8.sp),
                                    ),
                                  ],
                                ),
                          const Spacer(),
                          if (widget.discounttedPrice != null &&
                              widget.discounttedPrice != '0' &&
                              widget.discounttedPrice!.isNotEmpty)
                            Text(
                              "$showRs${widget.discounttedPrice}",
                              style: headerstyle.copyWith(
                                fontSize: 8.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough,
                                decorationColor: Colors.grey,
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 1.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: const Color(0xff901B41),
                            child: Text(
                              widget.avg_rating == 0 &&
                                      widget.avg_rating == null &&
                                      widget.avg_rating == 'null'
                                  ? "0.0"
                                  : widget.avg_rating.toString(),
                              // Provide fallback value of 0 when null
                              style: headerstyle.copyWith(fontSize: 8.sp),
                            ),
                          ),
                          const SizedBox(
                            width: 0.1,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 1.w),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                              ),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: RatingBar.builder(
                              initialRating: widget.avg_rating == null
                                  ? 0.0
                                  : widget.avg_rating!,
                              // Default to 1 when avg_rating is null
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              // Always display 5 stars
                              itemSize: 12,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 1.0),
                              itemBuilder: (context, index) {
                                if (widget.avg_rating == null) {
                                  // Default to 1 star when avg_rating is null or 0
                                  return index == 0
                                      ? const Icon(Icons.star,
                                          color: Color(
                                              0xff901B41)) // Fill the first star
                                      : const Icon(Icons.star,
                                          color:
                                              Colors.grey); // Grey for others
                                } else {
                                  // Color logic based on avg_rating
                                  if (index < widget.avg_rating!.floor()) {
                                    // Full star if within avg_rating
                                    return const Icon(Icons.star,
                                        color: Color(0xff901B41));
                                  } else if (index ==
                                          widget.avg_rating!.floor() &&
                                      (widget.avg_rating! -
                                              widget.avg_rating!.floor()) >=
                                          0.5) {
                                    // Half star if avg_rating has a decimal >= 0.5
                                    return const Icon(Icons.star_half,
                                        color: Color(0xff901B41));
                                  } else {
                                    // Grey star for others
                                    return const Icon(Icons.star,
                                        color: Colors.grey);
                                  }
                                }
                              },
                              onRatingUpdate: (rating) {
                                // Handle updated rating (if required)
                              },
                            ),
                          ),
                        ],
                      ),
                      widget.discounttedPrice == '0' &&
                              widget.discounttedPrice?.length == 0 &&
                              widget.didcountpercentage == 0
                          ? const SizedBox()
                          : Row(
                              children: [
                                if (widget.didcountpercentage != 0)
                                  Image.asset(
                                    "assets/images/flameIcon.png",
                                    height: 10,
                                    width: 10,
                                    color: const Color(0xff901B41),
                                  ),
                                if (widget.didcountpercentage != 0)
                                  Text(
                                    "${widget.didcountpercentage}%",
                                    style: headerstyle.copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff901B41),
                                        fontSize: 10),
                                  ),
                                if (widget.didcountpercentage != 0)
                                  const Icon(
                                    Icons.arrow_downward_rounded,
                                    size: 15,
                                    color: Color(0xff901B41),
                                  )
                              ],
                            ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/icon/Rectangle.png'),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                widget.wow == null || widget.wow?.length == 0
                                    ? '0'
                                    : widget.wow!,
                                style: headerstyle.copyWith(
                                    fontSize: 10,
                                    color: const Color(0xff807C7C),
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/icon/Vector.png"),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                widget.comment ?? '1',
                                style: headerstyle.copyWith(
                                    fontSize: 10,
                                    color: const Color(0xff807C7C),
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/icon/solar.png",
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Text(
                                widget.similarproductCount?.toString() ?? '0',
                                style: headerstyle.copyWith(
                                    fontSize: 10,
                                    color: const Color(0xff807C7C),
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Column(
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.w, vertical: 9.h),
                      decoration: const BoxDecoration(color: Color(0xffD5D5D5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: widget.onenquiredclicked,
                            child: Text(
                              "ENQUIRE",
                              style: headerstyle.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                  color: ColorConstant.blackColor),
                            ),
                          ),
                          Text(
                            '|',
                            style: headerstyle.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                color: ColorConstant.blackColor),
                          ),
                          Text(
                            "BUY",
                            style: headerstyle.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                color: ColorConstant.blackColor),
                          ),
                          Text(
                            '|',
                            style: headerstyle.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                color: ColorConstant.blackColor),
                          ),
                          Text(
                            "WIN",
                            style: headerstyle.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                color: ColorConstant.blackColor),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 0.6.h,
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.zero,
                      padding: EdgeInsets.symmetric(vertical: 14.h),
                      decoration: BoxDecoration(
                        color: widget.membershipColor != null
                            ? Color(
                                int.parse(
                                  widget.membershipColor!
                                      .replaceFirst('#', '0xFF'),
                                ),
                              )
                            : const Color(0xff3D215F), // Default color
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(13),
                          bottomRight: Radius.circular(13),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Left Avatar
                          InkWell(
                            onTap: () {
                              // navigateToPage(
                              //   context: context,
                              //   page: VendorHomeScreen(
                              //       vendorName: widget.vendorname!,
                              //       vid: int.tryParse(widget.vendorid!)!),
                              //   ref: ref,
                              //   showNavBar: false, // Hide bottom navbar
                              // );
                              //yaxa

                              navigateToPage(
                                showNavBar: true,
                                ref: ref,
                                context: context,
                                page: VendorHomeScreen(
                                  vendorName: widget.vendorname!,
                                  vid: int.tryParse(widget.vendorid!)!,
                                ),

                                //     ,
                                // ref: ref,
                                // showNavBar: false, // Hide bottom navbar
                              );
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) => VendorHomeScreen(
                              //           vendorName: widget.vendorname!,
                              //           vid: int.tryParse(widget.vendorid!,
                              // )!),
                              //     ),
                              //     );
                            },
                            child: Padding(
                                padding:
                                    EdgeInsets.only(left: 13.w, right: 3.w),
                                child: CircleAvatar(
                                  radius: 19
                                      .sp, // Adjust the radius using ScreenUtil
                                  backgroundImage: widget.Vimage! != null
                                      ? NetworkImage(widget
                                          .Vimage!) // Use the provided image URL if not null
                                      : null,
                                  child: widget.Vimage! == null
                                      ? Shimmer.fromColors(
                                          baseColor: Colors.grey[300]!,
                                          highlightColor: Colors.grey[100]!,
                                          child: Container(
                                            width: 38
                                                .sp, // Double the radius to get the width and height of the CircleAvatar
                                            height: 38.sp,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors
                                                  .white, // Placeholder color
                                            ),
                                          ),
                                        )
                                      : null, // If there's no image, show the shimmer effect
                                )),
                          ),
                          // Center Content
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        widget.shortestDistance == null
                                            ? widget.vendorname.toString()
                                            : widget.vendorname != null &&
                                                    widget.vendorname!.length >
                                                        17
                                                ? '${widget.vendorname!.substring(0, 17)}..' // Truncate after 11 characters
                                                : widget.vendorname ??
                                                    '', // If vendorname is null or short enough, show it fully
                                        style: headerstyle.copyWith(
                                          fontFamily: GoogleFonts.quicksand()
                                              .fontFamily,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    const Icon(
                                      Icons.logout,
                                      color: Colors.white,
                                      size: 11,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      widget.membershipid == "2"
                                          ? spotlighticon
                                          : widget.membershipid == "1"
                                              ? basicsellericon
                                              : widget.membershipid == "3"
                                                  ? domesticseller
                                                  : widget.membershipid == "25"
                                                      ? globalicon
                                                      : basicsellericon, // Default icon
                                      height: 9.h,
                                    ),
                                    SizedBox(width: 2.w),
                                    Text(
                                      widget.membershipTitle ??
                                          "Domestic Brand",
                                      style: headerstyle.copyWith(
                                        fontSize: 10.sp,
                                        fontFamily:
                                            GoogleFonts.quicksand().fontFamily,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          // Right Content
                          Padding(
                            padding: EdgeInsets.only(right: 10.w),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.end,
                              // crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                widget.shortestDistance != null &&
                                        widget.shortestDistance != 0.0
                                    ? Row(
                                        children: [
                                          const Icon(
                                            Icons.location_on,
                                            color: Colors.white,
                                            size: 12,
                                          ),
                                          SizedBox(width: 2.w),
                                          InkWell(
                                            onTap: () async {
                                              String googleUrl =
                                                  'https://www.google.com/maps/search/?api=1&query=${widget.lat},${widget.long}';
                                              if (await canLaunchUrl(
                                                  Uri.parse(googleUrl))) {
                                                await launchUrl(
                                                    Uri.parse(googleUrl),
                                                    mode: LaunchMode
                                                        .inAppBrowserView);
                                              } else {
                                                throw 'Could not open the map.';
                                              }
                                            },
                                            child: Text(
                                              "${widget.shortestDistance != null ? formatToTwoDecimals(widget.shortestDistance!) : ''} km",
                                              style: headerstyle.copyWith(
                                                fontFamily:
                                                    GoogleFonts.quicksand()
                                                        .fontFamily,
                                                fontSize: 9.sp,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    : const SizedBox(),
                                if (widget.issponsored)
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: widget.shortestDistance == null ||
                                              widget.shortestDistance == 0.0
                                          ? 12.h
                                          : 1.h,
                                    ),
                                    child: Row(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      // crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Image.asset("assets/images/mike.png"),
                                        SizedBox(width: 2.w),
                                        Text(
                                          "SPONSORED",
                                          style: headerstyle.copyWith(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                else
                                  SizedBox(height: 10.h),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
