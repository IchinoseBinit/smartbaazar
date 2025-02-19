import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/auth/view/bottom_navigation_bar.dart';
import 'package:smartbazar/features/scran_screen/scan_screen.dart';
import 'package:smartbazar/features/b2b_screen/api/b2b_provider.dart';
import 'package:smartbazar/features/brand_bazar/api/screen_category_api.dart';
import 'package:smartbazar/features/brand_bazar/brand_bazar_screen.dart';
import 'package:smartbazar/features/bussiness_tab_screen/view/business_tab_screen.dart';
import 'package:smartbazar/features/button_nav_bar/cusom_btn_bar/custom_bottom_nav.dart';
import 'package:smartbazar/features/create_listing/view/create_new_listing_screen.dart';
import 'package:smartbazar/features/events_screen/view/events_screen.dart';
import 'package:smartbazar/features/feed_page/view/feed_page_screen.dart';
import 'package:smartbazar/features/feed_page/widget/not_a_story_widget.dart';
import 'package:smartbazar/features/grocessary_screen/view/grocary_screen.dart';
import 'package:smartbazar/features/home/api/buy_or_now_provider.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/home/api/shopzone_provider.dart';
import 'package:smartbazar/features/home/model/home_story_model.dart';
import 'package:smartbazar/features/home/view/buyorwin_widget.dart';
import 'package:smartbazar/features/home/view/custom_border.dart';
import 'package:smartbazar/features/home/view/header.dart';
import 'package:rxdart/rxdart.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/jobs_screen/view/jobs_screen.dart';
import 'package:smartbazar/features/message/view/message_view_screen.dart';
import 'package:smartbazar/features/my_order/view/my_order_screen.dart';
import 'package:smartbazar/features/pending_approval/pending_approval.dart';
import 'package:smartbazar/features/product_details/constant/all_product_detail_widget.dart';
import 'package:smartbazar/features/product_details/constant/product_detail_widget.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/services_screen/api/service_provider.dart';
import 'package:smartbazar/features/services_screen/service_screen.dart';
import 'package:smartbazar/features/socio_screen/view/socio_screen.dart';
import 'package:smartbazar/features/used_screen/view/used_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_profile_screen.dart';
import 'package:smartbazar/features/vendor/view/my_subscribe_and_win_page.dart';
import 'package:smartbazar/main.dart';
import 'package:smartbazar/network_service/smart-client.dart';

import '../../home/api/post_type_story_api.dart';
import '../../home/view/home_page_story_container.dart';

final _selectedIndexProvider = StateProvider<int>((ref) => 3);

class B2bScreen extends ConsumerStatefulWidget {
  const B2bScreen({super.key});

  @override
  ConsumerState<B2bScreen> createState() => _B2bScreenState();
}

class _B2bScreenState extends ConsumerState<B2bScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final TextEditingController _searchController = TextEditingController();
  final _debouncer = BehaviorSubject<String>();
  int? selectedIndex = 3;
  final ScrollController _scrollController = ScrollController();
  bool _isSectionsVisible = true;
  Offset _initialDragPosition = Offset.zero;
  final ValueNotifier<bool> _showSideBar = ValueNotifier<bool>(true);
  List<FetchCategory> allcat = [];
  // bool _showSearchProductModels = false;
  late TabController dynamictabController;
  Map<String, String>? dropdownValue = headeritems.firstWhere(
    (item) => item['label'] == 'B2B',
    orElse: () => headeritems.first, // Fallback to the first item if not found
  );
  int? postypeid = 0;
  final List<Map<String, dynamic>> _items = [
    {
      'icon': 'assets/icon/openCartIcon.svg',
      'label': 'SocioShop',
      'screen': const SocioShopScreen()
    },
    {
      'icon': 'assets/icon/b2bIcon.svg',
      'label': 'TradeHub',
      'screen': const B2bScreen()
    },
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
  bool _showSearchProductModels = false;
  int headerIndex = 0;
  PageController _pageController = PageController(viewportFraction: 0.3);
  Timer? _timer;
  final PageController _adscontroller = PageController(
    initialPage: 0,
  );
  int _currentIndex = 0;
  // void _onPageChanged(int index) {
  //   setState(() {
  //     selectedIndex = index;
  //   });
  // }

  int? dynamicsize;

  int _currentPage = 0;
  int? selectedTab = 0;

  @override
  void initState() {
    dynamictabController = TabController(length: 3, vsync: this);

    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      dynamictabController.addListener(() {
        setState(() {});
      });

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
    dynamictabController.dispose();
    _debouncer.close();
    _searchController.dispose();
    _scrollController.dispose();

    super.dispose();

    // super.dispose();
  }

  bool isSliverAppBarVisible = true; // Track the visibility of SliverAppBar

  @override
  Widget build(BuildContext context) {
    _pageController = PageController(
      viewportFraction: 0.3,
      initialPage: headerIndex,
    );
    // ref.watch(fetchAdsProvider);
    final pselectedIndex = ref.watch(bottomNavIndexProvider);
    var homecategory = ref.watch(homeCategoryProvider);

    //     final adsList = ref.watch(fetchAdsProvider);
    final asyncPostTypeContent = ref.watch(getPostTypeStoryApiProvider('7'));
    final asyncbajarValue = ref.watch(getB2bResponseProvider);
    final SearchProductModels =
        ref.watch(searchProvider(_searchController.text));
    final category = ref.watch(getCategoriesProvider(217));

    Future<void> refresh() async {
      // Refreshing the providers
      ref.refresh(bottomNavIndexProvider);
      ref.refresh(homeCategoryProvider);
      ref.refresh(getPostTypeStoryApiProvider('7'));
      ref.refresh(getB2bResponseProvider);
      ref.refresh(searchProvider(_searchController.text));
      ref.refresh(getCategoriesProvider(217));

      // If needed, perform any additional tasks here after refreshing
    }

    // asyncbajarValue.when(data: (data) {
    dynamicsize = 500;
    // }, error: (error, stackTrace) {

    // }, loading: () {
    //   return CircularProgressIndicator();
    // },)
    // final SearchProductModels = ref.watch(searchProvider(
    //     _searchController.text)); // Ensure this updates correctly

    return Scaffold(
      
      extendBody: false,
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffF6F1F1),
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
                            automaticallyImplyLeading: false,
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
                                    itemCount: _items.length,
                                    padEnds: false,
                                    controller: _pageController,
                                    onPageChanged: (value) {
                                      ref
                                          .read(_selectedIndexProvider.notifier)
                                          .state = value;
                                    },
                                    itemBuilder: (context, index) {
                                      Map<String, dynamic> data = _items[index];

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
                    child: homecategory.when(
                      data: (feedStoryData) {
                        List<HomeStoryPost>? homeStory =
                            feedStoryData.home_story?.story.posts;

                        if (homeStory != null) {
                          final posts = homeStory;

                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: SizedBox(
                              height: 100.h,
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: posts.length,
                                itemBuilder: (context, index) {
                                  final story = posts[index];

                                  return HomePageStoryContainer(
                                    feedStoryContent: Story(
                                      posts:
                                          feedStoryData.home_story?.story.posts
                                              ?.map((e) => Post(
                                                    hasSponsoredGifts:
                                                        e.hasSponsoredGifts,
                                                    id: e.id,
                                                    image: e.image,
                                                    storyCount: e.storyCount,
                                                    title: e.title,
                                                    vendorId: e.vendorId,
                                                    vendorImage: e.vendorImage,
                                                    vendorName: e.vendorName,
                                                  ))
                                              .toList(),
                                    ),
                                    userId: story.id,
                                    index: index,
                                    vendorName:
                                        story.vendorName ?? "Unknown Vendor",
                                    vendorImage: story.vendorImage ??
                                        "https://example.com/default-image.png",
                                    storyCount: story.storyCount ?? 0,
                                    showGift: story.hasSponsoredGifts ?? false,
                                  );
                                },
                              ),
                            ),
                          );
                        }

                        return const Center(
                          child: Text('No stories available.'),
                        );
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
                  ),
                  SliverToBoxAdapter(
                    child: asyncbajarValue.when(
                      data: (data) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Stack(
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
                                            : Colors.grey, // Inactive dot color
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      error: (error, stackTrace) {
                        return Text("Try again: $error");
                      },
                      loading: () {
                        return Shimmer.fromColors(
                          baseColor: Colors.grey[300]!,
                          highlightColor: Colors.grey[100]!,
                          child: Column(
                            children: [
                              // Shimmer placeholder for the carousel slider
                              SizedBox(
                                height: 130.h,
                                width: double.infinity,
                                child: Container(
                                  color: Colors.grey[300],
                                ),
                              ),

                              // Shimmer placeholder for the dots indicator
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(
                                    3, // Number of shimmer dots
                                    (index) => Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5.0),
                                      height: 9.0,
                                      width: 9.0,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey[300],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: category.when(
                      data: (data) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 20.h, horizontal: 7.w),
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
                                                  color:
                                                      ColorConstant.blackColor,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                "B2b",
                                                style: headerstyle.copyWith(
                                                  color:
                                                      ColorConstant.blackColor,
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
                                                  position: const RelativeRect
                                                      .fromLTRB(0, 0, 0,
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
                                                      width: 200
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
                                                              e.name ??
                                                                  'No Name',
                                                              style:
                                                                  const TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 13,
                                                              ),
                                                              textAlign:
                                                                  TextAlign
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
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
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
                          SizedBox(
                            width: 10.w,
                          ),
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
                        return Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: SizedBox(
                            width: double.infinity,
                            child: AnimatedContainer(
                              padding: EdgeInsets.zero,
                              margin: EdgeInsets.zero,
                              duration: const Duration(milliseconds: 400),
                              height: 350.h,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Wrap(
                                  spacing:
                                      5.w, // Horizontal spacing between items
                                  runSpacing:
                                      15.h, // Vertical spacing between rows
                                  children: List.generate(
                                      data.hotProducts.length, (index) {
                                    VProduct hot = data.hotProducts[index];
                                    return Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 5.w),
                                      child: ProductDetailWidget(
                                        onRefresh: () {
                                          refresh();
                                        },
                                        savedid: hot.savedByLoggedUser ==
                                                    null ||
                                                hot.savedByLoggedUser!.isEmpty
                                            ? []
                                            : hot.savedByLoggedUser,
                                        lat: hot.user.latitude,
                                        long: hot.user.longitude,
                                        productid: hot.id,
                                        membershipid: hot.user.membership_id,
                                        vendorid: hot.user.id,
                                        posttype: hot.post_type_id,
                                        offer: hot.offers,
                                        shortestDistance:
                                            hot.user.shortestDistance,
                                        didcountpercentage:
                                            hot.discount_percentage,
                                        avg_rating: hot.avg_rating?.toDouble(),
                                        wow: hot.wow,
                                        comment: hot.commentcount.toString(),
                                        discounttedPrice: hot.discounted_price,
                                        issponsored: hot.user.sponsored,
                                        lefttile: "B2b-Shop",
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
                                      ),
                                    );
                                  }),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      error: (error, stackTrace) =>
                          const Text("Please login again"),
                      loading: () => SizedBox(
                        height: 340.h,
                        child: ListView.builder(
                          padding: const EdgeInsets.all(3),
                          scrollDirection: Axis.horizontal,
                          itemCount: 5, // Number of shimmer placeholders
                          itemBuilder: (context, index) => Shimmer.fromColors(
                            baseColor: Colors.grey[300]!,
                            highlightColor: Colors.grey[100]!,
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5),
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
                        if (data.cat.isNotEmpty) {
                          return Padding(
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
                                SizedBox(height: 5.h),
                                SizedBox(
                                  height: 340.h,
                                  width: double.infinity,
                                  child: ListView.builder(
                                    padding: const EdgeInsets.all(3),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: data.insidearr[1].length,
                                    itemBuilder: (context, index) {
                                      VProduct pro = data.insidearr[1][index];
                                      return ProductDetailWidget(
                                        onRefresh: () {
                                          refresh();
                                        },
                                        savedid: pro.savedByLoggedUser ==
                                                    null ||
                                                pro.savedByLoggedUser!.isEmpty
                                            ? []
                                            : pro.savedByLoggedUser,
                                        lat: pro.user.latitude,
                                        long: pro.user.longitude,
                                        productid: pro.id,
                                        shortestDistance:
                                            pro.user.shortestDistance,
                                        vendorid: pro.user.id,
                                        membershipid: pro.user.membership_id,
                                        offer: pro.offers,
                                        posttype: pro.post_type_id,
                                        didcountpercentage:
                                            pro.discount_percentage,
                                        avg_rating: pro.avg_rating?.toDouble(),
                                        wow: pro.wow,
                                        comment: pro.commentcount.toString(),
                                        issponsored: pro.user.sponsored,
                                        discounttedPrice: pro.discounted_price,
                                        lefttile: "B2b-Shop",
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
                          );
                        }
                        return const SizedBox();
                      },
                      error: (error, stackTrace) => Text("Error: $error"),
                      loading: () => Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Shimmer.fromColors(
                                  baseColor: Colors.grey[300]!,
                                  highlightColor: Colors.grey[100]!,
                                  child: Container(
                                    width: 150,
                                    height: 20,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.h),
                            SizedBox(
                              height: 340.h,
                              width: double.infinity,
                              child: ListView.builder(
                                padding: const EdgeInsets.all(3),
                                scrollDirection: Axis.horizontal,
                                itemCount: 5, // Number of shimmer placeholders
                                itemBuilder: (context, index) =>
                                    Shimmer.fromColors(
                                  baseColor: Colors.grey[300]!,
                                  highlightColor: Colors.grey[100]!,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    width: 200.w,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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
                                          data.cat[2].slug,
                                          style: headerstyle.copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: SizedBox(
                                        height: 340.h,
                                        width: double.infinity,
                                        child: ListView.builder(
                                          padding: const EdgeInsets.all(3),
                                          clipBehavior: Clip.antiAlias,
                                          scrollDirection: Axis.horizontal,
                                          itemCount: data.insidearr[2].length,
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) {
                                            VProduct pro =
                                                data.insidearr[2][index];
                                            return ProductDetailWidget(
                                              savedid: pro.savedByLoggedUser ==
                                                          null ||
                                                      pro.savedByLoggedUser!
                                                          .isEmpty
                                                  ? []
                                                  : pro.savedByLoggedUser,
                                              onRefresh: () {
                                                refresh();
                                              },
                                              lat: pro.user.latitude,
                                              long: pro.user.longitude,
                                              productid: pro.id,
                                              shortestDistance:
                                                  pro.user.shortestDistance,
                                              membershipid:
                                                  pro.user.membership_id,
                                              offer: pro.offers,
                                              posttype: pro.post_type_id,
                                              vendorid: pro.user.id,
                                              didcountpercentage:
                                                  pro.discount_percentage,
                                              avg_rating:
                                                  pro.avg_rating?.toDouble(),
                                              wow: pro.wow,
                                              comment:
                                                  pro.commentcount.toString(),
                                              discounttedPrice:
                                                  pro.discounted_price,
                                              issponsored: pro.user.sponsored,
                                              lefttile: "B2b-Shop",
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
                                    ),
                                  ],
                                ),
                              )
                            : const SizedBox();
                      },
                      error: (error, stackTrace) {
                        return Text("Error: $error");
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
                                          data.cat[4].slug.toUpperCase(),
                                          style: headerstyle.copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
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
                                        itemCount: data.insidearr[4].length,
                                        shrinkWrap: true,
                                        itemBuilder: (context, index) {
                                          VProduct pro =
                                              data.insidearr[4][index];
                                          return ProductDetailWidget(
                                            savedid:
                                                pro.savedByLoggedUser == null ||
                                                        pro.savedByLoggedUser!
                                                            .isEmpty
                                                    ? []
                                                    : pro.savedByLoggedUser,
                                            onRefresh: () {
                                              refresh();
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
                                            avg_rating:
                                                pro.avg_rating?.toDouble(),
                                            wow: pro.wow,
                                            comment:
                                                pro.commentcount.toString(),
                                            discounttedPrice:
                                                pro.discounted_price,
                                            issponsored: pro.user.sponsored,
                                            lefttile: "B2b-Shop",
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
                        return Text("Error: $error");
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
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: SizedBox(
                        height: 50.h,
                        width: double.infinity,
                        child: TabBar(
                          controller: dynamictabController,
                          tabs: const [
                            Tab(text: ' Global\n Brands'),
                            Tab(text: ' Domestic\n Brands'),
                            Tab(text: ' Spotlight\n Sellers'),
                          ],
                          labelColor: const Color(0xff909090),
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 10.h,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: asyncbajarValue.when(
                      data: (data) {
                        double dynamicHeight;

                        if (dynamictabController.index == 0) {
                          dynamicHeight = data.insidearr.isEmpty ||
                                  data.insidearr[0].isEmpty
                              ? 150
                              : 500;
                        } else if (dynamictabController.index == 1) {
                          // Ensure data.doma[0] is valid and has length
                          dynamicHeight = data.insidearr.isEmpty ||
                                  data.insidearr[1].isEmpty
                              ? 150
                              : 500;
                        } else if (dynamictabController.index == 2)
                          dynamicHeight = data.insidearr.isEmpty ||
                                  data.insidearr[2].isEmpty
                              ? 150
                              : 500;
                        else
                          dynamicHeight = 300;

                        return SizedBox(
                          // Use Expanded for better layout management
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            height: dynamicHeight,
                            width: double.infinity,
                            child: TabBarView(
                              controller: dynamictabController,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 7.h),
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
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    data.insidearr.isNotEmpty &&
                                            data.insidearr[0].isNotEmpty
                                        ? SizedBox(
                                            height: 340.h,
                                            child: ListView.builder(
                                              clipBehavior: Clip.antiAlias,
                                              padding: const EdgeInsets.all(3),
                                              scrollDirection: Axis.horizontal,
                                              itemCount:
                                                  data.insidearr[0].length,
                                              itemBuilder: (context, index) {
                                                VProduct prod =
                                                    data.insidearr[0][index];
                                                return ProductDetailWidget(
                                                  savedid: prod.savedByLoggedUser ==
                                                              null ||
                                                          prod.savedByLoggedUser!
                                                              .isEmpty
                                                      ? []
                                                      : prod.savedByLoggedUser,
                                                  onRefresh: () {
                                                    refresh();
                                                  },
                                                  lat: prod.user.latitude,
                                                  long: prod.user.latitude,
                                                  productid: prod.id,
                                                  shortestDistance: prod
                                                      .user.shortestDistance,
                                                  vendorid: prod.user.id,
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
                                                  lefttile: "B2b",
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
                                                );
                                              },
                                            ),
                                          )
                                        : Padding(
                                            padding: EdgeInsets.only(top: 6.h),
                                            child:
                                                Center(child: nolistingfound()),
                                          )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 5.h),
                                      child: SingleChildScrollView(
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
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    data.insidearr.isEmpty
                                        ? Padding(
                                            padding: EdgeInsets.only(top: 5.h),
                                            child:
                                                Center(child: nolistingfound()),
                                          )
                                        : SizedBox(
                                            height: 340.h,
                                            child: ListView.builder(
                                              clipBehavior: Clip.antiAlias,
                                              padding: const EdgeInsets.all(3),
                                              scrollDirection: Axis.horizontal,
                                              itemCount:
                                                  data.insidearr[1].length,
                                              itemBuilder: (context, index) {
                                                dynamicsize =
                                                    data.insidearr[1].isEmpty
                                                        ? 100
                                                        : 500;
                                                VProduct prod =
                                                    data.insidearr[1][index];

                                                return ProductDetailWidget(
                                                  onRefresh: () {
                                                    refresh();
                                                  },
                                                  lat: prod.user.latitude,
                                                  long: prod.user.longitude,
                                                  productid: prod.id,
                                                  shortestDistance: prod
                                                      .user.shortestDistance,
                                                  vendorid: prod.user.id,
                                                  posttype: prod.post_type_id,
                                                  offer: prod.offers,
                                                  membershipid:
                                                      prod.user.membership_id,
                                                  didcountpercentage:
                                                      prod.discount_percentage,
                                                  avg_rating: prod.avg_rating
                                                      ?.toDouble(),
                                                  comment: prod.commentcount
                                                      .toString(),
                                                  wow: prod.wow,
                                                  issponsored:
                                                      prod.user.sponsored,
                                                  lefttile: "B2b-Shop",
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
                                    Padding(
                                      padding: EdgeInsets.only(top: 3.h),
                                      child: SingleChildScrollView(
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
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    data.insidearr.isEmpty
                                        ? Padding(
                                            padding: EdgeInsets.only(top: 2.h),
                                            child:
                                                Center(child: nolistingfound()),
                                          )
                                        : SizedBox(
                                            height: 340.h,
                                            child: ListView.builder(
                                              clipBehavior: Clip.antiAlias,
                                              padding: const EdgeInsets.all(3),
                                              scrollDirection: Axis.horizontal,
                                              itemCount:
                                                  data.insidearr[2].length,
                                              itemBuilder: (context, index) {
                                                VProduct prod =
                                                    data.insidearr[2][index];
                                                return ProductDetailWidget(
                                                  savedid: prod.savedByLoggedUser ==
                                                              null ||
                                                          prod.savedByLoggedUser!
                                                              .isEmpty
                                                      ? []
                                                      : prod.savedByLoggedUser,
                                                  onRefresh: () {
                                                    refresh();
                                                  },
                                                  lat: prod.user.latitude,
                                                  long: prod.user.longitude,
                                                  productid: prod.id,
                                                  shortestDistance: prod
                                                      .user.shortestDistance,
                                                  offer: prod.offers,
                                                  posttype: prod.post_type_id,
                                                  membershipid:
                                                      prod.user.membership_id,
                                                  vendorid: prod.user.id,
                                                  didcountpercentage:
                                                      prod.discount_percentage,
                                                  avg_rating: prod.avg_rating
                                                      ?.toDouble(),
                                                  comment: prod.commentcount
                                                      .toString(),
                                                  wow: prod.wow,
                                                  issponsored:
                                                      prod.user.sponsored,
                                                  lefttile: "B2b-Shop",
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
                    child: asyncbajarValue.when(
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
                                proctimage: resp.image ?? '',
                              );
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
                    child: Center(
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
                  ),
                  SliverToBoxAdapter(
                    child: asyncbajarValue.when(
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
                                width: double.infinity,
                              );
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
                    child: Center(
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
                          nolistingfound(),
                          SizedBox(
                            height: 5.h,
                          ),
                          asyncbajarValue.when(
                            data: (data) {
                              List<List<VProduct>> productsList = [
                                data.low_price_guarantee, // Corresponds to SHOPZONE
                                data.Launch_offer, // Corresponds to HOB
                                data.seasonal, // Corresponds to SERVICES
                                data.promotional, // Corresponds to TRADEHUB
                                data.clearance_sale,
                                data.Launch_festival_offer, // Corresponds to USED
                              ];

                              return SizedBox(
                                width: double.infinity,
                                height: productsList[selectedTab!].isEmpty
                                    ? 100
                                    : 420.h,
                                child: ValueListenableBuilder<int>(
                                  valueListenable: selectedIndexNotifier,
                                  builder: (context, selectedIndex, child) {
                                    List<String> categories = services
                                        .map((e) => e['label'] as String)
                                        .toList();

                                    return Column(
                                      children: [
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
                                                  selectedIndexNotifier.value =
                                                      index;
                                                },
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  margin:
                                                      const EdgeInsets.all(5),
                                                  width: 150.w,
                                                  decoration: BoxDecoration(
                                                    color: isSelected
                                                        ? const Color(
                                                            0xFF681b4e)
                                                        : const Color(
                                                            0xffA5A5A5),
                                                  ),
                                                  child: Text(
                                                    categories[index],
                                                    style: const TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: ColorConstant
                                                          .whiteColor,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                        SizedBox(height: 5.h),
                                        asyncbajarValue.when(
                                          data: (data) {
                                            if (selectedIndex < 0 ||
                                                selectedIndex >=
                                                    productsList.length) {
                                              selectedIndex = 0;
                                            }

                                            List<VProduct> products =
                                                productsList[selectedIndex];

                                            return data.insidearr.isEmpty
                                                ? nolistingfound()
                                                : SizedBox(
                                                    child: ListView.builder(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      padding:
                                                          const EdgeInsets.all(
                                                              3),
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      itemCount:
                                                          products.length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        VProduct prod =
                                                            products[index];

                                                        return ProductDetailWidget(
                                                          savedid: prod.savedByLoggedUser ==
                                                                      null ||
                                                                  prod.savedByLoggedUser!
                                                                      .isEmpty
                                                              ? []
                                                              : prod
                                                                  .savedByLoggedUser,
                                                          onRefresh: () {
                                                            refresh();
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
                                                          didcountpercentage: prod
                                                              .discount_percentage,
                                                          offer: prod.offers,
                                                          shortestDistance: prod
                                                              .user
                                                              .shortestDistance,
                                                          avg_rating: prod
                                                              .avg_rating
                                                              ?.toDouble(),
                                                          comment: prod
                                                              .commentcount
                                                              .toString(),
                                                          wow: prod.wow,
                                                          lefttile: "B2b-Shop",
                                                          vendorname:
                                                              prod.user.name,
                                                          issponsored: prod
                                                              .user.sponsored,
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
                                                        );
                                                      },
                                                    ),
                                                  );
                                          },
                                          error: (error, stackTrace) =>
                                              Text("Error: $error"),
                                          loading: () => Shimmer.fromColors(
                                            baseColor: Colors.grey[300]!,
                                            highlightColor: Colors.grey[100]!,
                                            child: Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8),
                                              width: 70.w,
                                              height: 100.h,
                                              decoration: BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              );
                            },
                            error: (error, stackTrace) {
                              return Text("$error");
                            },
                            loading: () => Shimmer.fromColors(
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[100]!,
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                width: 70.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 5.h,
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
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: asyncbajarValue.when(
                      data: (data) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 10),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical, // Scroll vertically
                            child: Wrap(
                              spacing: 5.w, // Horizontal spacing between items
                              runSpacing: 15.h, // Vertical spacing between rows
                              children:
                                  List.generate(data.product.length, (index) {
                                VProduct res = data.product[index];
                                return SizedBox(
                                  width: (MediaQuery.of(context).size.width -
                                          30.w) /
                                      2, // Adjust for two items per row
                                  child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    shadowColor: const Color(0xff3D215F)
                                        .withOpacity(0.5),
                                    elevation: 9,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.w),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child: AllProductDetailWidget(
                                      savedid: res.savedByLoggedUser == null ||
                                              res.savedByLoggedUser!.isEmpty
                                          ? []
                                          : res.savedByLoggedUser
                                              ?.map(
                                                (e) => SavedPost(
                                                  id: e.id,
                                                  userId: e.userId,
                                                  postId: e.postId,
                                                  createdAt: e.createdAt,
                                                  updatedAt: e.updatedAt,
                                                ),
                                              )
                                              .toList(),
                                      onRefresh: () {
                                        refresh();
                                      },
                                      productid: res.id,
                                      lat: res.user.latitude,
                                      long: res.user.longitude,
                                      shortestDistance:
                                          res.user.shortestDistance,
                                      id: int.tryParse(res.id),
                                      membershipid: res.user.membership_id,
                                      offer: res.offers,
                                      posttype: res.post_type_id,
                                      didcountpercentage:
                                          res.discount_percentage,
                                      avg_rating: res.avg_rating?.toDouble(),
                                      wow: res.wow,
                                      comment: res.commentcount.toString(),
                                      issponsored: res.user.sponsored,
                                      discounttedPrice: res.discounted_price,
                                      lefttile: "B2B",
                                      productImage: res.image,
                                      Vimage: res.user.photo,
                                      vendorname: res.user.name,
                                      title: res.title,
                                      price: res.price,
                                      similarproductCount:
                                          res.similarProductCount,
                                      membershipColor: res.user.membershipColor,
                                      membershipTitle: res.user.membershipTitle,
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ),
                        );
                      },
                      error: (error, stackTrace) {
                        return Text('Error: $error');
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
                    child: SizedBox(height: 50.h),
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
          )),
    );
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
                    tag: 'profileHero',
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
                            tag: 'profileHero',
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
                                  builder: (context) => const AddToCartScreen(),
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
