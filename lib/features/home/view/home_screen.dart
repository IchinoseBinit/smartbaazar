// import 'dart:convert';

// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:carousel_slider/carousel_options.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smartbazar/constant/button_nav_sheet.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/add_to_cart/api/delivery_charge_api.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/auth/view/login_screen.dart';
import 'package:smartbazar/features/auth/view/signup_screen.dart';
import 'package:smartbazar/features/button_nav_bar/cusom_btn_bar/custom_bottom_nav.dart';
import 'package:smartbazar/features/feed_page/api/get_for_you_story_api.dart';
import 'package:smartbazar/features/feed_page/model/get_feed_stories_model.dart';
import 'package:smartbazar/features/feed_page/widget/feed_story_add_widget.dart';
import 'package:smartbazar/features/home/api/story_search_api.dart';
import 'package:smartbazar/features/home/model/home_search_model.dart';
import 'package:smartbazar/features/home/model/home_story_model.dart';
import 'package:smartbazar/features/message/view/chat_screen.dart';
import 'package:smartbazar/features/product_details/api/check_enquire_provider.dart';
import 'package:smartbazar/features/product_details/model/enquire_model.dart';
import 'package:smartbazar/features/scran_screen/scan_screen.dart';
import 'package:smartbazar/features/brand_bazar/brand_bazar_screen.dart';
import 'package:smartbazar/features/bussiness_tab_screen/view/business_tab_screen.dart';
import 'package:smartbazar/features/create_listing/view/create_new_listing_screen.dart';
import 'package:smartbazar/features/feed_page/widget/not_a_story_widget.dart';
import 'package:smartbazar/features/home/api/home_posts_proivider.dart';
import 'package:smartbazar/features/home/api/home_story_api.dart';
import 'package:smartbazar/features/home/api/sponsored_provider.dart';
import 'package:smartbazar/features/home/api/buy_or_now_provider.dart';
import 'package:smartbazar/features/home/api/home_slider_provider.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/home/api/shopzone_provider.dart';
import 'package:smartbazar/features/home/model/home_posts_model.dart';
import 'package:smartbazar/features/home/view/buyorwin_widget.dart';
import 'package:smartbazar/features/home/view/header.dart';
import 'package:smartbazar/features/my_order/view/my_order_screen.dart';
import 'package:smartbazar/features/product_details/constant/all_product_detail_widget.dart';
import 'package:smartbazar/features/product_details/constant/product_detail_widget.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_profile_screen.dart';
import 'package:rxdart/rxdart.dart';
import 'package:smartbazar/features/b2b_screen/view/b2b_screen.dart';
import 'package:smartbazar/features/search_story/view/story_search_bar.dart';
import 'package:smartbazar/main.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/features/home/model/home_story_model.dart'
    as home_model;

import '../../events_screen/view/events_screen.dart';
import '../../grocessary_screen/view/grocary_screen.dart';
import '../../jobs_screen/view/jobs_screen.dart';
import '../../services_screen/service_screen.dart';
import '../../socio_screen/view/socio_screen.dart';
import '../../used_screen/view/used_screen.dart';

int selectedIndex = 0;
final ValueNotifier<bool> showSideBar = ValueNotifier(true);

// Define a StateProvider to manage the selected index
final _selectedIndexProvider = StateProvider<int>((ref) => 0);

class HomeScreen extends ConsumerStatefulWidget {
  final ScrollController? scrollController;

  const HomeScreen({super.key, this.scrollController});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen>
    with SingleTickerProviderStateMixin {
  HomeSearchResopnse? _storysearchresponse;
  List<Post> _storysearchresult = []; // ✅ Local List instead of StateProvider

  bool _isPopupVisible = false;
  int currentPageIndex = 0;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final TextEditingController _searchController = TextEditingController();
  final _debouncer = BehaviorSubject<String>();
  bool _showSearchProductModels = true;
  late TabController dynamictabController;
  // final ScrollController _scrollController = ScrollController();
  bool _isSectionsVisible = true;
  final double _lastScrollOffset = 1;
  Offset _initialDragPosition = Offset.zero; // Track initial drag position
  PageController _pageController = PageController(viewportFraction: 0.3);
// Default height for first tab
  Map<String, String>? dropdownValue;
  int? postypeid = 0;

  //innsersearch

  Future<void> shared() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    String? sessionData = pref.getString('session');

    if (sessionData == null || sessionData.isEmpty) {
      debugPrint("No session data found");
      return;
    }

    try {
      Map<String, dynamic> data = jsonDecode(sessionData);
      String? imageUrl = data["result"]["photo_url"];
      debugPrint("Image URL: $imageUrl");
    } catch (e) {
      debugPrint("Error decoding session data: $e");
    }
  }

  final List<Map<String, dynamic>> _items = [
    {
      'icon': 'assets/icon/openCartIcon.svg',
      'label': 'SocioShop',
      'screen': const SocioShopScreen()
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

  Future<void> _loadUserId() async {
    final prefs = await SharedPreferences.getInstance();
    print("reku ${prefs.getString('userId')}");
  }

  final TextEditingController _storysearchcontroller = TextEditingController();

  // List<Post> _storysearchresult = []; // ✅ Local List instead of StateProvider

  @override
  void initState() {
    _loadUserId(); // print('binod ${SmartClient.laravelsession}');
    shared();
    super.initState();
    dynamictabController = TabController(length: 3, vsync: this);
    // fetchStoryHome().then(
    //   (value) {
    //     print("lala");
    //   },
    // );
    // Default selected index to 3 (HomeScreen)
    // selectedIndex = 3;
    dynamictabController.addListener(() {
      setState(() {});
    });

    // Initialize the PageController with the selected page

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

    // Set up debounce for search functionality
    _searchController.addListener(() {
      _debouncer.add(_searchController.text);
    });

    _debouncer.debounceTime(const Duration(milliseconds: 100)).listen((query) {
      debugPrint("Search query: $query");
      ref.refresh(searchProvider(query));
      setState(() {
        _showSearchProductModels = query.isNotEmpty;
      });
    });

    // _scrollController.addListener(_handleScroll);
  }

  // void _handleScroll() {
  //   final scrollOffset = _scrollController.offset;

  //   if (scrollOffset > _lastScrollOffset && scrollOffset > 100) {
  //     setState(() {
  //       _isSectionsVisible = false;
  //     });
  //   } else if (scrollOffset < _lastScrollOffset && scrollOffset < 50) {
  //     setState(() {
  //       _isSectionsVisible = true;
  //     });
  //   }

  //   _lastScrollOffset = scrollOffset;
  // }

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

  final List<String> _images = ['assets/images/home.png'];
  final List<Map<String, dynamic>> _services = [
    {'label': 'SHOPZONE', 'id': 1},
    {'label': 'TRADEHUB', 'id': 2},
    {'label': 'SERVICES', 'id': 3},
    {'label': 'USED', 'id': 4},
    {'label': 'JOB', 'id': 5},
    {'label': 'Event', 'id': 6},
    {'label': 'Grocery', 'id': 7},
  ];
  final int _currentIndex = 0;

  @override
  void dispose() {
    dynamictabController.dispose();
    _debouncer.close();
    _searchController.dispose();
    super.dispose();
    // _scrollController.dispose();
    // super.dispose();s
  }

  int selectedIndexx = 0; // State variable for selected index
  bool isSliverAppBarVisible = true;

  Future<void> _searchStories(String query) async {
    if (query.isNotEmpty) {
      try {
        final stories = await ref.watch(searchstoryapiProvider(query).future);

        if (stories == null ||
            stories.data == null ||
            stories.data.home_story == null) {
          throw Exception("No data available");
        }

        setState(() {
          _storysearchresponse = stories;
          _storysearchresult = stories.data.home_story.story.posts ?? [];
        });
      } catch (e) {
        debugPrint("Error loading stories: $e");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // final dilevery = ref.watch(getDeliveryChargeProvider('eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5YTg3OGI0MS1mYzllLTQ3ODktYTgzNS0wYjNlYmUwNjA3NzgiLCJqdGkiOiJiNDA3ZGJiYzhiYjQ4ZTA2YjIyZmRjYTI0OTIyM2Q4NGM5NGIxNTNiNzEyM2Q1YzdlNzk2YWFlMTc2ODMzNmYxMTkyYTcyYTk5OTAxMmUxYyIsImlhdCI6MTc0MDY0OTY5MC44MDI5MDgsIm5iZiI6MTc0MDY0OTY5MC44MDI5MTEsImV4cCI6MTc3MjE4NTY5MC44MDExMSwic3ViIjoiMDI2ODgxZWMtN2I0ZC00ZDZiLTk2NGEtNTk2MjUyNjZiMDkzIiwic2NvcGVzIjpbXX0.I2aUMUWRE_FyuPeqE7CB-xV7BNE2xyx6Ny6-fo_vWf9uzDfWUpd80BUeN5wLHRBPBMIFIx9qf4yw1szVs-6lC4L4xMXlgbtPSG9rfI9JorOFJasgL6NvFx5ouZowxsFneTPFllw-G81dEOoQTwNZF60t7L2jVECsgy-suiAskWPBTXm9f7sbw9hURV1wDvEoJrEC7_9_kRrjG-0t6ukP2i-aP2AZW4CEL4Su0_Eqg6XzxbkDv_fcO25DYIQ5JzWwRawLIChf2iRjOQo0Wab0cCByD3lsvC2QnqcF4GMibx0QygP_vKSbcIkUSa1UOGIPhGg9RR4cMB7-6t6HtICRO9LrIa6q2Je90mrNesC8G4Nd5IUiayy_zMOmh6il6b7zlfqbL4NwhYi0zAwu81-GL9OVynHLcR2oSMluJq9KGC0sQWHcUpJbdGcAs-ySUNq8JBPZ6OSCDMTGfymyKi-l6oqXgVVWp7N3jE0GvsLs47i72Nl_yv74Z5g-D4y3y_Vnm2DwGDNhoAIqyLKAxh8i405T1Pk-M7NETvq0kZBZJhNQE9B8ab15iqGSqDgt0UH-jb1N3JjrQgfjLCgDD5iv0nb9io32g-2FgOfqmj5osYjuUxpeHNQzaT2qAp0HHGWwoJKE4JtnpNEB9h2B_t89hlUynz63CcIZXd4uocKmjAo'));

    final selectedIndex = ref.watch(_selectedIndexProvider);
    Future<EnquireResponse> getEnquire(WidgetRef ref, String id) async {
      try {
        return await ref.read(checkEnquireProvider(id).future);
      } catch (e) {
        print("Error fetching enquiry: $e");
        throw Exception("Failed to fetch enquiry data");
      }
    }

    _pageController = PageController(
      viewportFraction: 0.3,
      initialPage: selectedIndex,
    );
    // final areaa = ref.watch(getScratchAndWinResponseProvider);
    // final pselectedIndex = ref.watch(bottomNavIndexProvider);
    // AsyncLoading<VendorProductSearchResponse>() _vendorinnsersearch;

    List<String> categories =
        _services.map((e) => e['label'] as String).toList();
    final asyncHomeStoryContent = ref.watch(getHomeStoryProvider);

    // final adsList = ref.watch(fetchAdsProvider);
    // double _mediaheight = MediaQuery.of(context).size.height;
    // final AsyncValue<HomePosts> homePostsData = ref.watch(homePostsProvider);
    final sliders = ref.watch(fetchAdvertisementsProvider);
    var category = ref.watch(homeCategoryProvider);
    // ValueNotifier<int> selectedIndexNotifier = ValueNotifier<int>(0);
    final buyorwin = ref.watch(fetchBuyAndHotProvider);
    final getSponsored = ref.watch(fetchSponsoredProvider);
    final AsyncValue<HomePosts> homePostsData = ref.watch(homePostsProvider);

    Future<void> refresh() async {
      // Refreshing individual providers
      ref.refresh(getHomeStoryProvider);
      ref.refresh(fetchAdvertisementsProvider);
      ref.refresh(homeCategoryProvider);
      ref.refresh(fetchBuyAndHotProvider);
      ref.refresh(fetchSponsoredProvider);
      ref.refresh(homePostsProvider);

      // If you need to perform any additional tasks after refreshing, you can do so here
    }

    final SearchProductModels =
        ref.watch(searchProvider(_searchController.text));
    debugPrint('Search Results: ${SearchProductModels.asData?.value}');
    final asyncForYouStoryContent = ref.watch(getForYouStoryProvider);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawerScrimColor: const Color(0xff651c50),
      key: _key,
      backgroundColor: ColorConstant.whiteColor,
      // drawer: const CustomDrawer(),
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
              controller: widget.scrollController,
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
                                            .read(
                                                _selectedIndexProvider.notifier)
                                            .state = index;
                                      },
                                      child: AnimatedContainer(
                                        margin: EdgeInsets.only(left: 16.w),
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
                // SliverToBoxAdapter(
                //   child: Container(),
                // ),
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
                if (_isPopupVisible)
                  SliverToBoxAdapter(
                    child: Center(
                      child: StorySearchBar(
                        unchanged: (value) {
                          if (value.isEmpty) {
                            setState(() {
                              _storysearchresult = []; // ✅ Clear list if empty
                            });
                          }
                        },
                        searchcontroller: _storysearchcontroller,
                        onsubmitted: _searchStories,
                        onClose: () {
                          setState(() {
                            _isPopupVisible =
                                !_isPopupVisible; // Close the popup
                          });
                        },
                      ),
                    ),
                  ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 145.h,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    _isPopupVisible = !_isPopupVisible;
                                  });
                                },
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  alignment: Alignment.center,
                                  children: [
                                    // Outer Circle
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5.w),
                                      width: 95.r,
                                      height: 95.r,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 3.w,
                                          color: const Color(0xffEACACB),
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                    ),

                                    // Vendor Image
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        shape: BoxShape.circle,
                                      ),
                                      child: CircleAvatar(
                                        radius: 38.r,
                                        backgroundColor: const Color(0x7F7F7F73)
                                            .withOpacity(0.45),
                                        backgroundImage:
                                            NetworkImage(SmartClient.userPhoto),
                                      ),
                                    ),

                                    // Vendor Name - Adjusted Position
                                    Positioned(
                                      bottom: -25
                                          .h, // Adjust bottom value to create more space
                                      child: SizedBox(
                                        width: 100.w,
                                        child: Text(
                                          SmartClient.userName ?? 'search',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 11.sp,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),

                                    // Search Icon
                                    Positioned(
                                      bottom: -5.h,
                                      right: 0,
                                      left: 0,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                        padding: EdgeInsets.all(2.r),
                                        child: Icon(
                                          Icons.search,
                                          color: const Color(0xffAA0018),
                                          size: 24.r,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          _storysearchresult.isNotEmpty
                              ? ListView.builder(
                                  padding: EdgeInsets.only(left: 3.w),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: _storysearchresult.length,
                                  itemBuilder: (context, index) {
                                    final searchstory =
                                        _storysearchresult[index];
                                    // print('lamta ${_storysearchresult.l}');
                                    return FeedStoryAddWidget(
                                      index: index,
                                      vendorName: searchstory.vendorName ??
                                          "Unknown Vendor",
                                      vendorImage: searchstory.vendorImage ??
                                          "https://example.com/default-image.png",
                                      storyCount: searchstory.storyCount ?? 0,
                                      showGift: searchstory.hasSponsoredGifts ??
                                          false,
                                      feedStoryContent: _storysearchresponse!
                                          .data.home_story!.story!,
                                      userId: searchstory.vendorId ?? '',
                                    );
                                  },
                                )
                              : asyncForYouStoryContent.when(
                                  data: (feedStoryData) {
                                    final feedStoryContent =
                                        feedStoryData.data?.feedstory;
                                    final posts = feedStoryContent?.posts ?? [];

                                    return posts.isNotEmpty
                                        ? ListView.builder(
                                            padding: EdgeInsets.only(left: 3.w),
                                            shrinkWrap: true,
                                            scrollDirection: Axis.horizontal,
                                            itemCount: posts.length,
                                            itemBuilder: (context, index) {
                                              final story = posts[index];
                                              return FeedStoryAddWidget(
                                                index: index,
                                                vendorName: story.vendorName ??
                                                    "Unknown Vendor",
                                                vendorImage: story
                                                        .vendorImage ??
                                                    "https://example.com/default-image.png",
                                                storyCount:
                                                    story.storyCount ?? 0,
                                                showGift:
                                                    story.hasSponsoredGifts ??
                                                        false,
                                                feedStoryContent:
                                                    feedStoryContent!,
                                                userId: story.vendorId ?? '',
                                              );
                                            },
                                          )
                                        : const Center(
                                            child:
                                                Text("No stories available"));
                                  },
                                  loading: () => SizedBox(
                                    height: 40.h,
                                    child: ListView.builder(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 5,
                                      itemBuilder: (_, __) => Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
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
                                  error: (error, _) => SizedBox(
                                    height: 60.h,
                                    child: Center(
                                      child: Text(
                                        error
                                                .toString()
                                                .contains('Session has expired')
                                            ? 'Please log in again.'
                                            : 'Error: $error',
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
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 1.h),
                    child: Center(
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
                          buyorwin.when(
                            data: (data) {
                              return SizedBox(
                                height: 310.h,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: data.buynow.length,
                                  itemBuilder: (context, index) {
                                    Buynowmodel resp = data.buynow[index];

                                    return buyorwin_widget(
                                      vendorid: resp.vendor_id!,
                                      wow: resp.wow ?? '0',
                                      gift_qty: resp.gift_qty!,
                                      worth: resp.worth!,
                                      productname: resp.name!,
                                      vendorImage: resp.vendorImage,
                                      vendorname: resp.vendor_name,
                                      winners: resp.winners.toString(),
                                      proctimage: resp.image,
                                    );
                                  },
                                ),
                              );
                            },
                            error: (error, stackTrace) {
                              return Text("Please check your internet");
                            },
                            loading: () {
                              // Shimmer loading effect
                              return SizedBox(
                                height: 310.h,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount:
                                      5, // Adjust this number for the number of shimmer items
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.w),
                                      child: Shimmer.fromColors(
                                        baseColor: Colors.grey[300]!,
                                        highlightColor: Colors.grey[100]!,
                                        child: Container(
                                          width: 150.w,
                                          height: 150.h,
                                          color: Colors.white,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: 10.h,
                          ),

                          // Display Products for the selected category
                          category.when(
                            data: (data) {
                              // print(
                              //     "raju ${data.home_story?.story.posts?.length}");
                              double dynamicHeight;
                              // Define the products list corresponding to each category
                              List<List<CategoryProduct>> productsList = [
                                data.new_products, // SHOPall ZONE
                                data.b2b_products, // TRADEHUB
                                data.services, // SERVICES
                                data.used_products, // USED
                                data.jobs, // JOB
                                data.event, // EVENT
                                data.grocarry, // GROCERY
                              ];

                              // Ensure selectedIndex is valid and get products
                              List<CategoryProduct> products =
                                  productsList[selectedIndexx];

                              dynamicHeight = products.isEmpty ? 120.h : 450.h;

                              return SizedBox(
                                height: dynamicHeight,
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      height: 50.h,
                                      child: ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: categories.length,
                                        itemBuilder: (context, index) {
                                          bool isSelected =
                                              index == selectedIndexx;

                                          return GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                selectedIndexx =
                                                    index; // Update selected index
                                              });
                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              margin: const EdgeInsets.all(5),
                                              width: 100.w,
                                              decoration: BoxDecoration(
                                                color: isSelected
                                                    ? const Color(0xFF681b4e)
                                                    : const Color(0xffA5A5A5),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Text(
                                                categories[index],
                                                style: const TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    SizedBox(height: 5.h),
                                    products.isNotEmpty
                                        ? SizedBox(
                                            child: AnimatedContainer(
                                              padding: EdgeInsets.zero,
                                              margin: EdgeInsets.zero,
                                              duration: const Duration(
                                                  milliseconds: 400),
                                              // height: 300.h,
                                              width: double.infinity,
                                              child: SingleChildScrollView(
                                                padding: EdgeInsets.zero,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: Wrap(
                                                  spacing: 3.w,
                                                  runSpacing: 0.h,
                                                  children: List.generate(
                                                      products.length, (index) {
                                                    CategoryProduct prod =
                                                        products[index];
                                                    //yeaiho

                                                    return ProductDetailWidget(
                                                      onenquiredclicked: () {
                                                        // print(
                                                        //     'lanka ${prod.id}');

                                                        getEnquire(ref, prod.id)
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
                                                                        height: MediaQuery.of(context).size.height *
                                                                            0.8, // Use 80% of the screen height

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
                                                      onRefresh: () {
                                                        refresh();
                                                        // ref.refresh(
                                                        //     homeCategoryProvider);
                                                      },
                                                      savedid: prod.savedByLoggedUser ==
                                                                  null ||
                                                              prod.savedByLoggedUser!
                                                                  .isEmpty
                                                          ? []
                                                          : prod
                                                              .savedByLoggedUser,
                                                      lat: prod.userdetails
                                                              ?.latitude ??
                                                          '0.0',
                                                      long: prod.userdetails
                                                              ?.longitude ??
                                                          '0.0',
                                                      posttype:
                                                          prod.post_type_id,
                                                      productid: prod.id,
                                                      membershipid: prod
                                                          .userdetails
                                                          ?.membership_id,
                                                      tradeImage:
                                                          'assets/icon/loading.svg',
                                                      didcountpercentage: prod
                                                          .discount_percentage,
                                                      distance:
                                                          prod.shortestDistance,
                                                      issponsored: prod
                                                              .userdetails
                                                              ?.sponsored ??
                                                          false,
                                                      shortestDistance: prod
                                                          .userdetails
                                                          ?.shortestDistance,
                                                      wow: prod.wow,
                                                      comment: prod.commentCount
                                                          .toString(),
                                                      avg_rating: prod.avgRating
                                                          ?.toDouble(),
                                                      offer: prod.offers,
                                                      vendorid:
                                                          prod.userdetails?.id,
                                                      lefttile: categories[
                                                          selectedIndexx],
                                                      vendorname: prod
                                                              .userdetails
                                                              ?.name ??
                                                          '',
                                                      discounttedPrice:
                                                          prod.discountedPrice,
                                                      Vimage: prod
                                                          .userdetails?.photo,
                                                      price: prod.price,
                                                      title: prod.title,
                                                      productImage: prod.image,
                                                      membershipColor: prod
                                                              .userdetails
                                                              ?.memberColor ??
                                                          '',
                                                      similarproductCount: prod
                                                          .similarProductCount,
                                                      membershipTitle: prod
                                                              .userdetails
                                                              ?.membershipTitle ??
                                                          '',
                                                    );
                                                  }),
                                                ),
                                              ),
                                            ),
                                          )
                                        : Padding(
                                            padding: EdgeInsets.only(top: 20.h),
                                            child: nolistingfound(),
                                          ),
                                  ],
                                ),
                              );
                            },
                            error: (error, stackTrace) =>
                                Center(child: Text("Error: $error")),
                            loading: () {
                              // Shimmer Effect for Loading State
                              return SizedBox(
                                height: 200.h,
                                child: Shimmer.fromColors(
                                  baseColor: Colors.grey[300]!,
                                  highlightColor: Colors.grey[100]!,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount:
                                        6, // Show placeholder items while loading
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5.w),
                                        child: Container(
                                          width: 150
                                              .w, // Placeholder width for product item
                                          height: 250
                                              .h, // Placeholder height for product item
                                          color:
                                              Colors.grey, // Placeholder color
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          // Expanded(

                          // child: ProductDetailWidget(),),

                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: TabBar(
                              padding: EdgeInsets.zero,
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
                          buyorwin.when(
                            data: (data) {
                              double dynamicHeight;

                              if (dynamictabController.index == 0) {
                                dynamicHeight =
                                    data.insidearr[0].isEmpty ? 140.h : 470.h;
                              } else if (dynamictabController.index == 1) {
                                // Ensure data.doma[0] is valid and has length
                                dynamicHeight = (data.doma.isNotEmpty &&
                                        data.doma[0].isNotEmpty)
                                    ? 470.h
                                    : 140.h;
                              } else if (dynamictabController.index == 2)
                                dynamicHeight = (data.spotlight.isNotEmpty &&
                                        data.spot[0].isNotEmpty)
                                    ? 470.h
                                    : 140.h;
                              else
                                dynamicHeight = 470;
                              return SizedBox(
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  height: dynamicHeight, // Main dynamic height
                                  width: double.infinity,
                                  child: TabBarView(
                                    controller: dynamictabController,
                                    children: [
                                      // First Tab
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
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
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          data.insidearr[0].isEmpty
                                              ? Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 5.h),
                                                  child: Center(
                                                      child: nolistingfound()),
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
                                                          data.insidearr[0]
                                                              .length, (index) {
                                                        GlobalModel prod =
                                                            data.insidearr[0]
                                                                [index];

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
                                                                  print(
                                                                      'lapu ${value.data?.enquire == 0}');
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
                                                                    .savedByLoggedUser,
                                                            onRefresh: () {
                                                              refresh();
                                                            },
                                                            lat: prod.user[0]
                                                                    .latitude ??
                                                                '0.0',
                                                            long: prod.user[0]
                                                                    .longitude ??
                                                                '0.0',
                                                            productid: prod.id,
                                                            membershipid: prod
                                                                .user
                                                                .first
                                                                .membership_id,
                                                            posttype: prod
                                                                .post_type_id,
                                                            lefttile: prod
                                                                .posttypename,
                                                            didcountpercentage:
                                                                prod.discount_percentage,
                                                            shortestDistance: prod
                                                                .shortestDistance,
                                                            distance: prod
                                                                .user[0]
                                                                .shortestDistance,
                                                            avg_rating:
                                                                prod.avg_rating,
                                                            offer: prod.offers,
                                                            vendorid: prod.user
                                                                .first.user_id,
                                                            comment:
                                                                prod.commentnum,
                                                            wow: prod.wow,
                                                            issponsored: prod
                                                                .user[0]
                                                                .sponsored!,
                                                            vendorname: prod
                                                                .contactName,
                                                            discounttedPrice:
                                                                prod.discont,
                                                            Vimage: prod.user
                                                                .first.photo,
                                                            price: prod.price,
                                                            title: prod.title,
                                                            productImage:
                                                                prod.imageUrl,
                                                            similarproductCount:
                                                                prod.similarproductCount,
                                                            membershipColor: prod
                                                                .user
                                                                .first
                                                                .membership_color,
                                                            membershipTitle: prod
                                                                .user
                                                                .first
                                                                .membership_title,
                                                          ),
                                                        );
                                                      }),
                                                    ),
                                                  ),
                                                ),
                                        ],
                                      ),
                                      // Second Tab
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          if (data.domestic.isNotEmpty)
                                            SingleChildScrollView(
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
                                          SizedBox(
                                            height: 25.h,
                                          ),
                                          data.doma.isEmpty ||
                                                  data.doma[0].isEmpty
                                              ? Center(child: nolistingfound())
                                              : SizedBox(
                                                  child: SingleChildScrollView(
                                                    scrollDirection: Axis
                                                        .horizontal, // Horizontal scrolling
                                                    child: Wrap(
                                                      spacing: 3
                                                          .w, // Horizontal space between items
                                                      runSpacing: 0
                                                          .h, // Vertical space between rows
                                                      children: List.generate(
                                                          data.doma[0].length,
                                                          (index) {
                                                        GlobalModel prod =
                                                            data.doma[0][index];
                                                        print(
                                                            "laukatp ${prod.post_type_id} and ${prod.title}");

                                                        return ProductDetailWidget(
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
                                                                  .savedByLoggedUser,
                                                          onRefresh: () {
                                                            refresh();
                                                          },
                                                          lat: prod.user[0]
                                                                  .latitude ??
                                                              '0.0',
                                                          long: prod.user[0]
                                                                  .longitude ??
                                                              '0.0',
                                                          productid: prod.id,
                                                          membershipid: prod
                                                              .user
                                                              .first
                                                              .membership_id,
                                                          posttype:
                                                              prod.post_type_id,
                                                          lefttile:
                                                              prod.posttypename,
                                                          tradeImage:
                                                              domesticicon,
                                                          didcountpercentage: prod
                                                              .discount_percentage,
                                                          Vimage: prod
                                                              .user.first.photo,
                                                          shortestDistance: prod
                                                              .user[0]
                                                              .shortestDistance,
                                                          distance: prod
                                                              .shortestDistance,
                                                          avg_rating:
                                                              prod.avg_rating,
                                                          offer: prod.offers,
                                                          vendorid: prod.user
                                                              .first.user_id,
                                                          comment:
                                                              prod.commentnum,
                                                          wow: prod.wow,
                                                          issponsored: prod
                                                              .user[0]
                                                              .sponsored!,
                                                          vendorname:
                                                              prod.contactName,
                                                          discounttedPrice:
                                                              prod.discont,
                                                          price: prod.price,
                                                          title: prod.title,
                                                          productImage:
                                                              prod.imageUrl,
                                                          similarproductCount: prod
                                                              .similarproductCount,
                                                          membershipColor: prod
                                                              .user
                                                              .first
                                                              .membership_color,
                                                          membershipTitle: prod
                                                              .user
                                                              .first
                                                              .membership_title,
                                                        );
                                                      }),
                                                    ),
                                                  ),
                                                )
                                        ],
                                      ),
                                      //third tab
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          if (data.domestic.isNotEmpty)
                                            SingleChildScrollView(
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
                                          SizedBox(
                                            height: 25.h,
                                          ),
                                          if (data.spot[0].isNotEmpty)
                                            SingleChildScrollView(
                                              scrollDirection: Axis
                                                  .horizontal, // Horizontal scrolling
                                              child: Wrap(
                                                spacing: 3
                                                    .w, // Horizontal space between items
                                                runSpacing: 0
                                                    .h, // Vertical space between rows
                                                children: List.generate(
                                                    data.spot[0].length,
                                                    (index) {
                                                  GlobalModel prod =
                                                      data.spot[0][index];

                                                  return ProductDetailWidget(
                                                    onenquiredclicked: () {
                                                      print('lanka ${prod.id}');

                                                      getEnquire(ref, prod.id)
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
                                                        print('Error: $error');
                                                      });
                                                    },
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
                                                    lat:
                                                        prod.user[0].latitude ??
                                                            '0.0',
                                                    long: prod.user[0]
                                                            .longitude ??
                                                        '0.0',
                                                    productid: prod.id,
                                                    shortestDistance: prod
                                                        .user[0]
                                                        .shortestDistance,
                                                    membershipid: prod.user
                                                        .first.membership_id,
                                                    posttype: prod.post_type_id,
                                                    didcountpercentage: prod
                                                        .discount_percentage,
                                                    lefttile: prod.posttypename,
                                                    tradeImage: spotlighticon,
                                                    Vimage:
                                                        prod.user.first.photo,
                                                    distance:
                                                        prod.shortestDistance,
                                                    avg_rating: prod.avg_rating,
                                                    offer: prod.offers,
                                                    vendorid:
                                                        prod.user.first.user_id,
                                                    comment: prod.commentnum,
                                                    wow: prod.wow,
                                                    issponsored:
                                                        prod.user[0].sponsored!,
                                                    vendorname:
                                                        prod.contactName,
                                                    discounttedPrice:
                                                        prod.discont,
                                                    price: prod.price,
                                                    title: prod.title,
                                                    productImage: prod.imageUrl,
                                                    similarproductCount: prod
                                                        .similarproductCount,
                                                    membershipColor: prod.user
                                                        .first.membership_color,
                                                    membershipTitle: prod.user
                                                        .first.membership_title,
                                                  );
                                                }),
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
                              return Text("Please check your internet");
                            },
                            loading: () => SizedBox(
                              height: 350.h, // Adjust the height dynamically
                              child: Shimmer.fromColors(
                                baseColor: Colors.grey[300]!,
                                highlightColor: Colors.grey[100]!,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount:
                                      6, // Show placeholder items while loading
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 5.w),
                                      child: Container(
                                        width: 150
                                            .w, // Placeholder width for product item
                                        height: 250
                                            .h, // Placeholder height for product item
                                        color: Colors.grey, // Placeholder color
                                      ),
                                    );
                                  },
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
                                getSponsored.when(
                                  data: (data) {
                                    return SizedBox(
                                      height: 370
                                          .h, // Adjust as needed for dynamic height
                                      child: SingleChildScrollView(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis
                                            .horizontal, // Horizontal scroll direction
                                        child: Wrap(
                                          spacing:
                                              3, // No horizontal spacing between items
                                          runSpacing:
                                              0, // No vertical spacing between rows
                                          children: List.generate(data.length,
                                              (index) {
                                            SponsoredProduct prefs =
                                                data[index];
                                            return ProductDetailWidget(
                                              onenquiredclicked: () {
                                                print('lanka ${prefs.id}');
                                                getEnquire(ref, prefs.id)
                                                    .then((value) {
                                                  // Debugging: log the response data
                                                  print(
                                                      'Enquire value: ${value.data?.enquire}');

                                                  if (value.data?.enquire ==
                                                      0) {
                                                    print("salla");

                                                    // Show the bottom widget as a modal bottom sheet
                                                    showModalBottomSheet(
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
                                                            productidid:
                                                                prefs.id,
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  } else {
                                                    // This will handle cases when the condition is false
                                                    print(
                                                        "Condition not met for sending message");
                                                  }
                                                }).catchError((error) {
                                                  // Handle error gracefully
                                                  print('Error: $error');
                                                });
                                              },
                                              savedid: prefs.savedByLoggedUser ==
                                                          null ||
                                                      prefs.savedByLoggedUser!
                                                          .isEmpty
                                                  ? []
                                                  : prefs.savedByLoggedUser,
                                              onRefresh: () {
                                                refresh();
                                              },
                                              lat:
                                                  prefs.userdetails?.latitude ??
                                                      '0.0',
                                              long: prefs
                                                      .userdetails?.longitude ??
                                                  '0.0',
                                              productid: prefs.id,
                                              membershipid: prefs
                                                  .userdetails?.membership_id,
                                              posttype: prefs.post_type_id,
                                              didcountpercentage: prefs
                                                  .discount_percentage
                                                  ?.toInt(),
                                              shortestDistance: prefs
                                                  .userdetails
                                                  ?.shortestDistance,
                                              issponsored:
                                                  prefs.userdetails!.sponsored!,
                                              wow: prefs.wow,
                                              distance: prefs.shortestDistance,
                                              comment:
                                                  prefs.commentcount.toString(),
                                              avg_rating:
                                                  prefs.avg_rating?.toDouble(),
                                              discounttedPrice:
                                                  prefs.discounted_price,
                                              offer: prefs.offers,
                                              vendorid:
                                                  prefs.userdetails!.user_id,
                                              price: prefs.price,
                                              productImage: prefs.image,
                                              title: prefs.title,
                                              vendorname:
                                                  prefs.userdetails!.name,
                                              Vimage: prefs.userdetails!.photo,
                                              similarproductCount:
                                                  prefs.similarProductCount,
                                              membershipColor: prefs
                                                  .userdetails!
                                                  .membership_color,
                                              membershipTitle: prefs
                                                  .userdetails!
                                                  .membership_title,
                                            );
                                          }),
                                        ),
                                      ),
                                    );
                                  },
                                  error: (error, stackTrace) {
                                    return Text("Error: $error");
                                  },
                                  loading: () {
                                    // Shimmer loading effect
                                    return SizedBox(
                                      height: 340
                                          .h, // Adjust as needed for dynamic height
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis
                                            .horizontal, // Horizontal scroll direction
                                        child: Wrap(
                                          spacing:
                                              0, // No horizontal spacing between items
                                          runSpacing:
                                              0, // No vertical spacing between rows
                                          children: List.generate(5, (index) {
                                            // Adjust this number for the number of shimmer items
                                            return Shimmer.fromColors(
                                              baseColor: Colors.grey[300]!,
                                              highlightColor: Colors.grey[100]!,
                                              child: Container(
                                                width: 150.w,
                                                height: 150.h,
                                                color: Colors.white,
                                              ),
                                            );
                                          }),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Row(
                            children: [
                              Text(
                                "   All Products",
                                textAlign: TextAlign.left,
                                style: headerstyle.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: ColorConstant.blackColor),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          sliders.when(
                            data: (data) {
                              return SingleChildScrollView(
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis
                                    .vertical, // Scroll vertically if needed
                                child: Wrap(
                                  spacing:
                                      5.w, // Horizontal space between items
                                  runSpacing:
                                      15.h, // Vertical space between rows
                                  children: List.generate(
                                    data.allProducts.length,
                                    (index) {
                                      VProduct res = data.allProducts[index];

                                      return SizedBox(
                                        width: (MediaQuery.of(context)
                                                    .size
                                                    .width -
                                                30.w) /
                                            2, // Dynamically adjust to fit two items per row
                                        child: Card(
                                          clipBehavior: Clip.antiAlias,
                                          shadowColor: const Color(0xff3D215F)
                                              .withOpacity(0.5),
                                          elevation: 9,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 5.w),
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
                                            savedid:
                                                res.savedByLoggedUser == null ||
                                                        res.savedByLoggedUser!
                                                            .isEmpty
                                                    ? []
                                                    : res.savedByLoggedUser
                                                        ?.map(
                                                          (e) => SavedPost(
                                                              id: e.id,
                                                              userId: e.userId,
                                                              postId: e.postId,
                                                              createdAt:
                                                                  e.createdAt,
                                                              updatedAt:
                                                                  e.updatedAt),
                                                        )
                                                        .toList(),
                                            onRefresh: () {
                                              refresh();
                                            },
                                            productid: res.id,
                                            lat: res.user.latitude,
                                            long: res.user.longitude,
                                            membershipid:
                                                res.userDetail.membership_id,
                                            posttype: res.post_type_id,
                                            didcountpercentage:
                                                res.discount_percentage,
                                            id: int.tryParse(
                                                res.userDetail.user_id!),
                                            shortestDistance:
                                                res.userDetail.shortestDistance,
                                            issponsored:
                                                res.userDetail.sponsored ??
                                                    false,
                                            distance: res.user.shortestDistance,
                                            wow: res.wow.toString(),
                                            discounttedPrice:
                                                res.discountedPrice,
                                            comment:
                                                res.commentCount.toString(),
                                            avg_rating:
                                                res.avgRating?.toDouble() ??
                                                    0.0,
                                            offer: res.offers,
                                            productImage: res.image,
                                            Vimage: res.userDetail.photo,
                                            vendorname: res.userDetail.name,
                                            title: res.title,
                                            price: res.price,
                                            similarproductCount:
                                                res.similarProductCount,
                                            membershipColor:
                                                res.userDetail.membership_color,
                                            membershipTitle:
                                                res.userDetail.membership_title,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              );
                            },
                            error: (error, stackTrace) {
                              return Text('Error: $error');
                            },
                            loading: () {
                              // Shimmer loading effect
                              return SingleChildScrollView(
                                scrollDirection: Axis
                                    .vertical, // Scroll vertically if needed
                                child: Wrap(
                                  spacing:
                                      5.w, // Horizontal space between items
                                  runSpacing:
                                      15.h, // Vertical space between rows
                                  children: List.generate(5, (index) {
                                    // Adjust this number for the number of shimmer items
                                    return Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 5.w),
                                      child: Shimmer.fromColors(
                                        baseColor: Colors.grey[300]!,
                                        highlightColor: Colors.grey[100]!,
                                        child: Container(
                                          width: (MediaQuery.of(context)
                                                      .size
                                                      .width -
                                                  30.w) /
                                              2,
                                          height: 250
                                              .h, // Adjust the height as needed for shimmer items
                                          color: Colors.white,
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: 80.h,
                          ),
                        ],
                      ),
                    ),
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
                  borderRadius: BorderRadius.circular(12), // Rounded corners
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
        ),
      ),
    );
  }
}

ValueNotifier<bool> _showSideBar = ValueNotifier<bool>(true);

ValueNotifier<String> searchQueryNotifier = ValueNotifier<String>('');

class StickyHeaderDelegate extends SliverPersistentHeaderDelegate {
  final ValueNotifier<Map<String, String>?> dropdownValueNotifier;
  final List<String> filteredSuggestions;
  final double defaultHeight = 100.0;
  final double expandedHeight = 150.0;
  final TextEditingController? searchController;
  final bool? visible;
  int? postypeid = 0;
  bool? showbackbutton;

  final Function(String)? onchanged;

  StickyHeaderDelegate(
      {required this.filteredSuggestions,
      required this.dropdownValueNotifier,
      this.searchController,
      this.onchanged,
      this.visible,
      this.showbackbutton = false});

  @override
  double get minExtent => defaultHeight;

  @override
  double get maxExtent =>
      filteredSuggestions.isNotEmpty ? expandedHeight : defaultHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        borderRadius: !visible!
            ? BorderRadius.only(
                bottomLeft: Radius.circular(screenWidth * 0.1),
                bottomRight: Radius.circular(screenWidth * 0.1))
            : null,
        gradient: const LinearGradient(
          colors: [
            Color(0xff651c50),
            Color(0xff54225f),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
      alignment: Alignment.center,
      child: ValueListenableBuilder<Map<String, String>?>(
        valueListenable: dropdownValueNotifier,
        builder: (context, dropdownValue, child) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              showbackbutton!
                  ? InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios_rounded,
                          size: screenWidth * 0.05))
                  : Image.asset(
                      height: screenHeight * 0.05,
                      width: screenWidth * 0.1,
                      'assets/images/Smartbazaar-Icon-for-QR.png'),
              SizedBox(
                height: screenHeight * 0.06,
                child: Row(
                  children: [
                    Container(
                      height: screenHeight * 0.06,
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(screenWidth * 0.05),
                          bottomLeft: Radius.circular(screenWidth * 0.05),
                        ),
                      ),
                      child: DropdownButton<Map<String, String>>(
                        alignment: Alignment.center,
                        value: dropdownValueNotifier.value ??
                            headeritems[postypeid!],
                        onChanged: (value) {
                          dropdownValueNotifier.value = value;
                        },
                        items: headeritems.map((item) {
                          return DropdownMenuItem(
                            alignment: Alignment.center,
                            value: item,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  alignment: Alignment.center,
                                  item['icon']!,
                                  height: screenHeight * 0.02,
                                  color: Colors.white,
                                ),
                                SizedBox(width: screenWidth * 0.02),
                                Text(
                                  item['label']!,
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.03,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                        dropdownColor: const Color(0xff665B6B).withOpacity(0.5),
                        underline: const SizedBox(),
                        icon: const SizedBox(),
                      ),
                    ),
                    Container(
                      width: screenWidth * 0.4,
                      height: screenHeight * 0.06,
                      padding: EdgeInsets.all(screenWidth * 0.01),
                      decoration: const BoxDecoration(color: Colors.white),
                      child: TextField(
                        controller: searchController,
                        onChanged: onchanged,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            size: screenWidth * 0.05,
                            color: Color(0xffD9D9D9),
                          ),
                          hintText: "Search Everything",
                          hintStyle: TextStyle(
                            fontSize: screenWidth * 0.02,
                            color: const Color(0xffD9D9D9),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: screenHeight * 0.02,
                              horizontal: screenWidth * 0.02),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (searchController!.text.trim().isNotEmpty) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BusinessTabScreen(
                                  query: searchController!.text,
                                ),
                              ));
                        }
                      },
                      child: Container(
                        height: screenHeight * 0.06,
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.05,
                            vertical: screenHeight * 0.01),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(screenWidth * 0.05),
                            bottomRight: Radius.circular(screenWidth * 0.05),
                          ),
                        ),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: screenWidth * 0.05,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  bool shouldRebuild(covariant StickyHeaderDelegate oldDelegate) {
    return oldDelegate.filteredSuggestions != filteredSuggestions;
  }
}

ValueNotifier<Map<String, String>?> dropdownValueNotifier = ValueNotifier(null);

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
                    tag: 'homehero',
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
                            tag: 'homehero',
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
                                                const ScanScreen(),
                                          ),
                                        );
                                      },
                                      icon: Column(
                                        children: [
                                          Icon(Icons.person_add),
                                          Text(
                                            "Membership",
                                            style: headerstyle.copyWith(
                                              fontSize: 9,
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

Widget _buildFloatingButton(String photo) {
  return InkWell(
    onTap: () {
      showSideBar.value = true;
    },
    child: Hero(
      tag: 'profileHero',
      child: Container(
        margin: EdgeInsets.only(right: 3.w),
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey, width: 0.7),
        ),
        child: CircleAvatar(
          radius: 18,
          backgroundImage: NetworkImage(photo),
        ),
      ),
    ),
  );
}

Widget _buildSidebar() {
  return Container(
    width: 70.w,
    padding: EdgeInsets.symmetric(vertical: 5.h),
    decoration: BoxDecoration(
      color: const Color(0xffE2DAE5).withOpacity(0.9),
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10),
        bottomLeft: Radius.circular(10),
      ),
    ),
    child: Column(
      children: [
        SizedBox(height: 6.h),
        _sidebarButton(Icons.person, "Profile", () {}),
        _sidebarButton(Icons.qr_code, "Scan", () {}),
        _sidebarButton(Icons.shopping_cart, "Cart", () {}),
        _sidebarButton(Icons.add, "Sell", () {}),
        _sidebarButton(Icons.list, "Orders", () {}),
        _sidebarButton(Icons.close, "Close", () {
          showSideBar.value = false;
        }),
      ],
    ),
  );
}

Widget _sidebarButton(IconData icon, String text, VoidCallback onTap) {
  return IconButton(
    onPressed: onTap,
    icon: Column(
      children: [
        Icon(icon, size: 15, color: const Color(0xff918994)),
        Text(
          text,
          style: const TextStyle(fontSize: 9, fontWeight: FontWeight.w700),
        ),
      ],
    ),
  );
}
