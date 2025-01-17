import 'dart:convert';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dotted_line/dotted_line.dart';

import 'package:rxdart/rxdart.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/bussiness_tab_screen/view/business_tab_screen.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/product_details/constant/all_product_detail_widget.dart';
import 'package:smartbazar/features/product_details/constant/product_detail_widget.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/api/vendor_profile_api.dart';
import 'package:smartbazar/features/vendor/vendor_profile/api/vendor_search_provider.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_name.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/venodr_search_model.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/postcard.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';
import 'package:url_launcher/url_launcher.dart';

class VendorHomeScreen extends ConsumerStatefulWidget {
  final String vendorName;
  final int vid;
  // final String connection,
  // contact,
  // total_connections,
  // membership_title,
  // has_sponsored_gifts,
  // story_count;
  const VendorHomeScreen({
    super.key,
    required this.vendorName,
    required this.vid,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _VendorHomeScreenState();
}

// class _buildProductList extends StatelessWidget {
//   final List<BrandNewModel>? products;
//   _buildProductList({super.key, required this.products});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 340.h,
//       child: ListView.builder(
//         clipBehavior: Clip.antiAlias,
//         padding: const EdgeInsets.all(3),
//         scrollDirection: Axis.horizontal,
//         itemCount: products!.length,
//         itemBuilder: (context, index) {
//           BrandNewModel prod = products![index];
//           return InkWell(
//             onTap: () {}, // Handle onTap if needed
//             child: ProductDetailWidget(
//               lefttile: "TradeHUb",
//               vendorname: prod.userdetails?.name ?? "",
//               Vimage: prod.userdetails?.photo ?? "",
//               avg_rating: prod.avg_rating ?? 0,
//               comment: prod.commentcount.toString(),
//               discounttedPrice: prod.discounted_price.toString(),
//               distance: double.tryParse(prod.shortestDistance ?? '0') ?? 0,
//               issponsored: prod.userdetails?.sponsored ?? false,
//               membershipColor: prod.userdetails?.membership_color ?? "",
//               membershipTitle: prod.userdetails?.membership_title ?? "",
//               offer: prod.wow,
//               price: prod.price ?? "",
//               productImage: prod.image ?? "",
//               shortestDistance:
//                   double.tryParse(prod.shortestDistance ?? '0') ?? 0,
//               similarproductCount: prod.similarProductCount ?? 0,
//               title: prod.title ?? "",
//               wow: prod.wow,
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

class _VendorHomeScreenState extends ConsumerState<VendorHomeScreen>
    with TickerProviderStateMixin {
  final List<String> categories = [
    "PRODUCTS",
    "Used",
    "Services",
    "Events",
    "B2B",
    "JOBS",
    "Grocery"
  ];

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _vendorsearchController = TextEditingController();
  List<GetOnlyData>? searchResult;
  final _debouncer = BehaviorSubject<String>();
  bool _showSearchProductModels = false;
  final bool _vendorsearchResullts = false;
  late TabController _tabController;
  int _postType = 0; // Default to 'Home' tab with postType 0
  // Future<void> _openGoogleMap(BuildContext context) async {

  //   // Get current location
  //   Position position = await Geolocator.getCurrentPosition(
  //       desiredAccuracy: LocationAccuracy.high);

  //   double latitude = position.latitude;
  //   double longitude = position.longitude;

  //   // Create the Google Maps URL
  //   String googleMapsUrl =
  //       'https://www.google.com/maps/search/?q=$latitude,$longitude';

  //   // Open Google Maps using the URL
  //   if (await canLaunch(googleMapsUrl)) {
  //     await launch(googleMapsUrl);
  //   } else {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text('Could not open Google Maps')),
  //     );
  //   }
  // }
  int? myselectedindex; // Track selected index
  double? dynamicheight;
  @override
  void initState() {
    super.initState();
    myselectedindex = 0;
    dynamicheight = 410.0.h;

    _tabController = TabController(length: 7, vsync: this);
    // Listen for tab changes
    _tabController.addListener(() {
      setState(() {
        _postType = _tabController
            .index; // Update the postType based on the selected tab
        ref.refresh(getVendorProfileDataProvider(
          widget.vendorName.replaceAll(" ", ''),
          postType: _postType,
        ));
      });
    });

    _vendorsearchController.addListener(() {
      _debouncer.add(_vendorsearchController.text);
    });
    void onSearchFocusChanged(bool hasFocus) {
      setState(() {
        _showSearchProductModels = hasFocus;
      });
    }

    _debouncer.debounceTime(const Duration(milliseconds: 300)).listen((query) {
      debugPrint("Search query: $query");
      ref.refresh(searchProvider(query));
      setState(() {
        _showSearchProductModels = query.isNotEmpty;
      });
    });

    _searchController.addListener(() {
      _debouncer.add(_searchController.text);
    });

    _debouncer.debounceTime(const Duration(milliseconds: 100)).listen((query) {
      debugPrint("Search query: $query");
      ref.refresh(searchProvider(query));
      setState(() {
        _showSearchProductModels = query.isNotEmpty;
      });
    });
  }

  void _onSearchFocusChanged(bool hasFocus) {
    setState(() {
      _showSearchProductModels = hasFocus;
    });
  }

  @override
  void dispose() {
    _debouncer.close();
    _searchController.dispose();
    _vendorsearchController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  List<BrandNewModel>? alldata;

  bool _isSearchFieldVisible = false;

  @override
  Widget build(BuildContext context) {
    final vendorProfileModelDataAsyncValue = ref.watch(
        getVendorProfileDataProvider(widget.vendorName.replaceAll(" ", '')));
    final SearchProductModels =
        ref.watch(searchProvider(_searchController.text));
    debugPrint('Search Results: ${SearchProductModels.asData?.value}');

    return GenericSafeArea(
      child: Scaffold(
        body: vendorProfileModelDataAsyncValue.when(
          data: (data) {
            if (myselectedindex == 0) alldata = data.brandnew;

            return CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Container(
                    height: 150.h,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF85237C),
                          Color(0xFF5C1E56),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          child: Column(
                            children: [
                              const SizedBox(height: 40),
                              Row(
                                children: [
                                  const SizedBox(width: 10),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Icon(
                                      Icons.arrow_back_ios,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(width: 30),
                                  SizedBox(
                                    height: 42.h,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(
                                            left: 15.w,
                                            top: 3.h,
                                            bottom: 3.h,
                                            right: 5.w,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            border: Border.all(
                                              color: Colors.white,
                                              width: 0.1,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20.r),
                                              bottomLeft: Radius.circular(20.r),
                                            ),
                                          ),
                                          child: CircleAvatar(
                                            maxRadius: 15,
                                            backgroundImage: NetworkImage(
                                              data.vendor_card!.photo!,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 200.w,
                                          padding: EdgeInsets.symmetric(
                                            vertical: 6.h,
                                          ),
                                          decoration: const BoxDecoration(
                                              color: Colors.white),
                                          child: TextField(
                                            controller: _searchController,
                                            onTap: () {
                                              _onSearchFocusChanged(
                                                  _searchController
                                                      .text.isEmpty);
                                            },
                                            cursorHeight: 13.h,
                                            onChanged: (value) {},
                                            decoration: InputDecoration(
                                              enabledBorder: InputBorder.none,
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              hintText:
                                                  "   Search MyPower BizSpace",
                                              hintStyle:
                                                  TextStyle(fontSize: 11.sp),
                                              isCollapsed: true,
                                              disabledBorder: InputBorder.none,
                                              isDense: true,
                                              enabled: true,
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            if (_searchController.text
                                                .trim()
                                                .isNotEmpty) {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        BusinessTabScreen(
                                                      query: _searchController
                                                          .text,
                                                    ),
                                                  ));
                                            }
                                          },
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 10.w,
                                              vertical: 5.h,
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.white,
                                                width: 0.1,
                                              ),
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(15.r),
                                                bottomRight:
                                                    Radius.circular(15.r),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(3.r),
                                              child: Icon(
                                                Icons.search,
                                                color: Colors.white,
                                                size: 20.sp,
                                              ),
                                            ),
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
                        if (_showSearchProductModels)
                          Positioned(
                            top: 79
                                .h, // Adjust the positioning for the suggestion box
                            left: 10,
                            right: 10,
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 5.w),
                              color: Colors.white,
                              child: SearchProductModels.when(
                                data: (results) {
                                  if (results.isEmpty) {
                                    return const SizedBox(
                                      child: Text('No result found'),
                                    ); // No results
                                  }
                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    primary: false,
                                    itemCount: results.length,
                                    itemBuilder: (context, index) {
                                      final product = results[index];
                                      return ListTile(
                                        dense: true,
                                        title: Text(
                                          softWrap: true,
                                          product.title,
                                          style: headerstyle.copyWith(
                                              color: ColorConstant.blackColor,
                                              fontSize: 10),
                                        ),
                                        onTap: () {
                                          setState(() {
                                            _showSearchProductModels = false;
                                            FocusScope.of(context).unfocus();
                                          });
                                        },
                                      );
                                    },
                                    separatorBuilder: (context, index) =>
                                        const Divider(),
                                  );
                                },
                                loading: () {
                                  return const SizedBox();
                                },
                                error: (error, stack) {
                                  return Center(child: Text(error.toString()));
                                },
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: data.vendor_about == null
                      ? const SizedBox()
                      : Column(
                          children: [
                            BigContainer(
                              memebertitle: data.vendor_card!.membership_title!,
                              lat: double.tryParse(
                                      data.vendor_card?.latitude ?? '0.0') ??
                                  0.0,
                              long: double.tryParse(
                                      data.vendor_card?.longitude ?? '0.0') ??
                                  0.0,
                              title: data.vendor_card!.name!,
                              logo: data.vendor_card!.photo!,
                              contact: data.vendor_card?.phone ?? '9812457859',
                              storyCount:
                                  data.vendor_card!.storycount!.toString(),
                              membershipTitle:
                                  data.vendor_card!.membership_title!,
                              deals_circle: '0',
                              total_connections: "0",
                              total_prize_worth: '0',
                              location: data.vendor_card!.nearestbranch ??
                                  'kathmandu',
                              Cnumber: data.vendor?.phone ?? '9845612345',
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            const DottedLine(
                                dashRadius: 5,
                                dashColor: Color(0xffD9D9D9),
                                dashLength: 7),
                          ],
                        ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TabBar(
                        onTap: (value) {
                          setState(() {
                            // Check if the tapped tab index is greater than 1
                            dynamicheight = value > 1 ? 50.h : 410.h;
                          });
                        },
                        tabAlignment: TabAlignment.start,
                        isScrollable: true,
                        controller: _tabController,
                        tabs: const [
                          Tab(text: "SHOP"),
                          Tab(text: "Home"),
                          Tab(text: "About"),
                          Tab(text: "BRANDS"),
                          Tab(text: "GET DIRECTIONS"),
                          Tab(text: "CUSTOMER SERVICE"),
                          Tab(text: "CART"),
                        ],
                      ),
                      // Wrap TabBarView in a container with a specific height
                      SizedBox(
                        width: double.infinity,
                        height: dynamicheight, // Adjust the height as needed
                        child: TabBarView(
                          controller: _tabController,
                          physics:
                              const BouncingScrollPhysics(), // Adds a smooth bouncing effect
                          children: [
                            // First Tab: Carousel Slider
                            Column(children: [
                              // CarouselSlider(
                              //   items: data.advertisements!.map((e) {
                              //     return Image.network(
                              //       e.image!,
                              //       fit: BoxFit.cover,
                              //     );
                              //   }).toList(),
                              //   options: CarouselOptions(
                              //     aspectRatio: 5,
                              //     reverse: false,
                              //     viewportFraction: 1,
                              //     autoPlay: true,
                              //     enlargeCenterPage: true,
                              //   ),
                              // ),
                              SizedBox(
                                height: 20.h,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // Search Field
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    AnimatedSwitcher(
                                      duration:
                                          const Duration(milliseconds: 300),
                                      child: _isSearchFieldVisible
                                          ? SizedBox(
                                              key:
                                                  const ValueKey('SearchField'),
                                              width: 300.0,
                                              child: TextField(
                                                onSubmitted: (value) {
                                                  final postsAsyncValue = ref
                                                      .watch(
                                                          geDataBySearchvendorProvider(
                                                              value))
                                                      .whenData(
                                                    (value) {
                                                      searchResult = value;
                                                    },
                                                  );
                                                },
                                                controller: _searchController,
                                                decoration: InputDecoration(
                                                  contentPadding:
                                                      const EdgeInsets.only(
                                                          left: 5),
                                                  hintText: "Search...",
                                                  filled: true,
                                                  fillColor: Colors.grey
                                                      .withOpacity(0.1),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Colors.grey
                                                          .withOpacity(0.4),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                            Radius.circular(
                                                                10.0)),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Colors.blue
                                                          .withOpacity(0.6),
                                                      width: 1.5,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                            Radius.circular(
                                                                10.0)),
                                                  ),
                                                  suffixIcon: InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        _isSearchFieldVisible =
                                                            !_isSearchFieldVisible;
                                                      });
                                                    },
                                                    child: Container(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      decoration:
                                                          const BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  10),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  10),
                                                        ),
                                                        color: Colors
                                                            .black, // Replace with `ColorConstant.blackColor`
                                                      ),
                                                      child: const Icon(
                                                        Icons.search,
                                                        color: Colors
                                                            .white, // Replace with `ColorConstant.whiteColor`
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          : IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  _isSearchFieldVisible = true;
                                                });
                                              },
                                              icon: Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 5,
                                                        vertical: 5),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: ColorConstant
                                                        .blackColor),
                                                child: const Icon(
                                                  Icons.search,
                                                  color:
                                                      ColorConstant.whiteColor,
                                                ),
                                              ),
                                            ),
                                    ),
                                    SizedBox(
                                      height: 50,
                                      width: 800.w,
                                      child: Row(
                                        children: List.generate(
                                            categories.length, (index) {
                                          return GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                myselectedindex = index;
                                                alldata = [
                                                      data.brandnew,
                                                      data.used,
                                                      data.services,
                                                      data.events,
                                                      data.b2b,
                                                      data.jobs,
                                                      data.grocery
                                                    ][index] ??
                                                    [];
                                              });
                                            },
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10.0,
                                                  vertical: 5.h),
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 10.w),
                                              decoration: BoxDecoration(
                                                color: myselectedindex == index
                                                    ? ColorConstant.blackColor
                                                    : Colors.grey[300],
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Text(
                                                categories[index],
                                                style: TextStyle(
                                                  color:
                                                      myselectedindex == index
                                                          ? Colors.white
                                                          : Colors.black,
                                                ),
                                              ),
                                            ),
                                          );
                                        }),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              alldata?.isEmpty ?? true
                                  ? const Padding(
                                      padding: EdgeInsets.all(40.0),
                                      child: Center(
                                          child: Text(
                                              "No Listing available.....")),
                                    )
                                  : AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 400),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Wrap(
                                          spacing: 3.w,
                                          children: List.generate(
                                              alldata?.length ?? 0, (index) {
                                            BrandNewModel prod =
                                                alldata![index];
                                            return GestureDetector(
                                              onTap: () {
                                                // Add onTap functionality if needed
                                              },
                                              child: ProductDetailWidget(
                                                posttype: prod.post_type,
                                                id: int.tryParse(prod.id),
                                                membershipid: prod
                                                    .userdetails?.membership_id,
                                                didcountpercentage: prod
                                                    .discount_percentage
                                                    ?.toInt(),
                                                lefttile: "TradeHub",
                                                vendorname:
                                                    prod.userdetails?.name ??
                                                        "",
                                                Vimage:
                                                    prod.userdetails?.photo ??
                                                        "",
                                                avg_rating: prod.avg_rating
                                                        ?.toDouble() ??
                                                    0,
                                                comment: prod.commentcount
                                                        ?.toString() ??
                                                    "0",
                                                discounttedPrice: prod
                                                        .discounted_price
                                                        ?.toString() ??
                                                    "0",
                                                distance: double.tryParse(prod
                                                        .shortestDistance
                                                        ?.toString() ??
                                                    "0"),
                                                issponsored: prod.userdetails
                                                        ?.sponsored ??
                                                    false,
                                                membershipColor: prod
                                                        .userdetails
                                                        ?.membership_color ??
                                                    "",
                                                membershipTitle: prod
                                                        .userdetails
                                                        ?.membership_title ??
                                                    "",
                                                offer: prod.wow ?? "",
                                                price: prod.price ?? "",
                                                productImage: prod.image,
                                                shortestDistance:
                                                    prod.shortestDistance ??
                                                        0.0,
                                                similarproductCount:
                                                    prod.similarProductCount ??
                                                        0,
                                                title: prod.title ?? "",
                                                wow: prod.wow ?? "",
                                              ),
                                            );
                                          }),
                                        ),
                                      ),
                                    ),
                            ]),

                            // Other Tabs with smooth animations
                            AnimatedContainer(
                              margin: const EdgeInsets.all(5),
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                              color: Colors.blue,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                    ),
                                  ),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 24.w, top: 32.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "Opening hours:\n${(jsonDecode(data.vendor_about!.opening_hours!) as List).map((e) => '${e['day']}: ${e['closed'] ? 'Closed' : '${e['from'] ?? 'N/A'} - ${e['to'] ?? 'N/A'}'}').join('\n')}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12.sp)),
                                        SizedBox(height: 10.h),
                                        Row(
                                          children: [
                                            Icon(Icons.phone,
                                                color: const Color(0xFF8B6C6C),
                                                size: 14.h),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Text(
                                              data.vendor_about!.phone ?? '',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10.h),
                                        Row(
                                          children: [
                                            Icon(Icons.location_on,
                                                color: const Color(0xFF8B6C6C),
                                                size: 14.h),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Text(
                                              data.vendor_about!
                                                      .nearestbranch ??
                                                  'The Bio is not yet published stay tuned',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10.h),
                                        Row(
                                          children: [
                                            Icon(Icons.email,
                                                color: const Color(0xFF8B6C6C),
                                                size: 14.h),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Text(
                                              data.vendor_about!.email!,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10.h),
                                        Text(
                                          "Bio",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14.sp,
                                          ),
                                        ),
                                        SizedBox(height: 10.h),
                                        Text(
                                          data.vendor_about!.bio!,
                                          style: TextStyle(fontSize: 12.sp),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                              alignment: Alignment.center,
                              child: Text(
                                'Coming Soon.........',
                                style: headerstyle.copyWith(
                                  color: ColorConstant.blackColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                              alignment: Alignment.center,
                              child: Text(
                                'Coming Soon.........',
                                style: headerstyle.copyWith(
                                  color: ColorConstant.blackColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                              alignment: Alignment.center,
                              child: Text(
                                'Coming Soon.........',
                                style: headerstyle.copyWith(
                                  color: ColorConstant.blackColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                              alignment: Alignment.center,
                              child: Text(
                                'Coming Soon.........',
                                style: headerstyle.copyWith(
                                  color: ColorConstant.blackColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                              alignment: Alignment.center,
                              child: Text(
                                'Coming Soon.........',
                                style: headerstyle.copyWith(
                                  color: ColorConstant.blackColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      const DottedLine(
                          dashRadius: 5,
                          dashColor: Color(0xffD9D9D9),
                          dashLength: 7),
                      SizedBox(height: 5.h),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 18.w, bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "POSTS",
                            style: TextStyle(
                                fontSize: 18.sp, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      data.feedPosts == null
                          ? nolistingfound()
                          : SizedBox(
                              height: 295.h,
                              width: double.infinity,
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: data.feedPosts?.length,
                                itemBuilder: (context, index) {
                                  FeedPost dataz = data.feedPosts![index];
                                  return PostCard(
                                    // subscribers: data.subscribers.toString(),
                                    // isLive: dataz.,
                                    image: dataz.image!,
                                    name: dataz.name!,
                                    caption: dataz.caption!,
                                    photo: dataz.photo!,
                                    subscribers: dataz.subscribers!.toString(),
                                  );
                                },
                              ),
                            ),
                      const DottedLine(
                          dashRadius: 5,
                          dashColor: Color(0xffD9D9D9),
                          dashLength: 7),
                      SizedBox(height: 5.h),
                      Padding(
                        padding: EdgeInsets.only(left: 18.w, top: 10.h),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Live Prizes",
                            style: TextStyle(
                                fontSize: 18.sp, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      data.live_prizes == null || data.live_prizes?.length == 0
                          ? nolistingfound()
                          : SizedBox(
                              height: 260,
                              width: double.infinity,
                              child: SwapablePostCard(post: data.live_prizes!)),
                      const DottedLine(
                          dashRadius: 5,
                          dashColor: Color(0xffD9D9D9),
                          dashLength: 7),
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "All Products",
                            textAlign: TextAlign.left,
                            style: headerstyle.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: ColorConstant.blackColor),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                        ],
                      ),
                      data.all_products == null
                          ? nolistingfound() // Show this widget when products are null
                          : SingleChildScrollView(
                              physics:
                                  const BouncingScrollPhysics(), // Enable scrolling with a bounce effect
                              scrollDirection:
                                  Axis.vertical, // Scroll vertically if needed
                              child: Wrap(
                                spacing: 5.w, // Horizontal space between items
                                runSpacing: 15.h, // Vertical space between rows
                                children: List.generate(
                                  data.all_products?.length ??
                                      0, // Safely handle null length
                                  (index) {
                                    BrandNewModel res =
                                        data.all_products![index];

                                    return InkWell(
                                      onTap: () {
                                        print("tata ${res.id}");
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //     builder: (context) =>
                                        //         ProductDetailScreen(
                                        //       productId: res.id,
                                        //     ),
                                        //   ),
                                        // );
                                      },
                                      child: SizedBox(
                                        width: (MediaQuery.of(context)
                                                    .size
                                                    .width -
                                                30.w) /
                                            2, // Dynamically adjust to fit two items per row
                                        child: Card(
                                          clipBehavior: Clip.antiAlias,
                                          shadowColor: const Color(0xff3D215F)
                                              .withOpacity(0.5),
                                          elevation: 9,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 5.w),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          child: AllProductDetailWidget(
                                            posttype: res.post_type_id,
                                            membershipid:
                                                res.userdetails?.membership_id,
                                            id: int.tryParse(res.id),
                                            discountpercentage: res
                                                .discount_percentage
                                                ?.toInt(),
                                            productImage: res.image,
                                            Vimage: res.userdetails!.photo!,
                                            avg_rating:
                                                res.avg_rating?.toDouble(),
                                            comment:
                                                res.commentcount.toString(),
                                            discounttedPrice:
                                                res.discounted_price.toString(),
                                            distance: res.shortestDistance,
                                            issponsored:
                                                res.userdetails!.sponsored!,
                                            lefttile: "All Products",
                                            membershipColor: res
                                                .userdetails!.membership_color,
                                            membershipTitle: res
                                                .userdetails!.membership_title,
                                            offer: res.offers,
                                            price: res.price,
                                            shortestDistance:
                                                res.shortestDistance,
                                            similarproductCount:
                                                res.similarProductCount,
                                            title: res.title,
                                            vendorname: res.userdetails!.name,
                                            wow: res.wow,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                    ],
                  ),
                )
              ],
            );
          },
          error: (error, stackTrace) => Text(error.toString()),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }

  // Widget buildTabContent(String category, String name) {
  //   final adsList = ref.watch(fetchAdsProvider);

  //   // Use ref.watch to get search results based on category
  //   final SearchProductModels = ref.watch(getVendorProfileDataProvider(
  //     widget.vendorName.replaceAll(" ", ''),
  //     // category: category,
  //   ));

  //   return SearchProductModels.when(
  //     loading: () {
  //       // Check if ads are loading and display loading indicator
  //       if (adsList.isLoading) {
  //         return const Center(child: CircularProgressIndicator());
  //       }
  //       // Check for errors when loading ads
  //       else if (adsList.hasError) {
  //         print("Error loading ads: ${adsList.error}");
  //         return Center(child: Text('Error loading ads: ${adsList.error}'));
  //       }
  //       // Show ad if available and non-null
  //       else if (adsList.value != null && adsList.value!.isNotEmpty) {
  //         final ad = adsList.value!.first; // Get the first ad
  //         return Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             // Safely display the ad image
  //             Image.network(
  //               ad.image ?? '', // Default to empty string if null
  //               errorBuilder: (context, error, stackTrace) =>
  //                   const Icon(Icons.error),
  //             ),
  //             // Display ad ID safely
  //           ],
  //         );
  //       }
  //       return const Center(child: Text('No ads available.'));
  //     },
  //     // Handle errors in the search results
  //     error: (err, stack) => Center(child: Text('Error: $err')),
  //     data: (data) {
  //       // if (data.) {
  //       //   return const Center(child: Text('No results found.'));
  //       // }
  //       // Display search results in a grid
  //       return Container();
  //     },
  //   );
  // }

  // Widget _buildHomeTab(List<VendorResponse> data, String text) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       const SizedBox(height: 10),
  //       Padding(
  //         padding: EdgeInsets.symmetric(horizontal: 16.w),
  //         child: Text(
  //           text,
  //           style: TextStyle(
  //             fontSize: 14.sp,
  //             fontWeight: FontWeight.w700,
  //             color: Colors.black,
  //           ),
  //         ),
  //       ),
  //       SizedBox(height: 16.h),

  //       // Wrap GridView.builder with Expanded to avoid layout issues
  //       Expanded(
  //         child: GridView.builder(
  //           //  physics: const NeverScrollableScrollPhysics(),
  //           scrollDirection: Axis.vertical,
  //           shrinkWrap: true,
  //           padding: const EdgeInsets.only(left: 10, right: 5, top: 1),
  //           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
  //             crossAxisCount: 2,
  //             crossAxisSpacing: 5.0,
  //             mainAxisSpacing: 5.0,
  //             childAspectRatio: 0.7,
  //           ),
  //           itemCount: data.length,
  //           itemBuilder: (context, index) {
  //             final post = data[index];
  //             return InkWell(
  //               // onTap: () => Navigator.push(
  //               //   context,
  //               //   MaterialPageRoute(
  //               //     builder: (context) =>
  //               //         ProductDetailScreen(productId: post.id!),
  //               //   ),
  //               // ),
  //               child: Container(
  //                 margin: const EdgeInsets.only(top: 2),
  //                 padding: const EdgeInsets.all(3),
  //                 decoration: BoxDecoration(
  //                   borderRadius: BorderRadius.circular(10),
  //                   border: Border.all(
  //                     color: Colors.grey,
  //                     width: 0.2,
  //                   ),
  //                 ),
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.stretch,
  //                   mainAxisAlignment: MainAxisAlignment.start,
  //                   children: [
  //                     SizedBox(
  //                       height: 2.h,
  //                     ),
  //                     // Image display with Skeleton placeholder
  //                     Skeleton.replace(
  //                       width: productCardWidth,
  //                       child: Container(
  //                         margin: const EdgeInsets.only(right: 2, top: 4),
  //                         width: productCardWidth,
  //                         height: 100.h,
  //                         decoration: const BoxDecoration(
  //                             // image: DecorationImage(
  //                             //   image: NetworkImage(post.image!),
  //                             //   fit: BoxFit.fill,
  //                             // ),
  //                             ),
  //                       ),
  //                     ),
  //                     SizedBox(height: 9.h),

  //                     // Title text with skeleton placeholder
  //                     Skeleton.replace(
  //                       height: 15.h,
  //                       child: SizedBox(
  //                         height: 30.h,
  //                         child: Text(
  //                           post.vendor!.name!,
  //                           maxLines: 2,
  //                           overflow: TextOverflow.ellipsis,
  //                           style: TextStyle(
  //                             fontSize: 12.sp,
  //                             color: Colors.black,
  //                             fontWeight: FontWeight.w700,
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                     SizedBox(height: 4.h),

  //                     // Price and username section
  //                     Row(
  //                       children: [
  //                         Text(
  //                           "RS 100",
  //                           style: TextStyle(fontSize: 14.sp),
  //                         ),
  //                       ],
  //                     ),
  //                     SizedBox(height: 2.h),

  //                     // Username with skeleton placeholder
  //                     Skeleton.replace(
  //                       width: productCardWidth,
  //                       child: SizedBox(
  //                         width: productCardWidth,
  //                         child: Text(
  //                           ' post.username!',
  //                           overflow: TextOverflow.ellipsis,
  //                           style: TextStyle(
  //                             fontSize: 13.sp,
  //                             fontWeight: FontWeight.w400,
  //                             color: Colors.black,
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                     SizedBox(height: 12.h),

  //                     // Views and pickup location section
  //                     const Row(
  //                       mainAxisSize: MainAxisSize.min,
  //                       children: [
  //                         Icon(
  //                           Icons.visibility,
  //                           size: 15,
  //                           color: Color(0xff888888),
  //                         ),
  //                         // Text(
  //                         //  ' "${post.visits!}views"',
  //                         //   style: TextStyle(
  //                         //     fontSize: 9.sp,
  //                         //   ),
  //                         // ),
  //                         Spacer(),
  //                         // Text(
  //                         //   (post.pickup != null && post.pickup!.isNotEmpty)
  //                         //       ? post.pickup!
  //                         //           .split(',')
  //                         //           .map((s) => s
  //                         //               .trim()) // Split by comma and trim spaces
  //                         //           .toList() // Convert to a list
  //                         //           .reversed // Reverse the list
  //                         //           .elementAt(1) // Get the second last item
  //                         //       : "Kathmandu", // Fallback if pickup is null or empty
  //                         //   overflow: TextOverflow.ellipsis, // Prevent overflow
  //                         //   style: TextStyle(
  //                         //     fontSize: 9.sp,
  //                         //   ),
  //                         // ),
  //                         SizedBox(
  //                           width: 2.5,
  //                         )
  //                       ],
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             );
  //           },
  //         ),
  //       ),
  //     ],
  //   );
  // }
}

class DottedContainer extends StatelessWidget {
  final String? firstImage;
  final List<Deal>? deals;
  final String vname;

  const DottedContainer(
      {super.key,
      required this.firstImage,
      required this.deals,
      required this.vname});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: SizedBox(
        height: 200.h,
        child: Row(
          children: [
            _buildFirstItem(firstImage!, vname),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: deals?.length ?? 0,
                itemBuilder: (context, index) {
                  final data = deals![index];
                  return buildDealItemWidget(data: data);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFirstItem(String firstImage, String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: DottedBorder(
        color: Colors.black,
        strokeWidth: 2,
        borderType: BorderType.RRect,
        radius: const Radius.circular(12),
        dashPattern: const [6, 5],
        child: Stack(
          children: [
            SizedBox(
              width: 120.w,
              height: 200.h,
              child: Image.network(
                firstImage ?? 'https://via.placeholder.com/120',
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              left: 20.w,
              bottom: 10.h,
              child: Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class buildDealItemWidget extends StatelessWidget {
  const buildDealItemWidget({
    super.key,
    required this.data,
  });

  final Deal data;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 2.w),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: DottedBorder(
        color: const Color(0xffD9D9D9),
        strokeWidth: 2,
        borderType: BorderType.RRect,
        radius: const Radius.circular(12),
        dashPattern: const [6, 5],
        child: Column(
          children: [
            SizedBox(height: 30.h),
            Image.network(
              data.image ?? 'https://via.placeholder.com/110',
              height: 109.h,
              width: 110.w,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 20.h),
            SizedBox(
              height: 30.h,
              width: 110.w,
              child: ElevatedButton(
                style: ButtonStyle(
                  padding: WidgetStateProperty.all(EdgeInsets.zero),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  backgroundColor: WidgetStateProperty.all(
                    const Color(0xff362677),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  data.discount_percentage == null
                      ? '0%'
                      : '${data.discount_percentage}%',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12.sp,
                      color: ColorConstant.whiteColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class VendorFirstTabBarSection extends StatefulWidget {
  final TabController tabController;
  final VendorCard data;
  final VendorAbout vabout;

  const VendorFirstTabBarSection({
    Key? key,
    required this.tabController,
    required this.data,
    required this.vabout,
  }) : super(key: key);

  @override
  State<VendorFirstTabBarSection> createState() =>
      _VendorFirstTabBarSectionState();
}

class _VendorFirstTabBarSectionState extends State<VendorFirstTabBarSection> {
  double _containerHeight = 540.h;

  @override
  void initState() {
    super.initState();

    // Add a listener to the tab controller
    widget.tabController.addListener(() {
      setState(() {
        // Adjust the height dynamically based on the selected tab
        if (widget.tabController.index == 0) {
          _containerHeight = 540.h; // Height for the first tab
        } else {
          _containerHeight = 400.h; // Height for the second tab
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TabBar(
          controller: widget.tabController,
          indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(
              width: 4,
              color: Color(0xFF646464),
            ),
          ),
          isScrollable: true,
          labelPadding: const EdgeInsets.only(left: 0, right: 30),
          tabs: const [
            Tab(
              text: "Home",
            ),
            Tab(
              text: "About",
            ),
          ],
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          height: _containerHeight,
          child: TabBarView(
            controller: widget.tabController,
            children: [
              // BigContainer(
              //   memebertitle: widget.data.membership_title!,
              //   lat: double.tryParse(data.vendor_card! ?? '0.0') ?? 0.0,
              //   long: double.tryParse(data.vendor_card! ?? '0.0') ?? 0.0,
              //   title: widget.data.name!,
              //   logo: widget.data.photo!,
              //   contact: widget.data.phone ?? '9812457859',
              //   storyCount: widget.data.storycount!.toString(),
              //   membershipTitle: widget.data.membership_title!,
              //   deals_circle: '0',
              //   total_connections: "0",
              //   total_prize_worth: '0',
              //   location: widget.data.nearestbranch.toString(),
              //   Cnumber: widget.data.phone ?? '9845612345',
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.w, top: 32.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Opening hours:\n${(jsonDecode(widget.vabout.opening_hours!) as List).map((e) => '${e['day']}: ${e['closed'] ? 'Closed' : '${e['from'] ?? 'N/A'} - ${e['to'] ?? 'N/A'}'}').join('\n')}",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 12.sp)),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            Icon(Icons.phone,
                                color: const Color(0xFF8B6C6C), size: 14.h),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              widget.vabout.phone ?? '',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            Icon(Icons.location_on,
                                color: const Color(0xFF8B6C6C), size: 14.h),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              widget.vabout.nearestbranch ??
                                  'The Bio is not yet published stay tuned',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            Icon(Icons.email,
                                color: const Color(0xFF8B6C6C), size: 14.h),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              widget.vabout.email!,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          "Bio",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          widget.vabout.bio!,
                          style: TextStyle(fontSize: 12.sp),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 24.w, top: 32.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "Opening hours:\n${(jsonDecode(widget.vabout.opening_hours!) as List).map((e) => '${e['day']}: ${e['closed'] ? 'Closed' : '${e['from'] ?? 'N/A'} - ${e['to'] ?? 'N/A'}'}').join('\n')}",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 12.sp)),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Icon(Icons.phone,
                          color: const Color(0xFF8B6C6C), size: 14.h),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        widget.vabout.phone ?? '',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Icon(Icons.location_on,
                          color: const Color(0xFF8B6C6C), size: 14.h),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        widget.vabout.nearestbranch ??
                            'The Bio is not yet published stay tuned',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Icon(Icons.email,
                          color: const Color(0xFF8B6C6C), size: 14.h),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        widget.vabout.email!,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "Bio",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    widget.vabout.bio!,
                    style: TextStyle(fontSize: 12.sp),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BigContainer extends StatelessWidget {
  final String title;
  final String logo;
  final String contact;
  final String storyCount;
  final String membershipTitle;
  final bool hasSpo;
  final String deals_circle,
      total_prize_worth,
      total_connections,
      location,
      Cnumber;
  final double long, lat;
  final String memebertitle;

  // Constructor
  const BigContainer(
      {required this.lat,
      required this.long,
      super.key,
      required this.title,
      required this.logo,
      required this.contact,
      required this.storyCount,
      required this.membershipTitle,
      this.hasSpo = false, // Default value
      required this.deals_circle,
      required this.total_connections,
      required this.total_prize_worth,
      required this.location,
      required this.Cnumber,
      required this.memebertitle});

  Future<void> _openGoogleMap(double latitude, double longitude) async {
    final Uri googleMapsUrl =
        Uri.parse('https://www.google.com/maps/search/?q=$latitude,$longitude');

    if (await canLaunchUrl(googleMapsUrl)) {
      await launchUrl(googleMapsUrl, mode: LaunchMode.externalApplication);
    } else {
      print("Could not open Google Maps");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: DottedBorder(
        color: const Color(0xFF6D1A49),
        strokeWidth: 1,
        borderType: BorderType.RRect,
        radius: const Radius.circular(12),
        dashPattern: const [7, 5],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.file_download_outlined,
                    color: Color(0xFF6D1A49),
                  ),
                  Icon(
                    Icons.more_vert_rounded,
                    color: Color(0xFF6D1A49),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      "Connect",
                      style: TextStyle(fontSize: 9.sp),
                    ),
                    Text(
                      "Pass",
                      style: TextStyle(fontSize: 9.sp),
                    )
                  ],
                ),
                DottedBorder(
                  color: const Color(0xff6d1a49),
                  strokeWidth: 2,
                  borderPadding: const EdgeInsets.all(3),
                  dashPattern: const [9, 5],
                  borderType: BorderType.Circle,
                  child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 40,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(logo),
                          radius: 60,
                          backgroundColor: Colors.white,
                        ),
                      )),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/icon/domestic_brand.png",
                      width: 50,
                      height: 50,
                      color: Colors.grey,
                    ),
                    Text(
                      membershipTitle,
                      style: TextStyle(fontSize: 9.sp),
                    ),
                    // Text(
                    //   "Exclusive",
                    //   style: TextStyle(fontSize: 9.sp),
                    // ),
                    // Text(
                    //   "Brand",
                    //   style: TextStyle(fontSize: 9.sp),
                    // )
                  ],
                ),
              ],
            ),
            SizedBox(height: 10.sp),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    title,
                    style: TextStyle(
                        fontSize: 24.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () async {
                            // Use Google Maps app-specific URL scheme
                            final Uri mapsIntentUrl = Uri.parse(
                                'https://www.google.com/maps/dir/?api=1&destination=$lat,$long');

                            // Fallback check
                            if (await canLaunchUrl(mapsIntentUrl)) {
                              await launchUrl(
                                mapsIntentUrl,
                                mode: LaunchMode.externalApplication,
                              );
                            } else {
                              print(
                                  "Could not open Google Maps using intent URL");
                            }
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: const Color(0xFF370C6B),
                                size: 15.w,
                              ),
                              Text(
                                "Open",
                                style: TextStyle(
                                  fontSize: 9.sp,
                                  color: const Color(0xFF370C6B),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Icon(
                          Icons.directions,
                          color: const Color(0xFF370C6B),
                          size: 15.w,
                        ),
                        Text(
                          "Directions",
                          style: TextStyle(
                            fontSize: 9.sp,
                            color: const Color(0xFF370C6B),
                          ),
                        ),
                      ],
                    ),
                    location == 'null'
                        ? const SizedBox()
                        : Text(
                            location,
                            style: TextStyle(
                              fontSize: 9.sp,
                              color: const Color(0xFF370C6B),
                            ),
                          )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.phone,
                          color: const Color(0xFF370C6B),
                          size: 15.w,
                        ),
                        Text(
                          "Customer Service",
                          style: TextStyle(
                            fontSize: 9.sp,
                            color: const Color(0xFF370C6B),
                          ),
                        ),
                        SizedBox(width: 5.w),
                      ],
                    ),
                    Text(
                      Cnumber,
                      style: TextStyle(
                        fontSize: 9.sp,
                        color: const Color(0xFF370C6B),
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
                margin: EdgeInsets.only(top: 5.h),
                width: MediaQuery.sizeOf(context).width,
                color: const Color(0xFF4B004B),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            total_connections,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 13.sp,
                                color: Colors.white),
                          ),
                          Text(
                            "Connections",
                            style:
                                TextStyle(fontSize: 10.sp, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(width: 15.w),
                      Column(
                        children: [
                          Text(
                            deals_circle,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 13.sp,
                                color: Colors.white),
                          ),
                          Text(
                            "DealzCircle",
                            style:
                                TextStyle(fontSize: 10.sp, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(width: 15.w),
                      Column(
                        children: [
                          Text(
                            "Rs.$total_prize_worth",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 13.sp,
                                color: Colors.white),
                          ),
                          Text(
                            "Prize Worth",
                            style:
                                TextStyle(fontSize: 10.sp, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  color: const Color(0xFF4B004B),
                  width: MediaQuery.sizeOf(context).width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: Text(
                      "smartbazaar.com.np/$title",
                      style: const TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Positioned(
                  bottom:
                      -40, // Adjust based on how much the CircleAvatar should overlap
                  left: MediaQuery.sizeOf(context).width / 2 -
                      50, // Center the avatar
                  child: ClipOval(
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Image.asset(
                        'assets/images/zoomlogo.png',
                        fit: BoxFit.cover,
                        width: 140,
                        height: 140,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            SizedBox(height: 40.h),
            InkWell(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => ScratchWinContainer(
                //         ontap: () {},
                //       ),
                //     ));
              },
              child: Padding(
                padding: EdgeInsets.only(left: 4.h, bottom: 5.h),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Connect",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                            color: const Color(0xff370C6B),
                          ),
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Shop",
                      style: TextStyle(
                          color: const Color(0xFF4B004B),
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    VerticalDivider(
                      thickness: 2.w,
                      color: const Color(0xFF4B004B),
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(
                          color: const Color(0xFF4B004B),
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    VerticalDivider(
                      thickness: 2.w,
                      color: const Color(0xFF4B004B),
                    ),
                    Text(
                      "Feed",
                      style: TextStyle(
                          color: const Color(0xFF4B004B),
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    VerticalDivider(
                      thickness: 2.w,
                      color: const Color(0xFF4B004B),
                    ),
                    Text(
                      "FreePrizes",
                      style: TextStyle(
                          color: const Color(0xFF4B004B),
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    VerticalDivider(
                      thickness: 2.w,
                      color: const Color(0xFF4B004B),
                    ),
                    Text(
                      "Brands",
                      style: TextStyle(
                          color: const Color(0xFF4B004B),
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    Image.asset('assets/images/arrow_down.png')
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

// class VendorSearchContainer extends StatelessWidget {
//   Function(String)? MYonchnage;
//   TextEditingController controller;
//   final Function(bool)? onSearchFocusChanged;
//   final String img;

//   VendorSearchContainer(
//       {super.key,
//       required this.MYonchnage,
//       required this.controller,
//       required this.img,
//       required this.onSearchFocusChanged});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 140.h,
//       decoration: const BoxDecoration(
//         borderRadius: BorderRadius.only(
//             bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
//         gradient: LinearGradient(colors: [
//           Color(0xFF85237C),
//           Color(0xFF5C1E56),
//         ], begin: Alignment.topLeft, end: Alignment.bottomRight),
//       ),
//       child: Column(
//         children: [
//           const SizedBox(
//             height: 40,
//           ),
//           Row(
//             children: [
//               const SizedBox(
//                 width: 10,
//               ),
//               InkWell(
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//                 child: const Icon(
//                   Icons.arrow_back_ios,
//                   color: Colors.white,
//                 ),
//               ),
//               const SizedBox(
//                 width: 30,
//               ),
//               SizedBox(
//                   height: 42.h,
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         padding: EdgeInsets.only(
//                             left: 15.w, top: 3.h, bottom: 3.h, right: 5.w),
//                         decoration: BoxDecoration(
//                           color: Colors.transparent,
//                           border: Border.all(color: Colors.white, width: 0.1),
//                           borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(20.r),
//                             bottomLeft: Radius.circular(20.r),
//                           ),
//                         ),
//                         child: CircleAvatar(
//                           // radius: 10,
//                           // radius: 20,
//                           maxRadius: 15,
//                           backgroundImage: NetworkImage(
//                             scale: 1,
//                             img,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         width: 200.w,
//                         // height: 100.h,
//                         padding: EdgeInsets.symmetric(vertical: 6.h),
//                         decoration: const BoxDecoration(color: Colors.white),

//                         child: TextField(
//                           cursorHeight: 13.h,
//                           onChanged: MYonchnage,
//                           //  controller: searchController,
//                           decoration: InputDecoration(
//                             enabledBorder: InputBorder.none,
//                             border: InputBorder.none,
//                             focusedBorder: InputBorder.none,
//                             hintText: "   Search MyPower BizSpace",
//                             hintStyle: TextStyle(fontSize: 11.sp),
//                             isCollapsed: true,
//                             // contentPadding: EdgeInsets.symmetric(
//                             //     vertical: 18.h, horizontal: 15.w),
//                             disabledBorder: InputBorder.none,
//                             isDense: true,
//                             enabled: true,
//                           ),
//                         ),
//                       ),
//                       InkWell(
//                         onTap: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) =>
//                                     BusinessTabScreen(query: controller.text),
//                               ));
//                         },
//                         child: Container(
//                           padding: EdgeInsets.symmetric(
//                               horizontal: 10.w, vertical: 5.h),
//                           decoration: BoxDecoration(
//                             border: Border.all(color: Colors.white, width: 0.1),
//                             color: Colors.transparent,
//                             borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(15.r),
//                               bottomRight: Radius.circular(15.r),
//                             ),
//                           ),
//                           child: Padding(
//                             padding: EdgeInsets.all(3.r),
//                             child: Icon(
//                               Icons.search,
//                               color: Colors.white,
//                               size: 20.sp,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   )),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
