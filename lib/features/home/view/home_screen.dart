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
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final TextEditingController _searchController = TextEditingController();
  final _debouncer = BehaviorSubject<String>();
  bool _showSearchResults = false;
  late TabController tabController;
  final ScrollController _scrollController = ScrollController();
  bool _isSectionsVisible = true;
  double _lastScrollOffset = 0;
  Offset _initialDragPosition = Offset.zero; // Track initial drag position
  int selectedIndex = 0;
  final ScrollController _scrollContainer = ScrollController();
    final PageController _pageController = PageController(viewportFraction: 0.3);

 void _onPageChanged(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    _scrollContainer.addListener(
      () {
        double scrollPosition = _scrollContainer.offset;
        int newIndex = (scrollPosition / 85).round();
        if (newIndex != selectedIndex) {
          setState(() {
            selectedIndex = newIndex;
          });
        }
      },
    );
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
        drawer: const CustomDrawer(),
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
                      if (_isSectionsVisible)
                        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: selectedIndex == index ? Colors.amber : Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
              );
            }),
          ),
                      SizedBox(
                        height: 80.h,
                        child: ListView.builder(
                          shrinkWrap: true,
                          controller: _scrollContainer,
                          scrollDirection: Axis.horizontal,
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            Map<String, dynamic> data = items[index];
                            bool isActive = index == selectedIndex;

                            return GestureDetector(
                              onTap: () {
                                if (data['screen'] != null) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => data['screen']),
                                  );
                                }
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 50.w),
                                // margin: const EdgeInsets.symmetric(
                                //     horizontal: 30), // Spacing between items
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .center, // Center within available space
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
                                        width: 20, // Adjust size
                                        height: 20,
                                      )
                                    else
                                      Image.asset(
                                        data['icon'],
                                        color: isActive
                                            ? Colors.amber
                                            : const Color(0xffD9D9D9)
                                                .withOpacity(0.5),

                                        width: 20, // Adjust size
                                        height: 20,
                                      ),
                                    const SizedBox(
                                        height:
                                            8), // Space between icon and label
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
                            );
                          },
                        ),
                      )

                      // SizedBox(
                      //   height: 80.h,
                      //   width: double.infinity,
                      //   child: PageView.builder(
                      //     reverse: true,

                      //     scrollDirection: Axis.horizontal,
                      //     onPageChanged: (index) {
                      //       setState(() {
                      //         selectedIndex = index;
                      //       });
                      //     },
                      //     itemCount: items.length,
                      //     itemBuilder: (context, index) {
                      //       Map<String, dynamic> data = items[index];
                      //       return SizedBox(
                      //         height: 30.h,
                      //         width: 30.w,
                      //         child: GestureDetector(
                      // onTap: () {
                      //     if (data['screen'] != null) {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => data['screen']),
                      //     );
                      //   }
                      // },
                      // child: Container(
                      //   // margin: const EdgeInsets.symmetric(
                      //   //     horizontal: 30), // Spacing between items
                      //   child: Column(
                      //     mainAxisSize: MainAxisSize
                      //         .min, // Shrinks to fit children
                      //     mainAxisAlignment: MainAxisAlignment
                      //         .center, // Center within available space
                      //     children: [
                      //       if (data['icon']
                      //           .toString()
                      //           .endsWith('.svg'))
                      //         SvgPicture.asset(
                      //           data['icon'],
                      //           color: const Color(0xffD9D9D9)
                      //               .withOpacity(0.5),
                      //           width: 20, // Adjust size
                      //           height: 20,
                      //         )
                      //       else
                      //         Image.asset(
                      //           data['icon'],
                      //           color: const Color(0xffD9D9D9)
                      //               .withOpacity(0.5),

                      //           width: 20, // Adjust size
                      //           height: 20,
                      //         ),
                      //       const SizedBox(
                      //           height:
                      //               8), // Space between icon and label
                      //       Text(
                      //         data['label'],
                      //         textAlign: TextAlign.center,
                      //         style: TextStyle(
                      //           fontSize: 12,
                      //           fontWeight: FontWeight.w700,
                      //           color: const Color(0xffD9D9D9)
                      //               .withOpacity(0.5),
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      //         ),
                      //       );
                      //     },
                      //   ),
                      // ),

                      // SizedBox(
                      //   height: 80.h, // Increased height for better visibility
                      //   width: double.infinity,
                      //   child: ListView.builder(
                      //     padding: const EdgeInsets.only(left: 10),
                      //     physics: const BouncingScrollPhysics(),
                      //     reverse: true,
                      //     itemCount: items.length,
                      //     scrollDirection: Axis.horizontal,
                      //     itemBuilder: (context, index) {
                      //       Map<String, dynamic> data = items[index];
                      //       return GestureDetector(
                      //         onTap: () {
                      //           if (data['screen'] != null) {
                      //             Navigator.push(
                      //               context,
                      //               MaterialPageRoute(
                      //                   builder: (context) => data['screen']),
                      //             );
                      //           }
                      //         },
                      //         child: Container(
                      //           margin: const EdgeInsets.symmetric(
                      //               horizontal: 30), // Spacing between items
                      //           child: Column(
                      //             mainAxisSize: MainAxisSize
                      //                 .min, // Shrinks to fit children
                      //             mainAxisAlignment: MainAxisAlignment
                      //                 .center, // Center within available space
                      //             children: [
                      //               if (data['icon']
                      //                   .toString()
                      //                   .endsWith('.svg'))
                      //                 SvgPicture.asset(
                      //                   data['icon'],
                      //                   color: const Color(0xffD9D9D9)
                      //                       .withOpacity(0.5),
                      //                   width: 20, // Adjust size
                      //                   height: 20,
                      //                 )
                      //               else
                      //                 Image.asset(
                      //                   data['icon'],
                      //                   color: const Color(0xffD9D9D9)
                      //                       .withOpacity(0.5),

                      //                   width: 20, // Adjust size
                      //                   height: 20,
                      //                 ),
                      //               const SizedBox(
                      //                   height:
                      //                       8), // Space between icon and label
                      //               Text(
                      //                 data['label'],
                      //                 textAlign: TextAlign.center,
                      //                 style: TextStyle(
                      //                   fontSize: 12,
                      //                   fontWeight: FontWeight.w700,
                      //                   color: const Color(0xffD9D9D9)
                      //                       .withOpacity(0.5),
                      //                 ),
                      //               ),
                      //             ],
                      //           ),
                      //         ),
                      //       );
                      //     },
                      //   ),
                      // ),

                      // Row(
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //   children: [
                      //     InkWell(
                      //       onTap: () {

                      //       },
                      //       child:
                      //     ),
                      //     InkWell(
                      //       onTap: () {

                      //       },
                      //       child: Column(
                      //         crossAxisAlignment: CrossAxisAlignment.center,
                      //         children: [
                      //           SvgPicture.asset(
                      //             openCart,
                      //             colorFilter: const ColorFilter.mode(
                      //               Colors.white,
                      //               BlendMode.srcIn,
                      //             ),
                      //           ),
                      //           Text(
                      //             "Shopping",
                      //             style: TextStyle(
                      //               fontSize: 12.sp,
                      //               fontWeight: FontWeight.w700,
                      //               color: Colors.white,
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //     // SizedBox(
                      //     //   width: 25.w,
                      //     // ),
                      //     InkWell(
                      //       onTap: () {
                      //         Navigator.push(
                      //             context,
                      //             MaterialPageRoute(
                      //               builder: (context) => HomeScreen(),
                      //             ));
                      //       },
                      //       child: Column(
                      //         children: [
                      //           Image.asset(
                      //             'assets/images/loading.png',
                      //           ),
                      //           Text(
                      //             "Everything",
                      //             style: TextStyle(
                      //               fontSize: 12.sp,
                      //               fontWeight: FontWeight.w700,
                      //               color: Colors.white,
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //     InkWell(
                      //       child: Column(
                      //         crossAxisAlignment: CrossAxisAlignment.center,
                      //         children: [
                      //           SvgPicture.asset(
                      //             'assets/icon/b2bIcon.svg',
                      //             colorFilter: const ColorFilter.mode(
                      //               Colors.white,
                      //               BlendMode.srcIn,
                      //             ),
                      //           ),
                      //           Text(
                      //             "TradeHub",
                      //             style: TextStyle(
                      //               fontSize: 12.sp,
                      //               fontWeight: FontWeight.w700,
                      //               color: Colors.white,
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ),

                      //     InkWell(
                      //       onTap: () {

                      //       },
                      //       child: Column(
                      //         crossAxisAlignment: CrossAxisAlignment.center,
                      //         children: [
                      //           SvgPicture.asset(
                      //             'assets/icon/fileIcon.svg',
                      //             colorFilter: const ColorFilter.mode(
                      //               Colors.white,
                      //               BlendMode.srcIn,
                      //             ),
                      //           ),
                      //           Text(
                      //             "Jobs",
                      //             style: TextStyle(
                      //               fontSize: 12.sp,
                      //               fontWeight: FontWeight.w700,
                      //               color: Colors.white,
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //     // SizedBox(
                      //     //   width: 25.w,
                      //     // ),
                      //   ],
                      // ),

                      // Column(
                      //   children: [
                      //     SizedBox(
                      //       height: 80.h,
                      //       width: double.infinity,
                      //       child: ListView.builder(
                      //         physics: const BouncingScrollPhysics(),
                      //         reverse: true,
                      //         itemCount: items.length,
                      //         scrollDirection: Axis.horizontal,
                      //         itemBuilder: (context, index) {
                      //           Map<String, dynamic> data = items[index];
                      //           return GestureDetector(
                      //             onTap: () {
                      //               if (data['screen'] != null) {
                      //                 Navigator.push(
                      //                   context,
                      //                   MaterialPageRoute(
                      //                       builder: (context) =>
                      //                           data['screen']),
                      //                 );
                      //               }
                      //             },
                      //             child: Container(
                      //               margin: const EdgeInsets.symmetric(
                      //                   horizontal:
                      //                       30), // Spacing between items
                      //               child: Column(
                      //                 mainAxisSize: MainAxisSize
                      //                     .min, // Shrinks to fit children
                      //                 mainAxisAlignment: MainAxisAlignment
                      //                     .center, // Center within available space
                      //                 children: [
                      //                   if (data['icon']
                      //                       .toString()
                      //                       .endsWith('.svg'))
                      //                     SvgPicture.asset(
                      //                       data['icon'],
                      //                       colorFilter:
                      //                           const ColorFilter.mode(
                      //                         Colors.white,
                      //                         BlendMode.srcIn,
                      //                       ),
                      //                       width: 20, // Adjust size
                      //                       height: 20,
                      //                     )
                      //                   else
                      //                     Image.asset(
                      //                       data['icon'],
                      //                       width: 20, // Adjust size
                      //                       height: 20,
                      //                     ),
                      //                   const SizedBox(
                      //                       height:
                      //                           8), // Space between icon and label
                      //                   Text(
                      //                     data['label'],
                      //                     textAlign: TextAlign.center,
                      //                     style: const TextStyle(
                      //                       fontSize: 12,
                      //                       fontWeight: FontWeight.w700,
                      //                       color: ColorConstant.whiteColor,
                      //                     ),
                      //                   ),
                      //                 ],
                      //               ),
                      //             ),
                      //           );
                      //         },
                      //       ),
                      //     ),
                      //     SizedBox(
                      //       height: 15.h,
                      //     ),
                      //     const Divider(
                      //       height: 0.1,
                      //     ),
                      ,
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
                    padding: const EdgeInsets.all(8.0),
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
                  height: 10.h,
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
                  height: 320.h,
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
              ],
            ),
          ),
          Positioned(
              top: _isSectionsVisible ? 200 : 50,
              right: 0,
              child: Container(
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
                    const Icon(
                      Icons.close,
                      size: 17,
                      color: Color(0xff918994),
                    ),
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
                  ],
                )),
              ))
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
