// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:rxdart/rxdart.dart';
// import 'package:shimmer/shimmer.dart';
// import 'package:smartbazar/constant/color_constant.dart';
// import 'package:smartbazar/constant/image_constant.dart';
// import 'package:smartbazar/features/auth/view/bottom_navigation_bar.dart';
// import 'package:smartbazar/features/b2b_screen/view/b2b_screen.dart';
// import 'package:smartbazar/features/brand_bazar/brand_bazar_screen.dart';
// import 'package:smartbazar/features/bussiness_tab_screen/view/business_tab_screen.dart';
// import 'package:smartbazar/features/events_screen/view/events_screen.dart';
// import 'package:smartbazar/features/feed_page/api/get_feed_of_following_api.dart';
// import 'package:smartbazar/features/feed_page/api/get_following_story_api.dart';
// import 'package:smartbazar/features/feed_page/api/get_for_you_feed_api.dart';
// import 'package:smartbazar/features/feed_page/api/get_for_you_story_api.dart';
// import 'package:smartbazar/features/feed_page/model/get_feed_stories_model.dart';
// import 'package:smartbazar/features/feed_page/widget/feed_container.dart';
// import 'package:smartbazar/features/feed_page/widget/feed_story_add_widget.dart';
// import 'package:smartbazar/features/feed_page/widget/promo_card.dart';
// import 'package:smartbazar/features/grocessary_screen/view/grocary_screen.dart';
// import 'package:smartbazar/features/home/api/search_product.dart';
// import 'package:smartbazar/features/home/view/header.dart';
// import 'package:smartbazar/features/jobs_screen/view/jobs_screen.dart';
// import 'package:smartbazar/features/services_screen/service_screen.dart';
// import 'package:smartbazar/features/socio_screen/view/socio_screen.dart';
// import 'package:smartbazar/features/used_screen/view/used_screen.dart';
// import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_profile_screen.dart';
// import 'package:smartbazar/features/vendor/view/my_subscribe_and_win_page.dart';
// import 'package:smartbazar/general_widget/general_safe_area.dart';

// class FeedScreen extends ConsumerStatefulWidget {
//   const FeedScreen({super.key});

//   @override
//   ConsumerState<FeedScreen> createState() => _FeedScreenState();
// }

// class _FeedScreenState extends ConsumerState<FeedScreen> {
//   final GlobalKey<ScaffoldState> _key = GlobalKey();
//   final TextEditingController _searchController = TextEditingController();

//   final _debouncer = BehaviorSubject<String>();
//   bool _showSearchProductModels = false;
//   int selectedIndex = 0;
//   late TabController dynamictabController;
//   final ScrollController _scrollController = ScrollController();
//   bool _isSectionsVisible = true;
//   double _lastScrollOffset = 1;
//   Offset _initialDragPosition = Offset.zero; // Track initial drag position
//   PageController _pageController = PageController(viewportFraction: 0.3);
//   void _onSearchFocusChanged(bool hasFocus) {
//     setState(() {
//       _showSearchProductModels = hasFocus;
//     });
//   }

//   Map<String, String>? dropdownValue;
//   int? postypeid = 0;
//   final List<Map<String, dynamic>> _items = [
//     {
//       'icon': 'assets/icon/openCartIcon.svg',
//       'label': 'SocioShop',
//       'screen': const SocioShopScreen()
//     },
//     {
//       'icon': 'assets/icon/loading.svg',
//       'label': 'Everything',
//       'screen': const BottomNavigationScreen()
//     },
//     {
//       'icon': 'assets/icon/usedIcon.svg',
//       'label': 'Used',
//       'screen': const UsedScreen()
//     },
//     {
//       'icon': 'assets/icon/b2bIcon.svg',
//       'label': 'TradeHub',
//       'screen': const B2bScreen()
//     },
//     {
//       'icon': 'assets/icon/brandBazarIcon.svg',
//       'label': 'Brandbazaar',
//       'screen': const BrandBazarScreen()
//     },
//     {
//       'icon': 'assets/icon/box.svg',
//       'label': 'ServiceHub',
//       'screen': const ServicesScreen()
//     },
//     {
//       'icon': 'assets/icon/vectors.svg',
//       'label': 'Job',
//       'screen': const JobssScreen()
//     },
//     {
//       'icon': 'assets/icon/groceryIcon.svg',
//       'label': 'Grocery',
//       'screen': const GrocarysScreen()
//     },
//     {
//       'icon': 'assets/icon/eventIcon.svg',
//       'label': 'Events',
//       'screen': const EventsScreen()
//     },
//   ];
//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController(
//       viewportFraction: 0.3,
//       initialPage: selectedIndex,
//     );
//     _searchController.addListener(() {
//       _debouncer.add(_searchController.text);
//     });
//     _debouncer.debounceTime(const Duration(milliseconds: 300)).listen((query) {
//       debugPrint("Search query: $query");
//       ref.refresh(searchProvider(query));
//       setState(() {
//         _showSearchProductModels = query.isNotEmpty;
//       });
//     });

//     // Set up debounce for search functionality
//     _searchController.addListener(() {
//       _debouncer.add(_searchController.text);
//     });

//     _debouncer.debounceTime(const Duration(milliseconds: 100)).listen((query) {
//       debugPrint("Search query: $query");
//       ref.refresh(searchProvider(query));
//       setState(() {
//         _showSearchProductModels = query.isNotEmpty;
//       });
//     });

//     _scrollController.addListener(_handleScroll);
//   }

//   void _handleScroll() {
//     final scrollOffset = _scrollController.offset;

//     if (scrollOffset > _lastScrollOffset && scrollOffset > 100) {
//       setState(() {
//         _isSectionsVisible = false;
//       });
//     } else if (scrollOffset < _lastScrollOffset && scrollOffset < 50) {
//       setState(() {
//         _isSectionsVisible = true;
//       });
//     }

//     _lastScrollOffset = scrollOffset;
//   }

//   void _onDragUpdate(DragUpdateDetails details) {
//     final dragDistance = details.globalPosition.dy - _initialDragPosition.dy;
//     if (dragDistance > 50 && !_isSectionsVisible) {
//       setState(() {
//         _isSectionsVisible = true;
//       });
//     } else if (dragDistance < -50 && _isSectionsVisible) {
//       setState(() {
//         _isSectionsVisible = false;
//       });
//     }
//   }

//   void _onDragStart(DragStartDetails details) {
//     _initialDragPosition = details.globalPosition;
//   }

//   final List<String> _images = ['assets/images/home.png'];
//   final List<Map<String, dynamic>> _services = [
//     {'label': 'SHOPZONE', 'id': 1},
//     {'label': 'TRADEHUB', 'id': 2},
//     {'label': 'SERVICES', 'id': 3},
//     {'label': 'USED', 'id': 4},
//     {'label': 'JOB', 'id': 5},
//     {'label': 'Event', 'id': 6},
//     {'label': 'Grocery', 'id': 7},
//   ];
//   int _currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     List<String> categories =
//         _services.map((e) => e['label'] as String).toList();
//     final searchProductModels =
//         ref.watch(searchProvider(_searchController.text));
//     debugPrint('Search Results: ${searchProductModels.asData?.value}');

//     return DefaultTabController(
//       length: 2, // Two tabs: "Following" and "For You"
//       child: GenericSafeArea(
//         child: Scaffold(
//           extendBody: true,
//           backgroundColor: Colors.transparent,
//           key: _key,
//           resizeToAvoidBottomInset: false,
//           body: Stack(
//             children: [
//               Positioned.fill(
//                 child: SingleChildScrollView(
//                   controller: _scrollController,
//                   child: Column(
//                     children: [
//                       Container(
//                         // height: 170,
//                         decoration: const BoxDecoration(
//                           borderRadius: BorderRadius.only(
//                               bottomLeft: Radius.circular(50),
//                               bottomRight: Radius.circular(50)),
//                           gradient: LinearGradient(
//                               colors: [
//                                 Color(0xFF392574),
//                                 Color(0xFF681b4e),
//                               ],
//                               begin: Alignment.topLeft,
//                               end: Alignment.bottomRight),
//                         ),
//                         child: Column(
//                           children: [
//                             const SizedBox(
//                               height: 40,
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                                 InkWell(
//                                     onTap: () {
//                                       Navigator.push(
//                                           context,
//                                           MaterialPageRoute(
//                                             builder: (context) =>
//                                                 const VendorProfileScreen(),
//                                           ));
//                                     },
//                                     child:
//                                         Image.asset('assets/images/group.png')),
//                                 SizedBox(
//                                     height: 40,
//                                     child: Row(
//                                       children: [
//                                         Container(
//                                           height: 45.h,
//                                           padding: EdgeInsets.symmetric(
//                                               horizontal: 20.w),
//                                           decoration: BoxDecoration(
//                                             color: const Color(0xFF46236a),
//                                             border:
//                                                 Border.all(color: Colors.white),
//                                             borderRadius: BorderRadius.only(
//                                               topLeft: Radius.circular(19.r),
//                                               bottomLeft: Radius.circular(19.r),
//                                             ),
//                                           ),
//                                           child: DropdownButton<
//                                               Map<String, String>>(
//                                             value: dropdownValue ??
//                                                 headeritems[postypeid!],
//                                             onChanged: (newValue) {
//                                               setState(() {
//                                                 dropdownValue = newValue;
//                                               });
//                                             },
//                                             items: headeritems.map((item) {
//                                               return DropdownMenuItem(
//                                                 value: item,
//                                                 child: Column(
//                                                   mainAxisAlignment:
//                                                       MainAxisAlignment.center,
//                                                   crossAxisAlignment:
//                                                       CrossAxisAlignment.center,
//                                                   children: [
//                                                     SvgPicture.asset(
//                                                       alignment:
//                                                           Alignment.center,
//                                                       item['icon']!,
//                                                       height: 10.h,
//                                                       color: Colors.white,
//                                                     ),
//                                                     SizedBox(width: 8.w),
//                                                     Text(
//                                                       item['label']!,
//                                                       style: TextStyle(
//                                                           fontSize: 10.sp,
//                                                           fontWeight:
//                                                               FontWeight.w600,
//                                                           color: Colors.white),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               );
//                                             }).toList(),
//                                             dropdownColor:
//                                                 const Color(0xff665B6B)
//                                                     .withOpacity(0.5),
//                                             underline: const SizedBox(),
//                                             icon: const SizedBox(),
//                                           ),
//                                         ),
//                                         Container(
//                                           width: 180.w,
//                                           height: 45.h,
//                                           padding: const EdgeInsets.all(5),
//                                           decoration: const BoxDecoration(
//                                               color: Colors.white),
//                                           child: TextField(
//                                             controller: _searchController,
//                                             onTap: () {
//                                               _onSearchFocusChanged(
//                                                   _searchController
//                                                       .text.isNotEmpty);
//                                             },
//                                             decoration: InputDecoration(
//                                               border: InputBorder.none,
//                                               focusedBorder: InputBorder.none,
//                                               prefixIcon: const Icon(
//                                                 Icons.search,
//                                                 size: 25,
//                                                 color: Color(0xffD9D9D9),
//                                               ),
//                                               enabledBorder:
//                                                   const OutlineInputBorder(
//                                                 borderSide: BorderSide(
//                                                     width: 0.2,
//                                                     color: Colors.white),
//                                               ),
//                                               hintText: "Search Everything",
//                                               hintStyle: TextStyle(
//                                                   fontSize: 13.sp,
//                                                   color:
//                                                       const Color(0xffD9D9D9)),
//                                               isCollapsed: true,
//                                               contentPadding:
//                                                   EdgeInsets.symmetric(
//                                                       vertical: 5.h,
//                                                       horizontal: 10.w),
//                                               disabledBorder: InputBorder.none,
//                                               isDense: true,
//                                             ),
//                                           ),
//                                         ),
//                                         InkWell(
//                                           onTap: () {
//                                             Navigator.push(
//                                                 context,
//                                                 MaterialPageRoute(
//                                                   builder: (context) =>
//                                                       BusinessTabScreen(
//                                                     query:
//                                                         _searchController.text,
//                                                   ),
//                                                 ));
//                                           },
//                                           child: Container(
//                                             height: 45.h,
//                                             padding: EdgeInsets.symmetric(
//                                                 horizontal: 20.w,
//                                                 vertical: 5.h),
//                                             decoration: BoxDecoration(
//                                               border: Border.all(
//                                                   color: Colors.white),
//                                               color: Colors.transparent,
//                                               borderRadius: BorderRadius.only(
//                                                 topRight: Radius.circular(19.r),
//                                                 bottomRight:
//                                                     Radius.circular(19.r),
//                                               ),
//                                             ),
//                                             child: Icon(
//                                               Icons.search,
//                                               color: Colors.white,
//                                               size: 20.sp,
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     )),
//                               ],
//                             ),

//                             SizedBox(
//                               height: 20.h,
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: List.generate(4, (index) {
//                                 return GestureDetector(
//                                   onTap: () {
//                                     setState(() {
//                                       selectedIndex = index;
//                                     });
//                                     _pageController.animateToPage(
//                                       index,
//                                       duration:
//                                           const Duration(milliseconds: 50),
//                                       curve: Curves.easeInOut,
//                                     );
//                                   },
//                                   child: Container(
//                                     height: 5.h,
//                                     width: 5.w,
//                                     margin:
//                                         EdgeInsets.symmetric(horizontal: 5.w),
//                                     decoration: BoxDecoration(
//                                       color: selectedIndex == index
//                                           ? Colors.amber
//                                           : Colors.grey,
//                                       shape: BoxShape.circle,
//                                     ),
//                                   ),
//                                 );
//                               }),
//                             ),

//                             SizedBox(
//                               height: 80.h,
//                               child: PageView.builder(
//                                 itemCount: _items.length,
//                                 padEnds: false,
//                                 controller: _pageController,
//                                 onPageChanged: (value) {
//                                   setState(() {
//                                     selectedIndex =
//                                         value; // Update selectedIndex based on page change
//                                   });
//                                 },
//                                 itemBuilder: (context, index) {
//                                   Map<String, dynamic> data = _items[index];

//                                   // Highlight only when index == 4
//                                   bool isActive = index == 1;
//                                   return GestureDetector(
//                                     onTap: () {
//                                       setState(() {
//                                         selectedIndex = index;
//                                       });
//                                       // dynamictabController.animateToPage(
//                                       //   2,
//                                       //   duration:
//                                       //       const Duration(milliseconds: 300),
//                                       //   curve: Curves.easeInOut,
//                                       // );
//                                     },
//                                     child: AnimatedContainer(
//                                       padding: EdgeInsets.zero,
//                                       duration:
//                                           const Duration(milliseconds: 300),
//                                       alignment: Alignment.center,
//                                       child: InkWell(
//                                         onTap: () {
//                                           Navigator.push(
//                                             context,
//                                             MaterialPageRoute(
//                                                 builder: (context) =>
//                                                     data['screen']),
//                                           );
//                                         },
//                                         child: Column(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           children: [
//                                             if (data['icon']
//                                                 .toString()
//                                                 .endsWith('.svg'))
//                                               SvgPicture.asset(
//                                                 data['icon'],
//                                                 alignment: Alignment.center,
//                                                 fit: BoxFit.contain,
//                                                 theme: const SvgTheme(
//                                                     currentColor:
//                                                         Color(0xffdd9d9d9)),
//                                                 color: isActive
//                                                     ? Colors.amber
//                                                     : const Color(0xffD9D9D9)
//                                                         .withOpacity(0.5),
//                                                 width: 20,
//                                                 height: 20,
//                                               )
//                                             else
//                                               Image.asset(
//                                                 data['icon'],
//                                                 color: isActive
//                                                     ? Colors.amber
//                                                     : const Color(0xffD9D9D9)
//                                                         .withOpacity(0.5),
//                                                 width: 20,
//                                                 height: 20,
//                                               ),
//                                             const SizedBox(height: 8),
//                                             Text(
//                                               data['label'],
//                                               textAlign: TextAlign.center,
//                                               style: TextStyle(
//                                                 fontSize: 12,
//                                                 fontWeight: FontWeight.w700,
//                                                 color: isActive
//                                                     ? Colors.amber
//                                                     : const Color(0xffD9D9D9)
//                                                         .withOpacity(0.5),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                   );
//                                 },
//                               ),
//                             ),

//                             Padding(
//                               padding: EdgeInsets.symmetric(horizontal: 10.w),
//                               child: const Divider(
//                                 thickness: 0.4,
//                                 height: 1,
//                                 color: ColorConstant.grayColor,
//                               ),
//                             ),
//                             if (_isSectionsVisible)
//                               Padding(
//                                 padding: const EdgeInsets.all(20),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     InkWell(
//                                       onTap: () {
//                                         Navigator.push(
//                                             context,
//                                             MaterialPageRoute(
//                                               builder: (context) =>
//                                                   const BrandBazarScreen(),
//                                             ));
//                                       },
//                                       child: const Text(
//                                         "Brandbazaar",
//                                         style: TextStyle(
//                                           fontSize: 12,
//                                           color: Color(0xFFD9D9D9),
//                                           fontWeight: FontWeight.w500,
//                                         ),
//                                       ),
//                                     ),
//                                     InkWell(
//                                       onTap: () {
//                                         Navigator.push(
//                                             context,
//                                             MaterialPageRoute(
//                                               builder: (context) =>
//                                                   const MySubscribeAndWinPage(),
//                                             ));
//                                       },
//                                       child: const Text(
//                                         "BuyOrWin",
//                                         style: TextStyle(
//                                           fontSize: 12,
//                                           color: Color(0xFFD9D9D9),
//                                           fontWeight: FontWeight.w500,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             //   ],
//                             // ),
//                           ],
//                         ),
//                       ),
//                       // Gradient Header Section
//                       // Container(
//                       //   height: 170,
//                       //   decoration: const BoxDecoration(
//                       //     borderRadius: BorderRadius.only(
//                       //       bottomLeft: Radius.circular(50),
//                       //       bottomRight: Radius.circular(50),
//                       //     ),
//                       //     gradient: LinearGradient(
//                       //       colors: [
//                       //         Color(0xFF392574),
//                       //         Color(0xFF681b4e),
//                       //       ],
//                       //       begin: Alignment.topLeft,
//                       //       end: Alignment.bottomRight,
//                       //     ),
//                       //   ),
//                       //   child: Column(
//                       //     children: [
//                       //       const SizedBox(height: 40),
//                       //       Row(
//                       //         children: [
//                       //           const SizedBox(width: 10),
//                       //           const Icon(
//                       //             Icons.arrow_back_ios,
//                       //             color: Colors.white,
//                       //           ),
//                       //           SizedBox(width: 10.w),
//                       //           SizedBox(
//                       //               height: 50,
//                       //               child: NewSearchWidget(
//                       //                 searchController: _searchController,
//                       //                 ontapped: () {},
//                       //                 onchnage: (p0) {},
//                       //                 onSearchFocusChanged: _onSearchFocusChanged,
//                       //               )),
//                       //         ],
//                       //       ),
//                       //       SizedBox(height: 30.h),
//                       //       Row(
//                       //         mainAxisAlignment: MainAxisAlignment.center,
//                       //         children: [
//                       //           _buildHeaderIcon(openCart, "Shopping"),
//                       //           SizedBox(width: 25.w),
//                       //           _buildHeaderIcon(servicesIcon, "Services"),
//                       //           SizedBox(width: 25.w),
//                       //           _buildHeaderIcon(jobIcon, "TradeHub"),
//                       //         ],
//                       //       )
//                       //     ],
//                       //   ),
//                       // ),
//                       // Tab Bar Section
//                       const TabBar(
//                         indicatorColor: Color(0xFF392574),
//                         labelColor: Colors.black,
//                         unselectedLabelColor: Colors.grey,
//                         tabs: [
//                           Tab(text: "Following"),
//                           Tab(text: "For You"),
//                         ],
//                       ),
//                       // Tab Bar View Section
//                       Expanded(
//                         child: TabBarView(
//                           children: [
//                             // "Following" Tab Content
//                             _buildFollowingTabContent(ref),
//                             // "For You" Tab Content
//                             _buildForYouTabContent(ref),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Helper Method to Build Header Icons
//   Widget _buildHeaderIcon(String assetPath, String label) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         SvgPicture.asset(
//           assetPath,
//           colorFilter: const ColorFilter.mode(
//             Colors.white,
//             BlendMode.srcIn,
//           ),
//         ),
//         Text(
//           label,
//           style: TextStyle(
//             fontSize: 12.sp,
//             fontWeight: FontWeight.w700,
//             color: Colors.white,
//           ),
//         ),
//       ],
//     );
//   }

//   // Following Tab Content
//   Widget _buildFollowingTabContent(WidgetRef ref) {
//     final asyncFollowingFeedContent = ref.watch(getFeedOfFollowingProvider);
//     final asyncFollowingStoryContent = ref.watch(getFollowingStoryProvider);

//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           SizedBox(height: 30.h),
//           Flexible(
//             fit: FlexFit.loose,
//             child: SizedBox(
//               height: 100,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   asyncFollowingStoryContent.when(
//                     data: (feedStoryData) {
//                       final feedStoryContent = feedStoryData.data?.feedstory;

//                       if (feedStoryContent != null &&
//                           feedStoryContent.posts != null) {
//                         return Expanded(
//                           child: ListView.builder(
//                             padding: EdgeInsets.zero,
//                             shrinkWrap: true,
//                             scrollDirection: Axis.horizontal,
//                             itemCount: feedStoryContent.posts!.length,
//                             itemBuilder: (context, index) {
//                               final Post story = feedStoryContent.posts![index];

//                               return FeedStoryAddWidget(
//                                 index: index,
//                                 vendorName:
//                                     story.vendorName ?? "Unknown Vendor",
//                                 vendorImage: story.vendorImage ??
//                                     "https://example.com/default-image.png",
//                                 storyCount: story.storyCount ?? 0,
//                                 showGift: story.hasSponsoredGifts ?? false,
//                                 feedStoryContent: feedStoryContent,
//                                 userId: story.vendorId ?? "",
//                               );
//                             },
//                           ),
//                         );
//                       } else {
//                         return const Center(
//                             child: Text(
//                           "No stories available",
//                           textAlign: TextAlign.center,
//                         ));
//                       }
//                     },
//                     loading: () => Expanded(
//                         child: ListView.builder(
//                             padding: EdgeInsets.zero,
//                             shrinkWrap: true,
//                             scrollDirection: Axis.horizontal,
//                             itemCount: 5,
//                             itemBuilder: (context, index) {
//                               return Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(horizontal: 8),
//                                 child: Shimmer.fromColors(
//                                   baseColor: Colors.grey[300]!,
//                                   highlightColor: Colors.grey[100]!,
//                                   child: Container(
//                                     width: 80,
//                                     height: 80,
//                                     decoration: const BoxDecoration(
//                                       shape: BoxShape.circle,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ),
//                               );
//                             })),
//                     error: (error, stack) =>
//                         Center(child: Text('Error: $error')),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(height: 20.h),
//           Flexible(
//             fit: FlexFit.loose,
//             child: asyncFollowingFeedContent.when(
//               data: (feedData) {
//                 if (feedData.data != null && feedData.data!.feedPost != null) {
//                   final feedItems = feedData.data!.feedPost!;
//                   return ListView.builder(
//                     shrinkWrap: true,
//                     physics: const NeverScrollableScrollPhysics(),
//                     itemCount: feedItems.length,
//                     itemBuilder: (context, index) {
//                       final feedItem = feedItems[index];
//                       final userDetails = feedItem.userDetail;
//                       final interested = feedItem.interested;
//                       final feedDetail = feedItem.feedDetail;
            
//                       // return _buildFeedItem(feedItems[index]);
//                       return Padding(
//                         padding: const EdgeInsets.symmetric(
//                           vertical: 8.0,
//                           // horizontal: 16,
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             FeedContainer(
//                               productCount: userDetails!.productCount.toString(),
//                               suscribers: userDetails.subscribers.toString(),
//                               vendorName: userDetails.vendorName!,
//                               vendorImage: userDetails.vendorImage!,
//                               livePrize: userDetails.livePrize.toString(),
//                               distance: userDetails.distance?.toStringAsFixed(0),
//                               interested: interested?.interested?.toString(),
//                               engagement: interested?.engagement?.toString(),
//                               views: interested?.views,
//                               feedDetailImage: feedDetail!.image!,
//                               membershipTitle: userDetails.membershipTitle ?? '',
//                               membershipId: userDetails.membershipId ?? '',
//                               showGift: userDetails.hasSponsoredGifts ?? false,
//                               userId: feedItem.userId ?? '',
//                               //feedDetail: feedItem.feedDetail,
//                             ),
//                             PromoCard(
//                               products: feedItem.products!
//                                   .map((product) => {
//                                         "imagePath": product.image ??
//                                             "https://smartbazaar.jianjun-rnd.com.np/uploads/smartbazaar_app_loading_logo.png",
//                                         "price": product.price! ?? "N/A",
//                                         "id": feedItem.id ?? "",
//                                       })
//                                   .toList(),
//                               captionTitle: '${feedItem.captionTitle}',
//                               caption: feedItem.caption ?? '',
//                               offerText: feedItem.offers ?? 'Special Offer!',
//                             ),
//                           ],
//                         ),
//                       );
//                     },
//                   );
//                 } else {
//                   return const Center(child: Text('No feed items available'));
//                 }
//               },
//               loading: () => const Center(child: CircularProgressIndicator()),
//               error: (error, stack) => Center(child: Text('Error: $error')),
//             ),
//           ),
//           //const FeedContainer(),
//         ],
//       ),
//     );
//   }

//   // For You Tab Content
//   Widget _buildForYouTabContent(WidgetRef ref) {
//     final asyncForYouFeedContent = ref.watch(getForYouFeedApiProvider);
//     final asyncForYouStoryContent = ref.watch(getForYouStoryProvider);
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           SizedBox(height: 20.h),
//           Flexible(
//             fit: FlexFit.loose,
//             child: SizedBox(
//               height: 100,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   asyncForYouStoryContent.when(
//                     data: (feedStoryData) {
//                       final feedStoryContent = feedStoryData.data?.feedstory;
//                       if (feedStoryContent != null &&
//                           feedStoryContent.posts != null) {
//                         return Expanded(
//                           child: ListView.builder(
//                             padding: EdgeInsets.zero,
//                             shrinkWrap: true,
//                             scrollDirection: Axis.horizontal,
//                             itemCount: feedStoryContent.posts?.length ?? 0,
//                             itemBuilder: (context, index) {
//                               final Post story = feedStoryContent.posts![index];
            
//                               return FeedStoryAddWidget(
//                                 index: index,
//                                 vendorName: story.vendorName ?? "Unknown Vendor",
//                                 vendorImage: story.vendorImage ??
//                                     "https://example.com/default-image.png",
//                                 storyCount: story.storyCount ?? 0,
//                                 showGift: story.hasSponsoredGifts ?? false,
//                                 feedStoryContent: feedStoryContent,
//                                 userId: story.vendorId!,
//                               );
//                             },
//                           ),
//                         );
//                       } else {
//                         return const Center(
//                             child: Text(
//                           "No stories available",
//                           textAlign: TextAlign.center,
//                         ));
//                       }
//                     },
//                     loading: () => Expanded(
//                         child: ListView.builder(
//                             padding: EdgeInsets.zero,
//                             shrinkWrap: true,
//                             scrollDirection: Axis.horizontal,
//                             itemCount: 5,
//                             itemBuilder: (context, index) {
//                               return Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(horizontal: 8),
//                                 child: Shimmer.fromColors(
//                                   baseColor: Colors.grey[300]!,
//                                   highlightColor: Colors.grey[100]!,
//                                   child: Container(
//                                     width: 80,
//                                     height: 80,
//                                     decoration: const BoxDecoration(
//                                       shape: BoxShape.circle,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ),
//                               );
//                             })),
//                     error: (error, stack) {
//                       if (error.toString().contains('Session has expired')) {
//                         return Center(child: Text('Please log in again.'));
//                       }
//                       return Center(child: Text('Error: $error'));
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(height: 20.h),
//           Flexible(
//             fit: FlexFit.loose,
//             child: asyncForYouFeedContent.when(
//               data: (feedData) {
//                 if (feedData.data != null && feedData.data!.feedPost != null) {
//                   final feedItems = feedData.data!.feedPost!;
//                   return ListView.builder(
//                     shrinkWrap: true,
//                     physics: const NeverScrollableScrollPhysics(),
//                     itemCount: feedItems.length,
//                     itemBuilder: (context, index) {
//                       final feedItem = feedItems[index];
//                       final userDetails = feedItem.userDetail;
//                       final interested = feedItem.interested;
//                       final feedDetail = feedItem.feedDetail;
            
//                       // return _buildFeedItem(feedItems[index]);
//                       return Padding(
//                         padding: const EdgeInsets.symmetric(
//                           vertical: 8.0,
//                           //  horizontal: 16,
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             FeedContainer(
//                               productCount: userDetails!.productCount.toString(),
//                               suscribers: userDetails.subscribers.toString(),
//                               vendorName: userDetails.vendorName!,
//                               vendorImage: userDetails.vendorImage!,
//                               livePrize: userDetails.livePrize.toString(),
//                               distance: userDetails.distance?.toStringAsFixed(0),
//                               interested: interested?.interested?.toString(),
//                               engagement: interested?.engagement?.toString(),
//                               views: interested?.views,
//                               feedDetailImage: feedDetail!.image!,
//                               membershipTitle: userDetails.membershipTitle,
//                               membershipId: userDetails.membershipId ?? '',
//                               showGift: userDetails.hasSponsoredGifts ?? false,
//                               userId: feedItem.userId ?? '',
//                               //feedDetail: feedItem.feedDetail,
//                             ),
//                             PromoCard(
//                               products: feedItem.products!
//                                   .map((product) => {
//                                         "imagePath": product.image ??
//                                             "https://smartbazaar.jianjun-rnd.com.np/uploads/smartbazaar_app_loading_logo.png",
//                                         "price": product.price ?? "N/A",
//                                         "id": feedItem.id ?? "",
//                                       })
//                                   .toList(),
//                               captionTitle: '${feedItem.captionTitle}',
//                               caption: feedItem.caption ?? '',
//                               offerText: feedItem.offers ?? 'Special Offer!',
//                             ),
//                           ],
//                         ),
//                       );
//                     },
//                   );
//                 } else {
//                   return const Center(child: Text('No feed items available'));
//                 }
//               },
//               loading: () => const Center(child: CircularProgressIndicator()),
//               error: (error, stack) => Center(child: Text('Error: $error')),
//             ),
//           )
//           // const FeedContainer(),
//           // const PromoCard(),
//         ],
//       ),
//     );
//   }
// }
