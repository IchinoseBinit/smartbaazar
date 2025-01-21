// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:carousel_slider/carousel_options.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:shimmer/shimmer.dart';
// import 'package:skeletonizer/skeletonizer.dart';
// import 'package:smartbazar/constant/color_constant.dart';
// import 'package:smartbazar/constant/image_constant.dart';
// import 'package:smartbazar/features/auth/view/bottom_navigation_bar.dart';
// import 'package:smartbazar/features/brand_bazar/brand_bazar_screen.dart';
// import 'package:smartbazar/features/bussiness_tab_screen/view/business_tab_screen.dart';
// import 'package:smartbazar/features/create_listing/view/create_new_listing_screen.dart';
// import 'package:smartbazar/features/feed_page/widget/not_a_story_widget.dart';
// import 'package:smartbazar/features/feed_page/widget/story_add_widget.dart';
// import 'package:smartbazar/features/home/api/get_story_provider.dart';
// import 'package:smartbazar/features/home/api/home_posts_proivider.dart';
// import 'package:smartbazar/features/home/api/home_story_api.dart';
// import 'package:smartbazar/features/home/api/post_type_story_api.dart';
// import 'package:smartbazar/features/home/api/sponsored_provider.dart';
// import 'package:smartbazar/features/home/api/buy_or_now_provider.dart';
// import 'package:smartbazar/features/home/api/home_slider_provider.dart';
// import 'package:smartbazar/features/home/api/search_product.dart';
// import 'package:smartbazar/features/home/api/shopzone_provider.dart';
// import 'package:smartbazar/features/home/model/home_posts_model.dart';
// import 'package:smartbazar/features/home/model/home_story_model.dart';
// import 'package:smartbazar/features/home/model/product_model.dart';
// import 'package:smartbazar/features/home/view/buyorwin_widget.dart';
// import 'package:smartbazar/features/home/view/header.dart';
// import 'package:smartbazar/features/home/view/home_page_story_container.dart';
// import 'package:smartbazar/features/my_order/view/my_order_screen.dart';
// import 'package:smartbazar/features/pending_approval/pending_approval.dart';
// import 'package:smartbazar/features/product_details/constant/all_product_detail_widget.dart';
// import 'package:smartbazar/features/product_details/constant/product_detail_widget.dart';
// import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
// import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_profile_screen.dart';
// import 'package:smartbazar/features/vendor/view/my_subscribe_and_win_page.dart';
// import 'package:smartbazar/features/widgets/product_card.dart';
// import 'package:rxdart/rxdart.dart';
// import 'package:smartbazar/features/b2b_screen/view/b2b_screen.dart';

// import '../../../general_widget/story_search_bar.dart';
// import '../../events_screen/view/events_screen.dart';
// import '../../grocessary_screen/view/grocary_screen.dart';
// import '../../jobs_screen/view/jobs_screen.dart';
// import '../../services_screen/service_screen.dart';
// import '../../socio_screen/view/socio_screen.dart';
// import '../../used_screen/view/used_screen.dart';

// int selectedIndex = 0; // Keep track of the selected index

// class practice extends ConsumerStatefulWidget {
//   const practice({super.key});

//   @override
//   ConsumerState<practice> createState() => _practiceState();
// }

// class _practiceState extends ConsumerState<practice>
//     with SingleTickerProviderStateMixin {
//   bool _isPopupVisible = false;
//   int currentPageIndex = 0;
//   int selectedIndexx = 0; // State variable for selected index
//   final ValueNotifier<bool> _showSideBar = ValueNotifier<bool>(true);
//   final GlobalKey<ScaffoldState> _key = GlobalKey();
//   final TextEditingController _searchController = TextEditingController();
//   final _debouncer = BehaviorSubject<String>();
//   bool _showSearchProductModels = false;
//   late TabController dynamictabController;
//   final ScrollController _scrollController = ScrollController();
//   bool _isSectionsVisible = true;
//   double _lastScrollOffset = 1;
//   Offset _initialDragPosition = Offset.zero; // Track initial drag position
//   PageController _pageController = PageController(viewportFraction: 0.3);
//   final double _currentHeight = 500; // Default height for first tab
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
//       'screen': BottomNavigationScreen()
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
//     dynamictabController = TabController(length: 3, vsync: this);
//     // fetchStoryHome().then(
//     //   (value) {
//     //     print("lala");
//     //   },
//     // );
//     // Default selected index to 3 (practice)
//     // selectedIndex = 3;
//     dynamictabController.addListener(() {
//       setState(() {});
//     });

//     // Initialize the PageController with the selected page
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

//   void _onSearchFocusChanged(bool hasFocus) {
//     setState(() {
//       _showSearchProductModels = hasFocus;
//     });
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
//   void dispose() {
//     dynamictabController.dispose();
//     _debouncer.close();
//     _searchController.dispose();
//     super.dispose();
//     _scrollController.dispose();
//     // super.dispose();s
//   }

//   @override
//   Widget build(BuildContext context) {
//     List<String> categories =
//         _services.map((e) => e['label'] as String).toList();
//     final asyncHomeStoryContent = ref.watch(getHomeStoryProvider);

//     // final adsList = ref.watch(fetchAdsProvider);
//     // double _mediaheight = MediaQuery.of(context).size.height;
//     // final AsyncValue<HomePosts> homePostsData = ref.watch(homePostsProvider);
//     final sliders = ref.watch(fetchAdvertisementsProvider);
//     final category = ref.watch(homeCategoryProvider);
//     // ValueNotifier<int> selectedIndexNotifier = ValueNotifier<int>(0);
//     final buyorwin = ref.watch(fetchBuyAndHotProvider);
//     final getSponsored = ref.watch(fetchSponsoredProvider);
//     final AsyncValue<HomePosts> homePostsData = ref.watch(homePostsProvider);

//     final SearchProductModels =
//         ref.watch(searchProvider(_searchController.text));
//     debugPrint('Search Results: ${SearchProductModels.asData?.value}');

//     return Scaffold(
//         extendBody: true,
//         key: _key,
//         resizeToAvoidBottomInset: false,
//         backgroundColor: ColorConstant.whiteColor,
//         // drawer: const CustomDrawer(),
//         body: Column(
//           children: [
//             SizedBox(
//               height: 300.h,
//               child: Stack(
//                 children: [
//                   Positioned(
//                     child: Container(
//                       decoration: const BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                             bottomLeft: Radius.circular(50),
//                             bottomRight: Radius.circular(50)),
//                         gradient: LinearGradient(
//                             colors: [
//                               Color(0xFF392574),
//                               Color(0xFF681b4e),
//                             ],
//                             begin: Alignment.topLeft,
//                             end: Alignment.bottomRight),
//                       ),
//                       child: Column(
//                         children: [
//                           const SizedBox(
//                             height: 40,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               InkWell(
//                                   onTap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                           builder: (context) =>
//                                               const VendorProfileScreen(),
//                                         ));
//                                   },
//                                   child:
//                                       Image.asset('assets/images/group.png')),
//                               SizedBox(
//                                 height: 40,
//                                 child: Row(
//                                   children: [
//                                     Container(
//                                       height: 45.h,
//                                       padding: EdgeInsets.symmetric(
//                                           horizontal: 20.w),
//                                       decoration: BoxDecoration(
//                                         color: const Color(0xFF46236a),
//                                         border: Border.all(color: Colors.white),
//                                         borderRadius: BorderRadius.only(
//                                           topLeft: Radius.circular(19.r),
//                                           bottomLeft: Radius.circular(19.r),
//                                         ),
//                                       ),
//                                       child:
//                                           DropdownButton<Map<String, String>>(
//                                         value: dropdownValue ??
//                                             headeritems[postypeid!],
//                                         onChanged: (newValue) {
//                                           setState(() {
//                                             dropdownValue = newValue;
//                                           });
//                                         },
//                                         items: headeritems.map((item) {
//                                           return DropdownMenuItem(
//                                             value: item,
//                                             child: Column(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment.center,
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.center,
//                                               children: [
//                                                 SvgPicture.asset(
//                                                   alignment: Alignment.center,
//                                                   item['icon']!,
//                                                   height: 10.h,
//                                                   color: Colors.white,
//                                                 ),
//                                                 SizedBox(width: 8.w),
//                                                 Text(
//                                                   item['label']!,
//                                                   style: TextStyle(
//                                                       fontSize: 10.sp,
//                                                       fontWeight:
//                                                           FontWeight.w600,
//                                                       color: Colors.white),
//                                                 ),
//                                               ],
//                                             ),
//                                           );
//                                         }).toList(),
//                                         dropdownColor: const Color(0xff665B6B)
//                                             .withOpacity(0.5),
//                                         underline: const SizedBox(),
//                                         icon: const SizedBox(),
//                                       ),
//                                     ),
//                                     Container(
//                                       width: 180.w,
//                                       height: 45.h,
//                                       padding: const EdgeInsets.all(5),
//                                       decoration: const BoxDecoration(
//                                           color: Colors.white),
//                                       child: TextField(
//                                         controller: _searchController,
//                                         onTap: () {
//                                           _onSearchFocusChanged(
//                                               _searchController
//                                                   .text.isNotEmpty);
//                                         },
//                                         decoration: InputDecoration(
//                                           border: InputBorder.none,
//                                           focusedBorder: InputBorder.none,
//                                           prefixIcon: const Icon(
//                                             Icons.search,
//                                             size: 25,
//                                             color: Color(0xffD9D9D9),
//                                           ),
//                                           enabledBorder:
//                                               const OutlineInputBorder(
//                                             borderSide: BorderSide(
//                                                 width: 0.2,
//                                                 color: Colors.white),
//                                           ),
//                                           hintText: "Search Everything",
//                                           hintStyle: TextStyle(
//                                               fontSize: 13.sp,
//                                               color: const Color(0xffD9D9D9)),
//                                           isCollapsed: true,
//                                           contentPadding: EdgeInsets.symmetric(
//                                               vertical: 5.h, horizontal: 10.w),
//                                           disabledBorder: InputBorder.none,
//                                           isDense: true,
//                                         ),
//                                       ),
//                                     ),
//                                     InkWell(
//                                       onTap: () {
//                                         Navigator.push(
//                                             context,
//                                             MaterialPageRoute(
//                                               builder: (context) =>
//                                                   BusinessTabScreen(
//                                                 query: _searchController.text,
//                                               ),
//                                             ));
//                                       },
//                                       child: Container(
//                                         height: 45.h,
//                                         padding: EdgeInsets.symmetric(
//                                             horizontal: 20.w, vertical: 5.h),
//                                         decoration: BoxDecoration(
//                                           border:
//                                               Border.all(color: Colors.white),
//                                           color: Colors.transparent,
//                                           borderRadius: BorderRadius.only(
//                                             topRight: Radius.circular(19.r),
//                                             bottomRight: Radius.circular(19.r),
//                                           ),
//                                         ),
//                                         child: Icon(
//                                           Icons.search,
//                                           color: Colors.white,
//                                           size: 20.sp,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 40.h,
//                           ),
//                           Text(
//                             "loda",
//                             style: headerstyle,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     top:
//                         80, // Adjust this value based on where you want the search results to appear
//                     left: 10,
//                     right: 10,
//                     child: Container(
//                       color: Colors.white,
//                       child: SearchProductModels.when(
//                         data: (results) {
//                           if (results.isEmpty) {
//                             return const SizedBox(
//                               child: Text('No result found'),
//                             ); // No results
//                           }
//                           return Card(
//                             elevation: 8,
//                             child: ListView.separated(
//                               padding: EdgeInsets.zero,
//                               shrinkWrap: true,
//                               primary: false,
//                               itemCount: results.length,
//                               itemBuilder: (context, index) {
//                                 final product = results[index];
//                                 return ListTile(
//                                   title: Text(product.title),
//                                   onTap: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: (context) => BusinessTabScreen(
//                                           query: _searchController.text,
//                                         ),
//                                       ),
//                                     );
//                                     setState(() {
//                                       _showSearchProductModels = false;
//                                       FocusScope.of(context).unfocus();
//                                     });
//                                   },
//                                 );
//                               },
//                               separatorBuilder: (context, index) =>
//                                   const Divider(),
//                             ),
//                           );
//                         },
//                         loading: () {
//                           return const SizedBox();
//                         },
//                         error: (error, stack) {
//                           return Center(child: Text(error.toString()));
//                         },
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ));
//   }
// }
