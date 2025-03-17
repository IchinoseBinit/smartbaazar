// import 'dart:convert';

// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:carousel_slider/carousel_options.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:gallery_saver_plus/gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:smartbazar/features/my_order/view/my_order_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_profile_screen.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/auth/view/login_screen.dart';
import 'package:smartbazar/features/auth/view/signup_screen.dart';
import 'package:smartbazar/features/feed_page/model/get_feed_stories_model.dart';
import 'package:smartbazar/features/home/model/home_search_model.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/scran_screen/scan_screen.dart';
import 'package:smartbazar/features/brand_bazar/brand_bazar_screen.dart';
import 'package:smartbazar/features/bussiness_tab_screen/view/business_tab_screen.dart';
import 'package:smartbazar/features/create_listing/view/create_new_listing_screen.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:rxdart/rxdart.dart';
import 'package:smartbazar/features/b2b_screen/view/b2b_screen.dart';
import 'package:smartbazar/features/vendor_details/api/get_subscription_api.dart';
import 'package:smartbazar/features/vendor_details/model/get_subscription_model.dart';

import '../../events_screen/view/events_screen.dart';
import '../../grocessary_screen/view/grocary_screen.dart';
import '../../jobs_screen/view/jobs_screen.dart';
import '../../services_screen/service_screen.dart';
import '../../socio_screen/view/socio_screen.dart';
import '../../used_screen/view/used_screen.dart';

//int selectedIndex = 0;
final ValueNotifier<bool> showSideBar = ValueNotifier(true);

// Define a StateProvider to manage the selected index
final _selectedIndexProvider = StateProvider<int>((ref) => 0);

class MySubscriptionScreen extends ConsumerStatefulWidget {
  final ScrollController? scrollController;

  const MySubscriptionScreen({super.key, this.scrollController});

  @override
  ConsumerState<MySubscriptionScreen> createState() =>
      _MySubscriptionScreenState();
}

class _MySubscriptionScreenState extends ConsumerState<MySubscriptionScreen>
    with SingleTickerProviderStateMixin {
  // HomeSearchResopnse? _storysearchresponse;
  // List<Post> _storysearchresult = []; // ✅ Local List instead of StateProvider

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
  List<SubscriptionData> _subscriptions = []; // Store subscriptions
  final ScrollController _vendorScrollController = ScrollController();
  final Map<String, GlobalKey> _captureKeys = {};

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
      'screen': const MySubscriptionScreen()
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
  Future<bool> _requestPermission() async {
    if (Platform.isAndroid) {
      if (await Permission.storage.request().isGranted) {
        return true;
      } else {
        return await Permission.manageExternalStorage.request().isGranted;
      }
    }
    return false;
  }

  Future<void> _captureAndSave(GlobalKey repaintKey) async {
    if (await _requestPermission()) {
      await Future.delayed(const Duration(milliseconds: 500));

      try {
        RenderRepaintBoundary boundary = repaintKey.currentContext!
            .findRenderObject() as RenderRepaintBoundary;

        ui.Image image = await boundary.toImage();
        ByteData? byteData =
            await image.toByteData(format: ui.ImageByteFormat.png);
        Uint8List pngBytes = byteData!.buffer.asUint8List();

        final directory =
            Directory('/storage/emulated/0/Pictures/MyAppScreenshots');
        if (!directory.existsSync()) {
          directory.createSync(recursive: true);
        }

        final filePath =
            '${directory.path}/screenshot_${DateTime.now().millisecondsSinceEpoch}.png';
        File file = File(filePath);
        await file.writeAsBytes(pngBytes);

        await GallerySaver.saveImage(filePath);

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Image Saved to Gallery')),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to Save Image: $e')),
        );
      }
    }
  }

  bool _isLoading = false; // To track if new data is being loaded

  Future<void> _loadUserId() async {}

  int _pageVal = 1;

  final TextEditingController _storysearchcontroller = TextEditingController();

  // List<Post> _storysearchresult = []; // ✅ Local List instead of StateProvider

  @override
  void initState() {
    _vendorScrollController.addListener(_scrollListener);
    _loadSubscriptions();
    _loadSubscriptions();
    _loadUserId(); // print('binod ${SmartClient.laravelsession}');
    shared();
    super.initState();
    dynamictabController = TabController(length: 3, vsync: this);
    // fetchStoryHome().then(
    //   (value) {
    //     print("lala");
    //   },
    // );
    // Default selected index to 3 (MySubscriptionScreen)
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

  void _scrollListener() {
    if (_vendorScrollController.position.pixels ==
            _vendorScrollController.position.maxScrollExtent &&
        !_isLoading) {
      _loadSubscriptions();
    }
  }

  Future<void> _loadSubscriptions() async {
    if (_isLoading) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final result =
          await ref.read(getSubscriptionProvider(pageval: _pageVal).future);
      if (result.subscriptions?.data != null) {
        setState(() {
          _subscriptions.addAll(result.subscriptions!.data!);
          _pageVal++; // Increment page number **only after successful fetch**
        });
      }
    } catch (e) {
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
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

  @override
  Widget build(BuildContext context) {
    final subscriptionAsyncValue =
        ref.watch(getSubscriptionProvider(pageval: 1));

    // final dilevery = ref.watch(getDeliveryChargeProvider('eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5YTg3OGI0MS1mYzllLTQ3ODktYTgzNS0wYjNlYmUwNjA3NzgiLCJqdGkiOiJiNDA3ZGJiYzhiYjQ4ZTA2YjIyZmRjYTI0OTIyM2Q4NGM5NGIxNTNiNzEyM2Q1YzdlNzk2YWFlMTc2ODMzNmYxMTkyYTcyYTk5OTAxMmUxYyIsImlhdCI6MTc0MDY0OTY5MC44MDI5MDgsIm5iZiI6MTc0MDY0OTY5MC44MDI5MTEsImV4cCI6MTc3MjE4NTY5MC44MDExMSwic3ViIjoiMDI2ODgxZWMtN2I0ZC00ZDZiLTk2NGEtNTk2MjUyNjZiMDkzIiwic2NvcGVzIjpbXX0.I2aUMUWRE_FyuPeqE7CB-xV7BNE2xyx6Ny6-fo_vWf9uzDfWUpd80BUeN5wLHRBPBMIFIx9qf4yw1szVs-6lC4L4xMXlgbtPSG9rfI9JorOFJasgL6NvFx5ouZowxsFneTPFllw-G81dEOoQTwNZF60t7L2jVECsgy-suiAskWPBTXm9f7sbw9hURV1wDvEoJrEC7_9_kRrjG-0t6ukP2i-aP2AZW4CEL4Su0_Eqg6XzxbkDv_fcO25DYIQ5JzWwRawLIChf2iRjOQo0Wab0cCByD3lsvC2QnqcF4GMibx0QygP_vKSbcIkUSa1UOGIPhGg9RR4cMB7-6t6HtICRO9LrIa6q2Je90mrNesC8G4Nd5IUiayy_zMOmh6il6b7zlfqbL4NwhYi0zAwu81-GL9OVynHLcR2oSMluJq9KGC0sQWHcUpJbdGcAs-ySUNq8JBPZ6OSCDMTGfymyKi-l6oqXgVVWp7N3jE0GvsLs47i72Nl_yv74Z5g-D4y3y_Vnm2DwGDNhoAIqyLKAxh8i405T1Pk-M7NETvq0kZBZJhNQE9B8ab15iqGSqDgt0UH-jb1N3JjrQgfjLCgDD5iv0nb9io32g-2FgOfqmj5osYjuUxpeHNQzaT2qAp0HHGWwoJKE4JtnpNEB9h2B_t89hlUynz63CcIZXd4uocKmjAo'));

    final selectedIndex = ref.watch(_selectedIndexProvider);

    _pageController = PageController(
      viewportFraction: 0.3,
      initialPage: selectedIndex,
    );
    // final areaa = ref.watch(getScratchAndWinResponseProvider);
    // final pselectedIndex = ref.watch(bottomNavIndexProvider);
    // AsyncLoading<VendorProductSearchResponse>() _vendorinnsersearch;

    // final adsList = ref.watch(fetchAdsProvider);
    // double _mediaheight = MediaQuery.of(context).size.height;
    // final AsyncValue<HomePosts> homePostsData = ref.watch(homePostsProvider);

    final SearchProductModels =
        ref.watch(searchProvider(_searchController.text));
    debugPrint('Search Results: ${SearchProductModels.asData?.value}');

    return WillPopScope(
      onWillPop: () async {
        bool exitApp = await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Exit App?"),
            content: Text("Do you really want to exit?"),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text("No"),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: Text("Yes"),
              ),
            ],
          ),
        );
        return exitApp ?? false;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        drawerScrimColor: const Color(0xff651c50),
        key: _key,
        backgroundColor: ColorConstant.whiteColor,
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
                  }
                } else {
                  if (!isSliverAppBarVisible) {
                    setState(() {
                      _isSectionsVisible = true;
                      isSliverAppBarVisible = true;
                    });
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
                          showbackbutton: true,
                            visible: isSliverAppBarVisible,
                            searchController: _searchController,
                            onchanged: (value) {},
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: List.generate(4, (index) {
                                        return GestureDetector(
                                          onTap: () {
                                            ref
                                                .read(_selectedIndexProvider
                                                    .notifier)
                                                .state = index;
                                            _pageController.animateToPage(
                                              index,
                                              duration: const Duration(
                                                  milliseconds: 50),
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
                                            .read(
                                                _selectedIndexProvider.notifier)
                                            .state = value;
                                      },
                                      itemBuilder: (context, index) {
                                        Map<String, dynamic> data =
                                            _items[index];

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
                                            margin: EdgeInsets.only(left: 16.w),
                                            padding: EdgeInsets.zero,
                                            duration: const Duration(
                                                milliseconds: 300),
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
                                                      alignment:
                                                          Alignment.center,
                                                      fit: BoxFit.contain,
                                                      theme: const SvgTheme(
                                                          currentColor: Color(
                                                              0xffdd9d9d9)),
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
                                                      fontWeight:
                                                          FontWeight.w700,
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
                                  Image.asset(
                                      height: 60.h,
                                      width: double.infinity,
                                      color: Colors.white,
                                      'assets/images/circle.png')
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
                                  color: const Color(0xff651c50),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: SingleChildScrollView(
                        controller: _vendorScrollController,
                        child: Column(
                          children: [
                            if (_subscriptions.isEmpty &&
                                !_isLoading) // ✅ Show message when empty
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Center(
                                  child: Text(
                                    "No Data Available",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey),
                                  ),
                                ),
                              )
                            else
                              ..._subscriptions.map(
                                (e) => Column(
                                  children: [
                                    RepaintBoundary(
                                      key: _captureKeys.putIfAbsent(
                                          e.vendor_id!, () => GlobalKey()),
                                      child: Container(
                                        color: Colors.white,
                                        child: BigContainer(
                                          membershipid: int.tryParse(e
                                                      .vendor_card
                                                      ?.membership_id ??
                                                  '1') ??
                                              1,
                                          storycount: e.vendor_card?.storycount
                                                  .toString() ??
                                              '0',
                                          lat: double.tryParse(
                                                  e.vendor_card?.latitude ??
                                                      '0') ??
                                              0.0,
                                          long: double.tryParse(
                                                  e.vendor_card?.longitude ??
                                                      '0.0') ??
                                              0.0,
                                          vendorid: e.vendor_id ?? '9',
                                          title: e.vendor_card?.name ?? '',
                                          logo: e.vendor_card?.photo ??
                                              'https://fastly.picsum.photos/id/98/536/354.jpg?hmac=bXkGljIuCAlgNitm7wIO-UM-3MhJpJ9rs4I1dSaT5KI',
                                          contact:
                                              e.vendor_card?.phone ?? '977+',
                                          storyCount: e.vendor_card?.storycount
                                                  .toString() ??
                                              '0',
                                          membershipTitle:
                                              e.vendor_card?.membership_title ??
                                                  'N/A',
                                          total_connections: e
                                                  .vendor_card?.connection
                                                  .toString() ??
                                              '0',
                                          total_prize_worth: e
                                                  .vendor_card?.prize_worth
                                                  .toString() ??
                                              '0',
                                          location:
                                              e.vendor_card?.nearestbranch ??
                                                  'kathmandu',
                                          Cnumber:
                                              e.vendor_card?.phone ?? '9744+',
                                          issubbed:
                                              e.vendor_card?.subscribed == 1
                                                  ? true
                                                  : false,
                                          memebertitle:
                                              e.vendor_card?.membership_title ??
                                                  'Title',
                                          onsubscribed: () {
                                            ref.invalidate(
                                                getSubscriptionProvider(
                                                    pageval: _pageVal));
                                          },
                                          ondoenload: () => _captureAndSave(
                                              _captureKeys[e.vendor_id]!),
                                          onconnectclicked: () {
                                            ref.invalidate(
                                                getSubscriptionProvider(
                                                    pageval: _pageVal));
                                          },
                                        ),
                                      ),
                                    ),
                                    Divider(
                                        height: 3.h,
                                        color: ColorConstant.grayColor),
                                  ],
                                ),
                              ),
                            if (_isLoading) // Show loading indicator when data is being fetched
                              const Padding(
                                padding: EdgeInsets.all(16.0),
                                child: CircularProgressIndicator(),
                              ),
                          ],
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: subscriptionAsyncValue.when(
                        data: (data) {
                          // return Column(
                          //   //   children: [],
                          //   children: data.subscriptions!
                          //       .map((e) => Column(
                          //         spacing: 2,
                          //             mainAxisAlignment: MainAxisAlignment.start,
                          //             crossAxisAlignment:
                          //                 CrossAxisAlignment.center,
                          //             children: [
                          //               BigContainer(
                          //                 storycount:
                          //                     e.vendor?.storyCount.toString() ??
                          //                         '0',

                          //                 lat: double.tryParse(
                          //                         e.vendor?.latitude ?? '0') ??
                          //                     0.0,
                          //                 long: double.tryParse(
                          //                         e.vendor?.longitude ?? '0.0') ??
                          //                     0.0,
                          //                 id: e.id ?? '9',
                          //                 title: e.vendor?.name ?? '',
                          //                 logo: e.vendor?.photo ??
                          //                     'https://fastly.picsum.photos/id/98/536/354.jpg?hmac=bXkGljIuCAlgNitm7wIO-UM-3MhJpJ9rs4I1dSaT5KI',
                          //                 contact: e.vendor?.phone ?? '977+',
                          //                 storyCount:
                          //                     e.vendor?.storyCount.toString() ??
                          //                         '0',
                          //                 membershipTitle:
                          //                     e.vendor?.membershipTitle ?? 'N/A',
                          //                 // storycount: 'storycount',
                          //                 total_connections:
                          //                     e.vendor?.connection.toString() ??
                          //                         '0',
                          //                 total_prize_worth:
                          //                     e.vendor?.prizeWorth.toString() ??
                          //                         '0',
                          //                 location: e.vendor?.nearestbranch ??
                          //                     'kathmandu',
                          //                 Cnumber: e.vendor?.phone ?? '9744+',
                          //                 issubbed: true,
                          //                 memebertitle: '',
                          //                 onsubscribed: () {},
                          //                 ondoenload: () {},
                          //                 onconnectclicked: () {},
                          //               ),
                          //               Divider(

                          //                 height: 3.h,
                          //                 color: ColorConstant.grayColor,
                          //               )
                          //             ],
                          //           )) // Replace with actual data
                          //       .toList(),
                          // );
                        },
                        error: (err, stackTrace) =>
                            Center(child: Text("Error: $err")),
                        loading: () =>
                            Center(child: CircularProgressIndicator()),
                      ),
                    ),
                    SliverToBoxAdapter(
                        child: SizedBox(
                      height: 55.h,
                    ))
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
                      borderRadius:
                          BorderRadius.circular(12), // Rounded corners
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
            )),
      ),
    );
  }
}

ValueNotifier<bool> _showSideBar = ValueNotifier<bool>(true);

ValueNotifier<String> searchQueryNotifier = ValueNotifier<String>('');

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
                    tag: 'subhero',
                    child: TweenAnimationBuilder<Color?>(
                      tween: ColorTween(
                        begin: Colors.blue.withOpacity(0.6),
                        end: Colors.purple.withOpacity(0.6),
                      ),
                      duration: const Duration(seconds: 2),
                      builder: (context, color, child) {
                        if (SmartClient.token == "" &&
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
                            tag: 'subhero',
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
