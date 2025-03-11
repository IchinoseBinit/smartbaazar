import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smartbazar/constant/button_nav_sheet.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/auth/view/bottom_navigation_bar.dart';
import 'package:smartbazar/features/auth/view/login_screen.dart';
import 'package:smartbazar/features/auth/view/signup_screen.dart';
import 'package:smartbazar/features/feed_page/api/get_for_you_story_api.dart';
import 'package:smartbazar/features/feed_page/widget/feed_story_add_widget.dart';
import 'package:smartbazar/features/left_arrow/view/left_arrow_screen.dart';
import 'package:smartbazar/features/message/view/chat_screen.dart';
import 'package:smartbazar/features/product_details/api/check_enquire_provider.dart';
import 'package:smartbazar/features/product_details/model/enquire_model.dart';
import 'package:smartbazar/features/scran_screen/scan_screen.dart';
import 'package:smartbazar/features/brand_bazar/api/brand_bazar_api.dart';
import 'package:smartbazar/features/button_nav_bar/cusom_btn_bar/custom_bottom_nav.dart';
import 'package:smartbazar/features/create_listing/view/create_new_listing_screen.dart';
import 'package:smartbazar/features/feed_page/view/feed_page_screen.dart';
import 'package:smartbazar/features/home/api/post_type_story_api.dart';
import 'package:smartbazar/features/home/api/shopzone_provider.dart';
import 'package:smartbazar/features/home/model/home_story_model.dart';
import 'package:smartbazar/features/home/view/home_page_story_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/b2b_screen/view/b2b_screen.dart';
import 'package:smartbazar/features/brand_bazar/api/screen_category_api.dart';
import 'package:smartbazar/features/brand_bazar/brand_bazar_screen.dart';
import 'package:smartbazar/features/bussiness_tab_screen/view/business_tab_screen.dart';
import 'package:smartbazar/features/events_screen/view/events_screen.dart';
import 'package:smartbazar/features/feed_page/widget/not_a_story_widget.dart';
import 'package:smartbazar/features/grocessary_screen/view/grocary_screen.dart';
import 'package:smartbazar/features/home/api/buy_or_now_provider.dart';
import 'package:smartbazar/features/home/api/get_story_provider.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/home/view/buyorwin_widget.dart';
import 'package:smartbazar/features/home/view/custom_border.dart';
import 'package:smartbazar/features/home/view/header.dart';
import 'package:rxdart/rxdart.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/jobs_screen/view/jobs_screen.dart';
import 'package:smartbazar/features/message/view/message_view_screen.dart';
import 'package:smartbazar/features/my_order/view/my_order_screen.dart';
import 'package:smartbazar/features/pending_approval/pending_approval.dart';
import 'package:smartbazar/features/product_details/constant/product_detail_widget.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/services_screen/api/service_provider.dart';
import 'package:smartbazar/features/services_screen/service_screen.dart';
import 'package:smartbazar/features/socio_screen/view/socio_screen.dart';
import 'package:smartbazar/features/used_screen/api/used_provider.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_profile_screen.dart';
import 'package:smartbazar/features/vendor/view/my_subscribe_and_win_page.dart';
import 'package:smartbazar/main.dart';
import 'package:smartbazar/network_service/smart-client.dart';

import '../../product_details/constant/all_product_detail_widget.dart';

final _selectedIndexProvider = StateProvider<int>((ref) => 0);
bool isSliverAppBarVisible = true; // Track the visibility of SliverAppBar

class UsedScreen extends ConsumerStatefulWidget {
  const UsedScreen({super.key});

  @override
  ConsumerState<UsedScreen> createState() => _UsedScreenState();
}

class _UsedScreenState extends ConsumerState<UsedScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final TextEditingController _searchController = TextEditingController();
  final _debouncer = BehaviorSubject<String>();
  int? selectedIndex = 3;
  int? selectedTab = 0;

  int _currentIndex = 0;

  final ScrollController _scrollController = ScrollController();
  bool _isSectionsVisible = true;
  double _lastScrollOffset = 0;
  Offset _initialDragPosition = Offset.zero;
  int headerIndex = 0;

  final ValueNotifier<bool> _showSideBar = ValueNotifier<bool>(true);
  List<FetchCategory> allcat = [];
  // bool _showSearchProductModels = false;
  late TabController tabController;
  bool _showSearchProductModels = false;

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

  int? dynamicsize;
  int _currentPage = 0;
  Map<String, String>? dropdownValue = headeritems.firstWhere(
    (item) => item['label'] == 'Used',
    orElse: () => headeritems.first, // Fallback to the first item if not found
  );
  int? postypeid = 0;

  final List<Map<String, dynamic>> _items = [
    {
      'icon': 'assets/icon/loading.svg',
      'label': 'Everything',
      'screen': const HomeScreen()
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

      // _pageController.animateToPage(
      //   _currentPage,
      //   duration: const Duration(milliseconds: 350),
      //   curve: Curves.easeIn,
      // );
    });

    // Use the addPostFrameCallback to jump to the selected page after the widget is built
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   _pageController.jumpToPage(headerIndex);
    // });
    super.initState();
    tabController = TabController(length: 3, vsync: this);

    tabController.addListener(() {
      setState(() {});
    });
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
    tabController.dispose();
    _debouncer.close();
    _searchController.dispose();
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final asyncForYouStoryContent = ref.watch(getForYouStoryProvider);

    // final pselectedIndex = ref.watch(bottomNavIndexProvider);
    var homecategory = ref.watch(homeCategoryProvider);
    Future<EnquireResponse> getEnquire(WidgetRef ref, String id) async {
      try {
        return await ref.read(checkEnquireProvider(id).future);
      } catch (e) {
        print("Error fetching enquiry: $e");
        throw Exception("Failed to fetch enquiry data");
      }
    }

    // ref.watch(fetchAdsProvider);
    //     final adsList = ref.watch(fetchAdsProvider);
    // final randomstory = ref.watch(fetchStoryHomeProvider);
    final asyncPostTypeContent = ref.watch(getPostTypeStoryApiProvider('2'));

    final asyncbajarValue = ref.watch(getUsedResponseProvider);
    final SearchProductModels =
        ref.watch(searchProvider(_searchController.text));
    final category = ref.watch(getCategoriesProvider(0));

    // asyncbajarValue.when(data: (data) {
    dynamicsize = 500;
    // }, error: (error, stackTrace) {

    // }, loading: () {
    //   return CircularProgressIndicator();
    // },)
    // final SearchProductModels = ref.watch(searchProvider(
    //     _searchController.text)); // Ensure this updates correctly
    void refreshAllProviders() {
      //   ref.refresh(bottomNavIndexProvider);
      // ref.refresh(homeCategoryProvider);
      ref.refresh(getPostTypeStoryApiProvider('1'));
      ref.refresh(getBrandBazaarResponseProvider);
      ref.refresh(getCategoriesProvider(0));

      // Additional providers
      ref.refresh(getPostTypeStoryApiProvider('2'));
      ref.refresh(getUsedResponseProvider);
    }

    return Scaffold(
        extendBody: true,
        key: _key,
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
                          showbackbutton: true,
                            visible: isSliverAppBarVisible,
                            searchController: _searchController,
                            onchanged: (value) {
                              print('value $value');
                            },
                            dropdownValueNotifier: dropdownValueNotifier,
                            filteredSuggestions: [])),
                    if (isSliverAppBarVisible)
                      SliverAppBar(
                          automaticallyImplyLeading: false,
                          expandedHeight: 150.h,
                          floating: false,
                          pinned: false,
                          flexibleSpace: AnimatedContainer(
                            padding: EdgeInsets.zero,
                            duration: const Duration(milliseconds: 150),
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 20.w),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: List.generate(4, (index) {
                                        return GestureDetector(
                                          onTap: () {
                                            ref
                                                .read(_selectedIndexProvider
                                                    .notifier)
                                                .state = index;
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
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  SizedBox(
                                    height: 55.h,
                                    child: PageView.builder(
                                      itemCount: _items.length,
                                      padEnds: false,
                                      controller: _pageController,
                                      onPageChanged: (value) {
                                        ref
                                            .read(
                                                _selectedIndexProvider.notifier)
                                            .state = value;
                                      },
                                      itemBuilder: (context, index) {
                                        Map<String, dynamic> data =
                                            _items[index];

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
                                            margin: EdgeInsets.only(left: 16.w),
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
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Image.asset(
                                      height: 60.h,
                                      width: double.infinity,
                                      color: Colors.white,
                                      'assets/images/circle.png')
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
                                  color: const Color(0xff651c50),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: asyncForYouStoryContent.when(
                        data: (feedStoryData) {
                          final feedStoryContent =
                              feedStoryData.data?.feedstory;
                          final posts = feedStoryContent?.posts ?? [];

                          if (posts.isEmpty) {
                            return const Center(
                                child: Text("No stories available"));
                          }

                          return SizedBox(
                            height: 100.h,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  ListView.builder(
                                    padding: EdgeInsets.only(left: 3.w),
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: posts.length,
                                    itemBuilder: (context, index) {
                                      final story = posts[index];
                                      return FeedStoryAddWidget(
                                         productid: story.id!,
                                        index: index,
                                        vendorName: story.vendorName ??
                                            "Unknown Vendor",
                                        vendorImage: story.vendorImage ??
                                            "https://example.com/default-image.png",
                                        storyCount: story.storyCount ?? 0,
                                        showGift:
                                            story.hasSponsoredGifts ?? false,
                                        feedStoryContent: feedStoryContent!,
                                        userId: story.vendorId ?? '',
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        loading: () => SizedBox(
                          height: 40.h,
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (_, __) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Shimmer.fromColors(
                                baseColor: Colors.grey[300]!,
                                highlightColor: Colors.grey[100]!,
                                child: Container(
                                  width: 80,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        error: (error, _) => Center(
                          child: Text(
                            error.toString().contains('Session has expired')
                                ? 'Please log in again.'
                                : 'Error: $error',
                          ),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: asyncbajarValue.when(
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
                                    children: data.sliders!.map((banner) {
                                      int index = data.sliders!.indexOf(banner);
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
                          loading: () => Shimmer.fromColors(
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
                    ),
                    SliverToBoxAdapter(
                      child: category.when(
                        data: (data) {
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.h),
                            child: Column(children: [
                              // Row for "ALL" and other services

                              Padding(
                                padding: EdgeInsets.only(left: 5.w),
                                child: SizedBox(
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
                                                    color: ColorConstant
                                                        .blackColor,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  "Used",
                                                  style: headerstyle.copyWith(
                                                    color: ColorConstant
                                                        .blackColor,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),

                                        // Other Services List
                                        ListView(
                                          physics:
                                              const BouncingScrollPhysics(),
                                          scrollDirection: Axis.horizontal,
                                          shrinkWrap: true,
                                          children: data.map((e) {
                                            return Container(
                                              width: 150.w,
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5),
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    color: const Color(
                                                        0xff651c50)),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 5,
                                                        vertical:
                                                            5), // Adds spacing
                                                child: Text(
                                                  e.name,
                                                  textAlign: TextAlign
                                                      .center, // Centers text
                                                  maxLines:
                                                      2, // Allows text to wrap into two lines
                                                  overflow: TextOverflow
                                                      .ellipsis, // Shows "..." if too long
                                                  style: const TextStyle(
                                                      fontSize:
                                                          14), // Adjust font size if needed
                                                ),
                                              ),
                                            );

                                            // return Padding(
                                            //   padding: EdgeInsets.zero,
                                            //   child: GestureDetector(
                                            //     onTap: () {
                                            //       showMenu(
                                            //         context: context,
                                            //         position: const RelativeRect
                                            //             .fromLTRB(0, 0, 0,
                                            //             0), // Base position; offset is handled by PopupMenuButton
                                            //         items: [
                                            //           PopupMenuItem(
                                            //             value: 1,
                                            //             child: ListTile(
                                            //               title: const Text(
                                            //                   "View Story"),
                                            //               leading: const Icon(
                                            //                   Icons.book),
                                            //               onTap: () {
                                            //                 // Implement onTap logic
                                            //               },
                                            //             ),
                                            //           ),
                                            //         ],
                                            //       );
                                            //     },
                                            //     child: PopupMenuButton<int>(
                                            //       offset: const Offset(0,
                                            //           60), // The offset to position the menu above the widget
                                            //       itemBuilder: (context) => [
                                            //         const PopupMenuItem(
                                            //           value: 1,
                                            //           child: Text("View Story",
                                            //               style: TextStyle(
                                            //                   fontSize: 16.0)),
                                            //         ),
                                            //         if (e.parentClosure != null)
                                            //           PopupMenuItem(
                                            //             value: 1,
                                            //             child: Text(
                                            //               e.slug,
                                            //               style: const TextStyle(
                                            //                   fontSize: 16.0),
                                            //             ),
                                            //           ),
                                            //       ],
                                            //       child: Padding(
                                            //         padding: EdgeInsets.symmetric(
                                            //             horizontal: 10.w),
                                            //         child: DashedBorder(
                                            //           padding: 0,
                                            //           dashCount: 2,
                                            //           child: SizedBox(
                                            //             // width: 100.w,
                                            //             // height: 100.h,
                                            //             child: Column(
                                            //               mainAxisAlignment:
                                            //                   MainAxisAlignment
                                            //                       .center,
                                            //               crossAxisAlignment:
                                            //                   CrossAxisAlignment
                                            //                       .center,
                                            //               children: [
                                            //                 Image.asset(
                                            //                     'assets/images/cloth.png'),
                                            //                 Center(
                                            //                   child: Text(
                                            //                     e.name ?? 'No Name',
                                            //                     style:
                                            //                         const TextStyle(
                                            //                       color:
                                            //                           Colors.black,
                                            //                       fontWeight:
                                            //                           FontWeight
                                            //                               .w500,
                                            //                       fontSize: 13,
                                            //                     ),
                                            //                     textAlign: TextAlign
                                            //                         .center,
                                            //                   ),
                                            //                 )
                                            //               ],
                                            //             ),
                                            //           ),
                                            //         ),
                                            //       ),
                                            //     ),
                                            //   ),
                                            // );
                                          }).toList(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          );
                        },
                        error: (error, stackTrace) {
                          return Text(error.toString());
                        },
                        loading: () => Shimmer.fromColors(
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
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 5,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Text(
                              'HOT DEALS',
                              style: headerstyle.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Image.asset(
                              'assets/images/flameIcon.png',
                              width: 16.w,
                              height: 17.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: asyncbajarValue.when(
                        data: (data) {
                          if (data.hotProducts.isEmpty) {
                            return Center(child: nolistingfound());
                          }

                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.h),
                            child: SizedBox(
                              width: double.infinity,
                              child: AnimatedContainer(
                                padding: EdgeInsets.zero,
                                margin: EdgeInsets.zero,
                                duration: const Duration(milliseconds: 400),
                                child: SingleChildScrollView(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.horizontal,
                                  child: Wrap(
                                    spacing: 0.w,
                                    runSpacing: 0.h,
                                    children: List.generate(
                                        data.hotProducts.length, (index) {
                                      VProduct hot = data.hotProducts[index];
                                      return ProductDetailWidget(

                                        onenquiredclicked: () {
                                          getEnquire(ref, hot.id).then(
                                            (value) {
                                              value.data?.enquire == 0
                                                  ? showModalBottomSheet(
                                                      useSafeArea: true,
                                                      isScrollControlled: true,
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return SizedBox(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.8, // Use 80% of the screen height

                                                          child:
                                                              SendMessageBottomWidget(
                                                            ref: ref,
                                                            productidid: hot.id,
                                                          ),
                                                        );
                                                      },
                                                    )
                                                  : navigateToPage(
                                                      context: context,
                                                      page: ChatScreen(
                                                          threadId: value.data!
                                                              .thread!.id!,
                                                          username: value.data!
                                                              .thread!.subject!,
                                                          postId: value
                                                              .data!
                                                              .thread!
                                                              .post_id!),
                                                      ref: ref,
                                                      showNavBar:
                                                          false, // Hide bottom navbar
                                                    );
                                              // if ()

                                              // SendMessageBottomWidget(
                                              //     ref: ref,
                                              //     productidid:
                                              //         prod.id);
                                            },
                                          ).catchError((error) {
                                            print('Error: $error');
                                          });
                                        },
                                        savedid: hot.savedByLoggedUser ==
                                                    null ||
                                                hot.savedByLoggedUser!.isEmpty
                                            ? []
                                            : hot.savedByLoggedUser
                                                ?.map((e) => SavedPost(
                                                      id: e.id,
                                                      userId: e.userId,
                                                      postId: e.postId,
                                                      createdAt: e.createdAt,
                                                      updatedAt: e.updatedAt,
                                                    ))
                                                .toList(),
                                        onRefresh: () {
                                          refreshAllProviders();
                                        },
                                        lat: hot.user.latitude,
                                        long: hot.user.longitude,
                                        productid: hot.id,
                                        tradeImage: usedIcon,
                                        posttype: hot.post_type_id,
                                        vendorid: hot.user.id,
                                        membershipid: hot.user.membership_id,
                                        didcountpercentage:
                                            hot.discount_percentage,
                                        offer: hot.offers,
                                        shortestDistance:
                                            hot.user.shortestDistance,
                                        avg_rating: hot.avg_rating?.toDouble(),
                                        wow: hot.wow,
                                        comment: hot.commentcount.toString(),
                                        discounttedPrice: hot.discounted_price,
                                        issponsored: hot.user.sponsored,
                                        lefttile: "used",
                                        productImage: hot.image,
                                        Vimage: hot.user.photo,
                                        price: hot.price,
                                        title: hot.title,
                                        vendorname: hot.user.name,
                                        similarproductCount:
                                            hot.similarProductCount,
                                        membershipColor:
                                            hot.user.membershipColor,
                                        membershipTitle:
                                            hot.user.membershipTitle,
                                      );
                                    }),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        error: (error, stackTrace) => Text(error.toString()),
                        loading: () => SizedBox(
                          height: 340.h,
                          child: ListView.builder(
                            padding: const EdgeInsets.all(3),
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) => Shimmer.fromColors(
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[100]!,
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                width: 200.w,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: asyncbajarValue.when(
                        data: (data) {
                          // Check if data is available and return appropriate widgets
                          return data.cat.isNotEmpty
                              ? Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            data.cat[0].slug.toUpperCase(),
                                            style: headerstyle.copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5.h),
                                      // Check if insidearr is not empty and display the ListView
                                      data.cat.isNotEmpty
                                          ? SizedBox(
                                              height: 340.h,
                                              width: double.infinity,
                                              child: ListView.builder(
                                                padding:
                                                    const EdgeInsets.all(3),
                                                clipBehavior: Clip.antiAlias,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount:
                                                    data.insidearr[0].length,
                                                shrinkWrap: true,
                                                itemBuilder: (context, index) {
                                                  VProduct pro =
                                                      data.insidearr[0][index];
                                                  return ProductDetailWidget(
                                                    onenquiredclicked: () {
                                                      getEnquire(ref, pro.id)
                                                          .then(
                                                        (value) {
                                                          value.data?.enquire ==
                                                                  0
                                                              ? showModalBottomSheet(
                                                                  useSafeArea:
                                                                      true,
                                                                  isScrollControlled:
                                                                      true,
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return SizedBox(
                                                                      height: MediaQuery.of(context)
                                                                              .size
                                                                              .height *
                                                                          0.8, // Use 80% of the screen height

                                                                      child:
                                                                          SendMessageBottomWidget(
                                                                        ref:
                                                                            ref,
                                                                        productidid:
                                                                            pro.id,
                                                                      ),
                                                                    );
                                                                  },
                                                                )
                                                              : navigateToPage(
                                                                  context:
                                                                      context,
                                                                  page: ChatScreen(
                                                                      threadId: value
                                                                          .data!
                                                                          .thread!
                                                                          .id!,
                                                                      username: value
                                                                          .data!
                                                                          .thread!
                                                                          .subject!,
                                                                      postId: value
                                                                          .data!
                                                                          .thread!
                                                                          .post_id!),
                                                                  ref: ref,
                                                                  showNavBar:
                                                                      false, // Hide bottom navbar
                                                                );
                                                          // if ()

                                                          // SendMessageBottomWidget(
                                                          //     ref: ref,
                                                          //     productidid:
                                                          //         prod.id);
                                                        },
                                                      ).catchError((error) {
                                                        print('Error: $error');
                                                      });
                                                    },
                                                    savedid: pro.savedByLoggedUser ==
                                                                null ||
                                                            pro.savedByLoggedUser!
                                                                .isEmpty
                                                        ? []
                                                        : pro.savedByLoggedUser
                                                            ?.map((e) =>
                                                                SavedPost(
                                                                  id: e.id,
                                                                  userId:
                                                                      e.userId,
                                                                  postId:
                                                                      e.postId,
                                                                  createdAt: e
                                                                      .createdAt,
                                                                  updatedAt: e
                                                                      .updatedAt,
                                                                ))
                                                            .toList(),
                                                    onRefresh: () {
                                                      refreshAllProviders();
                                                    },
                                                    lat: pro.user.latitude,
                                                    long: pro.user.longitude,
                                                    productid: pro.id,
                                                    shortestDistance: pro
                                                        .user.shortestDistance,
                                                    offer: pro.offers,
                                                    posttype: pro.post_type_id,
                                                    membershipid:
                                                        pro.user.membership_id,
                                                    vendorid: pro.user.id,
                                                    didcountpercentage:
                                                        pro.discount_percentage,
                                                    avg_rating: pro.avg_rating
                                                        ?.toDouble(),
                                                    comment: pro.commentcount
                                                        .toString(),
                                                    wow: pro.wow,
                                                    discounttedPrice:
                                                        pro.discounted_price,
                                                    issponsored:
                                                        pro.user.sponsored,
                                                    lefttile: "Used",
                                                    Vimage: pro.user.photo,
                                                    price: pro.price,
                                                    title: pro.title,
                                                    vendorname: pro.user.name,
                                                    productImage: pro.image,
                                                    similarproductCount:
                                                        pro.similarProductCount,
                                                    membershipColor: pro
                                                        .user.membershipColor,
                                                    membershipTitle: pro
                                                        .user.membershipTitle,
                                                  );
                                                },
                                              ),
                                            )
                                          : const SizedBox(),
                                    ],
                                  ),
                                )
                              : const SizedBox();
                        },
                        error: (error, stackTrace) {
                          return Text("Error: $error");
                        },
                        loading: () {
                          // Here we handle the loading state outside of SliverToBoxAdapter
                          return Shimmer.fromColors(
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
                          );
                        },
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: asyncbajarValue.when(
                        data: (data) {
                          return data.cat.isNotEmpty
                              ? Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            data.cat[1].slug.toUpperCase(),
                                            style: headerstyle.copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      SizedBox(
                                        height: 340.h,
                                        width: double.infinity,
                                        child: ListView.builder(
                                          padding: const EdgeInsets.all(3),
                                          clipBehavior: Clip.antiAlias,
                                          scrollDirection: Axis.horizontal,
                                          itemCount: data.insidearr[1].length,
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) {
                                            VProduct pro =
                                                data.insidearr[1][index];
                                            return ProductDetailWidget(
                                              onenquiredclicked: () {
                                                getEnquire(ref, pro.id).then(
                                                  (value) {
                                                    value.data?.enquire == 0
                                                        ? showModalBottomSheet(
                                                            useSafeArea: true,
                                                            isScrollControlled:
                                                                true,
                                                            context: context,
                                                            builder:
                                                                (BuildContext
                                                                    context) {
                                                              return SizedBox(
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    0.8, // Use 80% of the screen height

                                                                child:
                                                                    SendMessageBottomWidget(
                                                                  ref: ref,
                                                                  productidid:
                                                                      pro.id,
                                                                ),
                                                              );
                                                            },
                                                          )
                                                        : navigateToPage(
                                                            context: context,
                                                            page: ChatScreen(
                                                                threadId: value
                                                                    .data!
                                                                    .thread!
                                                                    .id!,
                                                                username: value
                                                                    .data!
                                                                    .thread!
                                                                    .subject!,
                                                                postId: value
                                                                    .data!
                                                                    .thread!
                                                                    .post_id!),
                                                            ref: ref,
                                                            showNavBar:
                                                                false, // Hide bottom navbar
                                                          );
                                                    // if ()

                                                    // SendMessageBottomWidget(
                                                    //     ref: ref,
                                                    //     productidid:
                                                    //         prod.id);
                                                  },
                                                ).catchError((error) {
                                                  print('Error: $error');
                                                });
                                              },
                                              savedid: pro.savedByLoggedUser ==
                                                          null ||
                                                      pro.savedByLoggedUser!
                                                          .isEmpty
                                                  ? []
                                                  : pro.savedByLoggedUser
                                                      ?.map(
                                                        (e) => SavedPost(
                                                          id: e.id,
                                                          userId: e.userId,
                                                          postId: e.postId,
                                                          createdAt:
                                                              e.createdAt,
                                                          updatedAt:
                                                              e.updatedAt,
                                                        ),
                                                      )
                                                      .toList(),
                                              onRefresh: () {
                                                refreshAllProviders();
                                              },
                                              lat: pro.user.latitude,
                                              long: pro.user.longitude,
                                              productid: pro.id,
                                              shortestDistance:
                                                  pro.user.shortestDistance,
                                              vendorid: pro.user.id,
                                              membershipid:
                                                  pro.user.membership_id,
                                              offer: pro.offers,
                                              posttype: pro.post_type_id,
                                              didcountpercentage:
                                                  pro.discount_percentage,
                                              avg_rating:
                                                  pro.avg_rating?.toDouble(),
                                              wow: pro.wow,
                                              comment:
                                                  pro.commentcount.toString(),
                                              issponsored: pro.user.sponsored,
                                              discounttedPrice:
                                                  pro.discounted_price,
                                              lefttile: "Used",
                                              Vimage: pro.user.photo,
                                              price: pro.price,
                                              title: pro.title,
                                              vendorname: pro.user.name,
                                              productImage: pro.image,
                                              similarproductCount:
                                                  pro.similarProductCount,
                                              membershipColor:
                                                  pro.user.membershipColor,
                                              membershipTitle:
                                                  pro.user.membershipTitle,
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : const SizedBox();
                        },
                        error: (error, stackTrace) {
                          return Text("error $error");
                        },
                        loading: () => Shimmer.fromColors(
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
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          asyncbajarValue.when(
                            data: (data) {
                              return data.cat.isNotEmpty
                                  ? Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                data.cat[2].slug,
                                                style: headerstyle.copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 17,
                                                    color: Colors.black),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 340.h,
                                            width: double.infinity,
                                            child: ListView.builder(
                                              padding: const EdgeInsets.all(3),
                                              clipBehavior: Clip.antiAlias,
                                              scrollDirection: Axis.horizontal,
                                              itemCount:
                                                  data.insidearr[2].length,
                                              shrinkWrap: true,
                                              itemBuilder: (context, index) {
                                                VProduct pro =
                                                    data.insidearr[2][index];
                                                return ProductDetailWidget(
                                                  onenquiredclicked: () {
                                                    getEnquire(ref, pro.id)
                                                        .then(
                                                      (value) {
                                                        value.data?.enquire == 0
                                                            ? showModalBottomSheet(
                                                                useSafeArea:
                                                                    true,
                                                                isScrollControlled:
                                                                    true,
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return SizedBox(
                                                                    height: MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        0.8, // Use 80% of the screen height

                                                                    child:
                                                                        SendMessageBottomWidget(
                                                                      ref: ref,
                                                                      productidid:
                                                                          pro.id,
                                                                    ),
                                                                  );
                                                                },
                                                              )
                                                            : navigateToPage(
                                                                context:
                                                                    context,
                                                                page: ChatScreen(
                                                                    threadId: value
                                                                        .data!
                                                                        .thread!
                                                                        .id!,
                                                                    username: value
                                                                        .data!
                                                                        .thread!
                                                                        .subject!,
                                                                    postId: value
                                                                        .data!
                                                                        .thread!
                                                                        .post_id!),
                                                                ref: ref,
                                                                showNavBar:
                                                                    false, // Hide bottom navbar
                                                              );
                                                        // if ()

                                                        // SendMessageBottomWidget(
                                                        //     ref: ref,
                                                        //     productidid:
                                                        //         prod.id);
                                                      },
                                                    ).catchError((error) {
                                                      print('Error: $error');
                                                    });
                                                  },
                                                  savedid: pro.savedByLoggedUser ==
                                                              null ||
                                                          pro.savedByLoggedUser!
                                                              .isEmpty
                                                      ? []
                                                      : pro.savedByLoggedUser
                                                          ?.map(
                                                            (e) => SavedPost(
                                                                id: e.id,
                                                                userId:
                                                                    e.userId,
                                                                postId:
                                                                    e.postId,
                                                                createdAt:
                                                                    e.createdAt,
                                                                updatedAt: e
                                                                    .updatedAt),
                                                          )
                                                          .toList(),
                                                  onRefresh: () {
                                                    refreshAllProviders();
                                                  },
                                                  lat: pro.user.latitude,
                                                  long: pro.user.longitude,
                                                  productid: pro.id,
                                                  shortestDistance:
                                                      pro.user.shortestDistance,
                                                  offer: pro.offers,
                                                  posttype: pro.post_type_id,
                                                  membershipid:
                                                      pro.user.membership_id,
                                                  vendorid: pro.user.id,
                                                  didcountpercentage:
                                                      pro.discount_percentage,
                                                  avg_rating: pro.avg_rating
                                                      ?.toDouble(),
                                                  comment: pro.commentcount
                                                      .toString(),
                                                  wow: pro.wow,
                                                  discounttedPrice:
                                                      pro.discounted_price,
                                                  issponsored:
                                                      pro.user.sponsored,
                                                  lefttile: "Used",
                                                  Vimage: pro.user.photo,
                                                  price: pro.price,
                                                  title: pro.title,
                                                  vendorname: pro.user.name,
                                                  productImage: pro.image,
                                                  similarproductCount:
                                                      pro.similarProductCount,
                                                  membershipColor:
                                                      pro.user.membershipColor,
                                                  membershipTitle:
                                                      pro.user.membershipTitle,
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : const SizedBox();
                            },
                            error: (error, stackTrace) {
                              return Text("error $error");
                            },
                            loading: () => Shimmer.fromColors(
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[100]!,
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                width: 70.w,
                                height: 100.h,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          asyncbajarValue.when(
                            data: (data) {
                              return data.cat.isNotEmpty
                                  ? Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                data.cat[4].slug.toUpperCase(),
                                                style: headerstyle.copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15,
                                                    color: Colors.black),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 340.h,
                                            width: double.infinity,
                                            child: ListView.builder(
                                              padding: const EdgeInsets.all(3),
                                              clipBehavior: Clip.antiAlias,
                                              scrollDirection: Axis.horizontal,
                                              itemCount:
                                                  data.insidearr[4].length,
                                              shrinkWrap: true,
                                              itemBuilder: (context, index) {
                                                VProduct pro =
                                                    data.insidearr[4][index];
                                                return ProductDetailWidget(
                                                  onenquiredclicked: () {
                                                    getEnquire(ref, pro.id)
                                                        .then(
                                                      (value) {
                                                        value.data?.enquire == 0
                                                            ? showModalBottomSheet(
                                                                useSafeArea:
                                                                    true,
                                                                isScrollControlled:
                                                                    true,
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return SizedBox(
                                                                    height: MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        0.8, // Use 80% of the screen height

                                                                    child:
                                                                        SendMessageBottomWidget(
                                                                      ref: ref,
                                                                      productidid:
                                                                          pro.id,
                                                                    ),
                                                                  );
                                                                },
                                                              )
                                                            : navigateToPage(
                                                                context:
                                                                    context,
                                                                page: ChatScreen(
                                                                    threadId: value
                                                                        .data!
                                                                        .thread!
                                                                        .id!,
                                                                    username: value
                                                                        .data!
                                                                        .thread!
                                                                        .subject!,
                                                                    postId: value
                                                                        .data!
                                                                        .thread!
                                                                        .post_id!),
                                                                ref: ref,
                                                                showNavBar:
                                                                    false, // Hide bottom navbar
                                                              );
                                                        // if ()

                                                        // SendMessageBottomWidget(
                                                        //     ref: ref,
                                                        //     productidid:
                                                        //         prod.id);
                                                      },
                                                    ).catchError((error) {
                                                      print('Error: $error');
                                                    });
                                                  },
                                                  savedid: pro.savedByLoggedUser ==
                                                              null ||
                                                          pro.savedByLoggedUser!
                                                              .isEmpty
                                                      ? []
                                                      : pro.savedByLoggedUser
                                                          ?.map(
                                                            (e) => SavedPost(
                                                                id: e.id,
                                                                userId:
                                                                    e.userId,
                                                                postId:
                                                                    e.postId,
                                                                createdAt:
                                                                    e.createdAt,
                                                                updatedAt: e
                                                                    .updatedAt),
                                                          )
                                                          .toList(),
                                                  onRefresh: () {
                                                    refreshAllProviders();
                                                  },
                                                  lat: pro.user.latitude,
                                                  long: pro.user.longitude,
                                                  productid: pro.id,
                                                  shortestDistance:
                                                      pro.user.shortestDistance,
                                                  offer: pro.offers,
                                                  posttype: pro.post_type_id,
                                                  membershipid:
                                                      pro.user.membership_id,
                                                  vendorid: pro.user.id,
                                                  didcountpercentage:
                                                      pro.discount_percentage,
                                                  avg_rating: pro.avg_rating
                                                      ?.toDouble(),
                                                  wow: pro.wow,
                                                  comment: pro.commentcount
                                                      .toString(),
                                                  discounttedPrice:
                                                      pro.discounted_price,
                                                  issponsored:
                                                      pro.user.sponsored,
                                                  lefttile: "Used",
                                                  Vimage: pro.user.photo,
                                                  price: pro.price,
                                                  title: pro.title,
                                                  vendorname: pro.user.name,
                                                  productImage: pro.image,
                                                  similarproductCount:
                                                      pro.similarProductCount,
                                                  membershipColor:
                                                      pro.user.membershipColor,
                                                  membershipTitle:
                                                      pro.user.membershipTitle,
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : const SizedBox();
                            },
                            error: (error, stackTrace) {
                              return Text("error $error");
                            },
                            loading: () => Shimmer.fromColors(
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[100]!,
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                width: 70.w,
                                height: 100.h,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
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
                              // print("kalu ${data.brandbazar_domestic?.length}");
                              double dynamicHeight;

                              if (tabController.index == 0) {
                                dynamicHeight = data.insidearr.isEmpty ||
                                        data.global.isEmpty
                                    ? 150
                                    : 440;
                              } else if (tabController.index == 1) {
                                // Ensure data.doma[0] is valid and has length
                                dynamicHeight = data.insidearr.isEmpty &&
                                        data.brandbazar_domestic?.length == 0
                                    ? 150
                                    : 470;
                              } else if (tabController.index == 2)
                                dynamicHeight = data.insidearr.isEmpty ||
                                        data.spotlights?.length == 0
                                    ? 150
                                    : 470;
                              else
                                dynamicHeight = 200;
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 10.h),
                                            child: Row(
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
                                          ),
                                          data.brandbazar_global!.isNotEmpty &&
                                                  data.brandbazar_global
                                                          ?.length !=
                                                      0
                                              ? SizedBox(
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
                                                        VProduct prod =
                                                            data.brandbazar_global![
                                                                index];

                                                        return Padding(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        5.w),
                                                            child:
                                                                ProductDetailWidget(
                                                              onenquiredclicked:
                                                                  () {
                                                                print(
                                                                    'lanka ${prod.id}');

                                                                getEnquire(ref,
                                                                        prod.id)
                                                                    .then(
                                                                  (value) {
                                                                    value.data?.enquire ==
                                                                            0
                                                                        ? showModalBottomSheet(
                                                                            useSafeArea:
                                                                                true,
                                                                            isScrollControlled:
                                                                                true,
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (BuildContext context) {
                                                                              return SizedBox(
                                                                                height: MediaQuery.of(context).size.height * 0.8, // Use 80% of the screen height

                                                                                child: SendMessageBottomWidget(
                                                                                  ref: ref,
                                                                                  productidid: prod.id,
                                                                                ),
                                                                              );
                                                                            },
                                                                          )
                                                                        : navigateToPage(
                                                                            context:
                                                                                context,
                                                                            page: ChatScreen(
                                                                                threadId: value.data!.thread!.id!,
                                                                                username: value.data!.thread!.subject!,
                                                                                postId: value.data!.thread!.post_id!),
                                                                            ref:
                                                                                ref,
                                                                            showNavBar:
                                                                                false, // Hide bottom navbar
                                                                          );
                                                                    // if ()

                                                                    // SendMessageBottomWidget(
                                                                    //     ref: ref,
                                                                    //     productidid:
                                                                    //         prod.id);
                                                                  },
                                                                ).catchError(
                                                                        (error) {
                                                                  print(
                                                                      'Error: $error');
                                                                });
                                                              },
                                                              savedid: prod.savedByLoggedUser ==
                                                                          null ||
                                                                      prod.savedByLoggedUser!
                                                                          .isEmpty
                                                                  ? []
                                                                  : prod
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
                                                                refreshAllProviders();
                                                              },
                                                              lat: prod.user
                                                                  .latitude,
                                                              long: prod.user
                                                                  .longitude,
                                                              productid:
                                                                  prod.id,
                                                              shortestDistance: prod
                                                                  .user
                                                                  .shortestDistance,
                                                              vendorid:
                                                                  prod.user.id,
                                                              posttype: prod
                                                                  .post_type_id,
                                                              membershipid: prod
                                                                  .user
                                                                  .membership_id,
                                                              offer:
                                                                  prod.offers,
                                                              tradeImage:
                                                                  'assets/icon/b2bIcon.svg',
                                                              didcountpercentage:
                                                                  prod.discount_percentage,
                                                              avg_rating: prod
                                                                  .avg_rating
                                                                  ?.toDouble(),
                                                              wow: prod.wow,
                                                              comment: prod
                                                                  .commentcount
                                                                  .toString(),
                                                              lefttile: "Used",
                                                              vendorname: prod
                                                                  .user.name,
                                                              discounttedPrice:
                                                                  prod.discounted_price,
                                                              Vimage:
                                                                  prod.title,
                                                              issponsored: prod
                                                                  .user
                                                                  .sponsored,
                                                              price: prod.price,
                                                              title: prod.title,
                                                              productImage:
                                                                  prod.image,
                                                              similarproductCount:
                                                                  prod.similarProductCount,
                                                              membershipColor: prod
                                                                  .user
                                                                  .membershipColor,
                                                              membershipTitle: prod
                                                                  .user
                                                                  .membershipTitle,
                                                            ));
                                                      }),
                                                    ),
                                                  ),
                                                )
                                              : Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 15.h),
                                                  child: Center(
                                                    child: nolistingfound(),
                                                  ),
                                                ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5),
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                children:
                                                    data.domestic.map((e) {
                                                  return NotStoryWidget(
                                                    vImage: e.brandLogo,
                                                    index: data.domestic
                                                        .indexOf(e),
                                                    brandname: e.brandName,
                                                  );
                                                }).toList(),
                                              ),
                                            ),
                                          ),
                                          data.brandbazar_domestic!.isEmpty
                                              ? Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 18.h),
                                                  child: Center(
                                                    child: nolistingfound(),
                                                  ),
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
                                                          data.brandbazar_domestic!
                                                              .length, (index) {
                                                        VProduct prod =
                                                            data.brandbazar_domestic![
                                                                index];

                                                        return Padding(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        5.w),
                                                            child:
                                                                ProductDetailWidget(
                                                              onenquiredclicked:
                                                                  () {
                                                                print(
                                                                    'lanka ${prod.id}');

                                                                getEnquire(ref,
                                                                        prod.id)
                                                                    .then(
                                                                  (value) {
                                                                    value.data?.enquire ==
                                                                            0
                                                                        ? showModalBottomSheet(
                                                                            useSafeArea:
                                                                                true,
                                                                            isScrollControlled:
                                                                                true,
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (BuildContext context) {
                                                                              return SizedBox(
                                                                                height: MediaQuery.of(context).size.height * 0.8, // Use 80% of the screen height

                                                                                child: SendMessageBottomWidget(
                                                                                  ref: ref,
                                                                                  productidid: prod.id,
                                                                                ),
                                                                              );
                                                                            },
                                                                          )
                                                                        : navigateToPage(
                                                                            context:
                                                                                context,
                                                                            page: ChatScreen(
                                                                                threadId: value.data!.thread!.id!,
                                                                                username: value.data!.thread!.subject!,
                                                                                postId: value.data!.thread!.post_id!),
                                                                            ref:
                                                                                ref,
                                                                            showNavBar:
                                                                                false, // Hide bottom navbar
                                                                          );
                                                                    // if ()

                                                                    // SendMessageBottomWidget(
                                                                    //     ref: ref,
                                                                    //     productidid:
                                                                    //         prod.id);
                                                                  },
                                                                ).catchError(
                                                                        (error) {
                                                                  print(
                                                                      'Error: $error');
                                                                });
                                                              },
                                                              savedid: prod.savedByLoggedUser ==
                                                                          null ||
                                                                      prod.savedByLoggedUser!
                                                                          .isEmpty
                                                                  ? []
                                                                  : prod
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
                                                                refreshAllProviders();
                                                              },
                                                              lat: prod.user
                                                                  .latitude,
                                                              long: prod.user
                                                                  .longitude,
                                                              productid:
                                                                  prod.id,
                                                              avg_rating: prod
                                                                  .avg_rating
                                                                  ?.toDouble(),
                                                              didcountpercentage:
                                                                  prod.discount_percentage,
                                                              vendorid:
                                                                  prod.user.id,
                                                              membershipid: prod
                                                                  .user
                                                                  .membership_id,
                                                              offer:
                                                                  prod.offers,
                                                              posttype: prod
                                                                  .post_type_id,
                                                              shortestDistance: prod
                                                                  .user
                                                                  .shortestDistance,
                                                              wow: prod.wow,
                                                              comment: prod
                                                                  .commentcount
                                                                  .toString(),
                                                              issponsored: prod
                                                                  .user
                                                                  .sponsored,
                                                              lefttile: "Used",
                                                              vendorname: prod
                                                                  .user.name,
                                                              discounttedPrice:
                                                                  prod.discounted_price,
                                                              Vimage: prod
                                                                  .user.photo,
                                                              price: prod.price,
                                                              title: prod.title,
                                                              productImage:
                                                                  prod.image,
                                                              similarproductCount:
                                                                  prod.similarProductCount,
                                                              membershipColor: prod
                                                                  .user
                                                                  .membershipColor,
                                                              membershipTitle: prod
                                                                  .user
                                                                  .membershipTitle,
                                                            ));
                                                      }),
                                                    ),
                                                  ),
                                                ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5),
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                children:
                                                    data.spotlight.map((e) {
                                                  return NotStoryWidget(
                                                    vImage: e.brandLogo,
                                                    index: data.spotlight
                                                        .indexOf(e),
                                                    brandname: e.brandName,
                                                  );
                                                }).toList(),
                                              ),
                                            ),
                                          ),
                                          data.insidearr.isEmpty
                                              ? Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 15.h),
                                                  child: Center(
                                                    child: nolistingfound(),
                                                  ),
                                                )
                                              : SizedBox(
                                                  height: 340.h,
                                                  child: ListView.builder(
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    padding:
                                                        const EdgeInsets.all(3),
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    itemCount: data
                                                        .insidearr[2].length,
                                                    itemBuilder:
                                                        (context, index) {
                                                      VProduct prod = data
                                                          .insidearr[2][index];
                                                      return ProductDetailWidget(
                                                        onenquiredclicked: () {
                                                          print(
                                                              'lanka ${prod.id}');

                                                          getEnquire(
                                                                  ref, prod.id)
                                                              .then(
                                                            (value) {
                                                              value.data?.enquire ==
                                                                      0
                                                                  ? showModalBottomSheet(
                                                                      useSafeArea:
                                                                          true,
                                                                      isScrollControlled:
                                                                          true,
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (BuildContext
                                                                              context) {
                                                                        return SizedBox(
                                                                          height:
                                                                              MediaQuery.of(context).size.height * 0.8, // Use 80% of the screen height

                                                                          child:
                                                                              SendMessageBottomWidget(
                                                                            ref:
                                                                                ref,
                                                                            productidid:
                                                                                prod.id,
                                                                          ),
                                                                        );
                                                                      },
                                                                    )
                                                                  : navigateToPage(
                                                                      context:
                                                                          context,
                                                                      page: ChatScreen(
                                                                          threadId: value
                                                                              .data!
                                                                              .thread!
                                                                              .id!,
                                                                          username: value
                                                                              .data!
                                                                              .thread!
                                                                              .subject!,
                                                                          postId: value
                                                                              .data!
                                                                              .thread!
                                                                              .post_id!),
                                                                      ref: ref,
                                                                      showNavBar:
                                                                          false, // Hide bottom navbar
                                                                    );
                                                              // if ()

                                                              // SendMessageBottomWidget(
                                                              //     ref: ref,
                                                              //     productidid:
                                                              //         prod.id);
                                                            },
                                                          ).catchError((error) {
                                                            print(
                                                                'Error: $error');
                                                          });
                                                        },
                                                        savedid: prod.savedByLoggedUser ==
                                                                    null ||
                                                                prod.savedByLoggedUser!
                                                                    .isEmpty
                                                            ? []
                                                            : prod
                                                                .savedByLoggedUser
                                                                ?.map(
                                                                  (e) => SavedPost(
                                                                      id: e.id,
                                                                      userId: e
                                                                          .userId,
                                                                      postId: e
                                                                          .postId,
                                                                      createdAt: e
                                                                          .createdAt,
                                                                      updatedAt:
                                                                          e.updatedAt),
                                                                )
                                                                .toList(),
                                                        onRefresh: () {
                                                          refreshAllProviders();
                                                        },
                                                        lat: prod.user.latitude,
                                                        long:
                                                            prod.user.longitude,
                                                        productid: prod.id,
                                                        avg_rating: prod
                                                            .avg_rating
                                                            ?.toDouble(),
                                                        didcountpercentage:
                                                            prod.avg_rating,
                                                        vendorid: prod.user.id,
                                                        membershipid: prod
                                                            .user.membership_id,
                                                        offer: prod.offers,
                                                        posttype:
                                                            prod.post_type_id,
                                                        shortestDistance: prod
                                                            .user
                                                            .shortestDistance,
                                                        wow: prod.wow,
                                                        comment: prod
                                                            .commentcount
                                                            .toString(),
                                                        issponsored:
                                                            prod.user.sponsored,
                                                        lefttile: "Used",
                                                        vendorname: prod.title,
                                                        discounttedPrice: prod
                                                            .discounted_price,
                                                        Vimage: prod.user.photo,
                                                        price: prod.price,
                                                        title: prod.title,
                                                        productImage:
                                                            prod.image,
                                                        similarproductCount: prod
                                                            .similarProductCount,
                                                        membershipColor: prod
                                                            .user
                                                            .membershipColor,
                                                        membershipTitle: prod
                                                            .user
                                                            .membershipTitle,
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
                            loading: () => Shimmer.fromColors(
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[100]!,
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                width: 70.w,
                                height: 100.h,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
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
                                        vendorid: resp.vendor_id!,
                                        wow: resp.wow ?? '0',
                                        gift_qty: resp.gift_qty!,
                                        worth: resp.worth!,
                                        productname: resp.name!,
                                        vendorImage: resp.vendorImage,
                                        vendorname: resp.vendor_name,
                                        winners: resp.winners.toString(),
                                        proctimage: resp.image ?? '');
                                  },
                                ),
                              );
                            },
                            error: (error, stackTrace) {
                              return Text("error $error");
                            },
                            loading: () => Shimmer.fromColors(
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[100]!,
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                width: 70.w,
                                height: 100.h,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
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
                            loading: () => Shimmer.fromColors(
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[100]!,
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                width: 70.w,
                                height: 100.h,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
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
                                    color: const Color(0xff551b55),
                                  ),
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
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                nolistingfound(),
                                SizedBox(
                                  height: 10.h,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
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
                                          bool isSelected =
                                              index == selectedIndex;
                                          return GestureDetector(
                                            onTap: () {
                                              // Update the selected index
                                              selectedIndexNotifier.value =
                                                  index;
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
                                                  color: Colors
                                                      .white, // Use color directly or define in constants
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
                                    asyncbajarValue.when(
                                      data: (data) {
                                        print(
                                            'kamma ${data.low_price_guarantee.first.savedByLoggedUser}');
                                        // Define the products list corresponding to each category
                                        List<List<VProduct>> productsList = [
                                          data.low_price_guarantee, // Corresponds to SHOPZONE
                                          data.Launch_offer, // Corresponds to HOB
                                          data.seasonal, // Corresponds to SERVICES
                                          data.promotional, // Corresponds to TRADEHUB
                                          data.clearance_sale, // Corresponds to USED
                                          data.Launch_festival_offer, // Corresponds to USED
                                        ];

                                        // Ensure the index is valid
                                        if (selectedIndex < 0 ||
                                            selectedIndex >=
                                                productsList.length) {
                                          selectedIndex =
                                              0; // Default to the first category if index is out of bounds
                                        }

                                        List<VProduct> products =
                                            productsList[selectedIndex];

                                        // Calculate height dynamically
                                        double calculatedHeight =
                                            products.isNotEmpty ? 380.h : 60.h;

                                        return AnimatedContainer(
                                          alignment: Alignment.topLeft,
                                          duration:
                                              const Duration(milliseconds: 300),
                                          height: calculatedHeight,
                                          child: products.isEmpty
                                              ? Center(child: nolistingfound())
                                              : SingleChildScrollView(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  child: Wrap(
                                                    spacing: 0
                                                        .w, // Horizontal spacing between items
                                                    runSpacing: 0
                                                        .h, // Vertical spacing between rows
                                                    children: List.generate(
                                                        products.length,
                                                        (index) {
                                                      VProduct prod =
                                                          products[index];

                                                      return Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    2.w),
                                                        child:
                                                            ProductDetailWidget(
                                                              
                                                          onenquiredclicked:
                                                              () {
                                                            print(
                                                                'lanka ${prod.id}');

                                                            getEnquire(ref,
                                                                    prod.id)
                                                                .then(
                                                              (value) {
                                                                value.data?.enquire ==
                                                                        0
                                                                    ? showModalBottomSheet(
                                                                        useSafeArea:
                                                                            true,
                                                                        isScrollControlled:
                                                                            true,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (BuildContext
                                                                                context) {
                                                                          return SizedBox(
                                                                            height:
                                                                                MediaQuery.of(context).size.height * 0.8, // Use 80% of the screen height

                                                                            child:
                                                                                SendMessageBottomWidget(
                                                                              ref: ref,
                                                                              productidid: prod.id,
                                                                            ),
                                                                          );
                                                                        },
                                                                      )
                                                                    : navigateToPage(
                                                                        context:
                                                                            context,
                                                                        page: ChatScreen(
                                                                            threadId:
                                                                                value.data!.thread!.id!,
                                                                            username: value.data!.thread!.subject!,
                                                                            postId: value.data!.thread!.post_id!),
                                                                        ref:
                                                                            ref,
                                                                        showNavBar:
                                                                            false, // Hide bottom navbar
                                                                      );
                                                                // if ()

                                                                // SendMessageBottomWidget(
                                                                //     ref: ref,
                                                                //     productidid:
                                                                //         prod.id);
                                                              },
                                                            ).catchError(
                                                                    (error) {
                                                              print(
                                                                  'Error: $error');
                                                            });
                                                          },
                                                          savedid: prod.savedByLoggedUser ==
                                                                      null ||
                                                                  prod.savedByLoggedUser!
                                                                      .isEmpty
                                                              ? []
                                                              : prod
                                                                  .savedByLoggedUser
                                                                  ?.map((e) {
                                                                  print(
                                                                      'bibash ${e.id}');
                                                                  SavedPost(
                                                                      id: e.id,
                                                                      userId: e
                                                                          .userId,
                                                                      postId: e
                                                                          .postId,
                                                                      createdAt: e
                                                                          .createdAt,
                                                                      updatedAt:
                                                                          e.updatedAt);
                                                                }).toList(),
                                                          onRefresh: () {
                                                            // print('object');
                                                            ref.invalidate(
                                                                getUsedResponseProvider);
                                                          },
                                                          lat: prod
                                                              .user.latitude,
                                                          long: prod
                                                              .user.longitude,
                                                          productid: prod.id,
                                                          vendorid:
                                                              prod.user.id,
                                                          membershipid: prod
                                                              .user
                                                              .membership_id,
                                                          posttype:
                                                              prod.post_type_id,
                                                          shortestDistance: prod
                                                              .user
                                                              .shortestDistance,
                                                          didcountpercentage: prod
                                                              .discount_percentage,
                                                          avg_rating: prod
                                                              .avg_rating
                                                              ?.toDouble(),
                                                          offer: prod.offers,
                                                          comment: prod
                                                              .commentcount
                                                              .toString(),
                                                          wow: prod.wow,
                                                          issponsored: prod
                                                              .user.sponsored,
                                                          lefttile:
                                                              "Socio-Shop",
                                                          vendorname:
                                                              prod.user.name,
                                                          discounttedPrice: prod
                                                              .discounted_price,
                                                          Vimage:
                                                              prod.user.photo,
                                                          price: prod.price,
                                                          title: prod.title,
                                                          productImage:
                                                              prod.image,
                                                          similarproductCount: prod
                                                              .similarProductCount,
                                                          membershipColor: prod
                                                              .user
                                                              .membershipColor,
                                                          membershipTitle: prod
                                                              .user
                                                              .membershipTitle,
                                                        ),
                                                      );
                                                    }),
                                                  ),
                                                ),
                                        );
                                      },
                                      error: (error, stackTrace) =>
                                          const Center(
                                        child: Text("Error loading data"),
                                      ),
                                      loading: () => Center(
                                        child: Shimmer.fromColors(
                                          baseColor: Colors.grey[300]!,
                                          highlightColor: Colors.grey[100]!,
                                          child: Container(
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            width: 40.w,
                                            height: 100.h,
                                            decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.w, bottom: 8.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'All Products',
                                  style: headerstyle.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          asyncbajarValue.when(
                            data: (data) {
                              return SingleChildScrollView(
                                scrollDirection:
                                    Axis.vertical, // Scroll vertically
                                child: Wrap(
                                  runSpacing:
                                      15.h, // Vertical spacing between rows
                                  children: List.generate(data.product.length,
                                      (index) {
                                    var res = data.product[index];
                                    return SizedBox(
                                      width:
                                          (MediaQuery.of(context).size.width) /
                                              2, // Adjust for two items per row
                                      child: Card(
                                        clipBehavior: Clip.antiAlias,
                                        shadowColor: const Color(0xff3D215F)
                                            .withOpacity(0.5),
                                        elevation: 9,
                                        // margin: EdgeInsets.symmetric(horizontal: 5.w),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: AllProductDetailWidget(
                                          ref: ref,
                                          onenquiredclicked: () {
                                            getEnquire(ref, res.id).then(
                                              (value) {
                                                value.data?.enquire == 0
                                                    ? showModalBottomSheet(
                                                        useSafeArea: true,
                                                        isScrollControlled:
                                                            true,
                                                        context: context,
                                                        builder: (BuildContext
                                                            context) {
                                                          return SizedBox(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.8, // Use 80% of the screen height

                                                            child:
                                                                SendMessageBottomWidget(
                                                              ref: ref,
                                                              productidid:
                                                                  res.id,
                                                            ),
                                                          );
                                                        },
                                                      )
                                                    : navigateToPage(
                                                        context: context,
                                                        page: ChatScreen(
                                                            threadId: value
                                                                .data!
                                                                .thread!
                                                                .id!,
                                                            username: value
                                                                .data!
                                                                .thread!
                                                                .subject!,
                                                            postId: value
                                                                .data!
                                                                .thread!
                                                                .post_id!),
                                                        ref: ref,
                                                        showNavBar:
                                                            false, // Hide bottom navbar
                                                      );
                                                // if ()

                                                // SendMessageBottomWidget(
                                                //     ref: ref,
                                                //     productidid:
                                                //         prod.id);
                                              },
                                            ).catchError((error) {
                                              print('Error: $error');
                                            });
                                          },
                                          savedid: res.savedByLoggedUser ==
                                                      null ||
                                                  res.savedByLoggedUser!.isEmpty
                                              ? []
                                              : res.savedByLoggedUser
                                                  ?.map(
                                                    (e) => SavedPost(
                                                        id: e.id,
                                                        userId: e.userId,
                                                        postId: e.postId,
                                                        createdAt: e.createdAt,
                                                        updatedAt: e.updatedAt),
                                                  )
                                                  .toList(),
                                          onRefresh: () {
                                            refreshAllProviders();
                                          },
                                          lat: res.user.latitude,
                                          long: res.user.longitude,
                                          productid: res.id,
                                          shortestDistance:
                                              res.user.shortestDistance,
                                          id: int.tryParse(res.id),
                                          membershipid: res.user.membership_id,
                                          offer: res.offers,
                                          posttype: res.post_type_id,
                                          didcountpercentage:
                                              res.discount_percentage,
                                          avg_rating:
                                              res.avg_rating?.toDouble(),
                                          wow: res.wow,
                                          comment: res.commentcount.toString(),
                                          issponsored: res.user.sponsored,
                                          discounttedPrice:
                                              res.discounted_price,
                                          lefttile: "Used",
                                          productImage: res.image,
                                          Vimage: res.user.photo,
                                          vendorname: res.user.name,
                                          title: res.title,
                                          price: res.price,
                                          similarproductCount:
                                              res.similarProductCount,
                                          membershipColor:
                                              res.user.membershipColor,
                                          membershipTitle:
                                              res.user.membershipTitle,
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                              );

                              // SizedBox(
                              //    height: 340.h,
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
                            height: 10.w,
                          )
                        ],
                      ),
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
                      borderRadius:
                          BorderRadius.circular(12), // Rounded corners
                      boxShadow: const [
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
                              contentPadding: const EdgeInsets.symmetric(
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
            )));
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
                    tag: 'usedhero',
                    child: TweenAnimationBuilder<Color?>(
                      tween: ColorTween(
                        begin: Colors.blue.withOpacity(0.6),
                        end: Colors.purple.withOpacity(0.6),
                      ),
                      duration: const Duration(seconds: 2),
                      builder: (context, color, child) {
                        if (SmartClient.token == "" &&
                            SmartClient.userPhoto!.isEmpty) {
                          return CircleAvatar(
                            child: Image.asset(
                                'assets/images/Smartbazaar-Icon-for-QR.png'),
                          );
                        } else {
                          return Container(
                            margin: EdgeInsets.only(right: 3.w),
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color.fromARGB(255, 115, 92, 119),
                                width: 0.7,
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 18,
                              backgroundImage:
                                  NetworkImage(SmartClient.userPhoto),
                            ),
                          );
                        }
                      },
                    ),
                  )
                : Container(
                    width: 70.w,
                    padding: EdgeInsets.symmetric(vertical: 5.h),
                    decoration: BoxDecoration(
                      color: const Color(0xffE2DAE5).withOpacity(0.9),
                      boxShadow: const [
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
                            tag: 'usedhero',
                            child: SmartClient.token == ""
                                ? CircleAvatar(
                                    radius: 15,
                                    child: Image.asset(
                                        'assets/images/Smartbazaar-Icon-for-QR.png'),
                                  )
                                : Container(
                                    margin: EdgeInsets.only(right: 3.w),
                                    padding: const EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.black, width: 0.5),
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
                          SmartClient.token == ""
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 5.h),
                                    IconButton(
                                      onPressed: () {
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .pushAndRemoveUntil(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginScreen(),
                                          ),
                                          (route) => false,
                                        );
                                      },
                                      icon: Column(
                                        children: [
                                          Icon(Icons.person_2_outlined),
                                          Text(
                                            "Log in",
                                            style: headerstyle.copyWith(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w700,
                                              color: const Color(0xff918994),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    //   SizedBox(height: 10.h),
                                    IconButton(
                                      onPressed: () {
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .push(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const SignUpScreen(),
                                          ),
                                        );
                                      },
                                      icon: Column(
                                        children: [
                                          Icon(Icons.person_2_outlined),
                                          Text(
                                            "Sign up",
                                            style: headerstyle.copyWith(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w700,
                                              color: const Color(0xff918994),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 5.h),
                                    IconButton(
                                      onPressed: () {
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .push(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const LeftArrowScreen(),
                                          ),
                                        );
                                      },
                                      icon: Column(
                                        children: [
                                          Icon(Icons.person_add),
                                          Text(
                                            "Membership",
                                            style: headerstyle.copyWith(
                                              fontSize: 5,
                                              fontWeight: FontWeight.w700,
                                              color: const Color(0xff918994),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              : Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 10.h),
                                    IconButton(
                                      onPressed: () {
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .push(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const ScanScreen(),
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
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .push(
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
                                            builder: (context) =>
                                                const MyOrderScreen(),
                                          ),
                                        );
                                      },
                                      icon: Column(
                                        children: [
                                          Image.asset(
                                              'assets/images/tennis.png'),
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
                                      icon: const Column(
                                        children: [
                                          Icon(
                                            Icons.close,
                                            size: 16,
                                            color: Color(0xff918994),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
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
