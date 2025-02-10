import 'dart:convert';

import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/bussiness_tab_screen/view/business_tab_screen.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/home/model/search_product_model.dart';
import 'package:smartbazar/features/product_details/constant/all_product_detail_widget.dart';
import 'package:smartbazar/features/product_details/constant/product_detail_widget.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/scratch_win/screen/scratch_card.dart';
import 'package:smartbazar/features/vendor/vendor_profile/api/get_vendor_by_brand_api.dart';
import 'package:smartbazar/features/vendor/vendor_profile/api/get_vendor_posts_api.dart';
import 'package:smartbazar/features/vendor/vendor_profile/api/vendor_all_products_api.dart';
import 'package:smartbazar/features/vendor/vendor_profile/api/vendor_card_api.dart';
import 'package:smartbazar/features/vendor/vendor_profile/api/vendor_product_search_api.dart';
import 'package:smartbazar/features/vendor/vendor_profile/api/vendor_profile_api.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_name.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_search_model.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/venodr_search_model.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/postcard.dart';
import 'package:smartbazar/main.dart';
import 'package:url_launcher/url_launcher.dart';

class VendorHomeScreen extends ConsumerStatefulWidget {
  final int vid;
  final String vendorName;

  const VendorHomeScreen(
      {super.key, required this.vid, required this.vendorName});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _VendorHomeScreenState();
}

class _VendorHomeScreenState extends ConsumerState<VendorHomeScreen>
    with TickerProviderStateMixin {
  int? _categorieslength;
  final List<String> categories = [
    "PRODUCTS",
    "Used",
    "Services",
    "Events",
    "B2B",
    "JOBS",
    "Grocery"
  ];
  Map<String, String>? _followrespo;
  List<VendorSearchModel>? vendorsearchrespnse;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _vendorsearchController = TextEditingController();
  List<GetOnlyData>? searchResult;
  final _debouncer = BehaviorSubject<String>();
  bool _showSearchProductModels = false;
  final bool _vendorsearchResullts = false;
  late TabController _tabController;
  int _postType = 0; // Default to 'Home' tab with postType 0
  String? _vendorimage;

  // Future<void> gets() async {
  //   final a = followvendor("9").then(
  //     (value) {
  //       print("raju ${value['msg']}");
  //     },
  //   );
  // }

  int? myselectedindex; // Track selected index
  double? dynamicheight;
  int? tabsize;
  @override
  void initState() {
    _categorieslength = categories.length;
    // gets();
    super.initState();
    myselectedindex = 0;
    dynamicheight = 410.0.h;
    tabsize = 80;

    _tabController = TabController(length: 6, vsync: this);

    // Listen for tab changes
    _tabController.addListener(() {
      setState(() {
        tabsize = _tabController.index == 1 ? 520 : 80;
        alldata = [];
        _postType = _tabController
            .index; // Update the postType based on the selected tab
      });
    });

    // _vendorsearchController.addListener(() {
    //   _debouncer.add(_vendorsearchController.text);
    // });
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
  // VendorResponse? vendorcard;
  // Future<void> searchvendor(String name) async {
  //   await ref.watch(searchVendorProductProvider(vid, name)).whenData(
  //     (value) {
  //       setState(() {
  //         vendorsearchrespnse = value.data?.posts?.data!;
  //       });
  //       print("bibash ${vendorsearchrespnse}");
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final allproductsresp = ref.watch(getVendorAllProductsProvider(widget.vid));
    Future<void> refresh() async {
      ref.refresh(getVendorAllProductsProvider(widget.vid));
    }

    Future<void> searchvendor(String name) async {
      final response =
          await ref.read(searchVendorProductProvider(widget.vid, name).future);

      setState(() {
        vendorsearchrespnse = [];
        vendorsearchrespnse = response.data?.posts?.data ?? [];
      });

      print("bibash $vendorsearchrespnse"); // Now this will print in UI
    }

    // final getvendordarcard =
    //     ref.watch(getVendorCardProvider('techstore')).whenData(
    //   (value) async {
    //     vendorcard = await value;
    //   },
    // );

    final SearchProductModels =
        ref.watch(searchProvider(_searchController.text));

    // searchvendor('acer');

    final liveandpost = ref.watch(getvendorpostandprizesProvider((widget.vid)));

    OverlayEntry? overlayEntry;

    void removeOverlay() {
      if (overlayEntry != null) {
        overlayEntry!.remove();
        overlayEntry = null; // Set to null after removing
      }
    }

    debugPrint('Search Results: ${SearchProductModels.asData?.value}');

    void showOverlay(
        BuildContext context, List<SearchProductModel> suggestions) {
      removeOverlay(); // Remove existing overlay before adding a new one

      overlayEntry = OverlayEntry(
        builder: (context) => Positioned(
          left: 20,
          right: 20,
          top: 90, // Position below the search bar
          child: Material(
            elevation: 2,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(4)),
              child: ListView.separated(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: suggestions.length,
                itemBuilder: (context, index) {
                  String data = suggestions[index].name;
                  return ListTile(
                    dense: true,
                    title: Text(
                      softWrap: true,
                      data,
                      style: headerstyle.copyWith(
                          color: ColorConstant.blackColor, fontSize: 9),
                    ),
                    onTap: () {
                      _searchController.text = data;
                      removeOverlay();
                    },
                  );
                },
                separatorBuilder: (context, index) => const Divider(),
              ),
            ),
          ),
        ),
      );

      Overlay.of(context).insert(overlayEntry!);
    }

    return Scaffold(
      key: _key,
      extendBody: true,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Scrollable content
          Positioned.fill(
            top: 156.h, // Space for the search bar
            child: SingleChildScrollView(
              child: ref.watch(getVendorCardProvider(widget.vid)).when(
                    data: (vendorcard) {
                      _vendorimage = vendorcard.data?.vendor_card!.photo!;

                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (vendorcard.data != null)
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5.h),
                              child: DottedContainer(
                                  firstImage:
                                      vendorcard.data?.vendor_card?.photo,
                                  deals: vendorcard.data?.deals,
                                  vname: vendorcard.data!.vendor_card!.name!),
                            ),
                          if (vendorcard.data != null)
                            BigContainer(
                              lat: double.tryParse(
                                  vendorcard.data!.vendor_card?.latitude ??
                                      '0')!,
                              long: double.tryParse(
                                vendorcard.data!.vendor_card?.longitude ?? '0',
                              )!, // Assuming longitude is available in vendor_card
                              id: vendorcard.data!.vendor_card!
                                  .membership_id!, // Assuming id is available in the data
                              title: vendorcard.data!.vendor_card!
                                  .name!, // Assuming title is in vendor_card
                              logo: vendorcard.data!.vendor_card!
                                  .photo!, // Assuming logo URL or widget is in vendor_card
                              contact: vendorcard.data!.vendor_card!
                                  .phone!, // Assuming contact info is in vendor_card
                              storyCount: vendorcard
                                  .data!.vendor_card!.storycount
                                  .toString(), // Assuming storyCount is in vendor_card
                              membershipTitle: vendorcard.data!.vendor_card!
                                  .membership_title!, // Assuming membershipTitle is in vendor_card
                              deals_circle: vendorcard.data!.vendor_card!
                                  .membership_title!, // Assuming dealsCircle is in vendor_card
                              total_connections:
                                  '0', // Assuming totalConnections is in vendor_card
                              total_prize_worth: vendorcard
                                  .data!.vendor_card!.prize_worth!
                                  .toString(), // Assuming totalPrizeWorth is in vendor_card
                              location:
                                  vendorcard.data!.vendor_card!.nearestbranch ??
                                      '', // Assuming location is in vendor_card
                              Cnumber: vendorcard.data!.vendor_card!
                                  .phone!, // Assuming contactNumber is in vendor_card
                              issubbed: vendorcard
                                          .data!.vendor_card!.subscribed ==
                                      'subscribed'
                                  ? true
                                  : false, // Assuming isSubscribed is in vendor_card
                              memebertitle: vendorcard.data!.vendor_card!
                                  .membership_title!, // Assuming memberTitle is in vendor_card
                            ),
                          SizedBox(
                            height: 10.h,
                          ),
                          const DottedLine(
                              dashRadius: 5,
                              dashColor: Color(0xffD9D9D9),
                              dashLength: 7),
                          SizedBox(
                            height: 10.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: TabBar(
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
                                Tab(text: "About"),
                                Tab(text: "BRANDS"),
                                Tab(text: "GET DIRECTIONS"),
                                Tab(text: "CUSTOMER SERVICE"),
                                Tab(text: "CAREER"),
                              ],
                            ),
                          ),
                          ref
                              .watch(getvendorbybrandnameProvider(widget.vid))
                              .when(
                                data: (data) {
                                  if (myselectedindex == 0) {
                                    alldata = data.data?.brandnew;
                                  }
                                  return Column(
                                    children: [
                                      SizedBox(
                                        width: double.infinity,
                                        height: tabsize?.toDouble(),
                                        child: TabBarView(
                                          controller: _tabController,
                                          children: [
                                            SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  // Search Field
                                                  SizedBox(
                                                    width: 5.w,
                                                  ),
                                                  AnimatedSwitcher(
                                                    duration: const Duration(
                                                        milliseconds: 300),
                                                    child: _isSearchFieldVisible
                                                        ? SizedBox(
                                                            key: const ValueKey(
                                                                'SearchField'),
                                                            width: 300.0,
                                                            child: TextField(
                                                              onSubmitted:
                                                                  (value) {},
                                                              controller:
                                                                  _vendorsearchController,
                                                              decoration:
                                                                  InputDecoration(
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        left:
                                                                            5),
                                                                hintText:
                                                                    "Search...",
                                                                filled: true,
                                                                fillColor: Colors
                                                                    .grey
                                                                    .withOpacity(
                                                                        0.1),
                                                                enabledBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Colors
                                                                        .grey
                                                                        .withOpacity(
                                                                            0.4),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      const BorderRadius
                                                                          .all(
                                                                          Radius.circular(
                                                                              10.0)),
                                                                ),
                                                                focusedBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Colors
                                                                        .blue
                                                                        .withOpacity(
                                                                            0.6),
                                                                    width: 1.5,
                                                                  ),
                                                                  borderRadius:
                                                                      const BorderRadius
                                                                          .all(
                                                                          Radius.circular(
                                                                              10.0)),
                                                                ),
                                                                suffixIcon:
                                                                    InkWell(
                                                                  onTap: () {
                                                                    setState(
                                                                        () {
                                                                      vendorsearchrespnse =
                                                                          [];
                                                                      searchvendor(
                                                                          _vendorsearchController
                                                                              .text);
                                                                    });
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .all(
                                                                            10),
                                                                    decoration:
                                                                        const BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .only(
                                                                        topRight:
                                                                            Radius.circular(10),
                                                                        bottomRight:
                                                                            Radius.circular(10),
                                                                      ),
                                                                      color: Colors
                                                                          .black, // Replace with `ColorConstant.blackColor`
                                                                    ),
                                                                    child:
                                                                        const Icon(
                                                                      Icons
                                                                          .search,
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
                                                                _isSearchFieldVisible =
                                                                    true;
                                                              });
                                                            },
                                                            icon: Container(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          5,
                                                                      vertical:
                                                                          5),
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10),
                                                                  color: ColorConstant
                                                                      .blackColor),
                                                              child: const Icon(
                                                                Icons.search,
                                                                color: ColorConstant
                                                                    .whiteColor,
                                                              ),
                                                            ),
                                                          ),
                                                  ),

                                                  SizedBox(
                                                    height: 50,
                                                    width: 750.w,
                                                    child: Row(
                                                      children: List.generate(
                                                          _categorieslength!,
                                                          (index) {
                                                        return GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              vendorsearchrespnse =
                                                                  [];
                                                              print(
                                                                  "raja $myselectedindex");
                                                              myselectedindex =
                                                                  index;


                                                              alldata = [
                                                                    data.data
                                                                        ?.brandnew,
                                                                    data.data
                                                                        ?.used,
                                                                    data.data
                                                                        ?.services,
                                                                    data.data
                                                                        ?.events,
                                                                    data.data
                                                                        ?.services,
                                                                    data.data
                                                                        ?.b2b,
                                                                    data.data
                                                                        ?.grocery
                                                                  ][index] ??
                                                                  [];
                                                            });
                                                          },
                                                          child: Container(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        10.0,
                                                                    vertical:
                                                                        5.h),
                                                            margin: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        10.w),
                                                            decoration:
                                                                BoxDecoration(
                                                              color: myselectedindex ==
                                                                      index
                                                                  ? ColorConstant
                                                                      .blackColor
                                                                  : Colors.grey[
                                                                      300],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            child: Text(
                                                              categories[index],
                                                              style: TextStyle(
                                                                color: myselectedindex ==
                                                                        index
                                                                    ? Colors
                                                                        .white
                                                                    : Colors
                                                                        .black,
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
                                            AnimatedContainer(
                                              margin: const EdgeInsets.all(5),
                                              duration: const Duration(
                                                  milliseconds: 500),
                                              curve: Curves.easeInOut,
                                              color: Colors.white,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 24.w, top: 32.h),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        if (data.data
                                                                    ?.vendor_about !=
                                                                null &&
                                                            data
                                                                    .data
                                                                    ?.vendor_about
                                                                    ?.bio
                                                                    ?.length !=
                                                                0)
                                                          if (data.data!
                                                                      .vendor_about !=
                                                                  null &&
                                                              data.data
                                                                      ?.vendor_about !=
                                                                  '')
                                                            Text(
                                                                "Opening hours:\n${(jsonDecode(data.data!.vendor_about!.opening_hours!) as List).map((e) => '${e['day']}: ${e['closed'] ? 'Closed' : '${e['from'] ?? 'N/A'} - ${e['to'] ?? 'N/A'}'}').join('\n')}",
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontSize:
                                                                        12.sp)),
                                                        SizedBox(height: 10.h),
                                                        if (data.data
                                                                ?.vendor_about !=
                                                            null)
                                                          Row(
                                                            children: [
                                                              Icon(Icons.phone,
                                                                  color: const Color(
                                                                      0xFF8B6C6C),
                                                                  size: 14.h),
                                                              SizedBox(
                                                                width: 10.w,
                                                              ),
                                                              if (data.data
                                                                      ?.vendor_about !=
                                                                  null)
                                                                Text(
                                                                  data
                                                                          .data
                                                                          ?.vendor_about!
                                                                          .phone ??
                                                                      '',
                                                                  style:
                                                                      TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontSize:
                                                                        12.sp,
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        SizedBox(height: 10.h),
                                                        Row(
                                                          children: [
                                                            Icon(
                                                                Icons
                                                                    .location_on,
                                                                color: const Color(
                                                                    0xFF8B6C6C),
                                                                size: 14.h),
                                                            SizedBox(
                                                              width: 10.w,
                                                            ),
                                                            if (data.data
                                                                    ?.vendor_about !=
                                                                null)
                                                              Text(
                                                                data
                                                                        .data
                                                                        ?.vendor_about!
                                                                        .nearestbranch ??
                                                                    'The Bio is not yet published stay tuned',
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      12.sp,
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10.h),
                                                        Row(
                                                          children: [
                                                            Icon(Icons.email,
                                                                color: const Color(
                                                                    0xFF8B6C6C),
                                                                size: 14.h),
                                                            SizedBox(
                                                              width: 10.w,
                                                            ),
                                                            if (data
                                                                    .data
                                                                    ?.vendor_about
                                                                    ?.email !=
                                                                null)
                                                              Text(
                                                                data
                                                                    .data!
                                                                    .vendor_about!
                                                                    .email!,
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      12.sp,
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10.h),
                                                        Text(
                                                          "Bio",
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 14.sp,
                                                          ),
                                                        ),
                                                        SizedBox(height: 10.h),
                                                        if (data
                                                                .data
                                                                ?.vendor_about
                                                                ?.bio !=
                                                            null)
                                                          Text(
                                                            data
                                                                .data!
                                                                .vendor_about!
                                                                .bio!,
                                                            style: TextStyle(
                                                                fontSize:
                                                                    12.sp),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            AnimatedContainer(
                                              duration: const Duration(
                                                  milliseconds: 500),
                                              curve: Curves.easeInOut,
                                              alignment: Alignment.center,
                                              child: Text(
                                                'Coming Soon.........',
                                                style: headerstyle.copyWith(
                                                  color:
                                                      ColorConstant.blackColor,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                            AnimatedContainer(
                                              duration: const Duration(
                                                  milliseconds: 500),
                                              curve: Curves.easeInOut,
                                              alignment: Alignment.center,
                                              child: Text(
                                                'Coming Soon.........',
                                                style: headerstyle.copyWith(
                                                  color:
                                                      ColorConstant.blackColor,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                            AnimatedContainer(
                                              duration: const Duration(
                                                  milliseconds: 500),
                                              curve: Curves.easeInOut,
                                              alignment: Alignment.center,
                                              child: Text(
                                                'Coming Soon.........',
                                                style: headerstyle.copyWith(
                                                  color:
                                                      ColorConstant.blackColor,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                            AnimatedContainer(
                                              duration: const Duration(
                                                  milliseconds: 500),
                                              curve: Curves.easeInOut,
                                              alignment: Alignment.center,
                                              child: Text(
                                                'Coming Soon.........',
                                                style: headerstyle.copyWith(
                                                  color:
                                                      ColorConstant.blackColor,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      vendorsearchrespnse == null ||
                                                  vendorsearchrespnse!
                                                      .isEmpty ??
                                              true
                                          ? (alldata?.isEmpty ?? true
                                              ? const Padding(
                                                  padding: EdgeInsets.all(40.0),
                                                  child: Center(
                                                    child: Text(
                                                        "No Listing available....."),
                                                  ),
                                                )
                                              : AnimatedContainer(
                                                  duration: const Duration(
                                                      milliseconds: 400),
                                                  child: SingleChildScrollView(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    child: Wrap(
                                                      spacing: 3.w,
                                                      children: List.generate(
                                                          alldata?.length ?? 0,
                                                          (index) {
                                                        BrandNewModel prod =
                                                            alldata![index];
                                                        return ProductDetailWidget(
                                                          lat: prod.userdetails
                                                              ?.latitude,
                                                          long: prod.userdetails
                                                              ?.longitude,
                                                          productid: prod.id,
                                                          posttype:
                                                              prod.post_type_id,
                                                          vendorid: prod
                                                              .userdetails!
                                                              .user_id,
                                                          onRefresh: () {
                                                            refresh();
                                                          },
                                                          membershipid: prod
                                                              .userdetails
                                                              ?.membership_id,
                                                          didcountpercentage:
                                                              prod.discount_percentage ??
                                                                  0,
                                                          lefttile: "TradeHub",
                                                          vendorname: prod
                                                                  .userdetails
                                                                  ?.name ??
                                                              "",
                                                          Vimage: prod
                                                                  .userdetails
                                                                  ?.photo ??
                                                              "",
                                                          avg_rating: prod
                                                                  .avg_rating
                                                                  ?.toDouble() ??
                                                              0,
                                                          comment: prod
                                                                  .commentcount
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
                                                          issponsored: prod
                                                                  .userdetails
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
                                                          price:
                                                              prod.price ?? "",
                                                          productImage:
                                                              prod.image,
                                                          shortestDistance:
                                                              prod.shortestDistance ??
                                                                  0.0,
                                                          similarproductCount:
                                                              prod.similarVendorProfileProductCount ??
                                                                  0,
                                                          title:
                                                              prod.title ?? "",
                                                          wow: prod.wow ?? "",
                                                        );
                                                      }),
                                                    ),
                                                  ),
                                                ))
                                          : SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Wrap(
                                                spacing: 3.w,
                                                children: List.generate(
                                                    vendorsearchrespnse
                                                            ?.length ??
                                                        0, (index) {
                                                  VendorSearchModel prod =
                                                      vendorsearchrespnse![
                                                          index];
                                                  return ProductDetailWidget(
                                                    lat: prod
                                                        .userdetails?.latitude,
                                                    long: prod
                                                        .userdetails?.longitude,
                                                    productid: prod.id!,
                                                    posttype: prod.postType,
                                                    vendorid: prod
                                                        .userdetails?.userId,
                                                    onRefresh: () {
                                                      refresh();
                                                    },
                                                    membershipid: prod
                                                        .userdetails
                                                        ?.membershipId,
                                                    didcountpercentage: prod
                                                        .discountPercentage
                                                        ?.toInt(),
                                                    lefttile: "TradeHub",
                                                    vendorname: prod.userdetails
                                                            ?.name ??
                                                        "",
                                                    Vimage: prod.userdetails
                                                            ?.photo ??
                                                        "",
                                                    avg_rating: prod.avgRating
                                                            ?.toDouble() ??
                                                        0,
                                                    comment: prod.commentCount
                                                            ?.toString() ??
                                                        "0",
                                                    discounttedPrice: prod
                                                            .discountedPrice
                                                            ?.toString() ??
                                                        "0",
                                                    distance: double.tryParse(prod
                                                            .userdetails
                                                            ?.shortestDistance
                                                            ?.toString() ??
                                                        "0"),
                                                    issponsored: prod
                                                            .userdetails
                                                            ?.sponsored ??
                                                        false,
                                                    membershipColor: prod
                                                            .userdetails
                                                            ?.membershipColor ??
                                                        "",
                                                    membershipTitle: prod
                                                            .userdetails
                                                            ?.membershipTitle ??
                                                        "",
                                                    offer: prod.wow ?? "",
                                                    price: prod.price ?? "",
                                                    productImage: prod.image,
                                                    shortestDistance: prod
                                                            .userdetails
                                                            ?.shortestDistance ??
                                                        0.0,
                                                    similarproductCount:
                                                        prod.similarProductCount ??
                                                            0,
                                                    title: prod.title ?? "",
                                                    wow: prod.wow ?? "",
                                                  );
                                                }),
                                              ),
                                            ),
                                    ],
                                  );
                                },
                                error: (error, stackTrace) =>
                                    const Text("login"),
                                loading: () => Shimmer.fromColors(
                                  baseColor: Colors.grey[300]!,
                                  highlightColor: Colors.grey[100]!,
                                  child: Container(
                                    height: 100,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.h),
                            child: const DottedLine(
                                dashRadius: 5,
                                dashColor: Color(0xffD9D9D9),
                                dashLength: 7),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 18.w, bottom: 10, top: 10),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "POSTS",
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          liveandpost.when(
                            data: (data) {
                              if (data.feedPosts.isEmpty) {
                                return Center(
                                    child:
                                        nolistingfound()); // ✅ Show "No Listing Found" if `feedPosts` is empty
                              }

                              return SizedBox(
                                width: double.infinity,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: data.feedPosts.map((dataz) {
                                      print("raja ${dataz.photo}");

                                      return PostCard(
                                        id: dataz.id,
                                        image: dataz.image ?? "",
                                        name: dataz.name ?? "Unknown",
                                        caption: dataz.caption ?? "",
                                        photo: dataz.photo ?? "",
                                        subscribers:
                                            dataz.subscribers?.toString() ??
                                                "0",
                                      );
                                    }).toList(),
                                  ),
                                ),
                              );
                            },
                            loading: () => SizedBox(
                              height: 295.h,
                              width: double.infinity,
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: 5, // ✅ Placeholder shimmer count
                                itemBuilder: (context, index) =>
                                    Shimmer.fromColors(
                                  baseColor: Colors.grey[300]!,
                                  highlightColor: Colors.grey[100]!,
                                  child: Container(
                                    width: 200.w,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10.w),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            error: (error, stack) => Center(
                              child: Text("Error: $error",
                                  style: const TextStyle(color: Colors.red)),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.h),
                            child: const DottedLine(
                                dashRadius: 5,
                                dashColor: Color(0xffD9D9D9),
                                dashLength: 7),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 18.w, top: 10.h),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Live Prizes",
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          liveandpost.when(
                            data: (data) {
                              if (data.live_prizes == null ||
                                  data.live_prizes!.isEmpty) {
                                return Center(
                                    child:
                                        nolistingfound()); // ✅ Shows "No Listing Found" when empty
                              }

                              return SingleChildScrollView(
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: data.live_prizes!.map((card) {
                                    return PostCard(
                                      id: card.id,
                                      // subscribers: data.subscribers.toString(),
                                      isLive: false,
                                      image: card.image!,
                                      name: card.name!,
                                      caption: card.caption ?? '',
                                      photo: card.photo!,
                                      subscribers: card.subscribers!.toString(),
                                    );
                                  }).toList(),
                                ),
                              );
                            },
                            loading: () => SizedBox(
                              height: 260,
                              width: double.infinity,
                              child: Shimmer.fromColors(
                                baseColor: Colors.grey[300]!,
                                highlightColor: Colors.grey[100]!,
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            error: (error, stack) => Center(
                              child: Text("Error: $error",
                                  style: const TextStyle(color: Colors.red)),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: const DottedLine(
                                dashRadius: 5,
                                dashColor: Color(0xffD9D9D9),
                                dashLength: 7),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "All Products",
                              textAlign: TextAlign.left,
                              style: headerstyle.copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: ColorConstant.blackColor),
                            ),
                          ),
                          allproductsresp.when(
                            data: (data) {
                              if (data.data.all_products == null ||
                                  data.data.all_products!.isEmpty) {
                                return Center(
                                    child:
                                        nolistingfound()); // ✅ Shows "No Listing Found" when empty
                              }

                              return SingleChildScrollView(
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.vertical,
                                child: Wrap(
                                  spacing: 5.w,
                                  runSpacing: 15.h,
                                  children: List.generate(
                                    data.data.all_products!.length,
                                    (index) {
                                      BrandNewModel res =
                                          data.data.all_products![index];

                                      return SizedBox(
                                        width:
                                            (MediaQuery.of(context).size.width -
                                                    30.w) /
                                                2,
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
                                            savedid: res.savedByLoggedUser
                                                    ?.map((e) => SavedPost(
                                                          id: e.id,
                                                          userId: e.userId,
                                                          postId: e.postId,
                                                          createdAt:
                                                              e.createdAt,
                                                          updatedAt:
                                                              e.updatedAt,
                                                        ))
                                                    .toList() ??
                                                [], // ✅ Ensured `null` safety

                                            onRefresh: () {
                                              refresh();
                                            },
                                            lat: res.userdetails?.latitude,
                                            long: res.userdetails?.longitude,
                                            productid: res.id,
                                            posttype: res.post_type_id,
                                            membershipid:
                                                res.userdetails?.membership_id,
                                            id: int.tryParse(res.id),
                                            didcountpercentage:
                                                res.discount_percentage ?? 0,
                                            productImage: res.image,
                                            Vimage:
                                                res.userdetails?.photo ?? "",
                                            avg_rating:
                                                res.avg_rating?.toDouble(),
                                            comment:
                                                res.commentcount.toString(),
                                            discounttedPrice: res
                                                    .discounted_price
                                                    ?.toString() ??
                                                "0",
                                            distance:
                                                res.shortestDistance ?? 0.0,
                                            issponsored:
                                                res.userdetails?.sponsored ??
                                                    false,
                                            lefttile: "All Products",
                                            membershipColor: res.userdetails
                                                    ?.membership_color ??
                                                "",
                                            membershipTitle: res.userdetails
                                                    ?.membership_title ??
                                                "",
                                            offer: res.offers ?? "",
                                            price: res.price ?? "0",
                                            shortestDistance:
                                                res.shortestDistance ?? 0.0,
                                            similarproductCount:
                                                res.similarVendorProfileProductCount ??
                                                    0,
                                            title: res.title ?? "No Title",
                                            vendorname: res.userdetails?.name ??
                                                "Unknown",
                                            wow: res.wow ?? "",
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              );
                            },
                            loading: () => SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              child: Wrap(
                                spacing: 5.w,
                                runSpacing: 15.h,
                                children: List.generate(
                                  6, // ✅ Show 6 placeholders during loading
                                  (index) => SizedBox(
                                    width: (MediaQuery.of(context).size.width -
                                            30.w) /
                                        2,
                                    child: Shimmer.fromColors(
                                      baseColor: Colors.grey[300]!,
                                      highlightColor: Colors.grey[100]!,
                                      child: Container(
                                        height: 200.h,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 5.w),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            error: (error, stack) => Center(
                              child: Text("Error: $error",
                                  style: const TextStyle(color: Colors.red)),
                            ),
                          )
                        ],
                      );
                    },
                    loading: () => SizedBox(
                      width: 100.w,
                      height: 100.h,
                      child: Center(
                        child: Image.asset(
                          'assets/images/preloader.gif',
                          width: 100.w,
                          height: 100.h,
                          fit: BoxFit
                              .contain, // Ensures the image fits within its bounds
                        ),
                      ),
                    ),
                    error: (err, stack) {
                      return Text("please login again $err");
                    },
                  ),
            ),
          ),

          // Fixed Search Bar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
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
                        height: 41.h,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                              child: _vendorimage != null
                                  ? CircleAvatar(
                                      radius: 17,
                                      backgroundImage:
                                          NetworkImage(_vendorimage!),
                                    )
                                  : const CircleAvatar(), // or any other widget you want to show if _vendorimage is null

                              // Empty child to maintain layout
                            ),
                            Container(
                              width: 200.w,
                              padding: EdgeInsets.symmetric(vertical: 9.h),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              child: TextField(
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                                controller: _searchController,
                                onTap: () {
                                  _onSearchFocusChanged(
                                      _searchController.text.isEmpty);
                                },
                                cursorHeight: 13.h,
                                onChanged: (value) {
                                  if (value.isNotEmpty) {
                                    SearchProductModels.whenData(
                                      (value) {
                                        showOverlay(context, value);
                                      },
                                    );
                                    // _showOverlay(context, [
                                    //   "Product 1",
                                    //   "Product 2",
                                    //   "Product 3"
                                    // ]);
                                  } else {
                                    removeOverlay();
                                  }
                                  setState(
                                      () {}); // Refresh UI when text changes
                                },
                                decoration: InputDecoration(
                                  enabledBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  hintText: "   Search MyPower BizSpace",
                                  hintStyle: TextStyle(fontSize: 11.sp),
                                  isCollapsed: true,
                                  disabledBorder: InputBorder.none,
                                  isDense: true,
                                  enabled: true,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                if (_searchController.text.trim().isNotEmpty) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => BusinessTabScreen(
                                        query: _searchController.text,
                                      ),
                                    ),
                                  );
                                }
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.w,
                                  vertical: 6.3.h,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 0.1,
                                  ),
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15.r),
                                    bottomRight: Radius.circular(15.r),
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
                  const Spacer(),
                  Container(
                    width: 80.w,
                    height: 6.h,
                    decoration: BoxDecoration(
                        color: ColorConstant.whiteColor,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    height: 5.h,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
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
        height: 180.h,
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
              width: 100.w,
              height: 180.h,
              child: Image.network(
                firstImage ?? 'https://via.placeholder.com/120',
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              left: 10.w,
              bottom: 10.h,
              child: Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 13.sp,
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
            SizedBox(height: 20.h),
            Image.network(
              data.image ?? 'https://via.placeholder.com/110',
              height: 90.h,
              width: 90.w,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 30.h),
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

// class VendorFirstTabBarSection extends StatefulWidget {
//   final TabController tabController;
//   final VendorCard data;
//   final VendorAbout vabout;

//   const VendorFirstTabBarSection({
//     Key? key,
//     required this.tabController,
//     required this.data,
//     required this.vabout,
//   }) : super(key: key);

//   @override
//   State<VendorFirstTabBarSection> createState() =>
//       _VendorFirstTabBarSectionState();
// }

// class _VendorFirstTabBarSectionState extends State<VendorFirstTabBarSection> {
//   double _containerHeight = 540.h;
//   // Future<void> follow() async {

//   //   // Map<String, String> _getfollow = await followvendor(data.membership_id);
//   // }

//   @override
//   void initState() {
//     super.initState();
//     // Add a listener to the tab controller
//     tabController.addListener(() {
//       setState(() {
//         // Adjust the height dynamically based on the selected tab
//         if (tabController.index == 0) {
//           _containerHeight = 540.h; // Height for the first tab
//         } else {
//           _containerHeight = 400.h; // Height for the second tab
//         }
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         TabBar(
//           controller: tabController,
//           indicator: const UnderlineTabIndicator(
//             borderSide: BorderSide(
//               width: 4,
//               color: Color(0xFF646464),
//             ),
//           ),
//           isScrollable: true,
//           labelPadding: const EdgeInsets.only(left: 0, right: 30),
//           tabs: const [
//             Tab(
//               text: "Home",
//             ),
//             Tab(
//               text: "About",
//             ),
//           ],
//         ),
//         AnimatedContainer(
//           duration: const Duration(milliseconds: 300),
//           curve: Curves.easeInOut,
//           height: _containerHeight,
//           child: TabBarView(
//             controller: tabController,
//             children: [
//               // BigContainer(
//               //   memebertitle: data.membership_title!,
//               //   lat: double.tryParse(data.vendor_card! ?? '0.0') ?? 0.0,
//               //   long: double.tryParse(data.vendor_card! ?? '0.0') ?? 0.0,
//               //   title: data.name!,
//               //   logo: data.photo!,
//               //   contact: data.phone ?? '9812457859',
//               //   storyCount: data.storycount!.toString(),
//               //   membershipTitle: data.membership_title!,
//               //   deals_circle: '0',
//               //   total_connections: "0",
//               //   total_prize_worth: '0',
//               //   location: data.nearestbranch.toString(),
//               //   Cnumber: data.phone ?? '9845612345',
//               // ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: Colors.black,
//                     ),
//                   ),
//                   child: Padding(
//                     padding: EdgeInsets.only(left: 24.w, top: 32.h),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                             "Opening hours:\n${(jsonDecode(vabout.opening_hours!) as List).map((e) => '${e['day']}: ${e['closed'] ? 'Closed' : '${e['from'] ?? 'N/A'} - ${e['to'] ?? 'N/A'}'}').join('\n')}",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w600, fontSize: 12.sp)),
//                         SizedBox(height: 10.h),
//                         Row(
//                           children: [
//                             Icon(Icons.phone,
//                                 color: const Color(0xFF8B6C6C), size: 14.h),
//                             SizedBox(
//                               width: 10.w,
//                             ),
//                             Text(
//                               vabout.phone ?? '',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 12.sp,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 10.h),
//                         Row(
//                           children: [
//                             Icon(Icons.location_on,
//                                 color: const Color(0xFF8B6C6C), size: 14.h),
//                             SizedBox(
//                               width: 10.w,
//                             ),
//                             Text(
//                               vabout.nearestbranch ??
//                                   'The Bio is not yet published stay tuned',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 12.sp,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 10.h),
//                         Row(
//                           children: [
//                             Icon(Icons.email,
//                                 color: const Color(0xFF8B6C6C), size: 14.h),
//                             SizedBox(
//                               width: 10.w,
//                             ),
//                             Text(
//                               vabout.email!,
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 12.sp,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 10.h),
//                         Text(
//                           "Bio",
//                           style: TextStyle(
//                             fontWeight: FontWeight.w600,
//                             fontSize: 14.sp,
//                           ),
//                         ),
//                         SizedBox(height: 10.h),
//                         Text(
//                           vabout.bio!,
//                           style: TextStyle(fontSize: 12.sp),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             decoration: BoxDecoration(
//               border: Border.all(
//                 color: Colors.black,
//               ),
//             ),
//             child: Padding(
//               padding: EdgeInsets.only(left: 24.w, top: 32.h),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                       "Opening hours:\n${(jsonDecode(vabout.opening_hours!) as List).map((e) => '${e['day']}: ${e['closed'] ? 'Closed' : '${e['from'] ?? 'N/A'} - ${e['to'] ?? 'N/A'}'}').join('\n')}",
//                       style: TextStyle(
//                           fontWeight: FontWeight.w600, fontSize: 12.sp)),
//                   SizedBox(height: 10.h),
//                   Row(
//                     children: [
//                       Icon(Icons.phone,
//                           color: const Color(0xFF8B6C6C), size: 14.h),
//                       SizedBox(
//                         width: 10.w,
//                       ),
//                       Text(
//                         vabout.phone ?? '',
//                         style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           fontSize: 12.sp,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 10.h),
//                   Row(
//                     children: [
//                       Icon(Icons.location_on,
//                           color: const Color(0xFF8B6C6C), size: 14.h),
//                       SizedBox(
//                         width: 10.w,
//                       ),
//                       Text(
//                         vabout.nearestbranch ??
//                             'The Bio is not yet published stay tuned',
//                         style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           fontSize: 12.sp,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 10.h),
//                   Row(
//                     children: [
//                       Icon(Icons.email,
//                           color: const Color(0xFF8B6C6C), size: 14.h),
//                       SizedBox(
//                         width: 10.w,
//                       ),
//                       Text(
//                         vabout.email!,
//                         style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           fontSize: 12.sp,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 10.h),
//                   Text(
//                     "Bio",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                       fontSize: 14.sp,
//                     ),
//                   ),
//                   SizedBox(height: 10.h),
//                   Text(
//                     vabout.bio!,
//                     style: TextStyle(fontSize: 12.sp),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

class BigContainer extends StatelessWidget {
  final String id;
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
  bool issubbed;

  // Constructor
  BigContainer(
      {required this.lat,
      required this.long,
      required this.id,
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
      required this.issubbed,
      required this.memebertitle});

  // Future<void> _openGoogleMap(double latitude, double longitude) async {
  //   final Uri googleMapsUrl =
  //       Uri.parse('https://www.google.com/maps/search/?q=$latitude,$longitude');

  //   if (await canLaunchUrl(googleMapsUrl)) {
  //     await launchUrl(googleMapsUrl, mode: LaunchMode.externalApplication);
  //   } else {
  //     print("Could not open Google Maps");
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    Map<String, String>? followresp;

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
                    SvgPicture.asset(
                      id.toString() == '1'
                          ? productsicon
                          : id.toString() == '7'
                              ? b2bIcon
                              : id.toString() == '2'
                                  ? usedIcon
                                  : id.toString() == '3'
                                      ? servicesIcon
                                      : id.toString() == '4'
                                          ? jobIcon
                                          : id.toString() == '5'
                                              ? eventIcon
                                              : id.toString() == '8'
                                                  ? grocaryicon
                                                  : productsicon, // Provide a default icon path if no match is found
                      width: 50,
                      height: 50,
                      color: Colors.grey,
                    ),
                    // Image.asset(
                    //   "assets/icon/domestic_brand.png",
                    //   width: 50,
                    //   height: 50,
                    //   color: Colors.grey,
                    // ),
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
              ),
            ),
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
                  child: InkWell(
                    onTap: () async {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const Dialog(
                              backgroundColor: Colors.transparent,
                              insetPadding: EdgeInsets.all(10),
                              child: ScratchCard());
                        },
                      );
                    },
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
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            SizedBox(height: 40.h),
            Padding(
              padding: EdgeInsets.only(left: 4.h, bottom: 5.h),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(issubbed ? "Connected" : "Connected",
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
