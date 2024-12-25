import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/report_complain/view/report_complain_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_profile_screen.dart';

class ProductDetailWidget extends StatelessWidget {
  ProductDetailWidget({
    super.key,
    // this.membership_title,
    this.id = 168,
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
    this.avg_rating = 1,
  });

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
  double? avg_rating;
  double? shortestDistance;
  int? id;

  @override
  Widget build(BuildContext context) {
    // String showRs = "Rs";
    // showRs = discounttedPrice == '0' ? 'Rs.' : '';
    // String showRs = discounttedPrice != '0' ? 'Rs.' : '';
    String showRs = discounttedPrice == '0' ? '' : '';
    print("ramkbaba $Vimage");
    print("Membership colorrrrrrrrrrrrrrrrrrrrrrr${discounttedPrice == '0'}");
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 7.h),
      child: Card(
        shadowColor: const Color(0xff3D215F).withOpacity(0.5),
        elevation: 9,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: SizedBox(
          width: 250.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SvgPicture.asset(
                          b2bIcon,
                          height: 10,
                          color: Colors.grey,
                        ),
                        Text(
                          lefttile!,
                          style: headerstyle.copyWith(
                              fontSize: 9.sp, color: Colors.grey),
                        )
                      ],
                    ),
                    PopupMenuButton(
                      padding: EdgeInsets.zero,
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      constraints:
                          const BoxConstraints.expand(width: 150, height: 150),
                      // menuPadding: const EdgeInsets.only(left: 10),
                      iconColor: const Color(0xffB6B4B4),
                      color: const Color(0xff766c7a).withOpacity(0.9),
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
                              onTap: () {},
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
                              height: 30,
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                "Get Seller Directives",
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
                                      builder: (context) =>
                                          const ReportComplainScreen(
                                              productId: "167",
                                              productName: "techstore"),
                                    ));
                              },
                              child: Text(
                                "Report",
                                style: headerstyle.copyWith(
                                  fontFamily:
                                      GoogleFonts.quicksand().fontFamily,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 8,
                                ),
                              )),
                        ];
                      },
                    ),
                  ],
                ),
              ),
              productImage == 'null'
                  ? Image.asset(
                      'assets/images/shoppingimages.png',
                      height: 130.h,
                      width: 200.2,
                      fit: BoxFit.fill,
                    )
                  : Image.network(
                      productImage ?? '', // Ensure Vimage is not null or empty
                      height: 130.h,
                      // Adjust size accordingly
                      width: 200.w,
                      fit: BoxFit.fill,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) {
                          return child; // If no loading, show the image
                        } else {
                          return const Center(
                              child:
                                  CircularProgressIndicator()); // Show loading indicator
                        }
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons
                            .error); // Show error icon if image fails to load
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
                            'Rs ${price!}',
                            style: headerstyle.copyWith(
                                color: ColorConstant.blackColor,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                        offer == ''
                            ? SizedBox()
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
                        discounttedPrice != "0"
                            ? Row(
                                children: [
                                  const Icon(
                                    Icons.track_changes_sharp,
                                    color: Color(0xff901B41),
                                    size: 15,
                                  ),
                                  Text(
                                    "Best Price",
                                    style: headerstyle.copyWith(
                                        fontWeight: FontWeight.w700,
                                        color: const Color(0xff901B41),
                                        fontSize: 8.sp),
                                  ),
                                ],
                              )
                            : SizedBox(),

                        // SizedBox(width: 30.w,),
                        // if (discounttedPrice != '0')
                        //   Padding(
                        //     padding: const EdgeInsets.only(right: 8.0),
                        //     child: Text(
                        //       "Rs.${showRs}$discounttedPrice",
                        //       style: headerstyle.copyWith(
                        //         fontSize: 8.sp,
                        //         fontWeight: FontWeight.w600,
                        //         color: Colors.grey,
                        //         decoration: TextDecoration.lineThrough,
                        //         decorationColor: Colors.grey,
                        //       ),
                        //     ),
                        //   ),

                        SizedBox(width: 26.w),
                        if (discounttedPrice != '0')
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                              "${showRs}$discounttedPrice",
                              style:
                                  // headerstyle.copyWith(
                                  //   fontSize: 8.sp,
                                  //   fontWeight: FontWeight.w600,
                                  //   color: Colors.grey,
                                  //   decoration: TextDecoration.lineThrough,
                                  //   decorationThickness: 1.5, // Adjusts the thickness of the line
                                  //   decorationStyle: TextDecorationStyle.solid, // Ensures a solid line
                                  // ),
                                  TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough,
                                decorationThickness: 1.5,
                                height: 1.0,
                              ),
                              textAlign:
                                  TextAlign.center, // Aligns text if necessary
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
                            (avg_rating ?? 0).toStringAsFixed(1),
                            // Provide fallback value of 0 when null
                            style: headerstyle.copyWith(fontSize: 8.sp),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(5),
                                bottomRight: Radius.circular(5)),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: RatingBar.builder(
                            initialRating: (avg_rating ?? 1),
                            // Use fallback value of 1 when null or 0
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            // Always display 5 stars
                            itemSize: 12,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 1.0),
                            itemBuilder: (context, index) {
                              // If avg_rating is null or 0, color the first star
                              if (avg_rating == null || avg_rating == 0) {
                                return const Icon(
                                  Icons.star,
                                  color: Color(0xff901B41), // First star color
                                );
                              } else {
                                // Color logic based on avg_rating
                                if (index < avg_rating!.floor()) {
                                  // Fill the full star if it's less than the floor value of avg_rating
                                  return const Icon(
                                    Icons.star,
                                    color: Color(0xff901B41),
                                  );
                                } else if (index == avg_rating!.floor() &&
                                    (avg_rating! - avg_rating!.floor()) >=
                                        0.5) {
                                  // Fill half a star if the decimal part of avg_rating is >= 0.5
                                  return const Icon(
                                    Icons.star_half,
                                    color: Color(0xff901B41),
                                  );
                                } else {
                                  // Default grey star if it's beyond the avg_rating
                                  return const Icon(
                                    Icons.star,
                                    color: Colors.grey,
                                  );
                                }
                              }
                            },
                            onRatingUpdate: (rating) {},
                          ),
                        ),
                      ],
                    ),
                    discounttedPrice == '0'
                        ? SizedBox()
                        : Row(
                            children: [
                              Image.asset(
                                "assets/images/flameIcon.png",
                                height: 10,
                                width: 10,
                                color: const Color(0xff901B41),
                              ),
                              Text(
                                "30%",
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
                            Text(
                              "${wow ?? '0'}",
                              style: headerstyle.copyWith(
                                  fontSize: 10,
                                  color: Color(0xff807C7C),
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
                            Text(
                              "${comment ?? '0'}",
                              style: headerstyle.copyWith(
                                  fontSize: 10,
                                  color: Color(0xff807C7C),
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
                            Text(
                              similarproductCount?.toString() ?? '0',
                              style: headerstyle.copyWith(
                                  fontSize: 10,
                                  color: Color(0xff807C7C),
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
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) =>
                      //           ProductDetailScreen(productId: prod.id),
                      //     ));
                    },
                    child: Container(
                      margin: EdgeInsets.zero,
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: membershipColor != null
                            ? Color(int.parse(
                                membershipColor!.replaceFirst('#', '0xFF')))
                            : const Color(0xff3D215F), // Default color
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(13),
                          bottomRight: Radius.circular(13),
                        ),
                      ),
                      // ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(Vimage!),
                                radius: 15.sp,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 3.5.w,
                                      ),
                                      // Text(
                                      //   vendorname != null &&
                                      //       vendorname!.length > 25
                                      //       ? '${vendorname!.substring(0, 12)}...'
                                      //       : vendorname ?? '',
                                      //   style: headerstyle.copyWith(
                                      //     // fontSize: (vendorname != null && vendorname!.length > 10) ? 8.sp : 11.5.sp,
                                      //     fontSize: (vendorname != null && vendorname!.length > 10)
                                      //         ? 8.sp
                                      //         : (vendorname != null && vendorname!.length > 12)
                                      //         ? 7.5.sp
                                      //         : 11.5.sp, // Default font size
                                      //     fontWeight: FontWeight.w700,
                                      //   ),
                                      //   overflow: TextOverflow.ellipsis,
                                      //   maxLines: 1,
                                      // ),

                                      Text(
                                        vendorname != null &&
                                                vendorname!.length > 19
                                            ? '${vendorname!.substring(0, 15)}...'
                                            : vendorname ?? '',
                                        style: headerstyle.copyWith(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      const Icon(
                                        Icons.logout,
                                        color: Colors.white,
                                        size: 12,
                                      ),
                                      Row(
                                        children: [
                                          shortestDistance != null
                                              ? Row(
                                                  children: [
                                                    const Icon(
                                                      Icons.location_on,
                                                      color: Colors.white,
                                                      size: 12,
                                                    ),
                                                    Text(
                                                      "${shortestDistance} km",
                                                      style:
                                                          headerstyle.copyWith(
                                                              fontSize: 8.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700),
                                                    ),
                                                  ],
                                                )
                                              : SizedBox(
                                                  height: 5.h,
                                                ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      Image.asset(
                                        "assets/images/nepalFlag.png",
                                        height: 9.h,
                                      ),
                                      SizedBox(
                                        width: 1.w,
                                      ),
                                      // SizedBox(
                                      //   width: 75.w,
                                      //   child: Text(
                                      //     membershipTitle ?? "Domestic Brand",
                                      //     style: headerstyle.copyWith(
                                      //       fontSize: (membershipTitle != null &&
                                      //               membershipTitle!.length > 15)
                                      //           ? 8.sp
                                      //           : 10.sp,
                                      //       // Adjust font size based on length
                                      //       fontWeight: FontWeight.w700,
                                      //     ),
                                      //   ),
                                      // ),

                                      SizedBox(
                                        width: 80.w,
                                        child: Text(
                                          membershipTitle ?? "Domestic Brand",
                                          style: headerstyle.copyWith(
                                            fontSize: 10.sp,
                                            // Adjust font size based on length
                                            fontWeight: FontWeight.w700,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          // Apply ellipsis for overflow
                                          maxLines:
                                              1, // Restrict to a single line
                                        ),
                                      ),
                                      SizedBox(
                                        width: 40.w,
                                      ),
                                      issponsored
                                          ? SizedBox()
                                          : Row(
                                              children: [
                                                Image.asset(
                                                    "assets/images/mike.png"),
                                                Text(
                                                  "SPONSORED",
                                                  style: headerstyle.copyWith(
                                                      fontSize: 10.sp,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ],
                                            ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
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
