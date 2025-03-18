// import 'dart:convert';

// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:carousel_slider/carousel_options.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
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
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/button_nav_bar/cusom_btn_bar/custom_bottom_nav.dart';
import 'package:smartbazar/features/favourite_list/api/favourite_list_api.dart';
import 'package:smartbazar/features/favourite_list/model/favourite_product_list.dart';
import 'package:smartbazar/features/feed_page/api/get_for_you_story_api.dart';
import 'package:smartbazar/features/feed_page/model/get_feed_stories_model.dart';
import 'package:smartbazar/features/feed_page/widget/feed_story_add_widget.dart';
import 'package:smartbazar/features/home/api/story_search_api.dart';
import 'package:smartbazar/features/home/model/home_search_model.dart';
import 'package:smartbazar/features/home/model/home_story_model.dart';
import 'package:smartbazar/features/message/view/chat_screen.dart';
import 'package:smartbazar/features/product_details/api/check_enquire_provider.dart';
import 'package:smartbazar/features/product_details/model/enquire_model.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
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
import 'package:smartbazar/features/update_listing/view/update_listing_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_profile_screen.dart';
import 'package:rxdart/rxdart.dart';
import 'package:smartbazar/features/b2b_screen/view/b2b_screen.dart';
import 'package:smartbazar/features/search_story/view/story_search_bar.dart';
import 'package:smartbazar/features/vendor/view/api/delete_listing_api.dart';
import 'package:smartbazar/features/vendor/view/api/my_listing_api.dart';
import 'package:smartbazar/features/vendor/view/api/post_offline_listing.dart';
import 'package:smartbazar/features/vendor/view/model/my_listing_model.dart';
import 'package:smartbazar/main.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/features/home/model/home_story_model.dart'
    as home_model;
import 'package:smartbazar/test.dart';

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

class MyListingScreen extends ConsumerStatefulWidget {
  final ScrollController? scrollController;

  const MyListingScreen({super.key, this.scrollController});

  @override
  ConsumerState<MyListingScreen> createState() => _MyListingScreenState();
}

class _MyListingScreenState extends ConsumerState<MyListingScreen>
    with SingleTickerProviderStateMixin {
  HomeSearchResopnse? _storysearchresponse;
  List<Post> _storysearchresult = []; // ✅ Local List instead of StateProvider

  bool isLoading = false;
  int pageNum = 1;

  List<FavouriteProduct> favouriteList = [];

  void _scrollListener() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      if (!isLoading) {
        // If we're not already loading, increment the page number and fetch more data
        setState(() {
          pageNum++;
        });
        fetchFavouriteData();
      }
    }
  }

  Future<void> fetchFavouriteData() async {
    setState(() {
      isLoading = true;
    });

    try {
      final result = await getFavouriteList(context, pagenum: pageNum);
      if (result.data?.savedProducts!= null) {
        setState(() {
          favouriteList.addAll(result.data!.savedProducts?? []);
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print('Error fetching data: $e');
    }
  }

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
      'screen': const MyListingScreen()
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
  ScrollController _scrollController = ScrollController();

  Future<void> _loadUserId() async {
    final prefs = await SharedPreferences.getInstance();
    print("reku ${prefs.getString('userId')}");
  }

  final TextEditingController _storysearchcontroller = TextEditingController();

  // List<Post> _storysearchresult = []; // ✅ Local List instead of StateProvider

  @override
  void initState() {
    fetchFavouriteData(); // Initial data fetch
    _scrollController.addListener(_scrollListener); // Add scroll listener
    _loadUserId(); // print('binod ${SmartClient.laravelsession}');
    shared();
    super.initState();
    dynamictabController = TabController(length: 3, vsync: this);
    // fetchStoryHome().then(
    //   (value) {
    //     print("lala");
    //   },
    // );
    // Default selected index to 3 (MyListingScreen)
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
    _scrollController
        .removeListener(_scrollListener); // Clean up scroll listener

    dynamictabController.dispose();
    _debouncer.close();
    _searchController.dispose();
    super.dispose();
    _scrollController.dispose();

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
        setState(() {});
        debugPrint("Error loading stories: $e");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final listingResponse = ref.watch(getMyListingResponseProvider);

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

    final AsyncValue<HomePosts> homePostsData = ref.watch(homePostsProvider);

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
            CustomScrollView(controller: _scrollController, slivers: [
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(4, (index) {
                                  return GestureDetector(
                                    onTap: () {
                                      ref
                                          .read(_selectedIndexProvider.notifier)
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
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5.w),
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
                                          .read(_selectedIndexProvider.notifier)
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
                SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("My Listing"),
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    listingResponse.when(
                      data: (data) {
                        final products = data.products?.data ?? [];
                        return products.isEmpty
                            ? const Center(child: Text('No listings available'))
                            : Column(
                                children: products
                                    .map((product) => Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.w, vertical: 7.h),
                                          child:
                                              MyListinDetails(product: product),
                                        ))
                                    .toList(),
                              );
                      },
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      error: (err, stack) => const Center(
                          child: Text('Please login and try again')),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 60.h,
                ),
              )
            ]),
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
                                  builder: (context) => MyListingScreen(),
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
                          color: Colors.white, size: screenWidth * 0.05))
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
                        if (SmartClient.token == "" ||
                            SmartClient.userPhoto.isEmpty) {
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
                                            "MembeSellrship",
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

class FavouriteListProductDetails extends ConsumerStatefulWidget {
  // final bool isSelected;
  // final ValueChanged<bool> onSelected;
  final FavouriteProduct item;

  const FavouriteListProductDetails({
    // required this.isSelected,
    // required this.onSelected,
    super.key,
    required this.item,
  });

  @override
  ConsumerState<FavouriteListProductDetails> createState() =>
      _FavouriteListProductDetailsState();
}

class _FavouriteListProductDetailsState
    extends ConsumerState<FavouriteListProductDetails> {
  bool _isChecked = false;
  final bool _isClicked = false;

  // @override
  // void initState() {
  //   super.initState();
  //   _isChecked = widget.isSelected;
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.w),
      child: Card(
        elevation: 6,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    ProductDetailScreen(productId: widget.item.id!),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 10.h),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: const Color(0xffFFFFFF),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.2),
                  spreadRadius: 10,
                  blurRadius: 10,
                  offset: const Offset(1, 0),
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Checkbox(
                    //   value: true,
                    //   onChanged: (value) {},
                    // ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _isChecked = !_isChecked;
                        });
                      },
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: _isChecked ? const Color(0xff362677) : null,
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: _isChecked
                                  ? const Color(0xff362677)
                                  : const Color(0xffD9D9D9),
                              width: 1.0),
                        ),
                        child: _isChecked
                            ? const Icon(
                                Icons.check,
                                size: 12.0,
                                color: Colors.white,
                              )
                            : null,
                      ),
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 15.h, left: 8.w, right: 8.w, bottom: 20.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: const Color(0xffF6F1F1),
                      ),
                      child: widget.item.image != null &&
                              widget.item.image!.isNotEmpty
                          ? Image.network(
                              widget.item.image!,
                              height: 70.h,
                            )
                          : const Icon(Icons.image_not_supported,
                              size: 70), // Placeholder icon
                    ),

                    SizedBox(
                      width: 20.w,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Text(
                          widget.item.title!,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Column(
                          children: [
                            if (widget.item.discountedPrice != null &&
                                widget.item.discountedPrice!.isNotEmpty) ...[
                              SizedBox(width: 10.w),
                              Text(
                                'Rs${widget.item.price ?? ''}',
                                style: TextStyle(
                                    color: const Color(0xffB5B5B5),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.lineThrough),
                              ),
                            ],
                            if (widget.item.discountedPrice != null &&
                                widget.item.discountedPrice!.isNotEmpty)
                              Text(
                                'Rs${widget.item.discountedPrice!}',
                                style: TextStyle(
                                    color: const Color(0xff36383C),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700),
                              )
                            else
                              Text(
                                'Rs${widget.item.price ?? ''}',
                                style: TextStyle(
                                    color: const Color(0xff36383C),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                          ],
                        )
                      ],
                    )),
                    //  const Spacer(),
                    SizedBox(
                      width: 10.w,
                    ),
                    GestureDetector(
                      onTap: () async {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            final screenWidth =
                                MediaQuery.of(context).size.width;

                            return StatefulBuilder(
                              builder: (BuildContext context,
                                  StateSetter setStateDialog) {
                                return AlertDialog(
                                    insetPadding: const EdgeInsets.all(12),
                                    clipBehavior: Clip.hardEdge,
                                    backgroundColor: Colors.white,
                                    title: SizedBox(
                                      width: screenWidth,
                                      child: Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.topRight,
                                            // right: 8,
                                            // top: 8,
                                            child: GestureDetector(
                                              onTap: () =>
                                                  Navigator.of(context).pop(),
                                              child: const Icon(
                                                Icons.close,
                                                color: Colors.black54,
                                                size: 24,
                                              ),
                                            ),
                                          ),
                                          const Icon(
                                            Icons.report,
                                            color: Color(0xFF781740),
                                            size: 100,
                                          ),
                                          Text(
                                            "Are you sure you want to perform this action?",
                                            style: TextStyle(
                                              color: const Color(0xff362677),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.sp,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          const Divider(),
                                        ],
                                      ),
                                    ),
                                    actions: [
                                      GeneralTextButton(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        marginH: 0,
                                        fgColor: Colors.white,
                                        bgColor: const Color(0xff362677),
                                        title: 'Yes',
                                        onPressed: () async {
                                          try {
                                            // Show a loading dialog while deleting
                                            showDialog(
                                              context: context,
                                              barrierDismissible: false,
                                              builder: (context) {
                                                return const Center(
                                                    child:
                                                        CircularProgressIndicator());
                                              },
                                            );

                                            // Call the delete function
                                            await ref.read(
                                                deleteFavouriteProductProvider(
                                                        widget.item.id!)
                                                    .future);

                                            // Close the loading dialog
                                            if (Navigator.of(context)
                                                .canPop()) {
                                              Navigator.of(context,
                                                      rootNavigator: true)
                                                  .pop();
                                            }

                                            // Show success message
                                            if (mounted) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                const SnackBar(
                                                  content: Text(
                                                      'Item deleted successfully'),
                                                  backgroundColor: Colors.grey,
                                                ),
                                              );
                                            }

                                            // Invalidate provider to refresh the list
                                            // ref.invalidate(
                                            //     getFavouriteListProvider);

                                            // Close the confirmation dialog
                                            if (Navigator.of(context)
                                                .canPop()) {
                                              Navigator.of(context,
                                                      rootNavigator: true)
                                                  .pop();
                                            }
                                          } catch (e) {
                                            // Close the loading dialog if an error occurs
                                            if (Navigator.of(context)
                                                .canPop()) {
                                              Navigator.of(context,
                                                      rootNavigator: true)
                                                  .pop();
                                            }

                                            // Show error message
                                            if (mounted) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                      'Failed to delete item: $e'),
                                                  backgroundColor: Colors.grey,
                                                ),
                                              );
                                            }
                                          }
                                        },
                                      ),
                                      SizedBox(height: 15.h),
                                      GeneralTextButton(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        marginH: 0,
                                        fgColor: Colors.white,
                                        bgColor: const Color(0xffADADAD),
                                        title: 'No',
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ]
                                    // :
                                    //  [
                                    //     GeneralTextButton(
                                    //       width: MediaQuery.of(context).size.width,
                                    //       marginH: 0,
                                    //       fgColor: Colors.white,
                                    //       bgColor: const Color(0xff362677),
                                    //       title: 'OK',
                                    //       onPressed: () {
                                    //         Navigator.of(context).pop();
                                    //       },
                                    //     ),
                                    //   ],
                                    );
                              },
                            );
                          },
                        );
                        // Show deleting message
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //   const SnackBar(
                        //       content: Text('Deleting item...'),
                        //       backgroundColor: Colors.grey),
                        // );
                      },
                      child: SvgPicture.asset(deleteIcon),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyListinDetails extends ConsumerWidget {
  final MyListingProduct product;

  const MyListinDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Parse the created_at string into a DateTime object
    final DateTime createdAt =
        DateTime.tryParse(product.createdAt ?? '') ?? DateTime.now();

    // Format the parsed DateTime object to only show the date
    final String formattedDate = formatDateTime(createdAt);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF000040).withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 7.w),
              const Text('Options'),
              const Spacer(),
              InkWell(
                onTap: () {
                  // print("niko ${product.postTypeId}");
                  Navigator.of(context, rootNavigator: true)
                      .push(MaterialPageRoute(
                          builder: (context) => UpdateListing(
                            ref: ref,
                                prod: product,
                              )));

                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (_) => UpdateListing(prod: product)),
                  // );
                },
                child: const Icon(
                  Icons.edit,
                  color: Color(0xffADADAD),
                ),
              ),
              SizedBox(width: 10.w),
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      bool isOperationSuccessful = false;
                      String productName = product.title!;
                      DateTime deletionDate =
                          DateTime.now().add(const Duration(days: 30));

                      return StatefulBuilder(
                        builder:
                            (BuildContext context, StateSetter setStateDialog) {
                          return AlertDialog(
                            title: Column(
                              children: [
                                isOperationSuccessful
                                    ? const SizedBox()
                                    : const Icon(
                                        Icons.report,
                                        color: Color(0xFF781740),
                                        size: 100,
                                      ),
                                Text(
                                  isOperationSuccessful
                                      ? "Listing Put Offline Successfully"
                                      : "Are you sure you want to perform this action?",
                                  style: TextStyle(
                                    color: const Color(0xff362677),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const Divider(),
                              ],
                            ),
                            content: isOperationSuccessful
                                ? Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'The listing "$productName" has been put offline successfully.',
                                        style: TextStyle(fontSize: 14.sp),
                                      ),
                                      SizedBox(height: 10.h),
                                      Text(
                                        'You can re-publish it by browsing the list of the offline listings.',
                                        style: TextStyle(fontSize: 14.sp),
                                      ),
                                      SizedBox(height: 10.h),
                                      Text(
                                        'If you do nothing, the listing will be permanently deleted on ${DateFormat('MMM d, yyyy').format(deletionDate)}.',
                                        style: TextStyle(fontSize: 14.sp),
                                      ),
                                    ],
                                  )
                                : null,
                            actions: !isOperationSuccessful
                                ? [
                                    GeneralTextButton(
                                      width: MediaQuery.of(context).size.width,
                                      marginH: 0,
                                      fgColor: Colors.white,
                                      bgColor: const Color(0xff362677),
                                      title: 'Yes',
                                      onPressed: () async {
                                        try {
                                          await ref.read(
                                              addToOfflineListingProvider(
                                                      product.id!)
                                                  .future);
                                          setStateDialog(() {
                                            isOperationSuccessful = true;
                                            // Refresh the listing data after adding to offline
                                            ref.refresh(
                                                getMyListingResponseProvider);
                                          });
                                        } catch (e) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                  'Failed to save product: $e'),
                                              backgroundColor: Colors.red,
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                    SizedBox(height: 15.h),
                                    GeneralTextButton(
                                      width: MediaQuery.of(context).size.width,
                                      marginH: 0,
                                      fgColor: Colors.white,
                                      bgColor: const Color(0xffADADAD),
                                      title: 'No',
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ]
                                : [
                                    GeneralTextButton(
                                      width: MediaQuery.of(context).size.width,
                                      marginH: 0,
                                      fgColor: Colors.white,
                                      bgColor: const Color(0xff362677),
                                      title: 'OK',
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                          );
                        },
                      );
                    },
                  );
                },
                icon: const Icon(
                  Icons.visibility_off,
                  color: Color(0xffADADAD),
                ),
              ),
              SizedBox(width: 10.w),
              GestureDetector(
                  onTap: () async {
                    // Show deleting message
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Deleting item...',
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.grey,
                      ),
                    );

                    try {
                      // Delete the listing
                      await ref.read(deleteListingProvider(product.id!).future);

                      // Refresh the listing provider to get updated data
                      ref.invalidate(getMyListingResponseProvider);

                      // Notify the user of successful deletion
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Item deleted successfully'),
                          backgroundColor: Colors.green,
                        ),
                      );
                    } catch (e) {
                      // Show error message if deletion fails
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Failed to delete item: $e'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(deleteIcon),
                  )),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color(0xffF6F1F1),
                ),
                child: Image.network(
                  product.image ?? ImageConstant.laptopImage,
                  height: 55.h,
                ),
              ),
              SizedBox(width: 20.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title ?? 'No title',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Icon(Icons.visibility,
                                size: 16, color: Color(0xff888888)),
                            Text(
                              '${product.visits ?? '0'} Views',
                              style: TextStyle(
                                  fontSize: 9.sp,
                                  color: const Color(0xff888888)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.lock_clock,
                              size: 16.sp,
                              color: const Color(0xff888888),
                            ),
                            Text(
                              formattedDate, // Display formatted date here
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 9.sp,
                                color: const Color(0xff888888),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.location_on,
                                size: 16, color: Color(0xff888888)),
                            Text(
                              product.address ?? 'Unknown Address',
                              style: TextStyle(
                                  fontSize: 9.sp,
                                  color: const Color(0xff888888)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'Rs ${product.price ?? 'N/A'}',
                      style: TextStyle(
                          color: const Color(0xff36383C),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Define the formatDateTime method to show only the date
  String formatDateTime(DateTime dateTime) {
    return DateFormat('MMM dd, yyyy').format(dateTime); // Only date
  }
}
