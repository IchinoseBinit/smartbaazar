import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/view/bottom_navigation_bar.dart';
import 'package:smartbazar/features/b2b_screen/view/b2b_screen.dart';
import 'package:smartbazar/features/brand_bazar/api/screen_category_api.dart';
import 'package:smartbazar/features/brand_bazar/brand_bazar_screen.dart';
import 'package:smartbazar/features/bussiness_tab_screen/view/business_tab_screen.dart';
import 'package:smartbazar/features/button_nav_bar/cusom_btn_bar/bar.dart';
import 'package:smartbazar/features/events_screen/view/events_screen.dart';
import 'package:smartbazar/features/feed_page/view/feed_page_screen.dart';
import 'package:smartbazar/features/feed_page/widget/not_a_story_widget.dart';
import 'package:smartbazar/features/grocessary_screen/view/grocary_screen.dart';
import 'package:smartbazar/features/home/api/buy_or_now_provider.dart';
import 'package:smartbazar/features/home/api/get_story_provider.dart';
import 'package:smartbazar/features/home/api/post_type_story_api.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/home/model/home_story_model.dart';
import 'package:smartbazar/features/home/view/buyorwin_widget.dart';
import 'package:smartbazar/features/home/view/custom_border.dart';
import 'package:smartbazar/features/home/view/header.dart';
import 'package:rxdart/rxdart.dart';
import 'package:smartbazar/features/home/view/home_page_story_container.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/jobs_screen/api/jobs_provider.dart';
import 'package:smartbazar/features/message/view/message_view_screen.dart';
import 'package:smartbazar/features/product_details/constant/product_detail_widget.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/services_screen/api/service_provider.dart';
import 'package:smartbazar/features/services_screen/service_screen.dart';
import 'package:smartbazar/features/socio_screen/view/socio_screen.dart';
import 'package:smartbazar/features/used_screen/view/used_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_profile_screen.dart';
import 'package:smartbazar/features/vendor/view/my_subscribe_and_win_page.dart';

import '../../product_details/constant/all_product_detail_widget.dart';

class JobssScreen extends ConsumerStatefulWidget {
  const JobssScreen({super.key});

  @override
  ConsumerState<JobssScreen> createState() => _JobssScreenState();
}

class _JobssScreenState extends ConsumerState<JobssScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final TextEditingController _searchController = TextEditingController();
  final _debouncer = BehaviorSubject<String>();
  int? selectedIndex = 3;
  final ScrollController _scrollController = ScrollController();
  bool _isSectionsVisible = true;
  double _lastScrollOffset = 0;
  Offset _initialDragPosition = Offset.zero;
  final ValueNotifier<bool> _showSideBar = ValueNotifier<bool>(true);
  List<FetchCategory> allcat = [];
  // bool _showSearchProductModels = false;
  late TabController tabController;
  int? postypeid = 0;
  Map<String, String>? dropdownValue = headeritems.firstWhere(
    (item) => item['label'] == 'Jobs',
    orElse: () => headeritems.first, // Fallback to the first item if not found
  );

  final List<Map<String, dynamic>> _items = [
    {
      'icon': 'assets/icon/loading.svg',
      'label': 'Everything',
      'screen': const HomeScreen()
    },
    {
      'icon': 'assets/icon/vectors.svg',
      'label': 'Job',
      'screen': const JobssScreen()
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
      'icon': 'assets/icon/openCartIcon.svg',
      'label': 'SocioShop',
      'screen': const SocioShopScreen()
    },
    {
      'icon': 'assets/icon/box.svg',
      'label': 'ServiceHub',
      'screen': const ServicesScreen()
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
  int headerIndex = 0;
  int _currentIndex = 0;

  PageController _pageController = PageController(viewportFraction: 0.3);
  Timer? _timer;
  final PageController _adscontroller = PageController(
    initialPage: 0,
  );

  void _onPageChanged(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  int _currentPage = 0;
  bool _showSearchProductModels = false;

  @override
  void initState() {
    _pageController = PageController(
      viewportFraction: 0.3,
      initialPage: headerIndex,
    );
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
    });

    // Use the addPostFrameCallback to jump to the selected page after the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _pageController.jumpToPage(headerIndex);
    });
    super.initState();
    tabController = TabController(length: 3, vsync: this);

    _searchController.addListener(() {
      _debouncer.add(_searchController.text);
    });

    _debouncer.debounceTime(const Duration(milliseconds: 300)).listen((query) {
      debugPrint("Search query: $query");
      ref.refresh(
          searchProvider(query)); // Ensure this provider works as expected
      setState(() {
        _showSearchProductModels = query.isNotEmpty;
      });
    });
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

  ValueNotifier<int> selectedIndexNotifier = ValueNotifier<int>(0);
  @override
  void dispose() {
    // tabController.dispose();
    _debouncer.close();
    _searchController.dispose();
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ref.watch(fetchAdsProvider);
    //     final adsList = ref.watch(fetchAdsProvider);
    // final randomstory = ref.watch(fetchStoryHomeProvider);
    final asyncbajarValue = ref.watch(getjobsResponseProvider);
    final SearchProductModels =
        ref.watch(searchProvider(_searchController.text));
    final category = ref.watch(getCategoriesProvider(73));
    final asyncPostTypeContent = ref.watch(getPostTypeStoryApiProvider('4'));

    // asyncbajarValue.when(data: (data) {
    final pselectedIndex = ref.watch(bottomNavIndexProvider);

    // }, error: (error, stackTrace) {

    // }, loading: () {
    //   return CircularProgressIndicator();
    // },)
    // final SearchProductModels = ref.watch(searchProvider(
    //     _searchController.text)); // Ensure this updates correctly

    return Scaffold(
        extendBody: true,
        bottomNavigationBar: CustomBottomNavigationBar(
          selectedIndex: pselectedIndex, // Pass the current index
          onTabChanged: (index) {
            ref.read(bottomNavIndexProvider.notifier).state = index;

            // Add navigation logic here
            switch (index) {
              case 0:
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
                break;
              case 1:
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const FeedScreen()),
                );
                break;
              case 2:
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MessageViewScreen()),
                );
                break;
              case 3:
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const VendorProfileScreen()),
                );
                break;
            }
          },
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xffF6F1F1),
        // body: asyncbajarValue.when(
        //   data: (data) {},
        //   error: (error, stackTrace) {
        //     return Text("data")
        //   },
        //   loading: () {
        //     return CircularProgressIndicator();
        //   },
        // ),
        body: Stack(children: [
          Positioned.fill(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
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
                                                topLeft: Radius.circular(19.r),
                                                bottomLeft:
                                                    Radius.circular(19.r),
                                              ),
                                            ),
                                            child: DropdownButton<
                                                Map<String, String>>(
                                              alignment: Alignment.center,
                                              value: dropdownValue ??
                                                  headeritems[postypeid!],
                                              onChanged: (newValue) {
                                                setState(() {
                                                  dropdownValue = newValue;
                                                });
                                              },
                                              items: headeritems.map((item) {
                                                return DropdownMenuItem(
                                                  alignment: Alignment.center,
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
                                                                FontWeight.w600,
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
                                                focusedBorder: InputBorder.none,
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
                                              height: 45.h,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 20.w,
                                                  vertical: 5.h),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.white),
                                                color: Colors.transparent,
                                                borderRadius: BorderRadius.only(
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
                                      Map<String, dynamic> data = _items[index];

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
                                  return Center(child: Text(error.toString()));
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
                      padding: const EdgeInsets.all(5.0),
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
                  asyncPostTypeContent.when(
                    data: (feedStoryData) {
                      final homeStory = feedStoryData.homeStory;

                      if (homeStory != null &&
                          homeStory is Map<String, dynamic> &&
                          homeStory.containsKey('story')) {
                        final story = homeStory['story'];

                        if (story != null &&
                            story is Map<String, dynamic> &&
                            story.containsKey('posts')) {
                          final posts = story['posts'];

                          if (posts != null && posts is List<dynamic>) {
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
                                          story['has_sponsored_gifts'] ?? false,
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
                      return const SizedBox.shrink();
                    },
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    error: (error, stack) =>
                        Center(child: Text('Error: $error')),
                  ),

                  SizedBox(
                    height: 6.h,
                  ),
                  asyncbajarValue.when(
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
                                    items: data.sliders!.map((banner) {
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
                                          imageUrl: banner.image!,
                                          errorWidget: (context, url, error) =>
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
                              children: data.sliders!.map((banner) {
                                int index = data.sliders!.indexOf(banner);
                                return AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
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
                                        : Colors.grey, // Inactive dot color
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
                      return const CircularProgressIndicator();
                    },
                  ),
                  SizedBox(
                    height: 10.h,
                  ),

                  category.when(
                    data: (data) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: Column(
                          children: [
                            // Row for "ALL" and other services
                            SizedBox(
                              height: 100.h, // Adjust height as necessary
                              width: double.infinity,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    // "ALL" Services (Standalone)
                                    DottedBorder(
                                      strokeWidth: 2,
                                      color: Colors.grey,
                                      borderType: BorderType.RRect,
                                      radius: const Radius.circular(10),
                                      dashPattern: const [15, 15],
                                      child: SizedBox(
                                        width: 100,
                                        height: 100,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "ALL",
                                              style: headerstyle.copyWith(
                                                color: ColorConstant.blackColor,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "Jobs",
                                              style: headerstyle.copyWith(
                                                color: ColorConstant.blackColor,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    // Other Services List
                                    ListView(
                                      physics: const BouncingScrollPhysics(),
                                      scrollDirection: Axis.horizontal,
                                      shrinkWrap: true,
                                      children: data.map((e) {
                                        return Padding(
                                          padding: EdgeInsets.zero,
                                          child: GestureDetector(
                                            onTap: () {
                                              showMenu(
                                                context: context,
                                                position:
                                                    const RelativeRect.fromLTRB(
                                                        0,
                                                        0,
                                                        0,
                                                        0), // Base position
                                                items: [
                                                  PopupMenuItem(
                                                    value: 1,
                                                    child: ListTile(
                                                      title: const Text(
                                                          "View Story"),
                                                      leading: const Icon(
                                                          Icons.book),
                                                      onTap: () {
                                                        // Implement onTap logic
                                                      },
                                                    ),
                                                  ),
                                                  // Check if parentClosure is not null and show it
                                                  if (e.parentClosure != null)
                                                    PopupMenuItem(
                                                      value: 2,
                                                      child: ListTile(
                                                        title: Text(e
                                                                .parentClosure
                                                                ?.slug ??
                                                            'N/A'),
                                                        leading: const Icon(
                                                            Icons.info),
                                                      ),
                                                    ),
                                                ],
                                              );
                                            },
                                            child: PopupMenuButton<int>(
                                              offset: const Offset(0,
                                                  60), // Position for the menu
                                              itemBuilder: (context) => [
                                                const PopupMenuItem(
                                                  value: 1,
                                                  child: Text("View Story",
                                                      style: TextStyle(
                                                          fontSize: 16.0)),
                                                ),
                                                if (e.parentClosure != null)
                                                  PopupMenuItem(
                                                    value: 2,
                                                    child: Text(
                                                      e.parentClosure?.slug ??
                                                          'No Parent',
                                                      style: const TextStyle(
                                                          fontSize: 16.0),
                                                    ),
                                                  ),
                                              ],
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10.w),
                                                child: DashedBorder(
                                                  dashCount:
                                                      1, // Number of dashes in the border
                                                  child: SizedBox(
                                                    width: 150
                                                        .w, // Fixed width for the container
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Image.asset(
                                                            'assets/images/cloth.png'),
                                                        Center(
                                                          child: Text(
                                                            e.name ?? 'No Name',
                                                            style:
                                                                const TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 13,
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    error: (error, stackTrace) {
                      return Text(error.toString());
                    },
                    loading: () => const CircularProgressIndicator(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text(
                          'HOT DEALS',
                          style: headerstyle.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Image.asset(
                          'assets/images/flameIcon.png',
                          width: 16.w,
                          height: 17.h,
                        )
                      ],
                    ),
                  ),
                  asyncbajarValue.when(
                    data: (data) {
                      if (data.hotProducts.isNotEmpty) {
                        return SizedBox(
                          height: 340.h,
                          width: double.infinity,
                          child: ListView.builder(
                            padding: const EdgeInsets.all(3),
                            clipBehavior: Clip.antiAlias,
                            scrollDirection: Axis.horizontal,
                            itemCount: data.hotProducts.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              VProduct hot = data.hotProducts[index];
                              return InkWell(
                                onTap: () {
                                  print("biabsh ${hot.id}");
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ProductDetailScreen(
                                                productId: hot.id),
                                      ));
                                },
                                child: ProductDetailWidget(
                                  wow: hot.wow,
                                  comment: hot.commentcount.toString(),
                                  discounttedPrice: hot.discounted_price,
                                  issponsored: hot.user.sponsored,
                                  lefttile: "Jobs",
                                  productImage: hot.image,
                                  Vimage: hot.user.photo,
                                  price: hot.price,
                                  title: hot.title,
                                  vendorname: hot.user.name,
                                  similarproductCount: hot.similarProductCount,
                                  membershipColor: hot.user.membershipColor,
                                  membershipTitle: hot.user.membershipTitle,
                                ),
                              );
                            },
                          ),
                        );
                      }
                      return Center(
                        child: Padding(
                          padding:
                              EdgeInsets.only(top: 10.0.h), // Add padding here
                          child: nolistingfound(),
                        ),
                      );
                    },
                    error: (error, stackTrace) {
                      return Text(error.toString());
                    },
                    loading: () => const CircularProgressIndicator(),
                  ),

                  // Expanded(

                  // child: product_item_wid(),),
                  SizedBox(
                    height: 5.h,
                  ),

                  asyncbajarValue.when(
                    data: (data) {
                      return SizedBox(
                        height: data.hotProducts.isEmpty ? 5.h : 340.h,
                        width: double.infinity,
                        child: ListView.builder(
                          padding: const EdgeInsets.all(3),
                          clipBehavior: Clip.antiAlias,
                          scrollDirection: Axis.horizontal,
                          itemCount: data.hotProducts.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            VProduct hot = data.hotProducts[index];
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ProductDetailScreen(
                                          productId: hot.id),
                                    ));
                              },
                              child: ProductDetailWidget(
                                wow: hot.wow,
                                comment: hot.commentcount.toString(),
                                discounttedPrice: hot.discounted_price,
                                issponsored: hot.user.sponsored,
                                lefttile: "Jobs",
                                productImage: hot.image,
                                Vimage: hot.user.photo,
                                price: hot.price,
                                title: hot.title,
                                vendorname: hot.user.name,
                                similarproductCount: hot.similarProductCount,
                                membershipColor: hot.user.membershipColor,
                                membershipTitle: hot.user.membershipTitle,
                              ),
                            );
                          },
                        ),
                      );
                    },
                    error: (error, stackTrace) {
                      return Text(error.toString());
                    },
                    loading: () => const CircularProgressIndicator(),
                  ),

                  // Expanded(

                  // child: product_item_wid(),),
                  SizedBox(
                    height: 5.h,
                  ),

                  // // SizedBox(
                  // //     height: 360.h,
                  // //     width: double.infinity,
                  // //     child: ListView.builder(
                  // //       padding: EdgeInsets.zero,
                  // //       clipBehavior: Clip.antiAlias,
                  // //       scrollDirection: Axis.horizontal,
                  // //       itemCount: 5,
                  // //       shrinkWrap: true,
                  // //       itemBuilder: (context, index) {
                  // //         return ProductDetailWidget();
                  // //       },
                  // //     ),
                  // //   ),
                  // // asyncbajarValue.when(
                  // //   data: (data) {
                  // //     return Padding(
                  // //       padding: const EdgeInsets.all(10),
                  // //       child: Column(
                  // //         children: [
                  // //           Row(
                  // //             children: [
                  // //                       Text(
                  // //         data.cat[0].slug,
                  // //         style: headerstyle.copyWith(
                  // //             fontWeight: FontWeight.bold,
                  // //             fontSize: 17,
                  // //             color: Colors.black),
                  // //       ),
                  // //             ],
                  // //           ),
                  // //           SizedBox(
                  // //             height: 360.h,
                  // //             width: double.infinity,
                  // //             child: ListView.builder(
                  // //               padding: EdgeInsets.zero,
                  // //               clipBehavior: Clip.antiAlias,
                  // //               scrollDirection: Axis.horizontal,
                  // //               itemCount: data.insidearr[0].length,
                  // //               shrinkWrap: true,
                  // //               itemBuilder: (context, index) {
                  // //                 VProduct pro = data.insidearr[0][index];
                  // //                 return ProductDetailWidget(
                  // //                   Vimage: pro.user.photo,
                  // //                   price: pro.price,
                  // //                   title: pro.title,
                  // //                   vendorname: pro.user.name,
                  // //                   productImage: pro.image,
                  // //                 );
                  // //               },
                  // //             ),
                  // //           ),
                  // //         ],
                  // //       ),
                  // //     );
                  // //   },
                  // //   error: (error, stackTrace) {
                  // //     return Text("error $error");
                  // //   },
                  // //   loading: () {
                  // //     return CircularProgressIndicator();
                  // //   },
                  // // ),

                  // // Expanded(

                  // // child: product_item_wid(),),
                  // SizedBox(
                  //   height: 5.h,
                  // ),

                  // // asyncbajarValue.when(
                  // //   data: (data) {
                  // //     return Padding(
                  // //       padding: const EdgeInsets.all(10),
                  // //       child: Column(
                  // //         children: [
                  // //           Row(
                  // //             children: [
                  // //               Text(
                  // //         data.cat[1].slug,
                  // //         style: headerstyle.copyWith(
                  // //             fontWeight: FontWeight.bold,
                  // //             fontSize: 17,
                  // //             color: Colors.black),
                  // //       ),
                  // //             ],
                  // //           ),
                  // //           SizedBox(
                  // //             height: 360.h,
                  // //             width: double.infinity,
                  // //             child: ListView.builder(
                  // //               padding: EdgeInsets.zero,
                  // //               clipBehavior: Clip.antiAlias,
                  // //               scrollDirection: Axis.horizontal,
                  // //               itemCount: data.insidearr[1].length,
                  // //               shrinkWrap: true,
                  // //               itemBuilder: (context, index) {
                  // //                 VProduct pro = data.insidearr[1][index];
                  // //                 return ProductDetailWidget(
                  // //                   Vimage: pro.user.photo,
                  // //                   price: pro.price,
                  // //                   title: pro.title,
                  // //                   vendorname: pro.user.name,
                  // //                   productImage: pro.image,
                  // //                 );
                  // //               },
                  // //             ),
                  // //           ),
                  // //         ],
                  // //       ),
                  // //     );
                  // //   },
                  // //   error: (error, stackTrace) {
                  // //     return Text("error $error");
                  // //   },
                  // //   loading: () {
                  // //     return CircularProgressIndicator();
                  // //   },
                  // // ),

                  // asyncbajarValue.when(
                  //   data: (data) {
                  //     return Padding(
                  //       padding: const EdgeInsets.all(10),
                  //       child: Column(
                  //         children: [
                  //           Row(
                  //             children: [
                  //                      Text(
                  //         data.cat[2].slug,
                  //         style: headerstyle.copyWith(
                  //             fontWeight: FontWeight.bold,
                  //             fontSize: 17,
                  //             color: Colors.black),
                  //       ),
                  //             ],
                  //           ),
                  //           SizedBox(
                  //             height: 360.h,
                  //             width: double.infinity,
                  //             child: ListView.builder(
                  //               padding: EdgeInsets.zero,
                  //               clipBehavior: Clip.antiAlias,
                  //               scrollDirection: Axis.horizontal,
                  //               itemCount: data.insidearr[2].length,
                  //               shrinkWrap: true,
                  //               itemBuilder: (context, index) {
                  //                 VProduct pro = data.insidearr[2][index];
                  //                 return ProductDetailWidget(
                  //                   Vimage: pro.user.photo,
                  //                   price: pro.price,
                  //                   title: pro.title,
                  //                   vendorname: pro.user.name,
                  //                   productImage: pro.image,
                  //                 );
                  //               },
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     );
                  //   },
                  //   error: (error, stackTrace) {
                  //     return Text("error $error");
                  //   },
                  //   loading: () {
                  //     return CircularProgressIndicator();
                  //   },
                  // ),
                  // asyncbajarValue.when(
                  //   data: (data) {
                  //     return Padding(
                  //       padding: const EdgeInsets.all(10),
                  //       child: Column(
                  //         children: [
                  //           Row(
                  //             children: [
                  //                      Text(
                  //         data.cat[3].slug,
                  //         style: headerstyle.copyWith(
                  //             fontWeight: FontWeight.bold,
                  //             fontSize: 17,
                  //             color: Colors.black),
                  //       ),
                  //             ],
                  //           ),
                  //           SizedBox(
                  //             height: 360.h,
                  //             width: double.infinity,
                  //             child: ListView.builder(
                  //               padding: EdgeInsets.zero,
                  //               clipBehavior: Clip.antiAlias,
                  //               scrollDirection: Axis.horizontal,
                  //               itemCount: data.insidearr[3].length,
                  //               shrinkWrap: true,
                  //               itemBuilder: (context, index) {
                  //                 VProduct pro = data.insidearr[3][index];
                  //                 return ProductDetailWidget(
                  //                   Vimage: pro.user.photo,
                  //                   price: pro.price,
                  //                   title: pro.title,
                  //                   vendorname: pro.user.name,
                  //                   productImage: pro.image,
                  //                 );
                  //               },
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     );
                  //   },
                  //   error: (error, stackTrace) {
                  //     return Text("error $error");
                  //   },
                  //   loading: () {
                  //     return CircularProgressIndicator();
                  //   },
                  // ),
                  // asyncbajarValue.when(
                  //   data: (data) {
                  //     return Padding(
                  //       padding: const EdgeInsets.all(10),
                  //       child: Column(
                  //         children: [
                  //           Row(
                  //             children: [
                  //                        Text(
                  //         data.cat[4].slug,
                  //         style: headerstyle.copyWith(
                  //             fontWeight: FontWeight.bold,
                  //             fontSize: 17,
                  //             color: Colors.black),
                  //       ),
                  //             ],
                  //           ),
                  //           SizedBox(
                  //             height: 360.h,
                  //             width: double.infinity,
                  //             child: ListView.builder(
                  //               padding: EdgeInsets.zero,
                  //               clipBehavior: Clip.antiAlias,
                  //               scrollDirection: Axis.horizontal,
                  //               itemCount: data.insidearr[4].length,
                  //               shrinkWrap: true,
                  //               itemBuilder: (context, index) {
                  //                 VProduct pro = data.insidearr[4][index];
                  //                 return ProductDetailWidget(
                  //                   Vimage: pro.user.photo,
                  //                   price: pro.price,
                  //                   title: pro.title,
                  //                   vendorname: pro.user.name,
                  //                   productImage: pro.image,
                  //                 );
                  //               },
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     );
                  //   },
                  //   error: (error, stackTrace) {
                  //     return Text("error $error");
                  //   },
                  //   loading: () {
                  //     return CircularProgressIndicator();
                  //   },
                  // ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: TabBar(
                      controller: tabController,
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
                  asyncbajarValue.when(
                    data: (data) {
                      double dynamicHeight;

                      if (tabController.index == 0) {
                        dynamicHeight =
                            data.insidearr.isEmpty || data.insidearr[0].isEmpty
                                ? 150
                                : 430;
                      } else if (tabController.index == 1) {
                        // Ensure data.doma[0] is valid and has length
                        dynamicHeight =
                            data.insidearr.isEmpty || data.insidearr[1].isEmpty
                                ? 150
                                : 430;
                      } else if (tabController.index == 2)
                        dynamicHeight =
                            data.insidearr.isEmpty || data.insidearr[2].isEmpty
                                ? 150
                                : 430;
                      else
                        dynamicHeight = 430;

                      return SizedBox(
                        // Use Expanded for better layout management
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          height: dynamicHeight,
                          width: double.infinity,
                          child: TabBarView(
                            controller: tabController,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      if (data.global.isNotEmpty)
                                        ...data.global.map((e) {
                                          return NotStoryWidget(
                                            vImage: e
                                                .brandLogo, // Use the correct variable name
                                            index: data.global
                                                .indexOf(e), // Get the index
                                            brandname: e.brandName,
                                          );
                                        }).toList(),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  data.insidearr.isNotEmpty &&
                                          data.insidearr[0].isNotEmpty
                                      ? SizedBox(
                                          child: ListView.builder(
                                            clipBehavior: Clip.antiAlias,
                                            padding: const EdgeInsets.all(3),
                                            scrollDirection: Axis.horizontal,
                                            itemCount: data.insidearr[0].length,
                                            itemBuilder: (context, index) {
                                              VProduct prod =
                                                  data.insidearr[0][index];
                                              return InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              ProductDetailScreen(
                                                                  productId:
                                                                      prod.id)));
                                                },
                                                child: ProductDetailWidget(

                                                  shortestDistance: prod.user.shortestDistance,
                                                  id: int.tryParse(prod.id),
                                                  posttype: prod.post_type_id,
                                                  membershipid:
                                                      prod.user.membership_id,
                                                  offer: prod.offers,
                                                  tradeImage:
                                                      'assets/icon/b2bIcon.svg',
                                                  didcountpercentage:
                                                      prod.discount_percentage,
                                                  avg_rating: prod.avg_rating
                                                      ?.toDouble(),
                                                  wow: prod.wow,
                                                  comment: prod.commentcount
                                                      .toString(),
                                                  lefttile: "Jobs",
                                                  vendorname: prod.user.name,
                                                  discounttedPrice:
                                                      prod.discounted_price,
                                                  Vimage: prod.title,
                                                  issponsored:
                                                      prod.user.sponsored,
                                                  price: prod.price,
                                                  title: prod.title,
                                                  productImage: prod.image,
                                                  similarproductCount:
                                                      prod.similarProductCount,
                                                  membershipColor:
                                                      prod.user.membershipColor,
                                                  membershipTitle:
                                                      prod.user.membershipTitle,
                                                ),
                                              );
                                            },
                                          ),
                                        )
                                      : Padding(
                                          padding: EdgeInsets.only(top: 3.h),
                                          child: Center(
                                            child: nolistingfound(),
                                          ),
                                        ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: data.domestic.map((e) {
                                        return NotStoryWidget(
                                          vImage: e.brandLogo,
                                          index: data.domestic.indexOf(e),
                                          brandname: e.brandName,
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  data.insidearr.isEmpty
                                      ? Center(
                                          child: nolistingfound(),
                                        )
                                      : SizedBox(
                                          height: 340.h,
                                          child: ListView.builder(
                                            clipBehavior: Clip.antiAlias,
                                            padding: const EdgeInsets.all(3),
                                            scrollDirection: Axis.horizontal,
                                            itemCount: data.insidearr[1].length,
                                            itemBuilder: (context, index) {
                                              VProduct prod =
                                                  data.insidearr[1][index];

                                              return InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              ProductDetailScreen(
                                                                  productId:
                                                                      prod.id)));
                                                },
                                                child: ProductDetailWidget(
                                                  offer: prod.offers,
                                                  posttype: prod.post_type_id,
                                                  shortestDistance: prod.user.shortestDistance,

                                                  membershipid: prod.user.membership_id,
                                                  id: int.tryParse(prod.id),
                                                  didcountpercentage: prod.discount_percentage,
                                                  avg_rating: prod.avg_rating?.toDouble(),
                                                  comment: prod.commentcount
                                                      .toString(),
                                                  wow: prod.wow,
                                                  issponsored:
                                                      prod.user.sponsored,
                                                  lefttile: "Jobs",
                                                  vendorname: prod.title,
                                                  discounttedPrice:
                                                      prod.discounted_price,
                                                  Vimage: prod.user.photo,
                                                  price: prod.price,
                                                  title: prod.title,
                                                  productImage: prod.image,
                                                  similarproductCount:
                                                      prod.similarProductCount,
                                                  membershipColor:
                                                      prod.user.membershipColor,
                                                  membershipTitle:
                                                      prod.user.membershipTitle,
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: data.spotlight.map((e) {
                                        return NotStoryWidget(
                                          vImage: e.brandLogo,
                                          index: data.spotlight.indexOf(e),
                                          brandname: e.brandName,
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  data.insidearr.isEmpty
                                      ? Center(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                top:
                                                    10.0.h), // Add padding here
                                            child: nolistingfound(),
                                          ),
                                        )
                                      : SizedBox(
                                          height: 340.h,
                                          child: ListView.builder(
                                            clipBehavior: Clip.antiAlias,
                                            padding: const EdgeInsets.all(3),
                                            scrollDirection: Axis.horizontal,
                                            itemCount: data.insidearr[2].length,
                                            itemBuilder: (context, index) {
                                              VProduct prod =
                                                  data.insidearr[2][index];
                                              return InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              ProductDetailScreen(
                                                                  productId:
                                                                      prod.id)));
                                                },
                                                child: ProductDetailWidget(
                                                  offer: prod.offers,
                                                  membershipid: prod.user.membership_id,
                                                  id: int.tryParse(prod.id),
                                                  didcountpercentage: prod.avg_rating,
                                                  avg_rating: prod.avg_rating?.toDouble(),
                                                  comment: prod.commentcount
                                                      .toString(),
                                                  wow: prod.wow,
                                                  issponsored:
                                                      prod.user.sponsored,
                                                  lefttile: "Jobs",
                                                  vendorname: prod.title,
                                                  discounttedPrice:
                                                      prod.discounted_price,
                                                  Vimage: prod.user.photo,
                                                  price: prod.price,
                                                  title: prod.title,
                                                  productImage: prod.image,
                                                  similarproductCount:
                                                      prod.similarProductCount,
                                                  membershipColor:
                                                      prod.user.membershipColor,
                                                  membershipTitle:
                                                      prod.user.membershipTitle,
                                                ),
                                              );
                                            },
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
                      return Text("error $error");
                    },
                    loading: () {
                      return const CircularProgressIndicator();
                    },
                  ),

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
                  asyncbajarValue.when(
                    data: (data) {
                      return SizedBox(
                        height: 300.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: data.buynow!.length,
                          itemBuilder: (context, index) {
                            Buynowmodel resp = data.buynow![index];

                            return buyorwin_widget(
                                wow: resp.wow ?? '0',
                                gift_qty: resp.gift_qty!,
                                worth: resp.worth!,
                                productname: resp.name,
                                vendorImage: resp.vendorImage,
                                vendorname: resp.name,
                                winners: resp.winners.toString(),
                                proctimage: resp.image ?? '');
                          },
                        ),
                      );
                    },
                    error: (error, stackTrace) {
                      return Text("error $error");
                    },
                    loading: () {
                      return const CircularProgressIndicator();
                    },
                  ),

                  asyncbajarValue.when(
                    data: (data) {
                      return SizedBox(
                        height: 70.h,
                        width: double.infinity,
                        child: PageView.builder(
                          controller: _adscontroller,
                          reverse: true,
                          allowImplicitScrolling: true,
                          itemCount: data.ads.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Image.network(
                              data.ads[index].image!,
                              // height: 150.h,
                              width: double.infinity,
                              // fit: BoxFit.fill,
                            );
                            // Image.asset(
                            //     height: 150.h,
                            //     width: double.infinity,
                            //     fit: BoxFit.fill,
                            //     );
                          },
                        ),
                      );
                    },
                    error: (error, stackTrace) {
                      return Text(error.toString());
                    },
                    loading: () => const CircularProgressIndicator(),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  asyncbajarValue.when(
                    data: (data) {
                      List<List<VProduct>> productsList = [
                        data.low_price_guarantee, // Corresponds to SHOPZONE
                        data.Launch_offer, // Corresponds to HOB
                        data.seasonal, // Corresponds to SERVICES
                        data.promotional, // Corresponds to TRADEHUB
                        data.Launch_festival_offer, // Corresponds to USED
                      ];

                      return SizedBox(
                        width: double.infinity,
                        height: productsList.every((list) => list.isEmpty)
                            ? 150.h
                            : 420.h,
                        child: ValueListenableBuilder<int>(
                          valueListenable: selectedIndexNotifier,
                          builder: (context, selectedIndex, child) {
                            // Map category labels to their respective product lists
                            List<String> categories = services
                                .map((e) => e['label'] as String)
                                .toList();

                            return Column(
                              children: [
                                // Category Selector Row
                                SizedBox(
                                  width: double.infinity,
                                  height: 50.h,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: categories.length,
                                    itemBuilder: (context, index) {
                                      bool isSelected = index == selectedIndex;
                                      return GestureDetector(
                                        onTap: () {
                                          // Update the selected index
                                          selectedIndexNotifier.value = index;
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          margin: const EdgeInsets.all(5),
                                          width: 150.w,
                                          decoration: BoxDecoration(
                                            color: isSelected
                                                ? const Color(0xFF681b4e)
                                                : const Color(0xffA5A5A5),
                                          ),
                                          child: Text(
                                            categories[index],
                                            style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              color: ColorConstant.whiteColor,
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),

                                // Spacer
                                SizedBox(height: 5.h),

                                // Display Products for the selected category
                                Builder(builder: (context) {
                                  // Ensure the index is valid
                                  if (selectedIndex < 0 ||
                                      selectedIndex >= productsList.length) {
                                    selectedIndex =
                                        0; // Default to the first category
                                  }

                                  List<VProduct> products =
                                      productsList[selectedIndex];

                                  if (products.isEmpty) {
                                    return SizedBox(
                                      height: 50.h,
                                      child: Center(
                                        child: Text(
                                          "No listing available",
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    );
                                  }

                                  return SizedBox(
                                    height: 340.h,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      padding: const EdgeInsets.all(3),
                                      itemCount: products.length,
                                      itemBuilder: (context, index) {
                                        VProduct prod = products[index];
                                        return InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ProductDetailScreen(
                                                            productId:
                                                                prod.id)));
                                          }, // Handle onTap if needed
                                          child: ProductDetailWidget(

                                            wow: prod.wow,
                                            comment:
                                                prod.commentcount.toString(),
                                            lefttile: "Jobs",
                                            vendorname: prod.user.name,
                                            discounttedPrice:
                                                prod.discounted_price,
                                            Vimage: prod.title,
                                            issponsored: prod.user.sponsored,
                                            price: prod.price,
                                            title: prod.title,
                                            productImage: prod.image,
                                            similarproductCount:
                                                prod.similarProductCount,
                                            membershipColor:
                                                prod.user.membershipColor,
                                            membershipTitle:
                                                prod.user.membershipTitle,
                                          ), // Replace with your actual product widget
                                        );
                                      },
                                    ),
                                  );
                                }),
                              ],
                            );
                          },
                        ),
                      );
                    },
                    error: (error, stackTrace) => Text("Error: $error"),
                    loading: () => const CircularProgressIndicator(),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'All Jobs',
                          style: headerstyle.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                      ],
                    ),
                  ),

                  asyncbajarValue.when(
                    data: (data) {
                      if (data.product.isEmpty) {
                        return SizedBox(
                          height: 50.h,
                          child: Center(
                            child: Text(
                              "No listing available",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        );
                      }

                      return GridView.builder(
                        physics:
                            const NeverScrollableScrollPhysics(), // Disable grid scrolling
                        shrinkWrap: true, // Adjust to fit content
                        itemCount: data.product.length,

                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 370,
                          crossAxisCount: 2,
                          crossAxisSpacing: 0.6,
                          mainAxisSpacing: 0.2,
                          childAspectRatio: 0.5,
                        ),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProductDetailScreen(
                                          productId: data.product[index].id)));
                            },
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 5.h),
                              child: AllProductDetailWidget(

                                
                                avg_rating: data.product[index].avg_rating?.toDouble(),
                                discountpercentage: data.product[index].discount_percentage,
                                id: int.tryParse(data.product[index].id),
                                offer: data.product[index].offers,
                                membershipid: data.product[index].user.membership_id,
                                posttype: data.product[index].post_type_id,
                                shortestDistance: data.product[index].user.shortestDistance,
                                wow: data.product[index].wow,
                                comment:
                                    data.product[index].commentcount.toString(),
                                issponsored: data.product[index].user.sponsored,
                                discounttedPrice:
                                    data.product[index].discounted_price,
                                lefttile: "Jobs",
                                productImage: data.product[index].image,
                                Vimage: data.product[index].user.photo,
                                vendorname: data.product[index].user.name,
                                title: data.product[index].title,
                                price: data.product[index].price,
                                similarproductCount:
                                    data.product[index].similarProductCount,
                                membershipColor:
                                    data.product[index].user.membershipColor,
                                membershipTitle:
                                    data.product[index].user.membershipTitle,
                              ),
                            ),
                          );
                        },
                      );
                      // SizedBox(
                      //   height: 360.h,
                      //   width: double.infinity,
                      //   child: ListView.builder(
                      //     padding: EdgeInsets.zero,
                      //     clipBehavior: Clip.antiAlias,
                      //     scrollDirection: Axis.horizontal,
                      //     itemCount: data.allProducts.length,
                      //     shrinkWrap: true,
                      //     itemBuilder: (context, index) {
                      //       // print(
                      //       //     "ram ${}");
                      //       return ProductDetailWidget(
                      //         // productImage: data.allProducts[index].image,
                      //         Vimage:
                      //             data.allProducts[index].user.photo,

                      //         vendorname:
                      //             data.allProducts[index].user.name,
                      //         title: data.allProducts[index].title,
                      //         price: data.allProducts[index].price,
                      //       );
                      //     },
                      //   ),
                      // );
                    },
                    error: (error, stackTrace) {
                      return Text('error is $error');
                    },
                    loading: () {
                      return const CircularProgressIndicator();
                    },
                  ),
                  SizedBox(
                    height: 10.h,
                  ),

                  // Container(
                  //   margin: const EdgeInsets.only(top: 2),
                  //   height: 40.h,
                  //   padding: const EdgeInsets.all(10),
                  //   decoration: BoxDecoration(
                  //     shape: BoxShape.circle,
                  //     border: Border.all(color: Colors.black),
                  //   ),
                  //   child: Image.asset('assets/icon/home.png'),
                  // ),
                ],
              ),
            ),
          ),
          valuenotifilersidebutton(
              showSideBar: _showSideBar, isSectionsVisible: _isSectionsVisible),

          //
        ]));
  }
}
