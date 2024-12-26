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
import 'package:smartbazar/features/b2b_screen/api/b2b_provider.dart';
import 'package:smartbazar/features/b2b_screen/view/b2b_screen.dart';
import 'package:smartbazar/features/brand_bazar/api/brand_bazar_api.dart';
import 'package:smartbazar/features/brand_bazar/api/screen_category_api.dart';
import 'package:smartbazar/features/brand_bazar/brand_bazar_screen.dart';
import 'package:smartbazar/features/bussiness_tab_screen/view/business_tab_screen.dart';
import 'package:smartbazar/features/events_screen/view/events_screen.dart';
import 'package:smartbazar/features/feed_page/widget/not_a_story_widget.dart';
import 'package:smartbazar/features/feed_page/widget/story_add_widget.dart';
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
import 'package:smartbazar/features/product_details/constant/all_product_detail_widget.dart';
import 'package:smartbazar/features/product_details/constant/product_detail_widget.dart';
import 'package:smartbazar/features/scratch_win/screen/subscribe_win_every_day_screen.dart';
import 'package:smartbazar/features/services_screen/api/service_provider.dart';
import 'package:smartbazar/features/services_screen/service_screen.dart';
import 'package:smartbazar/features/socio_screen/view/socio_screen.dart';
import 'package:smartbazar/features/used_screen/view/used_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_profile_screen.dart';

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
  final List<Map<String, dynamic>> __items = [
    {
      'icon': 'assets/icon/loading.svg',
      'label': 'Everything',
      'screen': const HomeScreen()
    },
    {
      'icon': 'assets/icon/brandBazarIcon.svg',
      'label': 'Brandbazaar',
      'screen': const BrandBazarScreen()
    },
    {
      'icon': 'assets/icon/b2bIcon.svg',
      'label': 'TradeHub',
      'screen': const B2bScreen()
    },
    {
      'icon': 'assets/icon/usedIcon.svg',
      'label': 'Used',
      'screen': const UsedScreen()
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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ref.watch(fetchAdsProvider);
    //     final adsList = ref.watch(fetchAdsProvider);

    final asyncbajarValue = ref.watch(getBrandBazaarResponseProvider);
    final SearchProductModels =
    ref.watch(searchProvider(_searchController.text));
    final randomstory = ref.watch(fetchStoryHomeProvider);
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
            physics: BouncingScrollPhysics(),
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
                            Map<String, dynamic> data = __items[index];

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
                                        const SubscribeAndWinEveryDay(),
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
                randomstory.when(
                  data: (data) {
                    return SizedBox(
                      height: 130.h,
                      child: SingleChildScrollView( // Wrapping the Row with SingleChildScrollView
                        scrollDirection: Axis.horizontal, // Ensuring it scrolls horizontally
                        child: Row(
                          children: [
                            // First StoryAddWidget with search option
                            StoryAddWidget(
                              vImage: data.data!.feedStory?.posts.first.image,
                              brandname: data.data!.feedStory?.posts.first.vendorName,
                              index: 0,
                              addSearch: true, // First item has search
                              showgift: false,
                              onTap: () {
                                setState(() {
                                  // _isPopupVisible = true; // Open the popup
                                });
                              },
                            ),
                            // Expanded is not needed since SingleChildScrollView will handle scrolling
                            // Now ListView.builder will be added directly to the row
                            ...data.data!.feedStory!.posts.map((storyData) {
                              return StoryAddWidget(
                                brandname: storyData.vendorName,
                                vImage: storyData.vendorImage,
                                index: data.data!.feedStory!.posts.indexOf(storyData),
                                addSearch: false, // For all items other than the first, no search
                                showgift: storyData.hasSponsoredGifts,
                                onTap: () {
                                  // setState(() {
                                  //   // _isPopupVisible = true; // Open the popup
                                  // });
                                },
                              );
                            }).toList(),
                          ],
                        ),
                      ),
                    );
                  },
                  error: (error, stackTrace) => Text(error.toString()),
                  loading: () => const CircularProgressIndicator(),
                ),

                SizedBox(height: 20.h,),

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
                SizedBox(
                  height: 100.h,
                  width: double.infinity,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    padding: EdgeInsets.only(left: 7.w),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "ALL",
                                style: headerstyle.copyWith(
                                    color: ColorConstant.blackColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("SERVICES",
                                  style: headerstyle.copyWith(
                                      color: ColorConstant.blackColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                      ),
                      // DottedBorder(
                      //     strokeWidth: 2,

                      //     dashPattern: [15, 10],
                      //     borderPadding: const EdgeInsets.only(left: 5),
                      //     stackFit: StackFit.loose,
                      //     radius: const Radius.circular(70),
                      //     padding: const EdgeInsets.all(27),
                      //     color: Colors.black,
                      //     child: Container(
                      //       height: 100,
                      //       width: 100,
                      //       child: const Text("data"))
                      //     ),
                      SizedBox(
                        width: 20.w,
                      ),
                      GestureDetector(
                              onTap: () {
                                showMenu(
                                  context: context,
                                  position: const RelativeRect.fromLTRB(0, 0, 0,
                                      0), // Base position; offset is handled by PopupMenuButton
                                  items: [
                                    PopupMenuItem(
                                      value: 1,
                                      child: ListTile(
                                        title: const Text("View Story"),
                                        leading: const Icon(Icons.book),
                                        onTap: () {
                                          Navigator.pop(
                                              context); // Close the popup
                                          // Handle "View Story" action here
                                        },
                                      ),
                                    ),
                                    PopupMenuItem(
                                      value: 2,
                                      child: ListTile(
                                        title: const Text("View Product"),
                                        leading: const Icon(Icons.shopping_bag),
                                        onTap: () {
                                          Navigator.pop(
                                              context); // Close the popup
                                          // Handle "View Product" action here
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
                                        style: TextStyle(fontSize: 16.0)),
                                  ),
                                  const PopupMenuItem(
                                    value: 2,
                                    child: Text("View Product",
                                        style: TextStyle(fontSize: 16.0)),
                                  ),
                                ],
                                onCanceled: () {
                                  print(
                                      "You have canceled the menu selection.");
                                },
                                onSelected: (value) {
                                  switch (value) {
                                    case 1:
                                    // Handle "View Story"
                                      break;
                                    case 2:
                                    // Handle "View Product"
                                      break;
                                    default:
                                      print("Invalid choice");
                                      break;
                                  }
                                },
                                child: DashedBorder(
                                  dashCount: 2,
                                  child: SizedBox(
                                    width: 100.w,
                                    height: 100.h,
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/images/cloth.png'),
                                        const Wrap(
                                          children: [
                                            Text(
                                              "HEALTH,\nSPORTS",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                      // DottedBorder(
                      //   strokeWidth: 2,
                      //   color: Colors.grey,
                      //   borderType: BorderType.RRect,
                      //   radius: const Radius.circular(10),
                      //   dashPattern: const [10, 10],
                      //   child: SizedBox(
                      //       width: 100.w,
                      //       height: 100.h,
                      //       child: Column(
                      //         mainAxisAlignment: MainAxisAlignment.center,
                      //         crossAxisAlignment: CrossAxisAlignment.center,
                      //         children: [
                      //           Image.asset('assets/images/cloth.png'),
                      //           Wrap(
                      //             children: [
                      //               Text(
                      //                 "HEALTH,\nSPORTS",
                      //                 style: headerstyle.copyWith(
                      //                     color: Colors.black,
                      //                     fontWeight: FontWeight.w500,
                      //                     fontSize: 13),
                      //               )
                      //             ],
                      //           ),
                      //         ],
                      //       )),
                      // ),

                      SizedBox(
                        width: 20.w,
                      ),
                      DottedBorder(
                        strokeWidth: 2,
                        color: Colors.grey,
                        borderType: BorderType.RRect,
                        radius: const Radius.circular(10),
                        dashPattern: const [10, 10],
                        child: SizedBox(
                            width: 100.w,
                            height: 100.h,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/cloth.png',
                                ),
                                Wrap(
                                  children: [
                                    Text(
                                      "SPORTS,\nAND",
                                      style: headerstyle.copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13),
                                    )
                                  ],
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),

                      // DottedBorder(
                      //     borderPadding: const EdgeInsets.only(left: 5),
                      //     radius: const Radius.circular(10),
                      //     padding: const EdgeInsets.all(20),
                      //     strokeWidth: 1,
                      //     color: Colors.black,
                      //     child: Column(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       crossAxisAlignment: CrossAxisAlignment.center,
                      //       children: [
                      //         Image.asset(
                      //           'assets/images/cloth.png',
                      //         ),
                      //         Wrap(
                      //           children: [
                      //             Text(
                      //               "SPORTS,\nAND",
                      //               style: headerstyle.copyWith(
                      //                   color: Colors.black,
                      //                   fontWeight: FontWeight.w500,
                      //                   fontSize: 13),
                      //             )
                      //           ],
                      //         ),
                      //       ],
                      //     )),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.flight,
                            color: Color(0xff6E6E6E),
                          ),
                          Text(
                            "TRAVELS,\nTOURS",
                            style: headerstyle.copyWith(
                                color: const Color(0xff6E6E6E),
                                fontWeight: FontWeight.w500,
                                fontSize: 13),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.tv,
                            color: Color(0xff6E6E6E),
                          ),
                          Text(
                            "ELECTRONICS",
                            style: headerstyle.copyWith(
                                color: const Color(0xff6E6E6E),
                                fontWeight: FontWeight.w500,
                                fontSize: 13),
                          ),
                          Text(
                            "&",
                            style: headerstyle.copyWith(
                                color: const Color(0xff6E6E6E),
                                fontWeight: FontWeight.w500,
                                fontSize: 13),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10.w,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.h,
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
                Center(child: nolistingfound()),
              ],
            ),
          ),
          valuenotifilersidebutton(
              showSideBar: _showSideBar, isSectionsVisible: _isSectionsVisible),

          //
        ]));
  }
}