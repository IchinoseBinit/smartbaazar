import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/view/bottom_navigation_bar.dart';
import 'package:smartbazar/features/brand_bazar/brand_bazar_screen.dart';
import 'package:smartbazar/features/bussiness_tab_screen/view/business_tab_screen.dart';
import 'package:smartbazar/features/create_listing/view/create_new_listing_screen.dart';
import 'package:smartbazar/features/feed_page/widget/not_a_story_widget.dart';
import 'package:smartbazar/features/feed_page/widget/story_add_widget.dart';
import 'package:smartbazar/features/home/api/get_story_provider.dart';
import 'package:smartbazar/features/home/api/home_posts_proivider.dart';
import 'package:smartbazar/features/home/api/home_story_api.dart';
import 'package:smartbazar/features/home/api/post_type_story_api.dart';
import 'package:smartbazar/features/home/api/sponsored_provider.dart';
import 'package:smartbazar/features/home/api/buy_or_now_provider.dart';
import 'package:smartbazar/features/home/api/home_slider_provider.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/home/api/shopzone_provider.dart';
import 'package:smartbazar/features/home/model/home_posts_model.dart';
import 'package:smartbazar/features/home/model/home_story_model.dart';
import 'package:smartbazar/features/home/model/product_model.dart';
import 'package:smartbazar/features/home/view/buyorwin_widget.dart';
import 'package:smartbazar/features/home/view/header.dart';
import 'package:smartbazar/features/home/view/home_page_story_container.dart';
import 'package:smartbazar/features/my_order/view/my_order_screen.dart';
import 'package:smartbazar/features/pending_approval/pending_approval.dart';
import 'package:smartbazar/features/product_details/constant/all_product_detail_widget.dart';
import 'package:smartbazar/features/product_details/constant/product_detail_widget.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_profile_screen.dart';
import 'package:smartbazar/features/vendor/view/my_subscribe_and_win_page.dart';
import 'package:smartbazar/features/widgets/product_card.dart';
import 'package:rxdart/rxdart.dart';
import 'package:smartbazar/features/b2b_screen/view/b2b_screen.dart';

import '../../../general_widget/story_search_bar.dart';
import '../../events_screen/view/events_screen.dart';
import '../../grocessary_screen/view/grocary_screen.dart';
import '../../jobs_screen/view/jobs_screen.dart';
import '../../services_screen/service_screen.dart';
import '../../socio_screen/view/socio_screen.dart';
import '../../used_screen/view/used_screen.dart';

int selectedIndex = 0; // Keep track of the selected index

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen>
    with SingleTickerProviderStateMixin {
  bool _isPopupVisible = false;
  int currentPageIndex = 0;
  int selectedIndexx = 0; // State variable for selected index
  final ValueNotifier<bool> _showSideBar = ValueNotifier<bool>(true);
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final TextEditingController _searchController = TextEditingController();
  final _debouncer = BehaviorSubject<String>();
  bool _showSearchProductModels = false;
  late TabController dynamictabController;
  final ScrollController _scrollController = ScrollController();
  bool _isSectionsVisible = true;
  double _lastScrollOffset = 1;
  Offset _initialDragPosition = Offset.zero; // Track initial drag position
  PageController _pageController = PageController(viewportFraction: 0.3);
  final double _currentHeight = 500; // Default height for first tab
  Map<String, String>? dropdownValue;
  int? postypeid = 0;

  final List<Map<String, dynamic>> _items = [
    {
      'icon': 'assets/icon/openCartIcon.svg',
      'label': 'SocioShop',
      'screen': const SocioShopScreen()
    },
    {
      'icon': 'assets/icon/loading.svg',
      'label': 'Everything',
      'screen': BottomNavigationScreen()
    },
    {
      'icon': 'assets/icon/usedIcon.svg',
      'label': 'Used',
      'screen': const UsedScreen()
    },
    {
      'icon': 'assets/icon/b2bIcon.svg',
      'label': 'TradeHub',
      'screen': const B2bScreen()
    },
    {
      'icon': 'assets/icon/brandBazarIcon.svg',
      'label': 'Brandbazaar',
      'screen': const BrandBazarScreen()
    },
    {
      'icon': 'assets/icon/box.svg',
      'label': 'ServiceHub',
      'screen': const ServicesScreen()
    },
    {
      'icon': 'assets/icon/vectors.svg',
      'label': 'Job',
      'screen': const JobssScreen()
    },
    {
      'icon': 'assets/icon/groceryIcon.svg',
      'label': 'Grocery',
      'screen': const GrocarysScreen()
    },
    {
      'icon': 'assets/icon/eventIcon.svg',
      'label': 'Events',
      'screen': const EventsScreen()
    },
  ];

  @override
  void initState() {
    super.initState();
    dynamictabController = TabController(length: 3, vsync: this);
    // fetchStoryHome().then(
    //   (value) {
    //     print("lala");
    //   },
    // );
    // Default selected index to 3 (HomeScreen)
    // selectedIndex = 3;
    dynamictabController.addListener(() {
      setState(() {});
    });

    // Initialize the PageController with the selected page
    _pageController = PageController(
      viewportFraction: 0.3,
      initialPage: selectedIndex,
    );
    _searchController.addListener(() {
      _debouncer.add(_searchController.text);
    });
    _debouncer.debounceTime(const Duration(milliseconds: 300)).listen((query) {
      debugPrint("Search query: $query");
      ref.refresh(searchProvider(query));
      setState(() {
        _showSearchProductModels = query.isNotEmpty;
      });
    });

    // Set up debounce for search functionality
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

    _scrollController.addListener(_handleScroll);
  }

  void _handleScroll() {
    final scrollOffset = _scrollController.offset;

    if (scrollOffset > _lastScrollOffset && scrollOffset > 100) {
      setState(() {
        _isSectionsVisible = false;
      });
    } else if (scrollOffset < _lastScrollOffset && scrollOffset < 50) {
      setState(() {
        _isSectionsVisible = true;
      });
    }

    _lastScrollOffset = scrollOffset;
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

  void _onSearchFocusChanged(bool hasFocus) {
    setState(() {
      _showSearchProductModels = hasFocus;
    });
  }

  final List<String> _images = ['assets/images/home.png'];
  final List<Map<String, dynamic>> _services = [
    {'label': 'SHOPZONE', 'id': 1},
    {'label': 'TRADEHUB', 'id': 2},
    {'label': 'SERVICES', 'id': 3},
    {'label': 'USED', 'id': 4},
    {'label': 'JOB', 'id': 5},
    {'label': 'Event', 'id': 6},
    {'label': 'Grocery', 'id': 7},
  ];
  int _currentIndex = 0;

  @override
  void dispose() {
    dynamictabController.dispose();
    _debouncer.close();
    _searchController.dispose();
    super.dispose();
    _scrollController.dispose();
    // super.dispose();s
  }

  @override
  Widget build(BuildContext context) {
    List<String> categories =
        _services.map((e) => e['label'] as String).toList();
    final asyncHomeStoryContent = ref.watch(getHomeStoryProvider);

    // final adsList = ref.watch(fetchAdsProvider);
    // double _mediaheight = MediaQuery.of(context).size.height;
    // final AsyncValue<HomePosts> homePostsData = ref.watch(homePostsProvider);
    final sliders = ref.watch(fetchAdvertisementsProvider);
    final category = ref.watch(homeCategoryProvider);
    // ValueNotifier<int> selectedIndexNotifier = ValueNotifier<int>(0);
    final buyorwin = ref.watch(fetchBuyAndHotProvider);
    final getSponsored = ref.watch(fetchSponsoredProvider);
    final AsyncValue<HomePosts> homePostsData = ref.watch(homePostsProvider);

    // category.when(
    //   data: (data) {
    //     print("bibash ${data.jobs.first.id}");
    //   },
    //   error: (error, stackTrace) {},
    //   loading: () {},
    // );

    // ads.when(
    //   data: (data) {
    //     print("ram $data");
    //   },
    //   error: (error, stackTrace) {},
    //   loading: () {},
    // );
    // ref.watch(fetchAdvertisementsProvider);
    // print(homePostsData.when(
    //   data: (data) {
    //     print("data is $data");
    //   },
    //   error: (error, stackTrace) {},
    //   loading: () {},
    // ));
    // final brandbajarAsyncValue = ref.watch(getBrandBazaarResponseProvider);

    final SearchProductModels =
        ref.watch(searchProvider(_searchController.text));
    debugPrint('Search Results: ${SearchProductModels.asData?.value}');

    return Scaffold(
        extendBody: true,
        key: _key,
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteColor,
        // drawer: const CustomDrawer(),
        body: Stack(children: [
          Positioned.fill(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              controller: _scrollController,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      // height: 300.h,
                      child: Stack(
                        children: [
                          Positioned(
                            child: Container(
                              // height: 170,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(50),
                                    bottomRight: Radius.circular(50)),
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xFF392574),
                                      Color(0xFF681b4e),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight),
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const VendorProfileScreen(),
                                                ));
                                          },
                                          child: Image.asset(
                                              'assets/images/group.png')),
                                      SizedBox(
                                        height: 40,
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 45.h,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 20.w),
                                              decoration: BoxDecoration(
                                                color: const Color(0xFF46236a),
                                                border: Border.all(
                                                    color: Colors.white),
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(19.r),
                                                  bottomLeft:
                                                      Radius.circular(19.r),
                                                ),
                                              ),
                                              child: DropdownButton<
                                                  Map<String, String>>(
                                                value: dropdownValue ??
                                                    headeritems[postypeid!],
                                                onChanged: (newValue) {
                                                  setState(() {
                                                    dropdownValue = newValue;
                                                  });
                                                },
                                                items: headeritems.map((item) {
                                                  return DropdownMenuItem(
                                                    value: item,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        SvgPicture.asset(
                                                          alignment:
                                                              Alignment.center,
                                                          item['icon']!,
                                                          height: 10.h,
                                                          color: Colors.white,
                                                        ),
                                                        SizedBox(width: 8.w),
                                                        Text(
                                                          item['label']!,
                                                          style: TextStyle(
                                                              fontSize: 10.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                }).toList(),
                                                dropdownColor:
                                                    const Color(0xff665B6B)
                                                        .withOpacity(0.5),
                                                underline: const SizedBox(),
                                                icon: const SizedBox(),
                                              ),
                                            ),
                                            Container(
                                              width: 180.w,
                                              height: 45.h,
                                              padding: const EdgeInsets.all(5),
                                              decoration: const BoxDecoration(
                                                  color: Colors.white),
                                              child: TextField(
                                                controller: _searchController,
                                                onTap: () {
                                                  _onSearchFocusChanged(
                                                      _searchController
                                                          .text.isNotEmpty);
                                                },
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  focusedBorder:
                                                      InputBorder.none,
                                                  prefixIcon: const Icon(
                                                    Icons.search,
                                                    size: 25,
                                                    color: Color(0xffD9D9D9),
                                                  ),
                                                  enabledBorder:
                                                      const OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        width: 0.2,
                                                        color: Colors.white),
                                                  ),
                                                  hintText: "Search Everything",
                                                  hintStyle: TextStyle(
                                                      fontSize: 13.sp,
                                                      color: const Color(
                                                          0xffD9D9D9)),
                                                  isCollapsed: true,
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 5.h,
                                                          horizontal: 10.w),
                                                  disabledBorder:
                                                      InputBorder.none,
                                                  isDense: true,
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                if (_searchController.text
                                                        .trim()
                                                        .length !=
                                                    0)
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            BusinessTabScreen(
                                                          query:
                                                              _searchController
                                                                  .text,
                                                        ),
                                                      ));
                                              },
                                              child: Container(
                                                height: 45.h,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 20.w,
                                                    vertical: 5.h),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.white),
                                                  color: Colors.transparent,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(19.r),
                                                    bottomRight:
                                                        Radius.circular(19.r),
                                                  ),
                                                ),
                                                child: Icon(
                                                  Icons.search,
                                                  color: Colors.white,
                                                  size: 20.sp,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(4, (index) {
                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedIndex = index;
                                          });
                                          _pageController.animateToPage(
                                            index,
                                            duration: const Duration(
                                                milliseconds: 50),
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
                                    height: 80.h,
                                    child: PageView.builder(
                                      itemCount: _items.length,
                                      padEnds: false,
                                      controller: _pageController,
                                      onPageChanged: (value) {
                                        setState(() {
                                          selectedIndex =
                                              value; // Update selectedIndex based on page change
                                        });
                                      },
                                      itemBuilder: (context, index) {
                                        Map<String, dynamic> data =
                                            _items[index];

                                        // Highlight only when index == 4
                                        bool isActive = index == 1;
                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              selectedIndex = index;
                                            });
                                          },
                                          child: AnimatedContainer(
                                            padding: EdgeInsets.zero,
                                            duration: const Duration(
                                                milliseconds: 300),
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
                                                      alignment:
                                                          Alignment.center,
                                                      fit: BoxFit.contain,
                                                      theme: const SvgTheme(
                                                          currentColor: Color(
                                                              0xffdd9d9d9)),
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
                                                      fontWeight:
                                                          FontWeight.w700,
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

                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.w),
                                    child: const Divider(
                                      thickness: 0.4,
                                      height: 1,
                                      color: ColorConstant.grayColor,
                                    ),
                                  ),
                                  if (_isSectionsVisible)
                                    Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const BrandBazarScreen(),
                                                  ));
                                            },
                                            child: const Text(
                                              "Brandbazaar",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFFD9D9D9),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const MySubscribeAndWinPage(),
                                                  ));
                                            },
                                            child: const Text(
                                              "BuyOrWin",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFFD9D9D9),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  //   ],
                                  // ),
                                ],
                              ),
                            ),
                          ),
                          if (_showSearchProductModels)
                            Positioned(
                              top: 80.h, // Position just below the search bar
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
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    BusinessTabScreen(
                                                  query: _searchController.text,
                                                ),
                                              ),
                                            );
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
                                    return Center(
                                        child: Text(error.toString()));
                                  },
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),

                    GestureDetector(
                      onVerticalDragUpdate: _onDragUpdate,
                      onVerticalDragStart: _onDragStart,
                      onTap: () {
                        setState(() {
                          _isSectionsVisible = !_isSectionsVisible;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 5.h),
                        child: Center(
                          child: Container(
                            alignment: AlignmentDirectional.centerStart,
                            margin: EdgeInsets.only(top: 5.h),
                            height: 7.h,
                            width: 60.w,
                            decoration: BoxDecoration(
                                color: const Color(0xFF681b4e),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 5.h,
                    // ),
                    if (_isPopupVisible)
                      Center(
                        child: StorySearchBar(
                          onClose: () {
                            setState(() {
                              _isPopupVisible = false; // Close the popup
                            });
                          },
                        ),
                      ),
                    asyncHomeStoryContent.when(
                      data: (feedStoryData) {
                        final homeStory = feedStoryData.homeStory;

                        if (homeStory != null &&
                            homeStory is Map<String, dynamic> &&
                            homeStory.length == 0 &&
                            homeStory.containsKey('story')) {
                          final story = homeStory['story'];

                          if (story != null &&
                              story is Map<String, dynamic> &&
                              story.containsKey('posts')) {
                            var posts = story['posts'];

                            if (posts != null && posts is List<dynamic>) {
                              posts = (posts).where((e) => e != null).toList();
                              // if (posts.isNotEmpty)
                              return SizedBox(
                                height: 100.h,
                                child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: posts.length,
                                  itemBuilder: (context, index) {
                                    final story = posts[index];
                                    if (story is Map<String, dynamic>) {
                                      final storyObject =
                                          Story(posts: [Post.fromJson(story)]);

                                      return HomePageStoryContainer(
                                        index: index,
                                        vendorName: story['vendor_name'] ??
                                            "Unknown Vendor",
                                        vendorImage: story['vendor_image'] ??
                                            "https://example.com/default-image.png",
                                        storyCount: story['story_count'] ?? 0,
                                        showGift:
                                            story['has_sponsored_gifts'] ??
                                                false,
                                        feedStoryContent: storyObject,
                                        userId: story['vendor_id'],
                                      );
                                    } else {
                                      return Container(); // Return an empty container if the post doesn't match the expected format
                                    }
                                  },
                                ),
                              );
                            }
                          }
                        }

                        // If any of the above conditions fail, return a default widget
                        return SizedBox.shrink();
                      },
                      loading: () => SizedBox(
                        height: 100.h,
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.horizontal,
                          itemCount: 5, // Number of shimmer placeholders
                          itemBuilder: (context, index) => Shimmer.fromColors(
                            baseColor: Colors.grey[300]!,
                            highlightColor: Colors.grey[100]!,
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              width: 70.w,
                              height: 100.h,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                      error: (error, stack) =>
                          Center(child: Text('Error: $error')),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 15.h,
                        ),
                        // existing slider for pageview

                        // sliders.when(
                        //   data: (data) {
                        //     // print("binod ${data[0].image}");
                        //
                        //     return SizedBox(
                        //       height: 60.h,
                        //       width: double.infinity,
                        //       child: PageView.builder(
                        //         allowImplicitScrolling: true,
                        //         itemCount: data.advertisements.length,
                        //         scrollDirection: Axis.horizontal,
                        //         itemBuilder: (context, index) {
                        //           return Image.network(
                        //             data.advertisements[index].image!,
                        //             height: 60.h,
                        //             width: double.infinity,
                        //             fit: BoxFit.fill,
                        //           );
                        //         },
                        //       ),
                        //     );
                        //   },
                        //   error: (error, stackTrace) {
                        //     return Text("try again $error");
                        //   },
                        //   loading: () {
                        //     return const CircularProgressIndicator();
                        //   },
                        // ),

                        homePostsData.when(
                          data: (data) {
                            return Stack(
                              children: [
                                // Carousel Slider
                                Positioned(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 130.h,
                                        width: double.infinity,
                                        child: CarouselSlider(
                                          items: data.sliders.map((banner) {
                                            return InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const B2bScreen(),
                                                  ),
                                                );
                                              },
                                              child: CachedNetworkImage(
                                                width: double.infinity,
                                                fit: BoxFit.fill,
                                                imageUrl: banner.image,
                                                errorWidget:
                                                    (context, url, error) =>
                                                        const Icon(Icons.error),
                                              ),
                                            );
                                          }).toList(),
                                          options: CarouselOptions(
                                            aspectRatio:
                                                2.5, // Adjust this as per design
                                            viewportFraction:
                                                1.0, // Full-screen carousel
                                            autoPlay: true,
                                            enlargeCenterPage: false,
                                            onPageChanged: (index, reason) {
                                              setState(() {
                                                _currentIndex =
                                                    index; // Update the current index
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                // Dots Indicator
                                Positioned(
                                  left: MediaQuery.of(context).size.width / 2 -
                                      50, // Center the dots
                                  bottom: 10.h,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: data.sliders.map((banner) {
                                      int index = data.sliders.indexOf(banner);
                                      return AnimatedContainer(
                                        duration:
                                            const Duration(milliseconds: 300),
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 5.0),
                                        height: 9.0,
                                        width: _currentIndex == index
                                            ? 12.0
                                            : 9.0, // Active dot is wider
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: _currentIndex == index
                                              ? Colors.white // Active dot color
                                              : Colors
                                                  .grey, // Inactive dot color
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ],
                            );
                          },
                          error: (error, stackTrace) {
                            return Text("Try again: $error");
                          },
                          loading: () {
                            // Shimmer Effect for Loading State
                            return SizedBox(
                              height: 130.h,
                              child: Shimmer.fromColors(
                                baseColor: Colors.grey[300]!,
                                highlightColor: Colors.grey[100]!,
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),

                        SizedBox(
                          height: 5.h,
                        ),

                        // Display Products for the selected category
                        category.when(
                          data: (data) {
                            double dynamicHeight;
                            // Define the products list corresponding to each category
                            List<List<CategoryProduct>> productsList = [
                              data.new_products, // SHOPZONE
                              data.b2b_products, // TRADEHUB
                              data.services, // SERVICES
                              data.used_products, // USED
                              data.jobs, // JOB
                              data.event, // EVENT
                              data.grocarry, // GROCERY
                            ];

                            // Ensure selectedIndex is valid and get products
                            List<CategoryProduct> products =
                                productsList[selectedIndexx];

                            dynamicHeight = products.isEmpty ? 160.h : 390.h;

                            return SizedBox(
                              height: dynamicHeight,
                              width: double.infinity,
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: double.infinity,
                                    height: 50.h,
                                    child: ListView.builder(
                                      padding: EdgeInsets.zero,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: categories.length,
                                      itemBuilder: (context, index) {
                                        bool isSelected =
                                            index == selectedIndexx;
                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              selectedIndexx =
                                                  index; // Update selected index
                                            });
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            margin: const EdgeInsets.all(5),
                                            width: 100.w,
                                            decoration: BoxDecoration(
                                              color: isSelected
                                                  ? const Color(0xFF681b4e)
                                                  : const Color(0xffA5A5A5),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Text(
                                              categories[index],
                                              style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  SizedBox(height: 5.h),
                                  products.isNotEmpty
                                      ? SizedBox(
                                          child: AnimatedContainer(
                                            padding: EdgeInsets.zero,
                                            margin: EdgeInsets.zero,
                                            duration: const Duration(
                                                milliseconds: 400),
                                            // height: 300.h,
                                            width: double.infinity,
                                            child: SingleChildScrollView(
                                              padding: EdgeInsets.zero,
                                              scrollDirection: Axis.horizontal,
                                              child: Wrap(
                                                spacing: 3.w,
                                                runSpacing: 0.h,
                                                children: List.generate(
                                                    products.length, (index) {
                                                  CategoryProduct prod =
                                                      products[index];
                                                  return InkWell(
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              ProductDetailScreen(
                                                            productId: prod.id,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    child: ProductDetailWidget(
                                                      didcountpercentage: prod
                                                          .discount_percentage,
                                                      distance:
                                                          prod.shortestDistance,
                                                      issponsored: prod
                                                              .userdetails
                                                              ?.sponsored ??
                                                          false,
                                                      shortestDistance:
                                                          double.tryParse(
                                                              prod.nearestBranch ??
                                                                  '0'),
                                                      wow: prod.wow,
                                                      comment: prod.commentCount
                                                          .toString(),
                                                      avg_rating: prod.avgRating
                                                          ?.toDouble(),
                                                      offer: prod.offers,
                                                      id: int.tryParse(prod
                                                              .userdetails
                                                              ?.id ??
                                                          '0'),
                                                      lefttile: categories[
                                                          selectedIndexx],
                                                      vendorname: prod
                                                              .userdetails
                                                              ?.name ??
                                                          '',
                                                      discounttedPrice:
                                                          prod.discountedPrice,
                                                      Vimage: prod
                                                          .userdetails?.photo,
                                                      price: prod.price,
                                                      title: prod.title,
                                                      productImage: prod.image,
                                                      membershipColor: prod
                                                              .userdetails
                                                              ?.memberColor ??
                                                          '',
                                                      similarproductCount: prod
                                                          .similarProductCount,
                                                      membershipTitle: prod
                                                              .userdetails
                                                              ?.membershipTitle ??
                                                          '',
                                                    ),
                                                  );
                                                }),
                                              ),
                                            ),
                                          ),
                                        )
                                      : Padding(
                                          padding: EdgeInsets.only(top: 50.h),
                                          child: nolistingfound(),
                                        ),
                                ],
                              ),
                            );
                          },
                          error: (error, stackTrace) =>
                              Center(child: Text("Error: $error")),
                          loading: () {
                            // Shimmer Effect for Loading State
                            return SizedBox(
                              height: 200.h,
                              child: Shimmer.fromColors(
                                baseColor: Colors.grey[300]!,
                                highlightColor: Colors.grey[100]!,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount:
                                      6, // Show placeholder items while loading
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 5.w),
                                      child: Container(
                                        width: 150
                                            .w, // Placeholder width for product item
                                        height: 250
                                            .h, // Placeholder height for product item
                                        color: Colors.grey, // Placeholder color
                                      ),
                                    );
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        // Expanded(

                        // child: ProductDetailWidget(),),

                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: TabBar(
                            padding: EdgeInsets.zero,
                            controller: dynamictabController,
                            tabs: const [
                              Tab(
                                text: ' Global\n Brands',
                              ),
                              Tab(text: ' Domestic\n Brands'),
                              Tab(
                                  text:
                                      ' Spotlight\n Sellers'), // Changed label for clarity
                            ],
                            labelColor: const Color(0xff909090),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        buyorwin.when(
                          data: (data) {
                            double dynamicHeight;

                            if (dynamictabController.index == 0) {
                              dynamicHeight =
                                  data.insidearr[0].isEmpty ? 200.h : 430.h;
                            } else if (dynamictabController.index == 1) {
                              // Ensure data.doma[0] is valid and has length
                              dynamicHeight = (data.doma.isNotEmpty &&
                                      data.doma[0].isNotEmpty)
                                  ? 430.h
                                  : 200.h;
                            } else if (dynamictabController.index == 2)
                              dynamicHeight = (data.spotlight.isNotEmpty &&
                                      data.spot[0].isNotEmpty)
                                  ? 430.h
                                  : 200.h;
                            else
                              dynamicHeight = 420;
                            return SizedBox(
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                height: dynamicHeight, // Main dynamic height
                                width: double.infinity,
                                child: TabBarView(
                                  controller: dynamictabController,
                                  children: [
                                    // First Tab
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            if (data.global.isNotEmpty)
                                              ...data.global.map((e) {
                                                return NotStoryWidget(
                                                  vImage: e
                                                      .brandLogo, // Use the correct variable name
                                                  index: data.global.indexOf(
                                                      e), // Get the index
                                                  brandname: e.brandName,
                                                );
                                              }).toList(),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 25.h,
                                        ),
                                        data.insidearr[0].isEmpty
                                            ? Padding(
                                                padding:
                                                    EdgeInsets.only(top: 28.h),
                                                child: Center(
                                                    child: nolistingfound()),
                                              )
                                            : SizedBox(
                                                child: SingleChildScrollView(
                                                  scrollDirection: Axis
                                                      .horizontal, // Horizontal scrolling
                                                  child: Wrap(
                                                    spacing: 0
                                                        .w, // Horizontal space between items
                                                    runSpacing: 20
                                                        .h, // Vertical space between rows
                                                    children: List.generate(
                                                        data.insidearr[0]
                                                            .length, (index) {
                                                      GlobalModel prod = data
                                                          .insidearr[0][index];

                                                      return Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    5.w),
                                                        child: InkWell(
                                                          onTap: () {
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder: (context) =>
                                                                    ProductDetailScreen(
                                                                        productId:
                                                                            prod.id),
                                                              ),
                                                            );
                                                          },
                                                          child:
                                                              ProductDetailWidget(
                                                            lefttile: prod
                                                                .posttypename,
                                                            tradeImage:
                                                                globalicon,
                                                            didcountpercentage:
                                                                prod.discount_percentage,
                                                            shortestDistance: prod
                                                                .shortestDistance,
                                                            distance: prod
                                                                .shortestDistance,
                                                            avg_rating:
                                                                prod.avg_rating,
                                                            offer: prod.offers,
                                                            id: int.tryParse(
                                                                prod.user.first
                                                                    .user_id),
                                                            comment:
                                                                prod.commentnum,
                                                            wow: prod.wow,
                                                            issponsored: prod
                                                                .user[0]
                                                                .sponsored!,
                                                            vendorname: prod
                                                                .contactName,
                                                            discounttedPrice:
                                                                prod.discont,
                                                            Vimage: prod.user
                                                                .first.photo,
                                                            price: prod.price,
                                                            title: prod.title,
                                                            productImage:
                                                                prod.imageUrl,
                                                            similarproductCount:
                                                                prod.similarproductCount,
                                                            membershipColor: prod
                                                                .user
                                                                .first
                                                                .membership_color,
                                                            membershipTitle: prod
                                                                .user
                                                                .first
                                                                .membership_title,
                                                          ),
                                                        ),
                                                      );
                                                    }),
                                                  ),
                                                ),
                                              ),
                                      ],
                                    ),
                                    // Second Tab
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        if (data.domestic.isNotEmpty)
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              children: data.domestic.map((e) {
                                                return NotStoryWidget(
                                                  vImage: e.brandLogo,
                                                  index:
                                                      data.domestic.indexOf(e),
                                                  brandname: e.brandName,
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                        SizedBox(
                                          height: 25.h,
                                        ),
                                        if (data.domestic.isNotEmpty)
                                          SizedBox(
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis
                                                  .horizontal, // Horizontal scrolling
                                              child: Wrap(
                                                spacing: 3
                                                    .w, // Horizontal space between items
                                                runSpacing: 0
                                                    .h, // Vertical space between rows
                                                children: List.generate(
                                                    data.doma[0].length,
                                                    (index) {
                                                  GlobalModel prod =
                                                      data.doma[0][index];
                                                  return InkWell(
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              ProductDetailScreen(
                                                                  productId:
                                                                      prod.id),
                                                        ),
                                                      );
                                                    },
                                                    child: ProductDetailWidget(
                                                      lefttile:
                                                          prod.posttypename,
                                                      tradeImage: domesticicon,
                                                      didcountpercentage: prod
                                                          .discount_percentage,
                                                      Vimage:
                                                          prod.user.first.photo,
                                                      shortestDistance:
                                                          prod.shortestDistance,
                                                      distance:
                                                          prod.shortestDistance,
                                                      avg_rating:
                                                          prod.avg_rating,
                                                      offer: prod.offers,
                                                      id: int.tryParse(prod
                                                          .user.first.user_id),
                                                      comment: prod.commentnum,
                                                      wow: prod.wow,
                                                      issponsored: prod
                                                          .user[0].sponsored!,
                                                      vendorname:
                                                          prod.contactName,
                                                      discounttedPrice:
                                                          prod.discont,
                                                      price: prod.price,
                                                      title: prod.title,
                                                      productImage:
                                                          prod.imageUrl,
                                                      similarproductCount: prod
                                                          .similarproductCount,
                                                      membershipColor: prod
                                                          .user
                                                          .first
                                                          .membership_color,
                                                      membershipTitle: prod
                                                          .user
                                                          .first
                                                          .membership_title,
                                                    ),
                                                  );
                                                }),
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                    //third tab
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        if (data.domestic.isNotEmpty)
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              children: data.spotlight.map((e) {
                                                return NotStoryWidget(
                                                  vImage: e.brandLogo,
                                                  index:
                                                      data.spotlight.indexOf(e),
                                                  brandname: e.brandName,
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                        SizedBox(
                                          height: 25.h,
                                        ),
                                        if (data.spot[0].isNotEmpty)
                                          SingleChildScrollView(
                                            scrollDirection: Axis
                                                .horizontal, // Horizontal scrolling
                                            child: Wrap(
                                              spacing: 3
                                                  .w, // Horizontal space between items
                                              runSpacing: 0
                                                  .h, // Vertical space between rows
                                              children: List.generate(
                                                  data.spot[0].length, (index) {
                                                GlobalModel prod =
                                                    data.spot[0][index];
                                                print(
                                                    'laka ${prod.discount_percentage} and ${prod.title}');
                                                return InkWell(
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            ProductDetailScreen(
                                                                productId:
                                                                    prod.id),
                                                      ),
                                                    );
                                                  },
                                                  child: ProductDetailWidget(
                                                    didcountpercentage: prod
                                                        .discount_percentage,
                                                    lefttile: prod.posttypename,
                                                    tradeImage: spotlighticon,
                                                    Vimage:
                                                        prod.user.first.photo,
                                                    shortestDistance:
                                                        prod.shortestDistance,
                                                    distance:
                                                        prod.shortestDistance,
                                                    avg_rating: prod.avg_rating,
                                                    offer: prod.offers,
                                                    id: int.tryParse(prod
                                                        .user.first.user_id),
                                                    comment: prod.commentnum,
                                                    wow: prod.wow,
                                                    issponsored:
                                                        prod.user[0].sponsored!,
                                                    vendorname:
                                                        prod.contactName,
                                                    discounttedPrice:
                                                        prod.discont,
                                                    price: prod.price,
                                                    title: prod.title,
                                                    productImage: prod.imageUrl,
                                                    similarproductCount: prod
                                                        .similarproductCount,
                                                    membershipColor: prod.user
                                                        .first.membership_color,
                                                    membershipTitle: prod.user
                                                        .first.membership_title,
                                                  ),
                                                );
                                              }),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          error: (error, stackTrace) {
                            return Text("Error: $error");
                          },
                          loading: () => SizedBox(
                            height: 350.h, // Adjust the height dynamically
                            child: Shimmer.fromColors(
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[100]!,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount:
                                    6, // Show placeholder items while loading
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5.w),
                                    child: Container(
                                      width: 150
                                          .w, // Placeholder width for product item
                                      height: 250
                                          .h, // Placeholder height for product item
                                      color: Colors.grey, // Placeholder color
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),

                        // buyorwin.when(
                        //   data: (data) {
                        //     return SizedBox(
                        //       height: 340.h,
                        //       child: ListView.builder(
                        //         padding: const EdgeInsets.all(3),
                        //         clipBehavior: Clip.antiAlias,
                        //         scrollDirection: Axis.horizontal,
                        //         itemCount: data.home.length,
                        //         shrinkWrap: true,
                        //         itemBuilder: (context, index) {
                        //           Home1GlobalModel prefs = data.home[index];
                        //           return ProductDetailWidget(
                        //             price: prefs.price,
                        //             productImage: prefs.image,
                        //             title: prefs.title,
                        //             vendorname: prefs.userDetails!.name,
                        //             Vimage: prefs.userDetails!.photo,
                        //             similarproductCount:
                        //                 prefs.similarProductCount,
                        //             membershipColor:
                        //                 prefs.userDetails!.memberColor,
                        //             membershipTitle:
                        //                 prefs.userDetails!.membershipTitle,
                        //           );
                        //         },
                        //       ),
                        //     );
                        //   },
                        //   error: (error, stackTrace) {
                        //     return Text("error $error");
                        //   },
                        //   loading: () {
                        //     return const CircularProgressIndicator();
                        //   },
                        // ),

                        Center(
                          child: Column(
                            children: [
                              Text(
                                "BuyOrWin",
                                textAlign: TextAlign.center,
                                style: headerstyle.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: const Color(0xff551b55)),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Center(
                                child: Container(
                                  alignment: AlignmentDirectional.centerStart,
                                  margin: EdgeInsets.only(bottom: 5.h),
                                  height: 5.h,
                                  width: 100.w,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF681b4e),
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),

                        buyorwin.when(
                          data: (data) {
                            return SizedBox(
                              height: 310.h,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: data.buynow.length,
                                itemBuilder: (context, index) {
                                  Buynowmodel resp = data.buynow[index];
                                  return buyorwin_widget(
                                    wow: resp.wow ?? '0',
                                    gift_qty: resp.gift_qty!,
                                    worth: resp.worth!,
                                    productname: "Discount Coupon",
                                    vendorImage: resp.vendorImage,
                                    vendorname: resp.name,
                                    winners: resp.winners.toString(),
                                    proctimage:
                                        "https://smartbazaar.jianjun-rnd.com.np/uploads/gifts/default.png",
                                  );
                                },
                              ),
                            );
                          },
                          error: (error, stackTrace) {
                            return Text("error $error");
                          },
                          loading: () {
                            // Shimmer loading effect
                            return SizedBox(
                              height: 310.h,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount:
                                    5, // Adjust this number for the number of shimmer items
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8.w),
                                    child: Shimmer.fromColors(
                                      baseColor: Colors.grey[300]!,
                                      highlightColor: Colors.grey[100]!,
                                      child: Container(
                                        width: 150.w,
                                        height: 150.h,
                                        color: Colors.white,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        ),

                        SizedBox(
                          height: 10.h,
                        ),
                        Center(
                          child: Column(
                            children: [
                              Text(
                                "Sponsored",
                                textAlign: TextAlign.center,
                                style: headerstyle.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: const Color(0xff551b55)),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Center(
                                child: Container(
                                  alignment: AlignmentDirectional.centerStart,
                                  margin: EdgeInsets.only(bottom: 5.h),
                                  height: 5.h,
                                  width: 100.w,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff901B41),
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              getSponsored.when(
                                data: (data) {
                                  return SizedBox(
                                    height: 330
                                        .h, // Adjust as needed for dynamic height
                                    child: SingleChildScrollView(
                                      padding: EdgeInsets.zero,
                                      scrollDirection: Axis
                                          .horizontal, // Horizontal scroll direction
                                      child: Wrap(
                                        spacing:
                                            3, // No horizontal spacing between items
                                        runSpacing:
                                            0, // No vertical spacing between rows
                                        children:
                                            List.generate(data.length, (index) {
                                          SponsoredProduct prefs = data[index];
                                          return InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ProductDetailScreen(
                                                    productId: prefs.id,
                                                  ),
                                                ),
                                              );
                                            },
                                            child: ProductDetailWidget(
                                              didcountpercentage: prefs
                                                  .discount_percentage
                                                  ?.toInt(),
                                              shortestDistance: prefs
                                                  .userdetails
                                                  ?.shortestDistance,
                                              issponsored:
                                                  prefs.userdetails!.sponsored!,
                                              wow: prefs.wow,
                                              distance: prefs.shortestDistance,
                                              comment:
                                                  prefs.commentcount.toString(),
                                              avg_rating:
                                                  prefs.avg_rating?.toDouble(),
                                              discounttedPrice:
                                                  prefs.discounted_price,
                                              offer: prefs.offers,
                                              id: int.tryParse(prefs.id),
                                              price: prefs.price,
                                              productImage: prefs.image,
                                              title: prefs.title,
                                              vendorname:
                                                  prefs.userdetails!.name,
                                              Vimage: prefs.userdetails!.photo,
                                              similarproductCount:
                                                  prefs.similarProductCount,
                                              membershipColor: prefs
                                                  .userdetails!
                                                  .membership_color,
                                              membershipTitle: prefs
                                                  .userdetails!
                                                  .membership_title,
                                            ),
                                          );
                                        }),
                                      ),
                                    ),
                                  );
                                },
                                error: (error, stackTrace) {
                                  return Text("Error: $error");
                                },
                                loading: () {
                                  // Shimmer loading effect
                                  return SizedBox(
                                    height: 340
                                        .h, // Adjust as needed for dynamic height
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis
                                          .horizontal, // Horizontal scroll direction
                                      child: Wrap(
                                        spacing:
                                            0, // No horizontal spacing between items
                                        runSpacing:
                                            0, // No vertical spacing between rows
                                        children: List.generate(5, (index) {
                                          // Adjust this number for the number of shimmer items
                                          return Shimmer.fromColors(
                                            baseColor: Colors.grey[300]!,
                                            highlightColor: Colors.grey[100]!,
                                            child: Container(
                                              width: 150.w,
                                              height: 150.h,
                                              color: Colors.white,
                                            ),
                                          );
                                        }),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(
                            top: 10.h,
                            bottom: 10.h,
                            left: 10.w,
                            right: 10.w,
                          ),
                          child: Row(
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
                              // SizedBox(height: 5.h,)
                            ],
                          ),
                        ),

                        // SizedBox(
                        //   height: 5.h,
                        // ),

                        // Inside your sliders.when function

                        sliders.when(
                          data: (data) {
                            return SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection:
                                  Axis.vertical, // Scroll vertically if needed
                              child: Wrap(
                                spacing: 5.w, // Horizontal space between items
                                runSpacing: 15.h, // Vertical space between rows
                                children: List.generate(
                                  data.allProducts.length,
                                  (index) {
                                    VProduct res = data.allProducts[index];
                                    return InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ProductDetailScreen(
                                              productId: res.id,
                                            ),
                                          ),
                                        );
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
                                            discountpercentage:
                                                res.discount_percentage,
                                            id: int.tryParse(
                                                res.userDetail.user_id!),
                                            shortestDistance:
                                                res.user.shortestDistance,
                                            issponsored:
                                                res.userDetail.sponsored ??
                                                    false,
                                            distance: res.user.shortestDistance,
                                            wow: res.wow.toString(),
                                            discounttedPrice:
                                                res.discountedPrice,
                                            comment:
                                                res.commentCount.toString(),
                                            avg_rating:
                                                res.avgRating?.toDouble() ??
                                                    0.0,
                                            offer: res.offers,
                                            productImage: res.image,
                                            Vimage: res.userDetail.photo,
                                            vendorname: res.userDetail.name,
                                            title: res.title,
                                            price: res.price,
                                            similarproductCount:
                                                res.similarProductCount,
                                            membershipColor:
                                                res.userDetail.membership_color,
                                            membershipTitle:
                                                res.userDetail.membership_title,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            );
                          },
                          error: (error, stackTrace) {
                            return Text('Error: $error');
                          },
                          loading: () {
                            // Shimmer loading effect
                            return SingleChildScrollView(
                              scrollDirection:
                                  Axis.vertical, // Scroll vertically if needed
                              child: Wrap(
                                spacing: 5.w, // Horizontal space between items
                                runSpacing: 15.h, // Vertical space between rows
                                children: List.generate(5, (index) {
                                  // Adjust this number for the number of shimmer items
                                  return Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5.w),
                                    child: Shimmer.fromColors(
                                      baseColor: Colors.grey[300]!,
                                      highlightColor: Colors.grey[100]!,
                                      child: Container(
                                        width:
                                            (MediaQuery.of(context).size.width -
                                                    30.w) /
                                                2,
                                        height: 250
                                            .h, // Adjust the height as needed for shimmer items
                                        color: Colors.white,
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                  ]),
            ),
          ),
          valuenotifilersidebutton(
              showSideBar: _showSideBar, isSectionsVisible: _isSectionsVisible),
        ]));
  }
}

class valuenotifilersidebutton extends StatelessWidget {
  const valuenotifilersidebutton({
    super.key,
    required ValueNotifier<bool> showSideBar,
    required bool isSectionsVisible,
  })  : _showSideBar = showSideBar,
        _isSectionsVisible = isSectionsVisible;

  final ValueNotifier<bool> _showSideBar;
  final bool _isSectionsVisible;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _showSideBar,
      builder: (context, value, child) {
        return Positioned(
            top: _isSectionsVisible ? 300 : 300,
            right: 0,
            child: InkWell(
              onTap: () {
                _showSideBar.value = !value;
              },
              child: value
                  ? const CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                          'assets/images/Smartbazaar-Icon-for-QR.png'),
                    )
                  : Container(
                      width: 70.w,
                      padding: EdgeInsets.symmetric(
                        vertical: 5.h,
                      ),
                      // Explicit height set
                      decoration: BoxDecoration(
                          color: const Color(0xffE2DAE5).withOpacity(0.9),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                      child: Center(
                          child: Column(
                        children: [
                          SizedBox(
                            height: 6.h,
                          ),
                          Image.asset('assets/images/smart.png'),
                          SizedBox(
                            height: 6.h,
                          ),
                          IconButton(
                              onPressed: () {},
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
                                        color: const Color(0xff918994)),
                                  )
                                ],
                              )),
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const PendingApprovalScreen(),
                                    ));
                              },
                              icon: Column(
                                children: [
                                  const Icon(
                                    Icons.shopping_cart_outlined,
                                    size: 15,
                                    color: Color(0xff918994),
                                  ),
                                  Text(
                                    "cart",
                                    style: headerstyle.copyWith(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w700,
                                        color: const Color(0xff918994)),
                                  )
                                ],
                              )),
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const CreateNewListinScreen(),
                                    ));
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
                                        color: const Color(0xff918994)),
                                  )
                                ],
                              )),
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const MyOrderScreen(),
                                    ));
                              },
                              icon: Column(
                                children: [
                                  Image.asset('assets/images/tennis.png'),
                                  Text(
                                    "Orders",
                                    style: headerstyle.copyWith(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w700,
                                        color: const Color(0xff918994)),
                                  )
                                ],
                              )),
                        ],
                      )),
                    ),
            ));
      },
    );
  }
}

class ProductSlider extends StatelessWidget {
  const ProductSlider({
    super.key,
    required this.homePostsData,
    required this.valueExtractor,
    required this.title,
  });

  final String title;
  final AsyncValue<HomePosts> homePostsData;
  final List<Product> Function(HomePosts) valueExtractor;

  @override
  Widget build(BuildContext context) {
    final value = homePostsData.valueOrNull;
    if (value != null && valueExtractor(value).isNotEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            height: productCardHeight,
            child: switch (homePostsData) {
              AsyncData(:final value) => ListView.separated(
                  primary: false,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  shrinkWrap: true,
                  itemCount: valueExtractor(value).length,
                  itemBuilder: (context, index) {
                    final product = valueExtractor(value)[index];
                    return ProductCard(
                      product: product,
                      onTap: (product) {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) =>
                        //           ProductDetailScreen(productId: product.id),
                        //     ));
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => ProductDetailsScreen(
                        //               productId: product.id,
                        //             )
                        //             ));
                      },
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 12.w,
                    );
                  },
                ),
              AsyncError() => ProductSliderSkeleton(),
              _ => ProductSliderSkeleton(),
            },
          ),
        ],
      );
    } else {
      return Container();
    }
  }
}

class ProductSliderSkeleton extends StatelessWidget {
  ProductSliderSkeleton({super.key});

  final List<Product> fakeDate = List.generate(
    7,
    (index) => Product(
      id: '',
      title: '',
      price: '0',
      image: '',
      visits: '0',
      // pickup: '',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: ListView.separated(
        primary: false,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 5.w),
        shrinkWrap: true,
        itemCount: fakeDate.length,
        itemBuilder: (context, index) {
          final product = fakeDate[index];
          return ProductCard(
            product: product,
            onTap: (product) {},
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 12.w,
          );
        },
      ),
    );
  }
}
