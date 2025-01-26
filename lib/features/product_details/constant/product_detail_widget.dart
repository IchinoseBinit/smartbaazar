import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/favourite_list/api/add_product_to_favourite_list_api.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/report_complain/view/report_complain_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_profile_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductDetailWidget extends StatelessWidget {
  ProductDetailWidget({
    super.key,
    // this.membership_title,
    this.id,
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
    this.didcountpercentage,
    this.avg_rating = 1,
    this.tradeImage,
    this.posttype = '1',
    this.membershipid = '1',
    required this.productid,
    required this.lat,
    required this.long,
  });

  String? title;
  String? price;
  String? discounttedPrice;
  int? similarproductCount;
  String? views, comment, share;
  String? vendorname;
  int? didcountpercentage;
  String? posttype;
  String productid;

  // String? membership_title;
  double? distance;
  String? Vimage, productImage, lefttile;
  String? membershipColor;
  String? membershipTitle;
  bool issponsored;
  String? offer, wow;
  double? avg_rating;
  double? shortestDistance;
  int? id;
  String? tradeImage;
  String? membershipid;
  String? userId;
  String? lat, long;

  Future<void> getdetails() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userId = prefs.getString('userId');
    // print("zonet ${userId}");
  }

  @override
  Widget build(BuildContext context) {
    // String showRs = "Rs";
    getdetails();

    // showRs = discounttedPrice == '0' ? 'Rs.' : '';
    // String showRs = discounttedPrice != '0' ? 'Rs.' : '';
    String showRs = discounttedPrice == '0' ? '' : '';

    return InkWell(
      onTap: () {
        Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
            builder: (context) => ProductDetailScreen(
              
                  productId: productid,
                )));
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        shadowColor: const Color(0xff3D215F).withOpacity(0.5),
        elevation: 9,
        margin: EdgeInsets.symmetric(horizontal: 5.w),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: SizedBox(
          width: 260.w,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          posttype == '1'
                              ? productsicon
                              : posttype == '7'
                                  ? b2bIcon
                                  : posttype == '2'
                                      ? usedIcon
                                      : posttype == '3'
                                          ? servicesIcon
                                          : posttype == '4'
                                              ? jobIcon
                                              : posttype == '5'
                                                  ? eventIcon
                                                  : posttype == '8'
                                                      ? grocaryicon
                                                      : productsicon, // Provide a default icon path if no match is found
                          height: 10,
                          color: Colors.grey,
                        ),
                        Text(
                    posttype == '1'
                        ? 'Products'
                        : posttype == '7'
                            ? 'B2B'
                            : posttype == '2'
                                ? 'Used'
                                : posttype == '3'
                                    ? 'Services'
                                    : posttype == '4'
                                        ? 'Jobs'
                                        : posttype == '5'
                                            ? 'Events'
                                            : posttype == '8'
                                                ? 'Grocery'
                                                : '', // Default to an empty string if no match
                    style: headerstyle.copyWith(
                        fontSize: 9.sp, color: Colors.grey),
                  ),
                      ],
                    ),
                    PopupMenuButton(
                      menuPadding: EdgeInsets.only(left: 10.w),
                      onSelected: (value) {},

                      padding: EdgeInsets.symmetric(horizontal: 5.h),
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      constraints:
                          const BoxConstraints.expand(width: 150, height: 150),
                      // menuPadding: const EdgeInsets.only(left: 10),
                      iconColor: const Color(0xffB6B4B4),

                      color: Colors.grey,
                      itemBuilder: (context) {
                        return [
                          PopupMenuItem(
                              height: 30,
                              padding: EdgeInsets.only(left: 5.w, top: 10.h),
                              onTap: () {
                                Share.share('Share this');
                              },
                              child: Text(
                                "Share",
                                style: headerstyle.copyWith(
                                  fontFamily:
                                      GoogleFonts.quicksand().fontFamily,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 9,
                                ),
                              )),
                          PopupMenuItem(
                              onTap: () {
                                addToFavorites(null, userId!, productid).then(
                                  (value) {
                                    final snackBar = SnackBar(
                                      content: Text(value),
                                    );
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
                                  },
                                ).catchError((error) {
                                  final errorSnackBar = SnackBar(
                                    content: Text(
                                        'Failed to add to favorites: $error'),
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(errorSnackBar);
                                });
                              },
                              height: 30,
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                "Save",
                                style: headerstyle.copyWith(
                                  fontFamily:
                                      GoogleFonts.quicksand().fontFamily,
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
                                      builder: (context) => VendorHomeScreen(
                                        vendorName: vendorname!,
                                        vid: id!,
                                      ),
                                    ));
                              },
                              child: Text(
                                "Conatct Seller",
                                style: headerstyle.copyWith(
                                  fontFamily:
                                      GoogleFonts.quicksand().fontFamily,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 8,
                                ),
                              )),
                          PopupMenuItem(
                            onTap: () {
                              launch('https://www.google.com/maps?q=${double.tryParse(lat?? '0')},${double.tryParse(long?? '0')}');
                            },
                            height: 30,
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              "Get Seller Directives",
                              style: headerstyle.copyWith(
                                fontFamily: GoogleFonts.quicksand().fontFamily,
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ReportComplainScreen(
                                        productId: userId!,
                                        productName: vendorname!),
                                  ));
                            },
                            child: Text(
                              "Report",
                              style: headerstyle.copyWith(
                                fontFamily: GoogleFonts.quicksand().fontFamily,
                                fontWeight: FontWeight.w600,
                                fontSize: 8,
                              ),
                            ),
                          ),
                        ];
                      },
                      child: const Icon(
                        size: 20,
                        color: ColorConstant.grayColor,
                        Icons.more_vert,
                      ),
                    ),
                  ],
                ),
              ),
              productImage == 'null'
                  ? Image.asset(
                      'assets/images/shoppingimages.png',
                      height: 130.h,
                      width: 200.w,
                      fit: BoxFit.fill,
                    )
                  : Image.network(
                      productImage ??
                          '', // Ensure productImage is not null or empty
                      height: 130.h,
                      width: 200.w,
                      fit: BoxFit.fill,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) {
                          return child; // If no loading, show the image
                        } else {
                          return Shimmer.fromColors(
                            baseColor: Colors.grey[300]!,
                            highlightColor: Colors.grey[100]!,
                            child: Container(
                              width: 200.w,
                              height: 130.h,
                              color:
                                  Colors.white, // Placeholder shimmer container
                            ),
                          );
                        }
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return SizedBox(
                          width: 200.w,
                          height: 130.h,
                          child: const Icon(Icons.error),
                        ); // Show error icon if image fails to load
                      },
                    ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title!,
                      style: headerstyle.copyWith(
                          color: ColorConstant.blackColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w800),
                      softWrap: true,
                      maxLines: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          // height: 20.h,
                          width: 100.w,
                          child: Text(
                            'Rs ${price ?? 0}',
                            style: headerstyle.copyWith(
                                color: ColorConstant.blackColor,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                        offer == ''
                            ? const SizedBox()
                            : Row(
                                children: [
                                  const Icon(
                                    Icons.track_changes_sharp,
                                    color: Color(0xff901B41),
                                    size: 15,
                                  ),
                                  Text(
                                    offer ?? '',
                                    style: headerstyle.copyWith(
                                        fontWeight: FontWeight.w700,
                                        color: const Color(0xff901B41),
                                        fontSize: 8.sp),
                                  ),
                                ],
                              ),
                        // discounttedPrice != "0"
                        //     ?

                        // Row(
                        //   children: [
                        //     const Icon(
                        //       Icons.track_changes_sharp,
                        //       color: Color(0xff901B41),
                        //       size: 15,
                        //     ),
                        //    offer==''?    Text(
                        //       "Best Price",
                        //       style: headerstyle.copyWith(
                        //           fontWeight: FontWeight.w700,
                        //           color: const Color(0xff901B41),
                        //           fontSize: 8.sp),
                        //     ):
                        //     Text(
                        //       "${offer} Price",
                        //       style: headerstyle.copyWith(
                        //           fontWeight: FontWeight.w700,
                        //           color: const Color(0xff901B41),
                        //           fontSize: 8.sp),
                        //     ),
                        //   ],
                        // ),
                        const Spacer(),
                        if (discounttedPrice != null &&
                            discounttedPrice != '0' &&
                            discounttedPrice!.isNotEmpty)
                          Text(
                            "Rs$showRs$discounttedPrice",
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 1.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: const Color(0xff901B41),
                          child: Text(
                            avg_rating == 0 ? "0.0" : avg_rating.toString(),
                            // Provide fallback value of 0 when null
                            style: headerstyle.copyWith(fontSize: 8.sp),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: RatingBar.builder(
                            initialRating:
                                avg_rating == null ? 0.0 : avg_rating!,
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
                              if (avg_rating == null) {
                                // Default to 1 star when avg_rating is null or 0
                                return index == 0
                                    ? const Icon(Icons.star,
                                        color: Color(
                                            0xff901B41)) // Fill the first star
                                    : const Icon(Icons.star,
                                        color: Colors.grey); // Grey for others
                              } else {
                                // Color logic based on avg_rating
                                if (index < avg_rating!.floor()) {
                                  // Full star if within avg_rating
                                  return const Icon(Icons.star,
                                      color: Color(0xff901B41));
                                } else if (index == avg_rating!.floor() &&
                                    (avg_rating! - avg_rating!.floor()) >=
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
                    discounttedPrice == '0' ||
                            discounttedPrice?.length == 0 ||
                            didcountpercentage == 0
                        ? const SizedBox()
                        : Row(
                            children: [
                              Image.asset(
                                "assets/images/flameIcon.png",
                                height: 10,
                                width: 10,
                                color: const Color(0xff901B41),
                              ),
                              Text(
                                "$didcountpercentage%",
                                style: headerstyle.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff901B41),
                                    fontSize: 10),
                              ),
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
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
                              wow == null || wow?.length == 0 ? '0' : wow!,
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
                              comment ?? '1',
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
                              similarproductCount?.toString() ?? '0',
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
              Column(
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                    decoration: const BoxDecoration(color: Color(0xffD5D5D5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "ENQUIRE",
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
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.zero,
                    padding: EdgeInsets.symmetric(vertical: 10.9.h),
                    decoration: BoxDecoration(
                      color: membershipColor != null
                          ? Color(
                              int.parse(
                                membershipColor!.replaceFirst('#', '0xFF'),
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => VendorHomeScreen(
                                      vendorName: vendorname!, vid: id!),
                                ));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 13.w, right: 3.w),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(Vimage!),
                              radius: 19.sp,
                            ),
                          ),
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
                                      vendorname != null &&
                                              vendorname!.length > 11
                                          ? '${vendorname!.substring(0, 11)}..' // Truncate after 11 characters
                                          : vendorname ??
                                              '', // If vendorname is null or short enough, show it fully
                                      style: headerstyle.copyWith(
                                        fontFamily:
                                            GoogleFonts.quicksand().fontFamily,
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
                                    membershipid == "2"
                                        ? spotlighticon
                                        : membershipid == "1"
                                            ? basicsellericon
                                            : membershipid == "3"
                                                ? domesticseller
                                                : membershipid == "25"
                                                    ? globalicon
                                                    : basicsellericon, // Default icon
                                    height: 9.h,
                                  ),
                                  SizedBox(width: 2.w),
                                  Text(
                                    membershipTitle ?? "Domestic Brand",
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
                            // mainAxisAlignment: MainAxisAlignment.end,
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              shortestDistance != null &&
                                      shortestDistance != 0.0
                                  ? Row(
                                      children: [
                                        const Icon(
                                          Icons.location_on,
                                          color: Colors.white,
                                          size: 12,
                                        ),
                                        SizedBox(width: 2.w),
                                        Text(
                                          "${double.parse(shortestDistance.toString()).toStringAsFixed(2)} km",
                                          style: headerstyle.copyWith(
                                            fontFamily: GoogleFonts.quicksand()
                                                .fontFamily,
                                            fontSize: 9.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    )
                                  : const SizedBox(),
                              if (issponsored)
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: shortestDistance == null ||
                                            shortestDistance == 0.0
                                        ? 10.h
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
                                SizedBox(height: 5.h),
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
    );
  }
}
