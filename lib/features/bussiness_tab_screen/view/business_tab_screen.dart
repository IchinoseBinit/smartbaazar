import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rxdart/rxdart.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/scran_screen/scan_screen.dart';
import 'package:smartbazar/features/brand_bazar/brand_bazar_screen.dart';
import 'package:smartbazar/features/bussiness_tab_screen/view/api/search_result_provider.dart';
import 'package:smartbazar/features/create_listing/view/create_new_listing_screen.dart';
import 'package:smartbazar/features/home/api/buy_or_now_provider.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/home/api/shopzone_provider.dart';
import 'package:smartbazar/features/home/view/header.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/my_order/view/my_order_screen.dart';
import 'package:smartbazar/features/pending_approval/pending_approval.dart';
import 'package:smartbazar/features/product_details/constant/all_product_detail_widget.dart';
import 'package:smartbazar/features/product_details/constant/product_detail_widget.dart';
import 'package:smartbazar/features/product_details/constant/product_detail_widget_list_search.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/scratch_win/screen/subscribe_win_every_day_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_profile_screen.dart';
import 'package:smartbazar/features/vendor/view/my_subscribe_and_win_page.dart';
import 'package:smartbazar/main.dart';
import 'package:smartbazar/network_service/smart-client.dart';

final _selectedIndexProvider = StateProvider<int>((ref) => 0);

class BusinessTabScreen extends ConsumerStatefulWidget {
  final String query;
  const BusinessTabScreen({Key? key, required this.query}) : super(key: key);

  @override
  ConsumerState<BusinessTabScreen> createState() => _BusinessTabScreenState();
}

class _BusinessTabScreenState extends ConsumerState<BusinessTabScreen>
    with SingleTickerProviderStateMixin {
  late String _query;
  // final GlobalKey<ScaffoldState> _key = GlobalKey();
  final TextEditingController _searchController = TextEditingController();
  final _debouncer = BehaviorSubject<String>();
  int? selectedIndex = 3;
  // final ScrollController _scrollController = ScrollController();
  bool _isSectionsVisible = true;
  // double _lastScrollOffset = 0;
  Offset _initialDragPosition = Offset.zero;
  // final ValueNotifier<bool> _showSideBar = ValueNotifier<bool>(true);
  late TabController tabController;
  int? postypeid = 0;
  Map<String, String>? mydropdown = headeritems.firstWhere(
    (item) => item['label'] == 'Everything',
    orElse: () => headeritems.first, // Fallback to the first item if not found
  );

  // final List<String> _services = [
  //   'SHOPZONE',
  //   'TRADEHUB',
  //   'SERVICES',
  //   'USED',
  //   'HOB'
  // ];
  Map<String, String> sortOptions = {
    'price: Low to High': 'price-low-to-high',
    'price: High to Low': 'price-high-to-low',
    'Relevance': 'relevance',
    'Date': 'date',
  };
  String dropdownValue = 'sort-type';
  String? selectedValue; // Stores selected value

  bool _showSearchProductModels = false;

  void _onPageChanged(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void _onSearchFocusChanged(bool hasFocus) {
    setState(() {
      _showSearchProductModels = hasFocus;
    });
  }

  int selectedTabIndex = 0;

  PageController _pageController = PageController(viewportFraction: 0.3);

  @override
  void initState() {
    _query = widget.query;
    // _searchController.text =
    //     _searchController.text.isEmpty ? _query : _searchController.text;
    _pageController = PageController(
      viewportFraction: 0.3,
      initialPage: selectedIndex!,
    );

    // Use the addPostFrameCallback to jump to the selected page after the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _pageController.jumpToPage(selectedIndex!);
    });
    super.initState();
    tabController = TabController(length: 7, vsync: this);

    _searchController.addListener(() {
      _debouncer.add(_searchController.text);
    });

    _debouncer.debounceTime(const Duration(milliseconds: 300)).listen((query) {
      debugPrint("Search query: $query");
      ref.refresh(
          searchProvider(query)); // Ensure this provider works as expected
      setState(() {
        // _showSearchProductModels = query.isNotEmpty;
      });
    });
  }

  void _onDragUpdate(DragUpdateDetails details) {
    final dragDistance = details.globalPosition.dy - _initialDragPosition.dy;
    if (dragDistance > 50 && !_isSectionsVisible) {
      setState(() {
        _isSectionsVisible = true;
      });
    } else if (dragDistance < -50 && _isSectionsVisible) {
      setState(() {
        _isSectionsVisible = false;
      });
    }
  }

  void _onDragStart(DragStartDetails details) {
    _initialDragPosition = details.globalPosition;
  }

  @override
  Widget build(BuildContext context) {
    final searchData = ref.watch(getSearchResponseProvider(
        _query, selectedValue ?? 'price-low-to-high'));
    final SearchProductModels =
        ref.watch(searchProvider(_searchController.text));

Future<void> refreshprovider() async {
  ref.refresh(getSearchResponseProvider(
      _query, selectedValue ?? 'price-low-to-high'));
  ref.refresh(searchProvider(_searchController.text));

  // Manually trigger the widget to rebuild after refreshing
  setState(() {});
}


    return Scaffold(
        extendBody: true,
        body: NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            if (notification is ScrollUpdateNotification &&
                notification.metrics.axis == Axis.vertical) {
              // Check if the scroll is vertical
              // Check if the SliverAppBar is completely off-screen
              if (notification.metrics.pixels > 100) {
                if (isSliverAppBarVisible) {
                  setState(() {
                    isSliverAppBarVisible = false;
                  });
                  print("SliverAppBar disappeared");
                }
              } else {
                if (!isSliverAppBarVisible) {
                  setState(() {
                    _isSectionsVisible = true;
                    isSliverAppBarVisible = true;
                  });
                  print("SliverAppBar visible");
                }
              }
            }
            return true; // Allow the scroll event to propagate
          },
          child: Stack(
            children: [
              CustomScrollView(
                slivers: [
                  SliverPersistentHeader(
                      pinned: true,
                      floating: true,
                      delegate: StickyHeaderDelegate(
                          visible: isSliverAppBarVisible,
                          searchController: _searchController,
                          onchanged: (value) {
                            print('value $value');
                          },
                          dropdownValueNotifier: dropdownValueNotifier,
                          filteredSuggestions: [])),
                  if (isSliverAppBarVisible)
                    SliverAppBar(
                        expandedHeight: 90.h,
                        floating: false,
                        pinned: false,
                        flexibleSpace: AnimatedContainer(
                          padding: EdgeInsets.zero,
                          duration: Duration(milliseconds: 150),
                          child: Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(40),
                                  bottomRight: Radius.circular(40)),
                              gradient: LinearGradient(
                                  colors: [
                                    // Color(0xFF681b4e),
                                    // Color(0xFF392574),
                                    // Color(0xFF681b4e),
                                    Color(0xff651c50),
                                    Color(0xff54225f),
                                    // Color(0xFF392574).
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(4, (index) {
                                    return GestureDetector(
                                      onTap: () {
                                        ref
                                            .read(
                                                _selectedIndexProvider.notifier)
                                            .state = index;
                                        _pageController.animateToPage(
                                          index,
                                          duration:
                                              const Duration(milliseconds: 50),
                                          curve: Curves.easeInOut,
                                        );
                                      },
                                      child: Container(
                                        height: 5.h,
                                        width: 5.w,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 5.w),
                                        decoration: BoxDecoration(
                                          color: selectedIndex == index
                                              ? Colors.amber
                                              : Colors.grey,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                SizedBox(
                                  height: 55.h,
                                  child: PageView.builder(
                                    itemCount: items.length,
                                    padEnds: false,
                                    controller: _pageController,
                                    onPageChanged: (value) {
                                      ref
                                          .read(_selectedIndexProvider.notifier)
                                          .state = value;
                                    },
                                    itemBuilder: (context, index) {
                                      Map<String, dynamic> data = items[index];

                                      // Highlight only when index == 4
                                      bool isActive = index == 1;
                                      return GestureDetector(
                                        onTap: () {
                                          ref
                                              .read(_selectedIndexProvider
                                                  .notifier)
                                              .state = index;
                                        },
                                        child: AnimatedContainer(
                                          padding: EdgeInsets.zero,
                                          duration:
                                              const Duration(milliseconds: 300),
                                          alignment: Alignment.center,
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        data['screen']),
                                              );
                                            },
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                if (data['icon']
                                                    .toString()
                                                    .endsWith('.svg'))
                                                  SvgPicture.asset(
                                                    data['icon'],
                                                    alignment: Alignment.center,
                                                    fit: BoxFit.contain,
                                                    theme: const SvgTheme(
                                                        currentColor:
                                                            Color(0xffdd9d9d9)),
                                                    color: isActive
                                                        ? Colors.amber
                                                        : const Color(
                                                                0xffD9D9D9)
                                                            .withOpacity(0.5),
                                                    width: 20,
                                                    height: 20,
                                                  )
                                                else
                                                  Image.asset(
                                                    data['icon'],
                                                    color: isActive
                                                        ? Colors.amber
                                                        : const Color(
                                                                0xffD9D9D9)
                                                            .withOpacity(0.5),
                                                    width: 20,
                                                    height: 20,
                                                  ),
                                                const SizedBox(height: 8),
                                                Text(
                                                  data['label'],
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w700,
                                                    color: isActive
                                                        ? Colors.amber
                                                        : const Color(
                                                                0xffD9D9D9)
                                                            .withOpacity(0.5),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                              ],
                            ),
                          ),
                        )),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 11, top: 11),
                      child: GestureDetector(
                        onVerticalDragUpdate: _onDragUpdate,
                        onTap: () {
                          setState(() {
                            isSliverAppBarVisible = !isSliverAppBarVisible;
                          });
                        },
                        child: Center(
                          child: Container(
                            alignment: AlignmentDirectional.center,
                            height: 7.h,
                            width: 60.w,
                            decoration: BoxDecoration(
                                color: Color(0xff651c50),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(height: 5.h,),
                  ),
                  SliverToBoxAdapter(
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          searchData.when(
                  data: (data) {
                    // print("bibash ${data.brandNew?.first.id?? 0}");
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Text(
                            "Showing results for ${widget.query}",
                            style: headerstyle.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: ColorConstant.blackColor),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: ColorConstant.blackColor,
                                    width: 0.9,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: DropdownButton<String>(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.w, vertical: 2.h),
                                  isDense: true,
                                  icon: const Icon(Icons.keyboard_arrow_down,
                                      color: ColorConstant.blackColor),
                                  isExpanded: false,
                                  underline: const SizedBox(),
                                  elevation: 0,
                                  hint: Text(
                                    "Sort by",
                                    style: headerstyle.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: ColorConstant.blackColor,
                                    ),
                                  ),
                                  value: selectedValue, // Set selected value
                                  items: sortOptions.entries.map((entry) {
                                    return DropdownMenuItem<String>(
                                      value: entry.value,
                                      child: Text(entry
                                          .key), // Show the price option text
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      selectedValue =
                                          value; // Update selected value
                                    });
                                    ref.refresh(getSearchResponseProvider(
                                            _query, selectedValue!)
                                        .future);
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        DefaultTabController(
                            length: 7,
                            child: Column(
                             // spacing: 4,
                              children: [
                                TabBar(
                                  tabAlignment: TabAlignment.start,
                                  isScrollable: true,
                                  onTap: (index) {
                                    setState(() {
                                      selectedTabIndex = index;
                                    });
                                  },
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  tabs: [
                                    Tab(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "All Listing",
                                            style: headerstyle.copyWith(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                color:
                                                    ColorConstant.blackColor),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 7, vertical: 5),
                                            margin: EdgeInsets.only(left: 5.h),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: const Color(0xff781740)),
                                            child: Text(
                                              data.brandNew?.length
                                                      .toString() ??
                                                  '0',
                                              style: headerstyle,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Tab(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Business",
                                            style: headerstyle.copyWith(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                color:
                                                    ColorConstant.blackColor),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 7, vertical: 5),
                                            margin: EdgeInsets.only(left: 5.h),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: const Color(0xff362677)),
                                            child: Text(
                                              data.business?.length
                                                      .toString() ??
                                                  '0',
                                              style: headerstyle,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Tab(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Used",
                                            style: headerstyle.copyWith(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                color:
                                                    ColorConstant.blackColor),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 7, vertical: 5),
                                            margin: EdgeInsets.only(left: 5.h),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: const Color(0xff362677)),
                                            child: Text(
                                              data.used?.length.toString() ??
                                                  '0',
                                              style: headerstyle,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Tab(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Services",
                                            style: headerstyle.copyWith(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                color:
                                                    ColorConstant.blackColor),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 7, vertical: 5),
                                            margin: EdgeInsets.only(left: 5.h),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: const Color(0xff362677)),
                                            child: Text(
                                              data.services?.length
                                                      .toString() ??
                                                  '0',
                                              style: headerstyle,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Tab(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Events",
                                            style: headerstyle.copyWith(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                color:
                                                    ColorConstant.blackColor),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 7, vertical: 5),
                                            margin: EdgeInsets.only(left: 5.h),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: const Color(0xff362677)),
                                            child: Text(
                                              data.events?.length.toString() ??
                                                  '0',
                                              style: headerstyle,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Tab(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Jobs",
                                            style: headerstyle.copyWith(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                color:
                                                    ColorConstant.blackColor),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 7, vertical: 5),
                                            margin: EdgeInsets.only(left: 5.h),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: const Color(0xff362677)),
                                            child: Text(
                                              data.jobs?.length.toString() ??
                                                  '0',
                                              style: headerstyle,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Tab(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Grocaery",
                                            style: headerstyle.copyWith(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                color:
                                                    ColorConstant.blackColor),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 7, vertical: 5),
                                            margin: EdgeInsets.only(left: 5.h),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: const Color(0xff362677)),
                                            child: Text(
                                              data.grocery?.length.toString() ??
                                                  '0',
                                              style: headerstyle,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height.h+750.h,
                                  child: TabBarView(
                                    children: [
                                    data.brandNew!.isEmpty
                                        ? Padding(
                                            padding: EdgeInsets.only(top: 15.h),
                                            child: Center(
                                              child: nolistingfound(),
                                            ),
                                          )
                                        : SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 30),
                                              child: SingleChildScrollView(
                                                physics:
                                                    const BouncingScrollPhysics(),
                                                scrollDirection: Axis
                                                    .vertical, // Scroll vertically if needed
                                                child: Wrap(
                                                  alignment: WrapAlignment.center,
                                                  spacing: 10
                                                      .w, // Horizontal space between items
                                                  runSpacing: 10
                                                      .h, // Vertical space between rows
                                                  children: List.generate(
                                                    data.brandNew!.length,
                                                    (index) {
                                                      GlobalModel res =
                                                          data.brandNew![index];
                                          
                                                      return SizedBox(
                                                        width: (MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width /
                                                                2) -
                                                            15, // Adjust width for two columns
                                                        child: Column(
                                                          children: [
                                                            Card(
                                                              clipBehavior:
                                                                  Clip.antiAlias,
                                                              shadowColor:
                                                                  const Color(
                                                                          0xff3D215F)
                                                                      .withOpacity(
                                                                          0.5),
                                                              elevation: 9,
                                                              margin: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          5.w),
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            15.0),
                                                              ),
                                                              child:
                                                                  AllProductDetailWidget(



                                                                    
                                                                savedid: res.savedByLoggedUser ==
                                                                            null ||
                                                                        res.savedByLoggedUser!
                                                                            .isEmpty
                                                                    ? []
                                                                    : res
                                                                        .savedByLoggedUser
                                                                        ?.map(
                                                                          (e) => SavedPost(
                                                                              id: e
                                                                                  .id,
                                                                              userId:
                                                                                  e.userId,
                                                                              postId: e.postId,
                                                                              createdAt: e.createdAt,
                                                                              updatedAt: e.updatedAt),
                                                                        )
                                                                        .toList(),
                                                                onRefresh: () {
                                                                  refreshprovider();
                                                                },
                                                                productid: res.id,
                                                                lat: res.user[0]
                                                                    .latitude,
                                                                long: res.user[0]
                                                                    .longitude,
                                                                membershipid: res
                                                                    .user[0]
                                                                    .membership_id,
                                                                posttype: res
                                                                    .post_type_id,
                                                                didcountpercentage:
                                                                    res.discount_percentage,
                                                                id: int.tryParse(
                                                                    res.user[0]
                                                                        .user_id),
                                                                shortestDistance: res
                                                                    .user[0]
                                                                    .shortestDistance,
                                                                issponsored: res
                                                                        .user[0]
                                                                        .sponsored ??
                                                                    false,
                                                                distance: res
                                                                    .user[0]
                                                                    .shortestDistance,
                                                                wow: res.wow
                                                                    .toString(),
                                                                discounttedPrice:
                                                                    res.discont,
                                                                comment: res
                                                                    .commentnum
                                                                    .toString(),
                                                                avg_rating: res
                                                                        .avg_rating
                                                                        ?.toDouble() ??
                                                                    0.0,
                                                                offer: res.offers,
                                                                productImage:
                                                                    res.imageUrl,
                                                                Vimage: res
                                                                    .user[0]
                                                                    .photo,
                                                                vendorname: res
                                                                    .user[0].name,
                                                                title: res.title,
                                                                price: res.price,
                                                                similarproductCount:
                                                                    res.similarproductCount,
                                                                membershipColor: res
                                                                    .user[0]
                                                                    .membership_color,
                                                                membershipTitle: res
                                                                    .user[0]
                                                                    .membership_title,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                                height: 10.h),
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 20),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.vertical,
                                        child: Column(
                                          children: data.business!.map(
                                            (e) {
                                              // print("bibash ${e.hasSponsoredGifts}")
                                              return BigContainer(
                                                ondoenload: () {},
                                                onsubscribed: () {
                                                  refreshprovider();
                                                },
                                                storycount:
                                                    e.storyCount.toString(),
                                                id: e.vendorId!,
                                                issubbed: false,
                                                memebertitle:
                                                    e.membershipTitle!,
                                                lat: double.tryParse(
                                                        e.latitude ?? '0') ??
                                                    0,
                                                long: double.tryParse(
                                                        e.longitude ?? '0') ??
                                                    0,
                                                Cnumber:
                                                    e.contact ?? '9887654867',
                                                location: e.location ?? 'Nepal',
                                                total_connections:
                                                    e.totalConnections!,
                                                total_prize_worth:
                                                    e.totalPrizeWorth!,
                                                title: e.vendorName!,
                                                contact:
                                                    e.contact ?? '9845784578',
                                                logo: e.logo!,
                                                membershipTitle:
                                                    e.membershipTitle!,
                                                storyCount: e.storyCount!,
                                                hasSpo: e.hasSponsoredGifts!,
                                              );
                                            },
                                          ).toList(),
                                        ),
                                      ),
                                    ),
                                    data.used!.isEmpty
                                        ? Padding(
                                            padding: EdgeInsets.only(top: 15.h),
                                            child: Center(
                                              child: nolistingfound(),
                                            ),
                                          )
                                        : Padding(
                                            padding:
                                                const EdgeInsets.only(left: 2),
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis
                                                  .vertical, // Scroll vertically if needed
                                              child: LayoutBuilder(
                                                builder:
                                                    (context, constraints) {
                                                  return Wrap(
                                                    spacing: 4
                                                        .w, // Horizontal space between items
                                                    runSpacing: 8
                                                        .h, // Vertical space between rows
                                                    children: List.generate(
                                                      data.used?.length ?? 0,
                                                      (index) {
                                                        GlobalModel res =
                                                            data.used![index];

                                                        return SizedBox(
                                                          width: (MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width -
                                                                  7.w) /
                                                              2, // Dynamically adjust to fit two items per row
                                                          child: Card(
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            shadowColor:
                                                                const Color(
                                                                        0xff3D215F)
                                                                    .withOpacity(
                                                                        0.5),
                                                            elevation: 9,
                                                            margin: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        5.w),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15.0),
                                                            ),
                                                            child:
                                                                AllProductDetailWidget(
                                                              savedid: res.savedByLoggedUser ==
                                                                          null ||
                                                                      res.savedByLoggedUser!
                                                                          .isEmpty
                                                                  ? []
                                                                  : res
                                                                      .savedByLoggedUser
                                                                      ?.map(
                                                                        (e) => SavedPost(
                                                                            id: e
                                                                                .id,
                                                                            userId:
                                                                                e.userId,
                                                                            postId: e.postId,
                                                                            createdAt: e.createdAt,
                                                                            updatedAt: e.updatedAt),
                                                                      )
                                                                      .toList(),
                                                              onRefresh: () {
                                                                refreshprovider();
                                                              },
                                                              lat: res.user[0]
                                                                  .latitude,
                                                              long: res.user[0]
                                                                  .longitude,
                                                              productid: res.id,
                                                              posttype: res
                                                                  .posttypename,
                                                              membershipid: res
                                                                  .user[0]
                                                                  .membership_id,
                                                              id: int.tryParse(
                                                                  res.id),
                                                              didcountpercentage:
                                                                  res.discount_percentage,
                                                              avg_rating: res
                                                                  .avg_rating,
                                                              comment: res
                                                                  .commentnum,
                                                              discounttedPrice:
                                                                  res.discont,
                                                              offer: res.offers,
                                                              shortestDistance:
                                                                  res.shortestDistance,
                                                              wow: res.wow,
                                                              issponsored: res
                                                                      .user[0]
                                                                      .sponsored ??
                                                                  false,
                                                              productImage:
                                                                  res.imageUrl,
                                                              Vimage: res
                                                                  .user[0]
                                                                  .photo!,
                                                              vendorname: res
                                                                  .user[0].name,
                                                              title: res.title,
                                                              price: res.price,
                                                              similarproductCount:
                                                                  res.similarproductCount,
                                                              membershipColor: res
                                                                  .user[0]
                                                                  .membership_color!,
                                                              membershipTitle: res
                                                                  .user[0]
                                                                  .membership_title!,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                    data.services!.isEmpty
                                        ? Padding(
                                            padding: EdgeInsets.only(top: 15.h),
                                            child: Center(
                                              child: nolistingfound(),
                                            ),
                                          )
                                        : Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 30),
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis
                                                  .vertical, // Scroll vertically if needed
                                              child: LayoutBuilder(
                                                builder:
                                                    (context, constraints) {
                                                  return Wrap(
                                                    spacing: 5
                                                        .w, // Horizontal space between items
                                                    runSpacing: 15
                                                        .h, // Vertical space between rows
                                                    children: List.generate(
                                                      data.services?.length ??
                                                          0,
                                                      (index) {
                                                        GlobalModel res = data
                                                            .services![index];

                                                        return SizedBox(
                                                          width: (MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width -
                                                                  30.w) /
                                                              2, // Dynamically adjust to fit two items per row
                                                          child: Card(
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            shadowColor:
                                                                const Color(
                                                                        0xff3D215F)
                                                                    .withOpacity(
                                                                        0.5),
                                                            elevation: 9,
                                                            margin: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        5.w),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15.0),
                                                            ),
                                                            child:
                                                                AllProductDetailWidget(
                                                              savedid: res.savedByLoggedUser ==
                                                                          null ||
                                                                      res.savedByLoggedUser!
                                                                          .isEmpty
                                                                  ? []
                                                                  : res
                                                                      .savedByLoggedUser
                                                                      ?.map(
                                                                        (e) => SavedPost(
                                                                            id: e
                                                                                .id,
                                                                            userId:
                                                                                e.userId,
                                                                            postId: e.postId,
                                                                            createdAt: e.createdAt,
                                                                            updatedAt: e.updatedAt),
                                                                      )
                                                                      .toList(),
                                                              onRefresh: () {
                                                                refreshprovider();
                                                              },
                                                              productid: res.id,
                                                              lat: res.user[0]
                                                                  .latitude,
                                                              long: res.user[9]
                                                                  .longitude,
                                                              didcountpercentage:
                                                                  res.discount_percentage,
                                                              membershipid: res
                                                                  .user[0]
                                                                  .membership_id,
                                                              shortestDistance: res
                                                                  .user[0]
                                                                  .shortestDistance,
                                                              posttype: res
                                                                  .post_type_id,
                                                              avg_rating: res
                                                                  .avg_rating,
                                                              comment: res
                                                                  .commentnum,
                                                              discounttedPrice:
                                                                  res.discont,
                                                              offer: res.offers,
                                                              wow: res.wow,
                                                              id: int.tryParse(
                                                                  res.user.first
                                                                      .user_id),
                                                              issponsored: res
                                                                  .user[0]
                                                                  .sponsored!,
                                                              productImage:
                                                                  res.imageUrl,
                                                              Vimage: res
                                                                  .user[0]
                                                                  .photo!,
                                                              vendorname: res
                                                                  .user[0].name,
                                                              title: res.title,
                                                              price: res.price,
                                                              similarproductCount:
                                                                  res.similarproductCount,
                                                              membershipColor: res
                                                                  .user[0]
                                                                  .membership_color!,
                                                              membershipTitle: res
                                                                  .user[0]
                                                                  .membership_title!,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                    data.events!.isEmpty
                                        ? Padding(
                                            padding: EdgeInsets.only(top: 15.h),
                                            child: Center(
                                              child: nolistingfound(),
                                            ),
                                          )
                                        : Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 30),
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis
                                                  .vertical, // Scroll vertically if needed
                                              child: LayoutBuilder(
                                                builder:
                                                    (context, constraints) {
                                                  return Wrap(
                                                    spacing: 5
                                                        .w, // Horizontal space between items
                                                    runSpacing: 15
                                                        .h, // Vertical space between rows
                                                    children: List.generate(
                                                      data.events?.length ?? 0,
                                                      (index) {
                                                        GlobalModel res =
                                                            data.events![index];

                                                        return SizedBox(
                                                          width: (MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width -
                                                                  30.w) /
                                                              2, // Dynamically adjust to fit two items per row
                                                          child: Card(
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            shadowColor:
                                                                const Color(
                                                                        0xff3D215F)
                                                                    .withOpacity(
                                                                        0.5),
                                                            elevation: 9,
                                                            margin: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        5.w),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15.0),
                                                            ),
                                                            child:
                                                                AllProductDetailWidget(
                                                              savedid: res.savedByLoggedUser ==
                                                                          null ||
                                                                      res.savedByLoggedUser!
                                                                          .isEmpty
                                                                  ? []
                                                                  : res
                                                                      .savedByLoggedUser
                                                                      ?.map(
                                                                        (e) => SavedPost(
                                                                            id: e
                                                                                .id,
                                                                            userId:
                                                                                e.userId,
                                                                            postId: e.postId,
                                                                            createdAt: e.createdAt,
                                                                            updatedAt: e.updatedAt),
                                                                      )
                                                                      .toList(),
                                                              onRefresh: () {
                                                                refreshprovider();
                                                              },
                                                              productid: res.id,
                                                              lat: res.user[0]
                                                                  .latitude,
                                                              long: res.user[9]
                                                                  .longitude,
                                                              didcountpercentage:
                                                                  res.discount_percentage,
                                                              membershipid: res
                                                                  .user[0]
                                                                  .membership_id,
                                                              shortestDistance: res
                                                                  .user[0]
                                                                  .shortestDistance,
                                                              posttype: res
                                                                  .post_type_id,
                                                              avg_rating: res
                                                                  .avg_rating,
                                                              comment: res
                                                                  .commentnum,
                                                              discounttedPrice:
                                                                  res.discont,
                                                              offer: res.offers,
                                                              wow: res.wow,
                                                              id: int.tryParse(
                                                                  res.user.first
                                                                      .user_id),
                                                              issponsored: res
                                                                  .user[0]
                                                                  .sponsored!,
                                                              productImage:
                                                                  res.imageUrl,
                                                              Vimage: res
                                                                  .user[0]
                                                                  .photo!,
                                                              vendorname: res
                                                                  .user[0].name,
                                                              title: res.title,
                                                              price: res.price,
                                                              similarproductCount:
                                                                  res.similarproductCount,
                                                              membershipColor: res
                                                                  .user[0]
                                                                  .membership_color!,
                                                              membershipTitle: res
                                                                  .user[0]
                                                                  .membership_title!,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                    data.jobs!.isEmpty
                                        ? Padding(
                                            padding: EdgeInsets.only(top: 15.h),
                                            child: Center(
                                              child: nolistingfound(),
                                            ),
                                          )
                                        : Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 30),
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis
                                                  .vertical, // Scroll vertically if needed
                                              child: LayoutBuilder(
                                                builder:
                                                    (context, constraints) {
                                                  return Wrap(
                                                    spacing: 5
                                                        .w, // Horizontal space between items
                                                    runSpacing: 15
                                                        .h, // Vertical space between rows
                                                    children: List.generate(
                                                      data.jobs?.length ?? 0,
                                                      (index) {
                                                        GlobalModel res =
                                                            data.jobs![index];

                                                        return SizedBox(
                                                          width: (MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width -
                                                                  30.w) /
                                                              2, // Dynamically adjust to fit two items per row
                                                          child: Card(
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            shadowColor:
                                                                const Color(
                                                                        0xff3D215F)
                                                                    .withOpacity(
                                                                        0.5),
                                                            elevation: 9,
                                                            margin: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        5.w),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15.0),
                                                            ),
                                                            child:
                                                                AllProductDetailWidget(
                                                              savedid: res.savedByLoggedUser ==
                                                                          null ||
                                                                      res.savedByLoggedUser!
                                                                          .isEmpty
                                                                  ? []
                                                                  : res
                                                                      .savedByLoggedUser
                                                                      ?.map(
                                                                        (e) => SavedPost(
                                                                            id: e
                                                                                .id,
                                                                            userId:
                                                                                e.userId,
                                                                            postId: e.postId,
                                                                            createdAt: e.createdAt,
                                                                            updatedAt: e.updatedAt),
                                                                      )
                                                                      .toList(),
                                                              onRefresh: () {
                                                                refreshprovider();
                                                              },
                                                              productid: res.id,
                                                              lat: res.user[0]
                                                                  .latitude,
                                                              long: res.user[9]
                                                                  .longitude,
                                                              didcountpercentage:
                                                                  res.discount_percentage,
                                                              membershipid: res
                                                                  .user[0]
                                                                  .membership_id,
                                                              shortestDistance: res
                                                                  .user[0]
                                                                  .shortestDistance,
                                                              posttype: res
                                                                  .post_type_id,
                                                              avg_rating: res
                                                                  .avg_rating,
                                                              comment: res
                                                                  .commentnum,
                                                              discounttedPrice:
                                                                  res.discont,
                                                              offer: res.offers,
                                                              wow: res.wow,
                                                              id: int.tryParse(
                                                                  res.user.first
                                                                      .user_id),
                                                              issponsored: res
                                                                  .user[0]
                                                                  .sponsored!,
                                                              productImage:
                                                                  res.imageUrl,
                                                              Vimage: res
                                                                  .user[0]
                                                                  .photo!,
                                                              vendorname: res
                                                                  .user[0].name,
                                                              title: res.title,
                                                              price: res.price,
                                                              similarproductCount:
                                                                  res.similarproductCount,
                                                              membershipColor: res
                                                                  .user[0]
                                                                  .membership_color!,
                                                              membershipTitle: res
                                                                  .user[0]
                                                                  .membership_title!,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                    data.grocery!.isEmpty
                                        ? Padding(
                                            padding: EdgeInsets.only(top: 15.h),
                                            child: Center(
                                              child: nolistingfound(),
                                            ),
                                          )
                                        : Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 30),
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis
                                                  .vertical, // Scroll vertically if needed
                                              child: LayoutBuilder(
                                                builder:
                                                    (context, constraints) {
                                                  return Wrap(
                                                    spacing: 5
                                                        .w, // Horizontal space between items
                                                    runSpacing: 15
                                                        .h, // Vertical space between rows
                                                    children: List.generate(
                                                      data.grocery?.length ??
                                                          0,
                                                      (index) {
                                                        GlobalModel res = data
                                                            .grocery![index];

                                                        return SizedBox(
                                                          width: (MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width -
                                                                  30.w) /
                                                              2, // Dynamically adjust to fit two items per row
                                                          child: Card(
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            shadowColor:
                                                                const Color(
                                                                        0xff3D215F)
                                                                    .withOpacity(
                                                                        0.5),
                                                            elevation: 9,
                                                            margin: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        5.w),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15.0),
                                                            ),
                                                            child:
                                                                AllProductDetailWidget(
                                                              savedid: res.savedByLoggedUser ==
                                                                          null ||
                                                                      res.savedByLoggedUser!
                                                                          .isEmpty
                                                                  ? []
                                                                  : res
                                                                      .savedByLoggedUser
                                                                      ?.map(
                                                                        (e) => SavedPost(
                                                                            id: e
                                                                                .id,
                                                                            userId:
                                                                                e.userId,
                                                                            postId: e.postId,
                                                                            createdAt: e.createdAt,
                                                                            updatedAt: e.updatedAt),
                                                                      )
                                                                      .toList(),
                                                              onRefresh: () {
                                                                refreshprovider();
                                                              },
                                                              productid: res.id,
                                                              lat: res.user[0]
                                                                  .latitude,
                                                              long: res.user[0]
                                                                  .longitude,
                                                              didcountpercentage:
                                                                  res.discount_percentage,
                                                              membershipid: res
                                                                  .user[0]
                                                                  .membership_id,
                                                              shortestDistance: res
                                                                  .user[0]
                                                                  .shortestDistance,
                                                              posttype: res
                                                                  .post_type_id,
                                                              avg_rating: res
                                                                  .avg_rating,
                                                              comment: res
                                                                  .commentnum,
                                                              discounttedPrice:
                                                                  res.discont,
                                                              offer: res.offers,
                                                              wow: res.wow,
                                                              id: int.tryParse(
                                                                  res.user.first
                                                                      .user_id),
                                                              issponsored: res
                                                                  .user[0]
                                                                  .sponsored!,
                                                              productImage:
                                                                  res.imageUrl,
                                                              Vimage: res
                                                                  .user[0]
                                                                  .photo!,
                                                              vendorname: res
                                                                  .user[0].name,
                                                              title: res.title,
                                                              price: res.price,
                                                              similarproductCount:
                                                                  res.similarproductCount,
                                                              membershipColor: res
                                                                  .user[0]
                                                                  .membership_color!,
                                                              membershipTitle: res
                                                                  .user[0]
                                                                  .membership_title!,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                            
                                          ),

                                  ]),
                                ),
                                SizedBox(
                                  height: 40.h,
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 60.h,
                        ),
                      ],
                    );
                  },
                  error: (error, stackTrace) {
                    return const Text("Please login again");
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                ),
                      ],
                    )
                  )
                ],
              ),
               valuenotifilersidebutton(
                  showSideBar: showSideBar, isSectionsVisible: true),
              Positioned(
                top: 65,
                left: 48,
                child: Container(
                  width: MediaQuery.of(context).size.width -
                      90, // Add width constraint
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 8.0,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: SearchProductModels.when(
                    data: (results) {
                      return ListView.separated(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        primary: false,
                        itemCount: results.length > 5
                            ? 4
                            : results.length, // Limit results if needed
                        itemBuilder: (context, index) {
                          final product = results[index];
                          return ListTile(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 7),
                            dense: true,
                            title: Text(
                              product.name,
                              style: headerstyle.copyWith(
                                color: ColorConstant.blackColor,
                                fontSize:
                                    14, // Increase font size for better readability
                              ),
                            ),
                            onTap: () {
                              if (product.id != null) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VendorHomeScreen(
                                      vendorName: product.name,
                                      vid: int.tryParse(product.id!)!,
                                    ),
                                  ),
                                );
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BusinessTabScreen(
                                      query: _searchController.text,
                                    ),
                                  ),
                                );
                              }
                              setState(() {
                                _showSearchProductModels = false;
                                FocusScope.of(context).unfocus();
                              });
                            },
                          );
                        },
                        separatorBuilder: (context, index) => const Divider(),
                      );
                    },
                    loading: () {
                      return const Center(child: CircularProgressIndicator());
                    },
                    error: (error, stack) {
                      return Center(child: Text(error.toString()));
                    },
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class valuenotifilersidebutton extends StatelessWidget {
  const valuenotifilersidebutton({
    super.key,
    required this.showSideBar,
    required this.isSectionsVisible,
  });

  final ValueNotifier<bool> showSideBar;
  final bool isSectionsVisible;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: showSideBar,
      builder: (context, value, child) {
        return Positioned(
          top: isSectionsVisible ? 300 : 300,
          right: 0,
          child: InkWell(
            onTap: () {
              showSideBar.value = !value;
              // print('raju ${showSideBar.value}');
            },
            child: value
                ? Hero(
                    tag: 'searchhero',
                    child: TweenAnimationBuilder<Color?>(
                      tween: ColorTween(
                        begin: Colors.blue.withOpacity(0.6),
                        end: Colors.purple.withOpacity(0.6),
                      ),
                      duration: const Duration(seconds: 2),
                      builder: (context, color, child) {
                        return Container(
                          margin: EdgeInsets.only(right: 3.w),
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Color.fromARGB(255, 115, 92, 119),
                                width: 0.7),
                          ),
                          child: CircleAvatar(
                            radius: 18,
                            backgroundImage:
                                NetworkImage(SmartClient.userPhoto),
                          ),
                        );
                      },
                    ),
                  )
                : Container(
                    width: 70.w,
                    padding: EdgeInsets.symmetric(vertical: 5.h),
                    decoration: BoxDecoration(
                      color: const Color(0xffE2DAE5).withOpacity(0.9),
                      boxShadow: [
                        // Color(value)
                      ],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 6.h),
                          Hero(
                            tag: 'searchhero',
                            child: Container(
                              margin: EdgeInsets.only(right: 3.w),
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.black, width: 0.5),
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const VendorProfileScreen(),
                                      ));
                                },
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundImage:
                                      NetworkImage(SmartClient.userPhoto),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          IconButton(
                            onPressed: () {
                              Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(
                                  builder: (context) => const ScanScreen(),
                                ),
                              );
                            },
                            icon: Column(
                              children: [
                                Image.asset(
                                  'assets/images/scanner.png',
                                  height: 15,
                                  color: const Color(0xff918994),
                                ),
                                Text(
                                  "Connect",
                                  style: headerstyle.copyWith(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xff918994),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const AddToCartScreen(),
                                ),
                              );
                            },
                            icon: Column(
                              children: [
                                const Icon(
                                  Icons.shopping_cart_outlined,
                                  size: 15,
                                  color: Color(0xff918994),
                                ),
                                Text(
                                  "Cart",
                                  style: headerstyle.copyWith(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xff918994),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const CreateNewListinScreen(),
                                ),
                              );
                            },
                            icon: Column(
                              children: [
                                const Icon(
                                  Icons.add,
                                  size: 15,
                                  color: Color(0xff918994),
                                ),
                                Text(
                                  "Sell",
                                  style: headerstyle.copyWith(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xff918994),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MyOrderScreen(),
                                ),
                              );
                            },
                            icon: Column(
                              children: [
                                Image.asset('assets/images/tennis.png'),
                                Text(
                                  "Orders",
                                  style: headerstyle.copyWith(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xff918994),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              showSideBar.value = !value;
                            },
                            icon: Column(
                              children: [
                                const Icon(
                                  Icons.close,
                                  size: 16,
                                  color: Color(0xff918994),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
          ),
        );
      },
    );
  }
}