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
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/b2b_screen/view/b2b_screen.dart';
import 'package:smartbazar/features/brand_bazar/api/screen_category_api.dart';
import 'package:smartbazar/features/brand_bazar/brand_bazar_screen.dart';
import 'package:smartbazar/features/bussiness_tab_screen/view/business_tab_screen.dart';
import 'package:smartbazar/features/events_screen/view/events_screen.dart';
import 'package:smartbazar/features/feed_page/widget/not_a_story_widget.dart';
import 'package:smartbazar/features/feed_page/widget/story_add_widget.dart';
import 'package:smartbazar/features/grocessary_screen/view/grocary_screen.dart';
import 'package:smartbazar/features/home/api/buy_or_now_provider.dart';
import 'package:smartbazar/features/home/api/get_story_provider.dart';
import 'package:smartbazar/features/home/api/post_type_story_api.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/home/model/home_story_model.dart';
import 'package:smartbazar/features/home/view/buyorwin_widget.dart';
import 'package:smartbazar/features/home/view/circle_story_count.dart';
import 'package:smartbazar/features/home/view/custom_border.dart';
import 'package:smartbazar/features/home/view/header.dart';
import 'package:rxdart/rxdart.dart';
import 'package:smartbazar/features/home/view/home_page_story_container.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/jobs_screen/view/jobs_screen.dart';
import 'package:smartbazar/features/product_details/constant/product_detail_widget.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/scratch_win/screen/subscribe_win_every_day_screen.dart';
import 'package:smartbazar/features/services_screen/api/service_provider.dart';
import 'package:smartbazar/features/services_screen/service_screen.dart';
import 'package:smartbazar/features/socio_screen/api/service_provider.dart';
import 'package:smartbazar/features/used_screen/view/used_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_profile_screen.dart';
import 'package:smartbazar/features/vendor/view/my_subscribe_and_win_page.dart';

import '../../product_details/constant/all_product_detail_widget.dart';

class SocioShopScreen extends ConsumerStatefulWidget {
  const SocioShopScreen({super.key});

  @override
  ConsumerState<SocioShopScreen> createState() => _SocioShopScreenState();
}

class _SocioShopScreenState extends ConsumerState<SocioShopScreen>
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
  // late TabController tabController;
  int headerIndex = 0;
  int _currentIndex = 0;
  late TabController dynamictabController;

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
  final List<Map<String, dynamic>> _items = [
    {
      'icon': 'assets/icon/loading.svg',
      'label': 'Everything',
      'screen': const HomeScreen()
    },
    {
      'icon': 'assets/icon/openCartIcon.svg',
      'label': 'SocioShop',
      'screen': const SocioShopScreen()
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
  bool _showSearchProductModels = false;

  @override
  void initState() {
    dynamictabController = TabController(length: 3, vsync: this);
    dynamictabController.addListener(() {
      setState(() {});
    });

    _pageController = PageController(
      viewportFraction: 0.3,
      initialPage: selectedIndex!,
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
    // tabController = TabController(length: 3, vsync: this);

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
    dynamictabController.dispose();
    _debouncer.close();
    _searchController.dispose();
    super.dispose();
    _scrollController.dispose();
    // super.dispose();s
  }

  @override
  Widget build(BuildContext context) {
    // ref.watch(fetchAdsProvider);
    //     final adsList = ref.watch(fetchAdsProvider);

    final asyncPostTypeContent = ref.watch(getPostTypeStoryApiProvider('3'));

    final asyncbajarValue = ref.watch(getSocioDataProvider);
    final SearchProductModels =
        ref.watch(searchProvider(_searchController.text));
    final category = ref.watch(getCategoriesProvider(0));
    // asyncbajarValue.when(data: (data) {

    // }, error: (error, stackTrace) {

    // }, loading: () {
    //   return CircularProgressIndicator();
    // },)
    // final SearchProductModels = ref.watch(searchProvider(
    //     _searchController.text)); // Ensure this updates correctly

    return Scaffold(

        // bottomNavigationBar: const BottomNavigationScreen(),
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
        body: Stack(children: [
          SingleChildScrollView(
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(4, (index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                headerIndex = index;
                              });
                              _pageController.animateToPage(
                                index,
                                duration: const Duration(milliseconds: 50),
                                curve: Curves.easeInOut,
                              );
                            },
                            child: Container(
                              height: 5.h,
                              width: 5.w,
                              margin: EdgeInsets.symmetric(horizontal: 5.w),
                              decoration: BoxDecoration(
                                color: headerIndex == index
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
                          itemCount: items.length,
                          padEnds: false,
                          reverse: true,
                          scrollDirection: Axis.horizontal,
                          controller: _pageController,
                          onPageChanged: (value) {
                            setState(() {
                              headerIndex =
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
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.zero,
                                duration: const Duration(milliseconds: 300),
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
                    return const Center(
                      child: Text(
                          'No stories available.'),
                    );
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (error, stack) => Center(child: Text('Error: $error')),
                ),

                SizedBox(
                  height: 20.h,
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
                                alignment: Alignment.topLeft,
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
                                              position:
                                                  const RelativeRect.fromLTRB(
                                                      0, 0, 0, 0),
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
                                            offset: const Offset(0, 60),
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

                // Expanded(

                // child: product_item_wid(),),
                SizedBox(
                  height: 5.h,
                ),

                asyncbajarValue.when(
                  data: (data) {
                    return SizedBox(
                      width: double.infinity,
                      child: AnimatedContainer(
                        padding: EdgeInsets.zero,
                        margin: EdgeInsets.zero,
                        duration: const Duration(milliseconds: 400),
                        height: 350.h,
                        child: SingleChildScrollView(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.horizontal,
                          child: Wrap(
                            spacing: 0.w, // Horizontal spacing between items
                            runSpacing: 0.h, // Vertical spacing between rows
                            children:
                                List.generate(data.hotProducts.length, (index) {
                              VProduct hot = data.hotProducts[index];
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ProductDetailScreen(
                                        productId: hot.user.id,
                                      ),
                                    ),
                                  );
                                },
                                child: ProductDetailWidget(
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
                                  similarproductCount: hot.similarProductCount,
                                  membershipColor: hot.user.membershipColor,
                                  membershipTitle: hot.user.membershipTitle,
                                ),
                              );
                            }),
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

                // Expanded(

                // child: product_item_wid(),),
                SizedBox(
                  height: 5.h,
                ),

                // SizedBox(
                //      height: 359.h,
                //     width: double.infinity,
                //     child: ListView.builder(
                //       padding: EdgeInsets.zero,
                //       clipBehavior: Clip.antiAlias,
                //       scrollDirection: Axis.horizontal,
                //       itemCount: 5,
                //       shrinkWrap: true,
                //       itemBuilder: (context, index) {
                //         return ProductDetailWidget();
                //       },
                //     ),
                //   ),

                asyncbajarValue.when(
                  data: (data) {
                    return Padding(
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
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          SizedBox(
                            // height: 359.h,
                            width: double.infinity,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Wrap(
                                spacing:
                                    0.w, // Horizontal spacing between items
                                runSpacing:
                                    0.h, // Vertical spacing between rows
                                children: List.generate(
                                    data.insidearr[0].length, (index) {
                                  VProduct pro = data.insidearr[0][index];
                                  return InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ProductDetailScreen(
                                            productId: pro.id,
                                          ),
                                        ),
                                      );
                                    },
                                    child: ProductDetailWidget(
                                      offer: pro.discounted_price,
                                      wow: pro.wow,
                                      comment: pro.commentcount.toString(),
                                      discounttedPrice: pro.discounted_price,
                                      issponsored: pro.user.sponsored,
                                      lefttile: "Socio-Shop",
                                      Vimage: pro.user.photo,
                                      price: pro.price,
                                      title: pro.title,
                                      vendorname: pro.user.name,
                                      productImage: pro.image,
                                      similarproductCount:
                                          pro.similarProductCount,
                                      membershipColor: pro.user.membershipColor,
                                      membershipTitle: pro.user.membershipTitle,
                                    ),
                                  );
                                }),
                              ),
                            ),
                          ),
                        ],
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
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Wrap(
                                spacing:
                                    0.w, // Horizontal spacing between items
                                runSpacing:
                                    0.h, // Vertical spacing between rows
                                children: List.generate(
                                    data.insidearr[1].length, (index) {
                                  VProduct pro = data.insidearr[1][index];
                                  return Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 2.w),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ProductDetailScreen(
                                              productId: pro.id,
                                            ),
                                          ),
                                        );
                                      },
                                      child: ProductDetailWidget(
                                        offer: pro.discounted_price,
                                        wow: pro.wow,
                                        comment: pro.commentcount.toString(),
                                        discounttedPrice: pro.discounted_price,
                                        issponsored: pro.user.sponsored,
                                        lefttile: "Socio-Shop",
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
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            ),
                          ),
                        ],
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
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                data.cat[2].slug.toUpperCase(),
                                style: headerstyle.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Wrap(
                                spacing:
                                    0.w, // Horizontal spacing between items
                                runSpacing:
                                    0.h, // Vertical spacing between rows
                                children: List.generate(
                                    data.insidearr[2].length, (index) {
                                  VProduct pro = data.insidearr[2][index];
                                  return Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 2.w),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ProductDetailScreen(
                                              productId: pro.id,
                                            ),
                                          ),
                                        );
                                      },
                                      child: ProductDetailWidget(
                                        offer: pro.discounted_price,
                                        wow: pro.wow,
                                        comment: pro.commentcount.toString(),
                                        discounttedPrice: pro.discounted_price,
                                        issponsored: pro.user.sponsored,
                                        lefttile: "Socio-Shop",
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
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            ),
                          ),
                        ],
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
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                data.cat[3].slug.toUpperCase(),
                                style: headerstyle.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Wrap(
                                spacing:
                                    0.w, // Horizontal spacing between items
                                runSpacing:
                                    0.h, // Vertical spacing between rows
                                children: List.generate(
                                    data.insidearr[3].length, (index) {
                                  VProduct pro = data.insidearr[3][index];
                                  return Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 2.w),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ProductDetailScreen(
                                              productId: pro.id,
                                            ),
                                          ),
                                        );
                                      },
                                      child: ProductDetailWidget(
                                        offer: pro.discounted_price,
                                        wow: pro.wow,
                                        comment: pro.commentcount.toString(),
                                        discounttedPrice: pro.discounted_price,
                                        issponsored: pro.user.sponsored,
                                        lefttile: "Socio-Shop",
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
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            ),
                          ),
                        ],
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
                    return Padding(
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
                            width: double.infinity,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Wrap(
                                spacing:
                                    0.w, // Horizontal spacing between items
                                runSpacing:
                                    0.h, // Vertical spacing between rows
                                children: List.generate(
                                    data.insidearr[4].length, (index) {
                                  VProduct pro = data.insidearr[4][index];
                                  return Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 2.w),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ProductDetailScreen(
                                              productId: pro.id,
                                            ),
                                          ),
                                        );
                                      },
                                      child: ProductDetailWidget(
                                        offer: pro.discounted_price,
                                        wow: pro.wow,
                                        comment: pro.commentcount.toString(),
                                        discounttedPrice: pro.discounted_price,
                                        issponsored: pro.user.sponsored,
                                        lefttile: "Socio-Shop",
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
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            ),
                          ),
                        ],
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
                asyncbajarValue.when(
                  data: (data) {
                    double dynamicHeight;

                    if (dynamictabController.index == 0) {
                      dynamicHeight =
                          data.insidearr.isEmpty || data.insidearr[0].isEmpty
                              ? 150
                              : 500;
                    } else if (dynamictabController.index == 1) {
                      // Ensure data.doma[0] is valid and has length
                      dynamicHeight =
                          data.insidearr.isEmpty || data.insidearr[1].isEmpty
                              ? 150
                              : 500;
                    } else if (dynamictabController.index == 2)
                      dynamicHeight =
                          data.insidearr.isEmpty || data.insidearr[2].isEmpty
                              ? 150
                              : 500;
                    else
                      dynamicHeight = 300;
                    return SizedBox(
                      height: dynamicHeight,
                      width: double.infinity,
                      // Use Expanded for better layout management
                      child: TabBarView(
                        controller: dynamictabController,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5.h,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: data.global.map((e) {
                                    return NotStoryWidget(
                                      vImage: e.brandLogo,
                                      index: data.global.indexOf(e),
                                      brandname: e.brandName,
                                    );
                                  }).toList(),
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              data.insidearr.isNotEmpty &&
                                      data.insidearr[0].isNotEmpty
                                  ? SizedBox(
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Wrap(
                                          spacing: 5
                                              .w, // Horizontal spacing between items
                                          runSpacing: 15
                                              .h, // Vertical spacing between rows
                                          children: List.generate(
                                              data.brandbazar_global?.length ??
                                                  0, (index) {
                                            VProduct prod =
                                                data.brandbazar_global![index];
                                            return Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 5.w),
                                              child: InkWell(
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
                                                  offer: prod.offers,
                                                  avg_rating: prod.avg_rating
                                                      ?.toDouble(),
                                                  shortestDistance: prod
                                                      .user.shortestDistance,
                                                  comment: prod.commentcount
                                                      .toString(),
                                                  wow: prod.wow,
                                                  issponsored:
                                                      prod.user.sponsored,
                                                  lefttile: "Socio-Shop",
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
                                              ),
                                            );
                                          }),
                                        ),
                                      ),
                                    )
                                  : nolistingfound()
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5.h,
                              ),
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
                                height: 20.h,
                              ),
                              data.insidearr.isEmpty
                                  ? nolistingfound()
                                  : SizedBox(
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Wrap(
                                          spacing: 5
                                              .w, // Horizontal spacing between items
                                          runSpacing: 15
                                              .h, // Vertical spacing between rows
                                          children: List.generate(
                                              data.brandbazar_domestic
                                                      ?.length ??
                                                  0, (index) {
                                            VProduct prod = data
                                                .brandbazar_domestic![index];
                                            return Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 5.w),
                                              child: InkWell(
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
                                                  avg_rating: prod.avg_rating
                                                      ?.toDouble(),
                                                  shortestDistance: prod
                                                      .user.shortestDistance,
                                                  offer: prod.offers,
                                                  comment: prod.commentcount
                                                      .toString(),
                                                  wow: prod.wow,
                                                  issponsored:
                                                      prod.user.sponsored,
                                                  lefttile: "Socio-Shop",
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
                                              ),
                                            );
                                          }),
                                        ),
                                      ),
                                    ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5.h,
                              ),
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
                                height: 20.h,
                              ),
                              data.insidearr.isEmpty
                                  ? nolistingfound()
                                  : SizedBox(
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Wrap(
                                          spacing: 5
                                              .w, // Horizontal spacing between items
                                          runSpacing: 15
                                              .h, // Vertical spacing between rows
                                          children: List.generate(
                                              data.spotlights?.length ?? 0,
                                              (index) {
                                            VProduct prod =
                                                data.spotlights![index];
                                            return Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 5.w),
                                              child: InkWell(
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
                                                  offer: prod.offers,
                                                  shortestDistance: prod
                                                      .user.shortestDistance,
                                                  avg_rating: prod.avg_rating
                                                      ?.toDouble(),
                                                  comment: prod.commentcount
                                                      .toString(),
                                                  wow: prod.wow,
                                                  issponsored:
                                                      prod.user.sponsored,
                                                  lefttile: "Socio-Shop",
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
                                              ),
                                            );
                                          }),
                                        ),
                                      ),
                                    ),
                            ],
                          ),
                        ],
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
                              gift_qty: resp.gift_qty!,
                              worth: resp.worth!,
                              productname: resp.name,
                              vendorImage: resp.vendorImage,
                              vendorname: resp.name,
                              winners: resp.winners.toString(),
                              proctimage: resp.image);
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
                SizedBox(
                  width: double.infinity,
                  child: ValueListenableBuilder<int>(
                    valueListenable: selectedIndexNotifier,
                    builder: (context, selectedIndex, child) {
                      // Map category labels to their respective product lists
                      List<String> categories =
                          services.map((e) => e['label'] as String).toList();

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
                                  selectedIndex >= productsList.length) {
                                selectedIndex =
                                    0; // Default to the first category if index is out of bounds
                              }

                              List<VProduct> products =
                                  productsList[selectedIndex];

                              // Calculate height dynamically
                              double calculatedHeight =
                                  products.isNotEmpty ? 359.h : 100.h;

                              return AnimatedContainer(
                                alignment: Alignment.topLeft,
                                duration: const Duration(milliseconds: 300),
                                height: calculatedHeight,
                                child: products.isEmpty
                                    ? nolistingfound()
                                    : SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Wrap(
                                          spacing: 0
                                              .w, // Horizontal spacing between items
                                          runSpacing: 0
                                              .h, // Vertical spacing between rows
                                          children: List.generate(
                                              products.length, (index) {
                                            VProduct prod = products[index];

                                            return Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 2.w),
                                              child: InkWell(
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
                                                  offer: prod.offers,
                                                  comment: prod.commentcount
                                                      .toString(),
                                                  wow: prod.wow,
                                                  issponsored:
                                                      prod.user.sponsored,
                                                  lefttile: "Socio-Shop",
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
                                              ),
                                            );
                                          }),
                                        ),
                                      ),
                              );
                            },
                            error: (error, stackTrace) => const Center(
                              child: Text("Error loading data"),
                            ),
                            loading: () => const Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'All Products',
                        style: headerstyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),

                asyncbajarValue.when(
                  data: (data) {
                    return SingleChildScrollView(
                      scrollDirection: Axis.vertical, // Scroll vertically
                      child: Wrap(
                        runSpacing: 15.h, // Vertical spacing between rows
                        children: List.generate(data.product.length, (index) {
                          var res = data.product[index];
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProductDetailScreen(
                                    productId: res.id,
                                  ),
                                ),
                              );
                            },
                            child: SizedBox(
                              width: (MediaQuery.of(context).size.width) /
                                  2, // Adjust for two items per row
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                shadowColor:
                                    const Color(0xff3D215F).withOpacity(0.5),
                                elevation: 9,
                                // margin: EdgeInsets.symmetric(horizontal: 5.w),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: AllProductDetailWidget(
                                  wow: res.wow,
                                  comment: res.commentcount.toString(),
                                  issponsored: res.user.sponsored,
                                  discounttedPrice: res.discounted_price,
                                  lefttile: "Socio",
                                  productImage: res.image,
                                  Vimage: res.user.photo,
                                  vendorname: res.user.name,
                                  title: res.title,
                                  price: res.price,
                                  similarproductCount: res.similarProductCount,
                                  membershipColor: res.user.membershipColor,
                                  membershipTitle: res.user.membershipTitle,
                                ),
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

          valuenotifilersidebutton(
              showSideBar: _showSideBar, isSectionsVisible: _isSectionsVisible),

          //
        ]));
  }
}
