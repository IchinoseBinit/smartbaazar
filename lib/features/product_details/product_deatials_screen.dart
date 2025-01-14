import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scratcher/widgets.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/ads_screen/api/ad_api.dart';
import 'package:smartbazar/features/advertisement/model/advertisement_model.dart';
import 'package:smartbazar/features/auth/widgets/rich_text_widget.dart';
import 'package:smartbazar/features/favourite_list/api/favourite_list_api.dart';
import 'package:smartbazar/features/feed_page/widget/ad_banner.dart';
import 'package:smartbazar/features/home/model/product_details_model.dart';
import 'package:smartbazar/features/order_details/view/order_details_screen.dart';
import 'package:smartbazar/features/product_details/api/make_a_review_provider.dart';
import 'package:smartbazar/features/product_details/api/scratch_and_win_provider.dart';
import 'package:smartbazar/features/product_details/carosel_widget.dart';
import 'package:smartbazar/features/product_details/constant/additional_detailpage.dart';
import 'package:smartbazar/features/product_details/constant/additional_perks_widget.dart';
import 'package:smartbazar/features/product_details/constant/discount_box_widget.dart';
import 'package:smartbazar/features/product_details/constant/dotted_widget.dart';
import 'package:smartbazar/features/product_details/constant/features_banner.dart';
import 'package:smartbazar/features/product_details/constant/header_banner.dart';
import 'package:smartbazar/features/product_details/constant/location_widget.dart';
import 'package:smartbazar/features/product_details/constant/people_review_widget.dart';
import 'package:smartbazar/features/product_details/constant/price_banner.dart';
import 'package:smartbazar/features/product_details/constant/product_detail_widget.dart';
import 'package:smartbazar/features/product_details/constant/ratingbar_widget.dart';
import 'package:smartbazar/features/search_product_details/view/search_product_details.dart';
import 'package:smartbazar/features/product_details/api/product_details_provider.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_name.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/postcard.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';

import 'package:smartbazar/general_widget/general_safe_area.dart';

final currentIndexProvider = StateProvider<int>((ref) => 0);

// ignore: must_be_immutable
class ProductDetailScreen extends ConsumerWidget {
  List<String> itemsList = [];
  final selectedIndexProvider =
      StateProvider<int>((ref) => 1); // Default to Details (1)

  // List<Ad>? preloadAds;
  // final _formKey = GlobalKey<FormState>();
  final tabs = ['Deals', 'Shop', 'POSTS', 'LIVE PRIZES'];
  String _removeHtmlTags(String htmlString) {
    final regExp = RegExp(r'<[^>]*>');
    return htmlString.replaceAll(regExp, '');
  }

  TextEditingController phonecontroller = TextEditingController();
  TextEditingController msgcontroller = TextEditingController();
  final TextEditingController _reviewcontroller = TextEditingController();

  final String productId;
  // final int _selectedIndex = 0;
  ProductDetailScreen({super.key, required this.productId});
  final ScrollController _scrollController = ScrollController();

  void _scrolltoo(double position) {
    _scrollController.animateTo(position,
        duration: const Duration(seconds: 1), curve: Curves.easeInOut);
  }

  int currentIndex = 0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double sch = MediaQuery.of(context).size.height;
    // final favouriteListAsyncValue = ref.watch(getFavouriteListProvider);
    // final adsList = ref.watch(fetchAdsProvider);
    // final scratchAndWinResponse = ref.watch(getScratchAndWinResponseProvider);
    // List<Ad>? adslist = adsList.value!;
    // print("binod is $adslist");
    final selectedIndex = ref.watch(selectedIndexProvider);

    final productDetailsAsyncValue =
        ref.watch(productDetailsProvider(productId));

    // final AsyncValue<PostResponse> getdetails=ref
    return GenericSafeArea(
      child: productDetailsAsyncValue.when(
        data: (data) {
          return Scaffold(
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,

            floatingActionButton: FloatingActionButton.extended(
              extendedPadding: const EdgeInsets.all(10),
              backgroundColor: Colors.white,
              elevation: 2,
              shape: const StadiumBorder(),
              label: Row(
                children: [
                  if (data.result != null)
                    InkWell(
                      onTap: () {
                        // print("bibash ${data.result!.user!.id}");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VendorHomeScreen(
                                  vendorName: data.result!.user!.name,
                                  vid: data.result!.user!.id),
                            ));
                      },
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            null, // Set to null since CachedNetworkImage handles the image
                        child: ClipOval(
                          child: CachedNetworkImage(
                            imageUrl: data.result!.user_photo_url,
                            placeholder: (context, url) => SizedBox(
                                height: 30.h,
                                width: 50.w,
                                child: const Center(
                                    child:
                                        CircularProgressIndicator())), // Placeholder widget
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error), // Error widget
                            fit: BoxFit.cover, // Adjust image fit
                            width: 50, // Match the CircleAvatar diameter
                            height: 50,
                          ),
                        ),
                      ),
                    ),
                  SizedBox(
                    width: 10.w,
                  ),
                  InkWell(
                    onTap: () {
                      // print("biabsh ");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OrderDetailsScreen(
                            selectedProductIds: [],
                            selectedVendorIds: [],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 5),
                      padding:
                          EdgeInsets.symmetric(horizontal: 25.w, vertical: 4),
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [Color(0xff808080), Color(0xFF40246f)]),
                          border: Border.all(
                              color: ColorConstant.toastBackgroundColor)),
                      child: Column(
                        children: [
                          const Icon(
                            Icons.check_box_rounded,
                            color: ColorConstant.toastBackgroundColor,
                          ),
                          SizedBox(
                            width: 3.h,
                          ),
                          Text(
                            "Buy",
                            style: headerstyle.copyWith(),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AddToCartScreen(),
                          ));
                    },
                    child: const CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Icon(Icons.shopping_bag_outlined)),
                  )
                ],
              ),
              onPressed: () {},
            ),
            // backgroundColor: const Color(0xffF6F1F1),

            body: SingleChildScrollView(
              controller: _scrollController,
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 2.h),
                        padding: const EdgeInsets.all(3),
                        color: const Color(0xFF808080),
                        width: double.infinity,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.arrow_back_outlined,
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              InkWell(
                                onTap: () {
                                  _scrolltoo(0);
                                },
                                child: Text("Pictures",
                                    style: headerstyle.copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                    )),
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              InkWell(
                                onTap: () {
                                  _scrolltoo(0);
                                },
                                child: Text("Price & Variations",
                                    style: headerstyle.copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                    )),
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              InkWell(
                                onTap: () {
                                  _scrolltoo(sch);
                                },
                                child: Text(
                                  "Delivery",
                                  style: headerstyle.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              InkWell(
                                onTap: () {
                                  _scrolltoo(sch * 2);
                                },
                                child: Text(
                                  "Aftersales",
                                  style: headerstyle.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              InkWell(
                                onTap: () {
                                  _scrolltoo(sch * 4);
                                },
                                child: Text(
                                  "Description",
                                  style: headerstyle.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

                      if (data.result != null)
                        HeaderBannerWidget(
                            id: data.result!.user!.id,
                            vname: data.result!.user!.name,
                            img: data.result!.user_photo_url,
                            title: data.result!.feed_post!.isEmpty
                                ? "Trade-hub"
                                : data.result!.feed_post!.first.name!),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     SizedBox(),
                      //     favouriteListAsyncValue.when(
                      //         loading: () => const CircularProgressIndicator(),
                      //         error: (error, stackTrace) =>
                      //             const CircularProgressIndicator(),
                      //         data: (favouritelist) {
                      //           final isFavorite = favouritelist
                      //               .data!.savedProducts!.data
                      //               ?.any((item) => item.id == productId);
                      //           return Container(
                      //               padding: EdgeInsets.all(12.h),
                      //               decoration: BoxDecoration(
                      //                   shape: BoxShape.circle,
                      //                   color: isFavorite!
                      //                       ? Colors.yellow
                      //                       : const Color(0xffFFFFFF)),
                      //               child: SvgPicture.asset(invoiceIcon));
                      //         }),
                      //   ],
                      // ),
                      // SizedBox(
                      //   height: 5.h,
                      // ),
                      data.result?.pictures == null
                          ? const SizedBox()
                          : CarsoselWidget(
                              VImage: data.result!.user_photo_url,
                              avg_rating: data.result!.ratings!.averageRating
                                  .toString(),
                              comment: data.result!.commentCount.toString(),
                              wow: data.result!.wow.toString(),
                              items: data.result!.pictures!,
                              dots: itemsList.length,
                            )
                    ],
                  ),
                  Container(
                      // height: 1695.h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.r),
                              topRight: Radius.circular(30.r)),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    data.result?.title ?? '',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    softWrap: true,
                                    overflow: TextOverflow
                                        .visible, // Ensures all text is shown
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.only(left: 10.h, top: 10.h),
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: const Color(0xffF6F1F1),
                                      borderRadius: BorderRadius.circular(4.r)),
                                  child: Column(
                                    children: [
                                      SvgPicture.asset(
                                          "assets/icon/openCartIcon.svg"),
                                      Text(
                                        "TradeHub",
                                        style: headerstyle.copyWith(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10,
                                            color: ColorConstant.blackColor),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            height: 50,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(colors: [
                              Color(0xFF888888),
                              Color(0xffd571e5b)
                            ])),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text("Rs ${data.result?.price} ",
                                        style: headerstyle.copyWith(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                        )),
                                    // Text("Rs 90,000",
                                    //     style: headerstyle.copyWith(
                                    //       fontWeight: FontWeight.w700,
                                    //       fontSize: 15,
                                    //     ))
                                  ],
                                ),
                                data.result?.discountedPrice == null
                                    ? const SizedBox()
                                    : const PriceRowWidget(),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          if (data.result != null) const FeaturesBannerWidget(),
                          if (data.result?.postTypeId == "7")
                            const DiscountBoxWidget(),
                          SizedBox(
                            height: 10.h,
                          ),
                          const PerksWidget(
                            first: "COLORS",
                            fourth: "MODELS",
                            second: "Sizes",
                            third: "VARIATIONS",
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          // LocationWidget(
                          //   latititute:
                          //       double.tryParse(data.result!.latitude!)!,
                          //   longitute:
                          //       double.tryParse(data.result!.longitude!)!,
                          // ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 24.w, vertical: 5.h),
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [Colors.white, Color(0xFFf3f3f3)])),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/shield.png'),
                                    const Text("WARRANTY\n DETAILS"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/images/undo.png'),
                                    const Text("RETURN\n POLICY"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/images/undo.png'),
                                    const Text("EXCHANGE\n POLICY"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30.w),
                            padding: const EdgeInsets.all(5),
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [Colors.white, Color(0xFFf3f3f3)])),
                            child: Row(
                              children: [
                                if (data.result?.stock != null)
                                  Row(
                                    children: [
                                      Image.asset('assets/images/box.png'),
                                      SizedBox(
                                        width: 3.w,
                                      ),
                                      Text(
                                        "${data.result?.stock!} IN STOCK",
                                        style: headerstyle.copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: ColorConstant.blackColor),
                                      ),
                                    ],
                                  ),
                                SizedBox(
                                  width: 15.w,
                                ),
                                data.result?.weight != null
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                              'assets/images/weight.png'),
                                          Text(
                                            "${data.result?.weight}KG",
                                            style: headerstyle.copyWith(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                color:
                                                    ColorConstant.blackColor),
                                          ),
                                        ],
                                      )
                                    : const SizedBox(),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            padding: const EdgeInsets.all(10),
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [Colors.white, Color(0xFFf3f3f3)])),
                            child: Text(
                              "DESCRIPTION",
                              style: headerstyle.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "SAMBA OFFICIAL",
                              style: headerstyle.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: Text(
                              _removeHtmlTags(data.result?.description ?? ''),
                              style: TextStyle(
                                color: ColorConstant.blackColor,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                              ),
                              softWrap:
                                  true, // Ensures the text wraps to the next line
                              overflow: TextOverflow
                                  .clip, // Clips the text if it exceeds available space
                            ),
                          ),

// Helper function to remove HTML tags

                          SizedBox(
                            height: 5.h,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.w),
                            padding: const EdgeInsets.all(10),
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [Colors.white, Color(0xFFf3f3f3)])),
                            child: Text(
                              "ADDITIONAL DETAILS",
                              style: headerstyle.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                          ),
                          const AdditonalDetailsWidget(
                            desp: "Ugreen USB\n Bluetooth 5.3\n Adopter for PC",
                            title: "What in the Box?",
                          ),
                          if (data.extra != null)
                            AdditonalDetailsWidget(
                              desp: data.extra!.fields!.original!.result!
                                  .field4!.name,
                              title: data.extra!.fields!.original!.result!
                                  .field4!.name,
                            ),
                          if (data.result != null)
                            AdditonalDetailsWidget(
                              desp: data.result!.postType!.name,
                              title: "Product type",
                            ),
                          const AdditonalDetailsWidget(
                            desp: "Other",
                            title: "Electric Brand",
                          ),
                          const AdditonalDetailsWidget(
                            desp: "5.3 BR+EDR,BLE",
                            title: "Model",
                          ),
                          const AdditonalDetailsWidget(
                            desp: "No Warranty",
                            title: "Warranty",
                          ),
                          const AdditonalDetailsWidget(
                            desp: "",
                            title: "Availabel Colors:\n Black",
                          ),
                          SizedBox(
                            height: 5.w,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            padding: const EdgeInsets.all(10),
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [Colors.white, Color(0xFFf3f3f3)])),
                            child: Text(
                              "REVIEWS & RATINGS",
                              style: headerstyle.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  if (data.result?.ratings != null)
                                    Text(
                                      data.result!.ratings!.averageRating
                                          .toString(),
                                      style: headerstyle.copyWith(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black87),
                                    ),
                                  if (data.result?.ratings != null)
                                    Text(
                                      "${data.result!.ratings!.averageRating} ratings",
                                      style: headerstyle.copyWith(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black45),
                                    )
                                ],
                              ),
                              if (data.result?.ratings != null)
                                Column(
                                  children: [
                                    StarWidget(
                                      staryouwant: 5,

                                      star: data
                                          .result!.ratings!.ratingCounts.five!,
                                      value:
                                          0.2, // Adjust progress bar value as needed
                                      width: 100, // Progress bar width
                                      numStar: data
                                          .result!.ratings!.ratingCounts.five!,
                                    ),
                                    StarWidget(
                                        staryouwant: 4,
                                        star: data.result!.ratings!.ratingCounts
                                            .four!, // Only 1 star highlighted
                                        value:
                                            0.2, // Adjust progress bar value as needed
                                        width: 100, // Progress bar width
                                        numStar: data.result!.ratings!
                                            .ratingCounts.four!),
                                    StarWidget(
                                        staryouwant: 3,
                                        star: data.result!.ratings!.ratingCounts
                                            .three!, // Only 1 star highlighted
                                        value:
                                            0.2, // Adjust progress bar value as needed
                                        width: 100, // Progress bar width
                                        numStar: data.result!.ratings!
                                            .ratingCounts.three!),
                                    StarWidget(
                                        staryouwant: 2,
                                        star: data.result!.ratings!.ratingCounts
                                            .two!, // Only 1 star highlighted
                                        value:
                                            0.2, // Adjust progress bar value as needed
                                        width: 100, // Progress bar width
                                        numStar: data.result!.ratings!
                                            .ratingCounts.two!),
                                    StarWidget(
                                        staryouwant: 1,
                                        star: data.result!.ratings!.ratingCounts
                                            .one!, // Only 1 star highlighted
                                        value:
                                            0.2, // Adjust progress bar value as needed
                                        width: 100, // Progress bar width
                                        numStar: data.result!.ratings!
                                            .ratingCounts.one!),
                                  ],
                                )
                            ],
                          ),
                          data.result?.rating_comment == null ||
                                  data.result!.rating_comment.isEmpty
                              ? const SizedBox()
                              : PeopleReviewsWidget(
                                  rate: data.result!.rating_comment),

                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                                border:
                                    Border.all(color: Colors.black, width: 1)),
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                      child: Text(
                                    "Write a Review",
                                    style: headerstyle.copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: Colors.black),
                                  )),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  TextField(
                                    controller: _reviewcontroller,
                                    maxLines: 5,
                                    decoration: const InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        hintText: "Write your comment"),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      ref.watch(postreviewProvider(int.tryParse(productId)!,_reviewcontroller.text,'2'));
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: const Color(0xFF362677)),
                                      child: Text(
                                        "Submit Review",
                                        style: headerstyle,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  const chat_review_widget(),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30.w),
                                    child: const chat_review_widget(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          //  AdsWidget(
                          //   user: data.result!.userDetails!,
                          //  ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(tabs.length, (index) {
                              // Read the selected index value
                              final selectedIndex =
                                  ref.watch(selectedIndexProvider);

                              // Check if the current index is selected
                              final isSelected = (index + 1) == selectedIndex;

                              return InkWell(
                                onTap: () => ref
                                    .read(selectedIndexProvider.notifier)
                                    .state = index + 1,
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(
                                        width: 1,
                                        color: const Color(0xffD9D9D9)),
                                    color: isSelected
                                        ? const Color(0xffD9D9D9)
                                            .withOpacity(0.2)
                                            .withOpacity(0.9)
                                        : Colors.white,
                                  ),
                                  child: Text(
                                    tabs[index],
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      color: isSelected
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),

                          if (data.result?.deals != null)
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: SizedBox(
                                child: selectedIndex == 1
                                    ? Row(
                                        children: data.result!.deals!.map(
                                        (e) {
                                          return buildDealItemWidget(
                                              data: Deal(
                                                  discount_percentage:
                                                      e.discountPercentage
                                                                  .toString() ==
                                                              'null'
                                                          ? '0'
                                                          : e.discountPercentage
                                                              .toString(),
                                                  id: e.id,
                                                  image: e.image));
                                        },
                                      ).toList())
                                    // ? CardWidget(
                                    //     deal: data.result!.deals ??
                                    //         []) // Show deals content for selectedIndex 1
                                    : selectedIndex == 2
                                        ? Row(
                                            children: data.result!.shop!.map(
                                            (e) {
                                              return buildDealItemWidget(
                                                  data: Deal(
                                                      discount_percentage: e
                                                                  .discountPercentage
                                                                  .toString() ==
                                                              'null'
                                                          ? '0'
                                                          : e.discountPercentage
                                                              .toString(),
                                                      id: e.id,
                                                      image: e.image));
                                            },
                                          ).toList())
                                        : selectedIndex == 3
                                            ? SwapablePostCard(
                                                post: data.result!.feed_post!)
                                            : selectedIndex == 4
                                                ? LiveSwapble(
                                                    post: data
                                                        .result!.live_prizes)
                                                : const SizedBox(), // Fallback for other index values
                              ),
                            ),

                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.w, vertical: 5.h),
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                Colors.white,
                                Color(0xFFf3f3f3)
                              ])),
                              child: Text(
                                "For you",
                                style: headerstyle.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17,
                                    color: Colors.black87),
                              )),
                          // data.widgetSimilarPosts?.posts.data.length==0

                          //     ? Center(child: nolistingfound())
                          //     : GridView.builder(
                          //         physics:
                          //             const NeverScrollableScrollPhysics(), // Disable grid scrolling
                          //         shrinkWrap: true, // Adjust to fit content
                          //         itemCount: data
                          //             .widgetSimilarPosts?.posts.data.length,

                          //         gridDelegate:
                          //             const SliverGridDelegateWithFixedCrossAxisCount(
                          //           mainAxisExtent: 430,
                          //           crossAxisCount: 2,
                          //           crossAxisSpacing: 0.2,
                          //           mainAxisSpacing: 0.2,
                          //           childAspectRatio: 0.9,
                          //         ),
                          //         itemBuilder: (context, index) {
                          //           PostResult res = data.widgetSimilarPosts!.posts.data[index];
                          //           return Padding(
                          //             padding: EdgeInsets.only(bottom: 5.h),
                          //             child: ProductDetailWidget(
                          //               productImage: "https://smartbazaar.jianjun-rnd.com.np/storage/${res.pictures![0].filename}}",
                          //                Vimage: res.user_photo_url,

                          //               // vendorname: data
                          //               //     .widgetSimilarPosts
                          //               //     ?.posts
                          //               //     .data[index]
                          //               //     .user_details!
                          //               //     .name,
                          //               title:res.title,
                          //               price: res.price,
                          //               // similarproductCount: 0,
                          //               // membershipColor: "#3D215F",
                          //               // membershipTitle: "",
                          //               // avg_rating: data
                          //               //     .result!.ratings!.avg_rating!
                          //               //     .toDouble(),
                          //               // comment: data.result!.commentCount!
                          //               //     .toString(),
                          //               // discounttedPrice:
                          //               //     data.result!.discountedPrice!,
                          //               // issponsored: false,
                          //               // lefttile: "Trade-Hub",
                          //               // offer: data.result!.offer!,
                          //               // wow: data.result!.wow,
                          //             ),
                          //           );
                          //         },
                          //       ),

                          // Container(
                          //   width: double.infinity,
                          //   color: Colors.red,
                          //   height: 390,
                          //   child: ListView.builder(

                          //     padding: EdgeInsets.zero,

                          //     scrollDirection: Axis.horizontal,
                          //     shrinkWrap: true,
                          //     itemCount: 5,
                          //     itemBuilder: (context, index) {
                          //       return P
                          //     },
                          //   ),
                          // )
                          // Row(
                          //   children: [
                          //     SvgPicture.asset(contactSellerIcon),
                          //     SizedBox(
                          //       width: 10.w,
                          //     ),
                          //     Text(
                          //       'Contact Seller',
                          //       style: TextStyle(
                          //           fontSize: 16.sp,
                          //           fontWeight: FontWeight.w700,
                          //           color: const Color(0xff000000)),
                          //     ),
                          //   ],
                          // ),
                        ],
                      )),
                  SizedBox(
                    height: 30.h,
                  )
                ],
              ),
            ),
          );
        },
        error: (error, stackTrace) {
          return Text("error $error");
        },
        loading: () => SizedBox(
          width: 100.w,
          height: 100.h,
          child: Center(
            child: Image.asset(
              'assets/images/preloader.gif',
              width: 100.w,
              height: 100.h,
              fit: BoxFit.contain, // Ensures the image fits within its bounds
            ),
          ),
        ),
      ),
    );
  }
}

class SwapablePostCard extends StatelessWidget {
  final List<FeedPost> post;
  bool? show;

  // Constructor
  SwapablePostCard({
    super.key,
    required this.post,
    this.show = false, // Default value for show is false
  });

  @override
  Widget build(BuildContext context) {
    return post.isEmpty
        ? Center(child: nolistingfound())
        : SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: post.map((data) {
                return PostCard(
                  // subscribers: data.subscribers.toString(),
                  isLive: show,
                  image: data.image!,
                  name: data.name!,
                  caption: data.caption!,
                  photo: data.photo!,
                  subscribers: data.subscribers!.toString(),
                );
              }).toList(),
            ),
          );
  }
}

class LiveSwapble extends StatelessWidget {
  final List<LivePrize> post;
  bool? show;

  // Constructor
  LiveSwapble({
    super.key,
    required this.post,
    this.show = false, // Default value for show is false
  });

  @override
  Widget build(BuildContext context) {
    return post.isEmpty
        ? Center(child: nolistingfound())
        : SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: post.map((data) {
                return PostCard(
                  isLive: show,
                  image: data.image!,
                  name: data.name,
                  caption: '',
                  photo: data.photo!,
                  subscribers: data.subscribers!.toString(),
                );
              }).toList(),
            ),
          );
  }
}

class CardWidget extends StatelessWidget {
  final List<Shop> deal;
  const CardWidget({super.key, required this.deal});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: deal.isEmpty
          ? Center(child: nolistingfound())
          : SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: deal.map((data) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: DottedBorder(
                      color: Colors.black,
                      strokeWidth: 2,
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(12),
                      dashPattern: const [6, 5],
                      child: SizedBox(
                        width: 120,
                        height: 260,
                        child: Image.network(
                          data.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
    );
  }
}

class chat_review_widget extends StatelessWidget {
  const chat_review_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Icon(Icons.person_2_outlined),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black87, width: 1)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "XYZ",
                    style:
                        headerstyle.copyWith(color: Colors.black, fontSize: 15),
                  ),
                  const Text("This is a comment"),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 150.w),
          child: const Text(
              textAlign: TextAlign.center,
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid),
              "Reply"),
        )
      ],
    );
  }
}

class TabBarItems extends StatelessWidget {
  final String weight;
  final String stock;
  final String description;

  const TabBarItems(
      {Key? key,
      required this.weight,
      required this.stock,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(4.0),
      child: SizedBox(
        width: double.infinity, // Adjust width as needed
        height: 370, // Adjust height as needed
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              TabBar(
                tabs: [
                  Tab(
                    text: 'Listing Details',
                  ),
                  Tab(
                    text: 'Reviews',
                  ),
                ],
              ),
              // SizedBox(height: 10), // Adjust as needed
              // Expanded(
              //   child: Container(
              //     padding:
              //         EdgeInsets.symmetric(horizontal: 11.w, vertical: 13.h),
              //     decoration: BoxDecoration(
              //         border: Border.all(
              //             width: 1.w, color: const Color(0xff000000))),
              //     constraints: const BoxConstraints.expand(),
              //     child: TabBarView(
              //       children: [
              //         Column(
              //           children: [
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 RichTextWidget(
              //                     subtitle: "$weight kg",
              //                     subtitleStyle: TextStyle(
              //                         fontWeight: FontWeight.w400,
              //                         fontSize: 12.sp,
              //                         color: Colors.black),
              //                     title: 'Net Weight: ',
              //                     titleStyle: TextStyle(
              //                         fontWeight: FontWeight.w700,
              //                         fontSize: 14.sp,
              //                         color: Colors.black),
              //                     onPressed: () {}),
              //                 RichTextWidget(
              //                     subtitle: stock,
              //                     subtitleStyle: TextStyle(
              //                         fontWeight: FontWeight.w400,
              //                         fontSize: 12.sp,
              //                         color: Colors.black),
              //                     title: 'Available Quantity: ',
              //                     titleStyle: TextStyle(
              //                         fontWeight: FontWeight.w700,
              //                         fontSize: 14.sp,
              //                         color: Colors.black),
              //                     onPressed: () {})
              //               ],
              //             ),
              //             SizedBox(
              //               height: 12.h,
              //             ),
              //             Container(
              //               child: Text(
              //                 maxLines: 10,
              //                 description,
              //                 style: TextStyle(
              //                     fontSize: 14.sp,
              //                     fontWeight: FontWeight.w400,
              //                     color: Colors.black),
              //               ),
              //             ),
              //           ],
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Column(
              //             children: [
              //               const Row(
              //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                 children: [Text('0 comments'), Text('sort by')],
              //               ),
              //               const Divider(),
              //               SizedBox(
              //                 height: 10.h,
              //               ),
              //               TextField(
              //                 decoration: InputDecoration(
              //                   contentPadding: EdgeInsets.symmetric(
              //                       horizontal: 10.w, vertical: 10.h),
              //                   hintText: 'Add comment...',
              //                   border: OutlineInputBorder(
              //                       borderSide: const BorderSide(
              //                           width: 1.0, color: Colors.black),
              //                       borderRadius: BorderRadius.circular(10.r)),
              //                 ),
              //               )
              //               // CustomTextFieldWidget(icon: , hintText: hintText)
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class ScratchWinContainer extends StatelessWidget {
  ScratchWinContainer({
    super.key,
    required this.ontap,
  });
  Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 9),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 1.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(width: 1.w, color: const Color(0xffF5BF05))),
          child: Row(
            children: [
              Image.asset(
                ImageConstant.scartchWinImage,
              ),
              // Expanded(
              //   child: RichTextWidget(
              //       title: "Visit our virtual store ",
              //       // titleStyle: TextStyle(
              //       //     fontSize: 10.sp,
              //       //     fontWeight: FontWeight.w700),
              //       subtitle: "Subscribe us to win FREE prizes & get our deals",
              //       subtitleStyle: TextStyle(
              //           fontSize: 12.sp,
              //           color: Colors.black,
              //           fontWeight: FontWeight.w400),
              //       onPressed: () {}),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

class ProductAdditionalDetialsWidget extends StatelessWidget {
  final String inbox;
  final String brandname;

  const ProductAdditionalDetialsWidget(
      {Key? key, required this.inbox, required this.brandname})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {'title': "What's in the box?", 'description': inbox ?? 'N/A'},
      {'title': "Brand", 'description': brandname ?? 'N/A'},
      {'title': "Model", 'description': brandname ?? 'N/A'},
    ];
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                drawerIcon,
                colorFilter:
                    const ColorFilter.mode(Colors.black, BlendMode.srcIn),
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                'Additional Details',
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
              )
            ],
          ),
          SizedBox(
            height: 12.h,
          ),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 2.4,
            ),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(left: 5.w, right: 5.w),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                  decoration: BoxDecoration(
                      color: const Color(0xffEDECEC),
                      borderRadius: BorderRadius.circular(8.r)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          maxLines: 1,
                          items[index]['title'],
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(
                              0xff000000,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        items[index]['description'],
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(
                            0xff000000,
                          ),
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ProductAvilableColorsWidget extends StatelessWidget {
  List<ColorOption> color;
  ProductAvilableColorsWidget({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 9.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: const Color(0xffEDECEC)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Available Colours',
              style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff000000)),
            ),
            SizedBox(
              height: 5.h,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: color.length > 5 ? 3 : color.length,
              itemBuilder: (context, index) {
                final data = color[index];
                return Row(
                  children: [
                    const Icon(
                      Icons.check,
                      size: 25,
                      color: Color(0xff000000),
                    ),
                    SizedBox(width: 2.w),
                    Text(data.value ?? '',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff000000)))
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class ProductTagListWidget extends StatelessWidget {
  final List<String> tags;

  const ProductTagListWidget({
    super.key,
    required this.tags,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                  tagIcon), // Ensure the path to your SVG is correct
              SizedBox(width: 5.w),
              Text(
                'Tags',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff000000),
                ),
              ),
            ],
          ),
          // SizedBox(height: 10.h),
          SizedBox(height: 15.h),

          // Use ListView.builder to display tags
          SizedBox(
            height: 40.h, // Adjust the height as needed
            child: ListView.builder(
              itemCount: tags.isEmpty
                  ? 1
                  : tags.length, // Show a placeholder if the list is empty
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                // If tags list is empty, display a placeholder message
                if (tags.isEmpty) {
                  return Center(
                    child: Text(
                      'No Tags Available',
                      style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                    ),
                  );
                }

                String data = tags[index].isEmpty ? "Item" : tags[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Chip(
                    label: Text(data),
                    backgroundColor: Colors.grey.shade200,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class BuyNowProdcutMinuteWidget extends StatelessWidget {
  const BuyNowProdcutMinuteWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(width: 1.5.w, color: const Color(0xffADADAD))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.h, bottom: 5.h, left: 12.w),
              child: Text(
                'Buy now within minute',
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff000000)),
              ),
            ),
            const Divider(
              thickness: 1.5,
              color: Color(0xffADADAD),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                children: [
                  const Icon(
                    Icons.check,
                    size: 25,
                    color: Color(0xff000000),
                  ),
                  SizedBox(width: 2.w),
                  Expanded(
                    child: Text(
                        'Confirm your personal information & contact details.',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff000000))),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              child: Row(
                children: [
                  const Icon(
                    Icons.check,
                    size: 25,
                    color: Color(0xff000000),
                  ),
                  SizedBox(width: 2.w),
                  Text('Enter your shipping address',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff000000)))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SimilarListingProduct extends StatelessWidget {
  final List<SimilarItems> items;
  final String query;

  const SimilarListingProduct(
      {Key? key, required this.items, required this.query})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'SIMILAR LISTING',
                style: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w700),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            SearchScreen(query: query.split(' ')[0]),
                      ));
                },
                child: Text(
                  'View all',
                  style: TextStyle(
                      fontSize: 10.sp,
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 200.h, // Specify a height for the ListView
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (context, index) {
                SimilarItems data = items[index];
                List<Picture> pics = data.pictures!;
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailScreen(
                              productId: data.id.toString()),
                        ));
                  },
                  child: Container(
                    width: 150.w, // Specify a width for each item
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (data.pictures!.isNotEmpty)
                          SizedBox(
                            height: 100.h, // Fixed height for the image
                            child: Image.network(
                              "${ApiConstants.imgUrl}${pics.first.filename}",
                              fit: BoxFit.cover,
                            ),
                          ),
                        SizedBox(height: 8.h),
                        Text(
                          data.title!,
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis, // Prevent overflow
                        ),
                        Text(
                          data.price ?? "loading",
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.black54,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CustomDialougeBox {
  Future alertMessage(
    BuildContext context,
  ) async {
    return showDialog(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Sucessful!',
                style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff362677)),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Congratulations, your order has been placed sucessfully! Please check your email or view My Orders for order details. Click here to Track Your Order.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 40.h,
                width: 40.w,
                decoration: const BoxDecoration(
                    color: Color(0xff362677), shape: BoxShape.circle),
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 24,
                  weight: 50,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future addToCart(
    BuildContext context,
  ) async {
    return showDialog(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Sucessful!',
                style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff362677)),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Product added to the cart sucessfully!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              SizedBox(
                height: 5.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const AddToCartScreen()));
                },
                child: Text(
                  'View Cart',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 40.h,
                width: 40.w,
                decoration: const BoxDecoration(
                    color: Color(0xff362677), shape: BoxShape.circle),
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 24,
                  weight: 50,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Separate widget for scratch card content with state management
class _ScratchCardContent extends StatefulWidget {
  final String gift;

  // Constructor to initialize gift
  const _ScratchCardContent({Key? key, required this.gift}) : super(key: key);

  @override
  __ScratchCardContentState createState() => __ScratchCardContentState();
}

class __ScratchCardContentState extends State<_ScratchCardContent> {
  double _opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scratcher(
      color: const Color.fromARGB(255, 144, 127, 120),
      // image: Image.asset("assets/images/laptopImgae.png"),
      accuracy: ScratchAccuracy.low,
      threshold: 25,
      brushSize: 40,
      onThreshold: () {
        setState(() {
          _opacity = 1.0; // Reveal the reward when the threshold is met
        });
      },
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 250),
        opacity: _opacity,
        child: Container(
          height: 300.h,
          width: 300.w,
          alignment: Alignment.center,
          child: Text(
            widget.gift, // Use the gift text passed to the constructor
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}
