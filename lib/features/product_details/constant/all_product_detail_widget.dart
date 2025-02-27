import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/favourite_list/api/add_product_to_favourite_list_api.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/report_complain/view/report_complain_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';
import 'package:smartbazar/main.dart';
import 'package:url_launcher/url_launcher.dart';

class AllProductDetailWidget extends StatefulWidget {
  AllProductDetailWidget({
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
    this.productImage,
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
    this.savedid,
    this.onRefresh,
        this.onenquiredclicked

  });

  String? title;
  String? price;
  String? discounttedPrice;
  int? similarproductCount;
  String? comment;
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
  String? lat, long;
  List<SavedPost>? savedid;
  final VoidCallback? onRefresh;
    final Function()? onenquiredclicked;


  @override
  State<AllProductDetailWidget> createState() => _AllProductDetailWidgetState();
}

class _AllProductDetailWidgetState extends State<AllProductDetailWidget> {
  String? views;

  String? share;

  String? userId;

  Future<void> getdetails() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userId = prefs.getString('userId');
    // print("zonet ${userId}");
  }

  @override
  Widget build(BuildContext context) {
    getdetails();
    String showRs = "Rs";
    showRs = widget.discounttedPrice == '0' ? '' : '';

    return InkWell(
      onTap: () {
        Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
            builder: (context) => ProductDetailScreen(
                  productId: widget.productid,
                )));
      },
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 10.w, vertical: 5.h), // Responsive padding
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
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
                                              : widget.posttype == '8'
                                                  ? grocaryicon
                                                  : 'defaultIcon', // Provide a default icon path if no match is found
                      height: 10.h, // Responsive height for the icon
                      color: Colors.grey,
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
                                              : widget.posttype == '8'
                                                  ? 'Grocery'
                                                  : '', // Default to an empty string if no match
                      style: headerstyle.copyWith(
                          fontSize: 9.sp,
                          color: Colors.grey), // Responsive font size
                    ),
                  ],
                ),
                PopupMenuButton(
                  menuPadding:
                     EdgeInsets.only(left: 10.w), // Responsive menu padding
                  onSelected: (value) {},
                  padding: EdgeInsets.symmetric(
                      horizontal: 5.h), // Responsive padding
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                  constraints:
                      const BoxConstraints.expand(width: 150, height: 150),
                  iconColor: const Color(0xffB6B4B4),
                  color: Colors.grey,
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                          height: 30.h, // Responsive height
                          padding: EdgeInsets.only(left: 5.w, top: 10.h),
                          onTap: () {
                            Share.share('Share this');
                          },
                          child: Text(
                            "Share",
                            style: headerstyle.copyWith(
                              fontFamily: GoogleFonts.quicksand().fontFamily,
                              fontWeight: FontWeight.w600,
                              fontSize: 9.sp, // Responsive font size
                            ),
                          )),
                      PopupMenuItem(
                          onTap: () async {
                            addToFavorites(
                                    null, userId.toString(), widget.productid)
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
                                content: Text('Please login and try again'),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(errorSnackBar);
                            });
                            widget.onRefresh?.call();
                          },
                          height: 30.h, // Responsive height
                          padding: EdgeInsets.only(left: 5.w),
                          child: Text(
                            widget.savedid == null || widget.savedid!.isEmpty
                                ? "Save"
                                : "UnSave",
                            style: headerstyle.copyWith(
                              fontFamily: GoogleFonts.quicksand().fontFamily,
                              fontWeight: FontWeight.w600,
                              fontSize: 8.sp, // Responsive font size
                            ),
                          )),
                      PopupMenuItem(
                          height: 30.h, // Responsive height
                          padding: EdgeInsets.only(left: 5.w),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => VendorHomeScreen(
                                    vendorName: widget.vendorname!,
                                    vid: widget.id!,
                                  ),
                                ));
                          },
                          child: Text(
                            "Contact Seller",
                            style: headerstyle.copyWith(
                              fontFamily: GoogleFonts.quicksand().fontFamily,
                              fontWeight: FontWeight.w600,
                              fontSize: 8.sp, // Responsive font size
                            ),
                          )),
                      PopupMenuItem(
                        onTap: () {
                          launch(
                              'https://www.google.com/maps?q=${double.tryParse(widget.lat ?? '0')},${double.tryParse(widget.long ?? '0')}');
                        },
                        height: 30.h, // Responsive height
                        padding: EdgeInsets.only(left: 5.w),
                        child: Text(
                          "Get Seller Directions",
                          style: headerstyle.copyWith(
                            fontFamily: GoogleFonts.quicksand().fontFamily,
                            fontWeight: FontWeight.w600,
                            fontSize: 8.sp, // Responsive font size
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        height: 30.h, // Responsive height
                        padding: EdgeInsets.only(left: 5.w),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ReportComplainScreen(
                                    productId: userId!,
                                    productName: widget.vendorname!),
                              ));
                        },
                        child: Text(
                          "Report",
                          style: headerstyle.copyWith(
                            fontFamily: GoogleFonts.quicksand().fontFamily,
                            fontWeight: FontWeight.w600,
                            fontSize: 8.sp, // Responsive font size
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
          InkWell(
            onTap: () {
              Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(
                        productId: widget.productid,
                      )));
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              child: CachedNetworkImage(
                imageUrl: widget.productImage ?? '',
                height: 100.h,
                width: 150.w,
                fit: BoxFit.fitWidth,
                alignment: Alignment.center,
                placeholder: (context, url) => Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    height: 100.h,
                    color: Colors.white, // Placeholder shimmer effect
                  ),
                ),
                errorWidget: (context, url, error) {
                  return CachedNetworkImage(
                    imageUrl: widget.productImage ?? '', // Retry loading
                    height: 100.h,
                    width: 150.w,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.center,
                    placeholder: (context, url) => Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        height: 100.h,
                        color: Colors.white,
                      ),
                    ),
                    errorWidget: (context, url, error) => SizedBox(
                      height: 100.h,
                      child: const Icon(
                          Icons.error), // Show error icon if retry fails
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title!,
                  style: headerstyle.copyWith(
                      color: ColorConstant.blackColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w800),
                  softWrap: true,
                  maxLines: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rs ${widget.price ?? 0.0}',
                      style: headerstyle.copyWith(
                          color: ColorConstant.blackColor,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      width: 3.h,
                    ),
                    widget.offer != null && widget.offer?.length != 0
                        ? SizedBox(
                            width: 65
                                .w, // Ensures the content takes up the defined width
                            child: Wrap(
                              spacing: 3.w, // Spacing between items
                              runSpacing:
                                  3.h, // Spacing between lines when wrapping
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize
                                      .min, // Shrinks the row to fit content
                                  crossAxisAlignment: CrossAxisAlignment
                                      .center, // Aligns icon and text
                                  children: [
                                    if (widget.offer != null ||
                                        widget.discounttedPrice != null ||
                                        widget.offer?.length != 0)
                                      const Icon(
                                        Icons.track_changes_sharp,
                                        color: Color(0xff901B41),
                                        size: 12,
                                      ),
                                    if (widget.offer != null)
                                      SizedBox(
                                          width: 5
                                              .w), // Adds spacing between icon and text
                                    if (widget.offer != null)
                                      Flexible(
                                        child: Text(
                                          widget.offer!,
                                          style: headerstyle.copyWith(
                                            fontWeight: FontWeight.w700,
                                            color: const Color(0xff901B41),
                                            fontSize: 7.sp,
                                          ),
                                          overflow: TextOverflow
                                              .visible, // Ensure the text wraps
                                        ),
                                      ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        : const SizedBox.shrink(),

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
                    if (widget.discounttedPrice != null &&
                        widget.didcountpercentage != 0 &&
                        widget.discounttedPrice != '0' &&
                        widget.discounttedPrice!.isNotEmpty)
                      Text(
                        " Rs$showRs${widget.discounttedPrice}",
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
                      child:
                          // avg_rating.toString() ?? '0',
                          Text(
                        widget.avg_rating == 0 || widget.avg_rating == null
                            ? "0.0"
                            : widget.avg_rating.toString(),
                        style: headerstyle.copyWith(fontSize: 8.sp),
                      ),
                    ),
                    SizedBox(
                      width: 1.w,
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
                            widget.avg_rating == null || widget.avg_rating == 0
                                ? 0
                                : widget.avg_rating!,
                        // Default to 1 when avg_rating is null or 0
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        // Always display 5 stars
                        itemSize: 12,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 1.0),
                        itemBuilder: (context, index) {
                          if (widget.avg_rating == null ||
                              widget.avg_rating == 0) {
                            // Default to 1 star when avg_rating is null or 0
                            return index == 0
                                ? const Icon(Icons.star,
                                    color: Color(
                                        0xff901B41)) // Fill the first star
                                : const Icon(Icons.star,
                                    color: Colors.grey); // Grey for others
                          } else {
                            // Color logic based on avg_rating
                            if (index < widget.avg_rating!.floor()) {
                              // Full star if within avg_rating
                              return const Icon(Icons.star,
                                  color: Color(0xff901B41));
                            } else if (index == widget.avg_rating!.floor() &&
                                (widget.avg_rating! -
                                        widget.avg_rating!.floor()) >=
                                    0.5) {
                              // Half star if avg_rating has a decimal >= 0.5
                              return const Icon(Icons.star_half,
                                  color: Color(0xff901B41));
                            } else {
                              // Grey star for others
                              return const Icon(Icons.star, color: Colors.grey);
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
                widget.discounttedPrice?.length == 0 ||
                        widget.discounttedPrice == null ||
                        widget.discounttedPrice == '0' ||
                        widget.didcountpercentage == null
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
                            "${widget.didcountpercentage}%",
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
            padding:
                EdgeInsets.symmetric(horizontal: 10.w), // Responsive padding
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/icon/Rectangle.png'),
                        SizedBox(
                          width: 3.w, // Responsive spacing
                        ),
                        Text(
                          widget.wow != null ? '1' : widget.wow.toString(),
                          style: headerstyle.copyWith(
                            fontSize: 10.sp, // Responsive font size
                            color: const Color(0xff807C7C),
                            fontWeight: FontWeight.w700,
                          ),
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
                          width: 3.w, // Responsive spacing
                        ),
                        Text(
                          widget.comment ?? '1',
                          style: headerstyle.copyWith(
                            fontSize: 10.sp, // Responsive font size
                            color: const Color(0xff807C7C),
                            fontWeight: FontWeight.w700,
                          ),
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
                          width: 3.w, // Responsive spacing
                        ),
                        Text(
                          widget.similarproductCount?.toString() ?? '0',
                          style: headerstyle.copyWith(
                            fontSize: 10.sp, // Responsive font size
                            color: const Color(0xff807C7C),
                            fontWeight: FontWeight.w700,
                          ),
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
                padding: EdgeInsets.symmetric(
                    horizontal: 15.w, vertical: 5.h), // Responsive padding
                decoration: const BoxDecoration(color: Color(0xffD5D5D5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: widget.onenquiredclicked,
                      child: Text(
                        "ENQUIRE",
                        style: headerstyle.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 11.sp, // Responsive font size
                          color: ColorConstant.blackColor,
                        ),
                      ),
                    ),
                    Text(
                      '|',
                      style: headerstyle.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 11.sp, // Responsive font size
                        color: ColorConstant.blackColor,
                      ),
                    ),
                    Text(
                      "BUY",
                      style: headerstyle.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 11.sp, // Responsive font size
                        color: ColorConstant.blackColor,
                      ),
                    ),
                    Text(
                      '|',
                      style: headerstyle.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 11.sp, // Responsive font size
                        color: ColorConstant.blackColor,
                      ),
                    ),
                    Text(
                      "WIN",
                      style: headerstyle.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 13.sp, // Responsive font size
                        color: ColorConstant.blackColor,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VendorHomeScreen(
                          vendorName: widget.vendorname!, vid: widget.id!),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.symmetric(vertical: 10.9.h),
                  decoration: BoxDecoration(
                    color: widget.membershipColor != null
                        ? Color(
                            int.parse(
                              widget.membershipColor!.replaceFirst('#', '0xFF'),
                            ),
                          )
                        : const Color(0xff3D215F), // Default color
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(13),
                      bottomRight: Radius.circular(13),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 5
                            .w, // Using flutter_screenutil for responsive width
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(widget.Vimage!),
                        radius: 15.sp, // Responsive size for CircleAvatar
                      ),
                      SizedBox(
                        width: 2.w, // Responsive padding
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      widget.shortestDistance == null
                                          ? Text(
                                              widget.vendorname != null &&
                                                      widget.vendorname!
                                                              .length >
                                                          16
                                                  ? '${widget.vendorname!.substring(0, 10)}...'
                                                  : widget.vendorname ?? '',
                                              style: headerstyle.copyWith(
                                                fontFamily:
                                                    GoogleFonts.quicksand()
                                                        .fontFamily,
                                                fontSize: 12
                                                    .sp, // Responsive font size
                                                fontWeight: FontWeight.w600,
                                              ),
                                            )
                                          : Text(
                                              widget.vendorname != null &&
                                                      widget.vendorname!
                                                              .length >
                                                          10
                                                  ? '${widget.vendorname!.substring(0, 12)}...'
                                                  : widget.vendorname ?? '',
                                              style: headerstyle.copyWith(
                                                fontFamily:
                                                    GoogleFonts.quicksand()
                                                        .fontFamily,
                                                fontSize: 12
                                                    .sp, // Responsive font size
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                      SizedBox(
                                        width: 2.w, // Responsive padding
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
                                                    : widget.membershipid ==
                                                            "25"
                                                        ? globalicon
                                                        : basicsellericon, // Provide a default icon if no match
                                        height: 8.h, // Responsive image height
                                      ),
                                      SizedBox(
                                        width: 2.w, // Responsive padding
                                      ),
                                      Text(
                                        widget.membershipTitle ??
                                            "Domestic Brand",
                                        style: headerstyle.copyWith(
                                          fontSize:
                                              9.sp, // Responsive font size
                                          fontFamily: GoogleFonts.quicksand()
                                              .fontFamily,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 4.w, // Responsive spacing
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 1.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 2.h, // Responsive height
                            ),
                            widget.shortestDistance != null &&
                                    widget.shortestDistance != 0.0
                                ? Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on,
                                        color: Colors.white,
                                        size: 11,
                                      ),
                                      SizedBox(
                                        width: 2.w, // Responsive spacing
                                      ),
                                      Text(
                                        "${widget.shortestDistance != null ? NumberFormat('#.##', 'en_US').format(widget.shortestDistance) : ''} km",
                                        style: headerstyle.copyWith(
                                          fontFamily: GoogleFonts.quicksand()
                                              .fontFamily,
                                          fontSize:
                                              9.sp, // Responsive font size
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  )
                                : SizedBox(
                                    height: 14
                                        .h, // Responsive height when no distance
                                  ),
                            widget.issponsored
                                ? Padding(
                                    padding: EdgeInsets.only(left: 2.w, top: 5),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          height: 2.h, // Responsive height
                                        ),
                                        Image.asset("assets/images/mike.png"),
                                        Text(
                                          "SPONSORED",
                                          style: headerstyle.copyWith(
                                              fontSize:
                                                  7.sp, // Responsive font size
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                  )
                                : SizedBox(
                                    height: 11
                                        .h, // Responsive height when no sponsored text
                                  ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
