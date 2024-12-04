import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/ads_screen/api/ad_api.dart';
import 'package:smartbazar/features/b2b_screen/view/b2b_screen.dart';
import 'package:smartbazar/features/brand_bazar/api/brand_bazar_api.dart';
import 'package:smartbazar/features/feed_page/widget/story_add_widget.dart';
import 'package:smartbazar/features/home/api/home_posts_proivider.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/home/model/home_posts_model.dart';
import 'package:smartbazar/features/home/model/product_model.dart';
import 'package:smartbazar/features/home/view/buyorwin_widget.dart';
import 'package:smartbazar/features/home/view/header.dart';
import 'package:smartbazar/features/jobs_screen/view/jobs_screen.dart';
import 'package:smartbazar/features/product_details/constant/product_detail_widget.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/product_screen/view/product_screen.dart';
import 'package:smartbazar/features/services_screen/service_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/product_item_widget.dart';
import 'package:smartbazar/features/widgets/custom_drawer_widget.dart';
import 'package:smartbazar/features/widgets/product_card.dart';
import 'package:rxdart/rxdart.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen>
    with SingleTickerProviderStateMixin {
  final ValueNotifier<bool> _showSideBar = ValueNotifier<bool>(true);
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final TextEditingController _searchController = TextEditingController();
  final _debouncer = BehaviorSubject<String>();
  bool _showSearchResults = false;
  late TabController tabController;
  final ScrollController _scrollController = ScrollController();
  bool _isSectionsVisible = true;
  double _lastScrollOffset = 0;
  Offset _initialDragPosition = Offset.zero; // Track initial drag position
  int? selectedIndex;
  PageController _pageController = PageController(viewportFraction: 0.3);

  void _onPageChanged(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();

    // Default selected index to 3 (HomeScreen)
    selectedIndex = 6;

    // Initialize the PageController with the selected page
    _pageController = PageController(
      viewportFraction: 0.3,
      initialPage: selectedIndex!,
    );

    // Use the addPostFrameCallback to jump to the selected page after the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _pageController.jumpToPage(selectedIndex!);
    });

    tabController = TabController(length: 3, vsync: this);

    // Set up debounce for search functionality
    _searchController.addListener(() {
      _debouncer.add(_searchController.text);
    });

    _debouncer.debounceTime(const Duration(milliseconds: 300)).listen((query) {
      debugPrint("Search query: $query");
      ref.refresh(searchProvider(query));
      setState(() {
        _showSearchResults = query.isNotEmpty;
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

  @override
  void dispose() {
    _debouncer.close();
    _searchController.dispose();
    super.dispose();
    _scrollController.dispose();
  }

  void _onSearchFocusChanged(bool hasFocus) {
    setState(() {
      _showSearchResults = hasFocus;
    });
  }

  final List<String> _images = ['assets/images/home.png'];
  final List<String> _services = [
    'SHOPZONE',
    'TRADEHUB',
    'SERVICES',
    'USED',
    'HOB'
  ];

  @override
  Widget build(BuildContext context) {
    // final adsList = ref.watch(getAdsProvider);
    // double _mediaheight = MediaQuery.of(context).size.height;
    // final AsyncValue<HomePosts> homePostsData = ref.watch(homePostsProvider);
    // final brandbajarAsyncValue = ref.watch(getBrandBazaarResponseProvider);

    final searchResults = ref.watch(searchProvider(_searchController.text));
    debugPrint('Search Results: ${searchResults.asData?.value}');
    return Scaffold(
        key: _key,
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xffF6F1F1),
        // drawer: const CustomDrawer(),
        body: Stack(children: [
          SingleChildScrollView(
            controller: _scrollController,
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
                          Image.asset('assets/images/group.png'),
                          SizedBox(
                            width: 2.w,
                          ),
                          const SizedBox(height: 50, child: NewSearchWidget()),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(items.length, (index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                                _pageController.animateToPage(
                                  index,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: Container(
                                height: 5,
                                width: 5,
                                margin: EdgeInsets.symmetric(horizontal: 5.w),
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
                          controller: _pageController,
                          onPageChanged: _onPageChanged,
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            Map<String, dynamic> data = items[index];

                            // Highlight only when index == 3
                            bool isActive = index == 4;

                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                                _pageController.animateToPage(
                                  index,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: AnimatedContainer(
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
                       const Divider(
                        height: 0.1,
                        color: ColorConstant.grayColor,
                      ),

                                              if (_isSectionsVisible)

                      const Padding(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Brandbazaar",
                              style: TextStyle(
                                color: Color(0xFFD9D9D9),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "BuyOrWin",
                              style: TextStyle(
                                color: Color(0xFFD9D9D9),
                                fontWeight: FontWeight.w500,
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
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 130,
                  child: ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return StoryAddWidget(
                            index: index,
                            showgift: false,
                          );
                        } else if (index >= 1 && index <= 3) {
                          return StoryAddWidget(
                            index: index,
                            showgift: true,
                          );
                        }
                        return StoryAddWidget(index: index);
                      }),
                ),
                SizedBox(
                  height: 200.h,
                  width: double.infinity,
                  child: PageView.builder(
                    reverse: true,
                    allowImplicitScrolling: true,
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Image.asset(
                          height: 150.h,
                          width: double.infinity,
                          fit: BoxFit.fill,
                          _images[0]);
                    },
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _services.length,
                    itemBuilder: (context, index) {
                      String fac = _services[index];
                      return Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(5),
                        width: 100.w,
                        // padding: EdgeInsets.only(left: 17,top: 10),
                        decoration: const BoxDecoration(
                          color: Color(0xFF681b4e),
                        ),
                        child: Text(
                          fac,
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: ColorConstant.whiteColor),
                        ),
                      );
                    },
                  ),
                ),

                // Expanded(

                // child: Product_item_widget(),),
                SizedBox(
                  height: 5.h,
                ),

                SizedBox(
                  height: 390.h,
                  width: double.infinity,
                  child: ListView.builder(
                    
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.antiAlias,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Card(
                          shadowColor: Colors.transparent.withOpacity(0.4),
                          margin: const EdgeInsets.all(2),
                          elevation: 1,
                          child: const Product_item_widget());
                    },
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
                      Tab(text: ' Global\n Brands'),
                      Tab(text: ' Domestic\n Brands'),
                      Tab(
                          text:
                              ' Spotlight\n Sellers'), // Changed label for clarity
                    ],
                    labelColor: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 125.h,
                  width: double.infinity,
                  // Use Expanded for better layout management
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      SizedBox(
                        height: 140,
                        child: ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              if (index == 0) {
                                return StoryAddWidget(
                                  index: index,
                                  showgift: false,
                                );
                              } else if (index >= 1 && index <= 3) {
                                return StoryAddWidget(
                                  index: index,
                                  showgift: true,
                                );
                              }
                              return StoryAddWidget(index: index);
                            }),
                      ),
                      const Center(child: Text("Phone Number Content")),
                      const Center(child: Text("Other Option Content")),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 380.h,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.antiAlias,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Card(
                          shadowColor: Colors.transparent.withOpacity(0.4),
                          margin: const EdgeInsets.all(2),
                          elevation: 7,
                          child: const Product_item_widget());
                    },
                  ),
                ),
                SizedBox(
                  height: 10.h,
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
                SizedBox(
                  height: 300.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const buyorwin_widget();
                    },
                  ),
                ),
                SizedBox(
                  height: 5.h,
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),

                SizedBox(
                  height: 380.h,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.antiAlias,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Card(
                          shadowColor: Colors.transparent.withOpacity(0.4),
                          margin: const EdgeInsets.all(2),
                          elevation: 7,
                          child: const Product_item_widget());
                    },
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 380.h,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.antiAlias,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Card(
                          shadowColor: Colors.transparent.withOpacity(0.4),
                          margin: const EdgeInsets.all(2),
                          elevation: 7,
                          child: const Product_item_widget());
                    },
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 380.h,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.antiAlias,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Card(
                          shadowColor: Colors.transparent.withOpacity(0.4),
                          margin: const EdgeInsets.all(2),
                          elevation: 7,
                          child: const Product_item_widget());
                    },
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),

                SizedBox(
                  height: 380.h,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.antiAlias,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Card(
                          shadowColor: Colors.transparent.withOpacity(0.4),
                          margin: const EdgeInsets.all(2),
                          elevation: 7,
                          child: const Product_item_widget());
                    },
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 380.h,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.antiAlias,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Card(
                          shadowColor: Colors.transparent.withOpacity(0.4),
                          margin: const EdgeInsets.all(2),
                          elevation: 7,
                          child: const Product_item_widget());
                    },
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 380.h,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.antiAlias,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Card(
                          shadowColor: Colors.transparent.withOpacity(0.4),
                          margin: const EdgeInsets.all(2),
                          elevation: 7,
                          child: const Product_item_widget());
                    },
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),

                SizedBox(
                  height: 380.h,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.antiAlias,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Card(
                          shadowColor: Colors.transparent.withOpacity(0.4),
                          margin: const EdgeInsets.all(2),
                          elevation: 7,
                          child: const Product_item_widget());
                    },
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 380.h,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.antiAlias,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Card(
                          shadowColor: Colors.transparent.withOpacity(0.4),
                          margin: const EdgeInsets.all(2),
                          elevation: 7,
                          child: const Product_item_widget());
                    },
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 380.h,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.antiAlias,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Card(
                          shadowColor: Colors.transparent.withOpacity(0.4),
                          margin: const EdgeInsets.all(2),
                          elevation: 7,
                          child: const Product_item_widget());
                    },
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),

                SizedBox(
                  height: 380.h,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.antiAlias,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Card(
                          shadowColor: Colors.transparent.withOpacity(0.4),
                          margin: const EdgeInsets.all(2),
                          elevation: 7,
                          child: const Product_item_widget());
                    },
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 380.h,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.antiAlias,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Card(
                          shadowColor: Colors.transparent.withOpacity(0.4),
                          margin: const EdgeInsets.all(2),
                          elevation: 7,
                          child: const Product_item_widget());
                    },
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 380.h,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.antiAlias,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Card(
                          shadowColor: Colors.transparent.withOpacity(0.4),
                          margin: const EdgeInsets.all(2),
                          elevation: 7,
                          child: const Product_item_widget());
                    },
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),

                SizedBox(
                  height: 380.h,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.antiAlias,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Card(
                          shadowColor: Colors.transparent.withOpacity(0.4),
                          margin: const EdgeInsets.all(2),
                          elevation: 7,
                          child: const Product_item_widget());
                    },
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 380.h,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.antiAlias,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Card(
                          shadowColor: Colors.transparent.withOpacity(0.4),
                          margin: const EdgeInsets.all(2),
                          elevation: 7,
                          child: const Product_item_widget());
                    },
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 380.h,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.antiAlias,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Card(
                          shadowColor: Colors.transparent.withOpacity(0.4),
                          margin: const EdgeInsets.all(2),
                          elevation: 7,
                          child: const Product_item_widget());
                    },
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),

                SizedBox(
                  height: 380.h,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.antiAlias,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Card(
                          shadowColor: Colors.transparent.withOpacity(0.4),
                          margin: const EdgeInsets.all(2),
                          elevation: 7,
                          child: const Product_item_widget());
                    },
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 380.h,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.antiAlias,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Card(
                          shadowColor: Colors.transparent.withOpacity(0.4),
                          margin: const EdgeInsets.all(2),
                          elevation: 7,
                          child: const Product_item_widget());
                    },
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 380.h,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.antiAlias,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Card(
                          shadowColor: Colors.transparent.withOpacity(0.4),
                          margin: const EdgeInsets.all(2),
                          elevation: 7,
                          child: const Product_item_widget());
                    },
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),

                SizedBox(
                  height: 380.h,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.antiAlias,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Card(
                          shadowColor: Colors.transparent.withOpacity(0.4),
                          margin: const EdgeInsets.all(2),
                          elevation: 7,
                          child: const Product_item_widget());
                    },
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 380.h,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.antiAlias,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Card(
                          shadowColor: Colors.transparent.withOpacity(0.4),
                          margin: const EdgeInsets.all(2),
                          elevation: 7,
                          child: const Product_item_widget());
                    },
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 380.h,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.antiAlias,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Card(
                          shadowColor: Colors.transparent.withOpacity(0.4),
                          margin: const EdgeInsets.all(2),
                          elevation: 7,
                          child: const Product_item_widget());
                    },
                  ),
                ),
              ],
            ),
          ),
          ValueListenableBuilder<bool>(
            valueListenable: _showSideBar,
            builder: (context, value, child) {
              return Positioned(
                  top: _isSectionsVisible ? 200 : 200,
                  right: 0,
                  child: InkWell(
                    onTap: () {
                      _showSideBar.value = !value;
                    },
                    child: value
                        ? const CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                AssetImage('assets/images/smart.png'),
                          )
                        : Container(
                            width: 60.w,
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
                                    onPressed: () {},
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
                                    onPressed: () {},
                                    icon: Column(
                                      children: [
                                        const Icon(
                                          Icons.add,
                                          size: 15,
                                          color: Color(0xff918994),
                                        ),
                                        Text(
                                          "add",
                                          style: headerstyle.copyWith(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w700,
                                              color: const Color(0xff918994)),
                                        )
                                      ],
                                    )),
                                IconButton(
                                    onPressed: () {},
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
          ),
          // Positioned(
          //     top: _isSectionsVisible ? 200 : 50,
          //     right: 0,
          //     child: Container(
          //       width: 60.w,
          //       padding: EdgeInsets.symmetric(
          //         vertical: 5.h,
          //       ),
          //       // Explicit height set
          //       decoration: BoxDecoration(
          //           color: const Color(0xffE2DAE5).withOpacity(0.9),
          //           borderRadius: const BorderRadius.only(
          //               topLeft: Radius.circular(10),
          //               bottomLeft: Radius.circular(10))),
          //       child: Center(
          //           child: Column(
          //         children: [
          //           SizedBox(
          //             height: 6.h,
          //           ),
          //           Image.asset('assets/images/smart.png'),
          //           SizedBox(
          //             height: 6.h,
          //           ),
          //           IconButton(
          //               onPressed: () {},
          //               icon: Column(
          //                 children: [
          //                   Image.asset(
          //                     'assets/images/scanner.png',
          //                     height: 15,
          //                     color: const Color(0xff918994),
          //                   ),
          //                   Text(
          //                     "Connect",
          //                     style: headerstyle.copyWith(
          //                         fontSize: 9,
          //                         fontWeight: FontWeight.w700,
          //                         color: const Color(0xff918994)),
          //                   )
          //                 ],
          //               )),
          //           IconButton(
          //               onPressed: () {},
          //               icon: Column(
          //                 children: [
          //                   const Icon(
          //                     Icons.shopping_cart_outlined,
          //                     size: 15,
          //                     color: Color(0xff918994),
          //                   ),
          //                   Text(
          //                     "cart",
          //                     style: headerstyle.copyWith(
          //                         fontSize: 9,
          //                         fontWeight: FontWeight.w700,
          //                         color: const Color(0xff918994)),
          //                   )
          //                 ],
          //               )),
          //           IconButton(
          //               onPressed: () {},
          //               icon: Column(
          //                 children: [
          //                   const Icon(
          //                     Icons.add,
          //                     size: 15,
          //                     color: Color(0xff918994),
          //                   ),
          //                   Text(
          //                     "add",
          //                     style: headerstyle.copyWith(
          //                         fontSize: 9,
          //                         fontWeight: FontWeight.w700,
          //                         color: const Color(0xff918994)),
          //                   )
          //                 ],
          //               )),
          //           IconButton(
          //               onPressed: () {},
          //               icon: Column(
          //                 children: [
          //                   Image.asset('assets/images/tennis.png'),
          //                   Text(
          //                     "Orders",
          //                     style: headerstyle.copyWith(
          //                         fontSize: 9,
          //                         fontWeight: FontWeight.w700,
          //                         color: const Color(0xff918994)),
          //                   )
          //                 ],
          //               )),
          //         ],
          //       )),
          //     ),
          //     ),

          //
        ]));
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ProductDetailScreen(productId: product.id),
                            ));
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
      contact_name: '',
      pickup: '',
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
