import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/view/bottom_navigation_bar.dart';
import 'package:smartbazar/features/brand_bazar/api/brand_bazar_api.dart';
import 'package:smartbazar/features/brand_bazar/api/screen_category_api.dart';
import 'package:smartbazar/features/bussiness_tab_screen/view/business_tab_screen.dart';
import 'package:smartbazar/features/events_screen/view/events_screen.dart';
import 'package:smartbazar/features/grocessary_screen/view/grocary_screen.dart';
import 'package:smartbazar/features/home/api/post_type_story_api.dart';
import 'package:smartbazar/features/home/api/home_slider_provider.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/home/model/home_story_model.dart';
import 'package:smartbazar/features/home/view/custom_border.dart';
import 'package:smartbazar/features/home/view/header.dart';
import 'package:smartbazar/features/home/view/home_page_story_container.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/jobs_screen/view/jobs_screen.dart';
import 'package:smartbazar/features/services_screen/api/service_provider.dart';
import 'package:smartbazar/features/services_screen/service_screen.dart';
import 'package:smartbazar/features/socio_screen/view/socio_screen.dart';
import 'package:smartbazar/features/used_screen/view/used_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_profile_screen.dart';
import 'package:smartbazar/features/vendor/view/my_subscribe_and_win_page.dart';
import 'package:rxdart/rxdart.dart';
import 'package:smartbazar/features/b2b_screen/view/b2b_screen.dart';

class BrandBazarScreen extends ConsumerStatefulWidget {
  const BrandBazarScreen({super.key});

  @override
  ConsumerState<BrandBazarScreen> createState() => _BrandBazarScreenState();
}

class _BrandBazarScreenState extends ConsumerState<BrandBazarScreen>
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
  late TabController dynamictabController;
  bool _showSearchProductModels = false;
  final List<Map<String, dynamic>> _items = [
    {
      'icon': 'assets/icon/openCartIcon.svg',
      'label': 'SocioShop',
      'screen': const SocioShopScreen()
    },
    {
      'icon': 'assets/icon/brandBazarIcon.svg',
      'label': 'Brandbazaar',
      'screen': const BrandBazarScreen()
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
      'icon': 'assets/icon/b2bIcon.svg',
      'label': 'TradeHub',
      'screen': const B2bScreen()
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
  int headerIndex = 0;
  PageController _pageController = PageController(viewportFraction: 0.3);
  Timer? _timer;
  final PageController _adscontroller = PageController(
    initialPage: 0,
  );

  // void _onPageChanged(int index) {
  //   setState(() {
  //     selectedIndex = index;
  //   });
  // }

  int _currentIndex = 0;

  int? dynamicsize;

  int _currentPage = 0;

  @override
  void initState() {
    dynamictabController = TabController(length: 3, vsync: this);

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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _pageController.jumpToPage(headerIndex);
    });
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
    dynamictabController.dispose();
    _debouncer.close();
    _searchController.dispose();
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ref.watch(fetchAdsProvider);
    //     final adsList = ref.watch(fetchAdsProvider);
    final pselectedIndex = ref.watch(bottomNavIndexProvider);

    final asyncPostTypeContent = ref.watch(getPostTypeStoryApiProvider('1'));

    final asyncbajarValue = ref.watch(getBrandBazaarResponseProvider);
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

    return Scaffold(
        extendBody: true,
        bottomNavigationBar: CustomBottomNavigationBar(
          selectedIndex: pselectedIndex,
          onTabChanged: (index) {
            ref.read(bottomNavIndexProvider.notifier).state = index;
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
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // height: 170,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    gradient: LinearGradient(colors: [
                      Color(0xFF392574),
                      Color(0xFF681b4e),
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                              child: Image.asset('assets/images/group.png')),
                          SizedBox(
                            width: 2.w,
                          ),
                          SizedBox(
                              height: 40,
                              child: NewSearchWidget(
                                index: 5,
                                onSearchFocusChanged: _onSearchFocusChanged,
                                searchController: _searchController,
                                ontapped: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => BusinessTabScreen(
                                          query: _searchController.text,
                                        ),
                                      ));
                                },
                                onchnage: (value) {
                                  // print("babuk ${value}");
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //       builder: (context) =>
                                  //           const BusinessTabScreen(),
                                  //     ));
                                },
                              )),
                        ],
                      ),
                      if (_showSearchProductModels)
                        Positioned(
                          top: 0.h, // Position just below the search bar
                          left: 0,
                          right: 0,
                          child: Container(
                            width: double.infinity,
                            color: Colors.white,
                            child: SearchProductModels.when(data: (results) {
                              if (results.isEmpty) {
                                return const SizedBox(
                                  child: Text('No result found'),
                                ); // No results
                              }
                              return Card(
                                elevation: 8,
                                child: ListView.separated(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  primary: false,
                                  itemCount: results.length,
                                  itemBuilder: (context, index) {
                                    final product = results[index];
                                    return ListTile(
                                      title: Text(product.title),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  BusinessTabScreen(
                                                query: _searchController.text,
                                              ),
                                            ));

                                        setState(() {
                                          _showSearchProductModels = false;

                                          FocusScope.of(context).unfocus();
                                        });
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //     builder: (context) =>
                                        //         ProductDetailsScreen(
                                        //       productId: product.id,
                                        //     ),
                                        //   ),
                                        // );
                                      },
                                    );
                                  },
                                  separatorBuilder: (context, index) =>
                                      const Divider(),
                                ),
                              );
                            }, loading: () {
                              return null;

                              // return SizedBox(
                              //     width: 10.w,
                              //     height: 10.h,
                              //     child: CircularProgressIndicator());
                            }, error: (error, stack) {
                              return null;

                              // return SizedBox(
                              //     width: 10.w,
                              //     height: 10.h,
                              //     child: CircularProgressIndicator());
                            }),
                          ),
                        ),
                      SizedBox(
                        height: 20.h,
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
                                _pageController.animateToPage(
                                  2,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: AnimatedContainer(
                                padding: EdgeInsets.zero,
                                duration: const Duration(milliseconds: 300),
                                alignment: Alignment.center,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => data['screen']),
                                    );
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      if (data['icon']
                                          .toString()
                                          .endsWith('.svg'))
                                        SvgPicture.asset(
                                          data['icon'],
                                          alignment: Alignment.center,
                                          fit: BoxFit.contain,
                                          theme: const SvgTheme(
                                              currentColor: Color(0xffdd9d9d9)),
                                          color: isActive
                                              ? Colors.amber
                                              : const Color(0xffD9D9D9)
                                                  .withOpacity(0.5),
                                          width: 20,
                                          height: 20,
                                        )
                                      else
                                        Image.asset(
                                          data['icon'],
                                          color: isActive
                                              ? Colors.amber
                                              : const Color(0xffD9D9D9)
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
                                              : const Color(0xffD9D9D9)
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
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  error: (error, stackTrace) => Text(error.toString()),
                  loading: () => SizedBox(
                    height: 100.h,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5, // Placeholder shimmer items
                      itemBuilder: (context, index) {
                        return Shimmer.fromColors(
                          baseColor: Colors.grey[300]!,
                          highlightColor: Colors.grey[100]!,
                          child: Container(
                            width: 80.0, // Placeholder width
                            margin: const EdgeInsets.symmetric(horizontal: 8.0),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
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
                                  items: data.data!.trandBanners?.map((banner) {
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
                            children: data.data!.trandBanners!.map((banner) {
                              int index =
                                  data.data!.trandBanners!.indexOf(banner);
                              return AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
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
                  height: 5.h,
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
                                            "Brands",
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
                                              position: const RelativeRect
                                                  .fromLTRB(0, 0, 0,
                                                  0), // Base position; offset is handled by PopupMenuButton
                                              items: [
                                                PopupMenuItem(
                                                  value: 1,
                                                  child: ListTile(
                                                    title: const Text(
                                                        "View Story"),
                                                    leading:
                                                        const Icon(Icons.book),
                                                    onTap: () {
                                                      // Implement onTap logic
                                                    },
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                          child: PopupMenuButton<int>(
                                            offset: const Offset(0,
                                                60), // The offset to position the menu above the widget
                                            itemBuilder: (context) => [
                                              const PopupMenuItem(
                                                value: 1,
                                                child: Text("View Story",
                                                    style: TextStyle(
                                                        fontSize: 16.0)),
                                              ),
                                              if (e.parentClosure != null)
                                                PopupMenuItem(
                                                  value: 1,
                                                  child: Text(
                                                    e.slug,
                                                    style: const TextStyle(
                                                        fontSize: 16.0),
                                                  ),
                                                ),
                                            ],
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10.w),
                                              child: DashedBorder(
                                                padding: 0,
                                                dashCount: 2,
                                                child: SizedBox(
                                                  // width: 100.w,
                                                  // height: 100.h,
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
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 13,
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
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
                  padding: const EdgeInsets.only(left: 10, top: 15),
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
                    print("ram ${data.data?.newProducts}");
                    return Container(
                        // child: Text(data.data.),
                        );
                  },
                  error: (error, stackTrace) => const Text("Please try again"),
                  loading: () => const CircularProgressIndicator(),
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: TabBar(
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
                SizedBox(
                  height: 150,
                  width: double.infinity,
                  child:
                      TabBarView(controller: dynamictabController, children: [
                    Center(child: nolistingfound()),
                    Center(child: nolistingfound()),
                    Center(child: nolistingfound()),
                  ]),
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
                      nolistingfound(),
                      SizedBox(
                        height: 5.h,
                      ),
                      asyncbajarValue.when(
                        data: (data) {
                          return SizedBox(
                            width: double.infinity,
                            height: 150,
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
                                                  color:
                                                      ColorConstant.whiteColor,
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),

                                    // Spacer
                                    SizedBox(height: 5.h),
                                    Center(child: nolistingfound()),

                                    // Display Products for the selected category
                                    // asyncbajarValue.when(
                                    //   data: (data) {
                                    //     // Define the products list corresponding to each category

                                    //     // Ensure the index is valid
                                    //     if (selectedIndex < 0 ||
                                    //         selectedIndex >= productsList.length) {
                                    //       selectedIndex =
                                    //           0; // Default to the first category if index is out of bounds
                                    //     }

                                    //     List<VProduct> products =
                                    //         [];

                                    //     return data.data?.newProducts==0
                                    //         ? nolistingfound()
                                    //         : SizedBox(
                                    //             height: 340.h,
                                    //             child: ListView.builder(
                                    //               clipBehavior: Clip.antiAlias,
                                    //               padding: const EdgeInsets.all(3),
                                    //               scrollDirection: Axis.horizontal,
                                    //               itemCount: products.length,
                                    //               itemBuilder: (context, index) {
                                    //                 VProduct prod = products[index];

                                    //                 return InkWell(
                                    //                   onTap: () {
                                    //                     Navigator.push(
                                    //                         context,
                                    //                         MaterialPageRoute(
                                    //                           builder: (context) =>
                                    //                               ProductDetailScreen(
                                    //                                   productId:
                                    //                                       prod.id),
                                    //                         ));
                                    //                   },
                                    //                   child: ProductDetailWidget(
                                    //                     comment: prod.commentcount
                                    //                         .toString(),
                                    //                     wow: prod.wow,
                                    //                     lefttile: "B2b-Shop",
                                    //                     vendorname: prod.user.name,
                                    //                     issponsored:
                                    //                         prod.user.sponsored,
                                    //                     discounttedPrice:
                                    //                         prod.discounted_price,
                                    //                     Vimage: prod.user.photo,
                                    //                     price: prod.price,
                                    //                     title: prod.title,
                                    //                     productImage: prod.image,
                                    //                     similarproductCount:
                                    //                         prod.similarProductCount,
                                    //                     membershipColor:
                                    //                         prod.user.membershipColor,
                                    //                     membershipTitle:
                                    //                         prod.user.membershipTitle,
                                    //                   ),
                                    //                 );
                                    //               },
                                    //             ),
                                    //           );

                                    //     // SizedBox(
                                    //     //    height: 340.h,
                                    //     //   child: ListView.builder(
                                    //     //     scrollDirection: Axis.horizontal,
                                    //     //     itemCount: products.length,
                                    //     //     itemBuilder: (context, index) {
                                    //     //       return InkWell(
                                    //     //         onTap: () {}, // Handle onTap if needed
                                    //     //         child: ProductDetailWidget(
                                    //     //           vendorname: prod.user.name,
                                    //     //           discounttedPrice: "0",
                                    //     //           Vimage: prod.user.photo,
                                    //     //           price: prod.price,
                                    //     //           title: prod.title,
                                    //     //           productImage: prod.image,
                                    //     //         ), // Replace with your actual product widget
                                    //     //       );
                                    //     //     },
                                    //     //   ),
                                    //     // );
                                    //   },
                                    //   error: (error, stackTrace) =>
                                    //       Text("Error: $error"),
                                    //   loading: () =>
                                    //       const CircularProgressIndicator(),
                                    // ),
                                  ],
                                );
                              },
                            ),
                          );
                        },
                        error: (error, stackTrace) {
                          return Text("$error");
                        },
                        loading: () {
                          return const CircularProgressIndicator();
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          valuenotifilersidebutton(
              showSideBar: _showSideBar, isSectionsVisible: _isSectionsVisible),

          //
        ]));
  }
}
