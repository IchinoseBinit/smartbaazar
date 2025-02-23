import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rxdart/rxdart.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smartbazar/common/controller/generic_state.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/b2b_screen/view/b2b_screen.dart';
import 'package:smartbazar/features/brand_bazar/brand_bazar_screen.dart';
import 'package:smartbazar/features/bussiness_tab_screen/view/business_tab_screen.dart';
import 'package:smartbazar/features/create_listing/view/create_new_listing_screen.dart';
import 'package:smartbazar/features/events_screen/view/events_screen.dart';
import 'package:smartbazar/features/grocessary_screen/view/grocary_screen.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/home/model/search_product_model.dart';
import 'package:smartbazar/features/home/view/header.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/jobs_screen/view/jobs_screen.dart';
import 'package:smartbazar/features/message/view/chat_screen.dart';
import 'package:smartbazar/features/product_details/constant/all_product_detail_widget.dart';
import 'package:smartbazar/features/product_details/constant/product_detail_widget.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/report_complain/view/report_complain_screen.dart';
import 'package:smartbazar/features/scratch_win/screen/scratch_card.dart';
import 'package:smartbazar/features/services_screen/service_screen.dart';
import 'package:smartbazar/features/socio_screen/view/socio_screen.dart';
import 'package:smartbazar/features/used_screen/view/used_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/api/get_vendor_by_brand_api.dart';
import 'package:smartbazar/features/vendor/vendor_profile/api/get_vendor_posts_api.dart';
import 'package:smartbazar/features/vendor/vendor_profile/api/vendor_all_products_api.dart';
import 'package:smartbazar/features/vendor/vendor_profile/api/vendor_card_api.dart';
import 'package:smartbazar/features/vendor/vendor_profile/api/vendor_product_search_api.dart';
import 'package:smartbazar/features/vendor/vendor_profile/api/vendor_profile_api.dart';
import 'package:smartbazar/features/vendor/vendor_profile/api/vendorfollow_unfollow_api.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_name.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_search_model.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/venodr_search_model.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/postcard.dart';
import 'package:smartbazar/features/vendor/view/my_subscribe_and_win_page.dart';
import 'package:smartbazar/features/vendor_details/view/my_subscription_screen.dart';
import 'package:smartbazar/main.dart';
import 'package:smartbazar/utils/custom_toast.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:screenshot/screenshot.dart';
import 'package:permission_handler/permission_handler.dart';

import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;


final _selectedIndexProvider = StateProvider<int>((ref) => 0);
bool isSliverAppBarVisible = true; // Track the visibility of SliverAppBar
  final GlobalKey _widgetKey = GlobalKey(); // Key to reference the widget

class VendorHomeScreen extends ConsumerStatefulWidget {
  final int vid;
  final String vendorName;
  

  const VendorHomeScreen(
      {super.key, required this.vid, required this.vendorName});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _VendorHomeScreenState();
}

class _VendorHomeScreenState extends ConsumerState<VendorHomeScreen>
    with TickerProviderStateMixin {
        BigContainer? _card;

  bool? showsearch;
  final ScreenshotController _screenshotController = ScreenshotController();
  Future<bool> _requestPermission() async {
    if (await Permission.storage.request().isGranted) {
      return true;
    }

    if (await Permission.manageExternalStorage.request().isGranted) {
      return true;
    }

    if (await Permission.storage.isPermanentlyDenied) {
      openAppSettings();
      return false;
    }

    return false;
  }
    String? _savedImagePath;


 Future<void> _captureAndSendImage() async {
    try {
      await Future.delayed(
          const Duration(seconds: 1)); // Ensure rendering completion

      if (_widgetKey.currentContext == null) {
        print('Vendor Card Widget is not yet rendered.');
        return;
      }

      RenderRepaintBoundary? boundary = _widgetKey.currentContext!
          .findRenderObject() as RenderRepaintBoundary?;

      if (boundary == null) {
        print("Render boundary not found!");
        return;
      }

      ui.Image image = await boundary.toImage(pixelRatio: 3.0);
      ByteData? byteData =
          await image.toByteData(format: ui.ImageByteFormat.png);
      Uint8List pngBytes = byteData!.buffer.asUint8List();

      // Get the temporary directory
      final directory = await getTemporaryDirectory();
      final filePath = '${directory.path}/vendor_card.png';
      final file = File(filePath);

      // Save the image file
      await file.writeAsBytes(pngBytes);

      // Update state to send in chat
      setState(() {
        _savedImagePath = filePath;
      });

      ref.read(selectedImageProvider.notifier).state = XFile(filePath);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Card selected !')),
      );
    } catch (e) {
      print('Error capturing image: $e');
    }
  }
  Uint8List? _savedImage;
  
  Future<void> _captureAndSave() async {
    if (await _requestPermission()) {
      await Future.delayed(
          const Duration(milliseconds: 500)); // Ensure widget renders

      final Uint8List? image = await _screenshotController.capture(
        delay: const Duration(milliseconds: 500),
      );

      if (image != null) {
        try {
          // Save the file in the device's Pictures directory
          final directory =
              Directory('/storage/emulated/0/Pictures/MyAppScreenshots');
          if (!directory.existsSync()) {
            directory.createSync(recursive: true);
          }

          final filePath =
              '${directory.path}/screenshot_${DateTime.now().millisecondsSinceEpoch}.jpg';
          File file = File(filePath);
          await file.writeAsBytes(image);

          // Make sure the image appears in the gallery
          await _refreshGallery(filePath);

          setState(() {
            _savedImage = image;
          });

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
  }

// This function refreshes the gallery so the image appears
  Future<void> _refreshGallery(String filePath) async {
    final channel = const MethodChannel('gallery_scan');
    try {
      await channel.invokeMethod('scanFile', {"path": filePath});
    } catch (e) {
      debugPrint('Error refreshing gallery: $e');
    }
  }

  int? _categorieslength;
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
  final List<String> categories = [
    "PRODUCTS",
    "Used",
    "Services",
    "Events",
    "B2B",
    "JOBS",
    "Grocery"
  ];
  Map<String, String>? _followrespo;
  List<VendorSearchModel>? vendorsearchrespnse;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _vendorsearchController = TextEditingController();
  List<GetOnlyData>? searchResult;
  final _debouncer = BehaviorSubject<String>();
  bool _showSearchProductModels = false;
  final bool _vendorsearchResullts = false;
  late TabController _tabController;
  int _postType = 0; // Default to 'Home' tab with postType 0
  String? _vendorimage;
  PageController _pageController = PageController(viewportFraction: 0.3);
Future<void> captureAndShare() async {
  try {
    RenderRepaintBoundary? boundary =
        _widgetKey.currentContext?.findRenderObject() as RenderRepaintBoundary?;
    if (boundary == null) return;

    ui.Image image = await boundary.toImage(pixelRatio: 3.0);
    ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    Uint8List pngBytes = byteData!.buffer.asUint8List();

    // Save to temporary directory
    final tempDir = await getTemporaryDirectory();
    final file = File('${tempDir.path}/shared_image.png');
    await file.writeAsBytes(pngBytes);

    // Share the image
await Share.shareXFiles([XFile(file.path)], text: 'Check this out!');
  } catch (e) {
    debugPrint('Error capturing image: $e');
  }
}
  // Future<void> gets() async {
  //   final a = followvendor("9").then(
  //     (value) {
  //       print("raju ${value['msg']}");
  //     },
  //   );
  // }

  int? myselectedindex; // Track selected index
  double? dynamicheight;
  Map<String, String>? dropdownValue;
  int? postypeid = 0;

  Offset _initialDragPosition = Offset.zero; // Track initial drag position
  bool _isSectionsVisible = true;

  int? tabsize;
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
  void initState() {
    showsearch = true;
    _categorieslength = categories.length;
    // gets();
    super.initState();
    myselectedindex = 0;
    dynamicheight = 410.0.h;
    tabsize = 80;
    _pageController = PageController(
      viewportFraction: 0.3,
      initialPage: selectedIndex,
    );

    _tabController = TabController(length: 6, vsync: this);

    // Listen for tab changes
    _tabController.addListener(() {
      setState(() {
        tabsize = _tabController.index == 1 ? 370 : 80;
        alldata = [];
        _postType = _tabController
            .index; // Update the postType based on the selected tab
      });
    });

    // _vendorsearchController.addListener(() {
    //   _debouncer.add(_vendorsearchController.text);
    // });
    void onSearchFocusChanged(bool hasFocus) {
      setState(() {
        _showSearchProductModels = hasFocus;
      });
    }

    _debouncer.debounceTime(const Duration(milliseconds: 300)).listen((query) {
      debugPrint("Search query: $query");
      ref.refresh(searchProvider(query));
      setState(() {
        _showSearchProductModels = query.isNotEmpty;
      });
    });

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
  }

  void _onSearchFocusChanged(bool hasFocus) {
    setState(() {
      _showSearchProductModels = hasFocus;
    });
  }

  @override
  void dispose() {
    _debouncer.close();
    _searchController.dispose();
    _vendorsearchController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  List<BrandNewModel>? alldata;

  bool _isSearchFieldVisible = false;
  // VendorResponse? vendorcard;
  // Future<void> searchvendor(String name) async {
  //   await ref.watch(searchVendorProductProvider(vid, name)).whenData(
  //     (value) {
  //       setState(() {
  //         vendorsearchrespnse = value.data?.posts?.data!;
  //       });
  //       print("bibash ${vendorsearchrespnse}");
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final allproductsresp = ref.watch(getVendorAllProductsProvider(widget.vid));

    Future<void> refreshAllprovider() async {
      ref.refresh(getVendorAllProductsProvider(widget.vid));
      ref.refresh(getVendorAllProductsProvider(widget.vid));
      ref.refresh(getvendorpostandprizesProvider((widget.vid)));
    }

    Future<void> searchvendor(String name) async {
      final response =
          await ref.read(searchVendorProductProvider(widget.vid, name).future);

      setState(() {
        vendorsearchrespnse = [];
        vendorsearchrespnse = response.data?.posts?.data ?? [];
      });

      print("bibash $vendorsearchrespnse"); // Now this will print in UI
    }

    // final getvendordarcard =
    //     ref.watch(getVendorCardProvider('techstore')).whenData(
    //   (value) async {
    //     vendorcard = await value;
    //   },
    // );

    final SearchProductModels =
        ref.watch(searchProvider(_searchController.text));

    // searchvendor('acer');

    final liveandpost = ref.watch(getvendorpostandprizesProvider((widget.vid)));

    OverlayEntry? overlayEntry;

    void removeOverlay() {
      if (overlayEntry != null) {
        overlayEntry!.remove();
        overlayEntry = null; // Set to null after removing
      }
    }

    debugPrint('Search Results: ${SearchProductModels.asData?.value}');

    void showOverlay(
        BuildContext context, List<SearchProductModel> suggestions) {
      removeOverlay(); // Remove existing overlay before adding a new one

      overlayEntry = OverlayEntry(
        builder: (context) => Positioned(
          left: 20,
          right: 20,
          top: 90, // Position below the search bar
          child: Material(
            elevation: 2,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(4)),
              child: ListView.separated(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: suggestions.length,
                itemBuilder: (context, index) {
                  String data = suggestions[index].name;
                  return ListTile(
                    dense: true,
                    title: Text(
                      softWrap: true,
                      data,
                      style: headerstyle.copyWith(
                          color: ColorConstant.blackColor, fontSize: 9),
                    ),
                    onTap: () {
                      _searchController.text = data;
                      removeOverlay();
                    },
                  );
                },
                separatorBuilder: (context, index) => const Divider(),
              ),
            ),
          ),
        ),
      );

      Overlay.of(context).insert(overlayEntry!);
    }

    return Scaffold(
        key: _key,
        extendBody: true,
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
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
                        expandedHeight: 90.h,
                        floating: false,
                        pinned: false,
                        flexibleSpace: AnimatedContainer(
                          padding: EdgeInsets.zero,
                          duration: Duration(milliseconds: 150),
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
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
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
                                              .read(_selectedIndexProvider
                                                  .notifier)
                                              .state = index;
                                        },
                                        child: AnimatedContainer(
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
                                                    fontWeight: FontWeight.w700,
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
                                color: Color(0xff651c50),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: ref.watch(getVendorCardProvider(widget.vid)).when(
                      data: (vendorcard) {
                        _vendorimage = vendorcard.data?.vendor_card!.photo!;
                        print('rajuk ${vendorcard.data?.subscribed}');

                        return Column(
                          children: [
                            if (vendorcard.data != null)
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 5.h),
                                child: DottedContainer(
                                    firstImage:
                                        vendorcard.data?.vendor_card?.photo,
                                    deals: vendorcard.data?.deals,
                                    vname: vendorcard.data!.vendor_card!.name!),
                              ),
                            if (vendorcard.data != null)
                              Screenshot(
                                controller: _screenshotController,
                                child: Container(
                                  color: Colors.white,
                                  child: BigContainer(
                                    ondoenload: _captureAndSave,
                                    onsubscribed: () {
                                      refreshAllprovider();
                                    },
                                    lat: double.tryParse(vendorcard
                                            .data!.vendor_card?.latitude ??
                                        '0')!,
                                    long: double.tryParse(
                                      vendorcard.data!.vendor_card?.longitude ??
                                          '0',
                                    )!, // Assuming longitude is available in vendor_card
                                    id: widget.vid
                                        .toString(), // Assuming id is available in the data
                                    title: vendorcard.data!.vendor_card!
                                        .name!, // Assuming title is in vendor_card
                                    logo: vendorcard.data!.vendor_card!
                                        .photo!, // Assuming logo URL or widget is in vendor_card
                                    contact: vendorcard
                                            .data!.vendor_card!.phone ??
                                        '97++', // Assuming contact info is in vendor_card
                                    storyCount: vendorcard
                                        .data!.vendor_card!.storycount
                                        .toString(), // Assuming storyCount is in vendor_card
                                    membershipTitle: vendorcard
                                        .data!
                                        .vendor_card!
                                        .membership_title!, // Assuming membershipTitle is in vendor_card
                                    storycount: vendorcard
                                        .data!.vendor_card!.storycount!
                                        .toString(),
                                    // Assuming dealsCircle is in vendor_card
                                    total_connections: vendorcard
                                        .data!.vendor_card!.subscribers!
                                        .toString(), // Assuming totalConnections is in vendor_card
                                    total_prize_worth: vendorcard
                                        .data!.vendor_card!.prize_worth!
                                        .toString(), // Assuming totalPrizeWorth is in vendor_card
                                    location: vendorcard
                                            .data!.vendor_card!.nearestbranch ??
                                        '', // Assuming location is in vendor_card
                                    Cnumber: vendorcard
                                            .data!.vendor_card!.phone ??
                                        '', // Assuming contactNumber is in vendor_card
                                    issubbed: vendorcard.data?.subscribed == 1
                                        ? true
                                        : false,
                                    memebertitle: vendorcard.data!.vendor_card!
                                        .membership_title!, // Assuming memberTitle is in vendor_card
                                  ),
                                ),
                              ),
                            SizedBox(
                              height: 10.h,
                            ),
                            const DottedLine(
                                dashRadius: 5,
                                dashColor: Color(0xffD9D9D9),
                                dashLength: 7),
                            SizedBox(
                              height: 10.h,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: TabBar(
                                onTap: (value) {
                                  setState(() {
                                    // Check if the tapped tab index is greater than 1
                                    dynamicheight = value > 1 ? 50.h : 410.h;
                                    print("raju ${_tabController.index == 0}");
                                    showsearch = _tabController.index == 0
                                        ? true
                                        : false;
                                  });
                                },
                                tabAlignment: TabAlignment.start,
                                isScrollable: true,
                                controller: _tabController,
                                tabs: const [
                                  Tab(text: "SHOP"),
                                  Tab(text: "About"),
                                  Tab(text: "BRANDS"),
                                  Tab(text: "GET DIRECTIONS"),
                                  Tab(text: "CUSTOMER SERVICE"),
                                  Tab(text: "CAREER"),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                      error: (error, stackTrace) {
                        return Center(child: Text("Error loading data"));
                      },
                      loading: () {
                        return Shimmer.fromColors(
                          baseColor: Colors.grey[300]!,
                          highlightColor: Colors.grey[100]!,
                          child: Container(
                            height: 100, // Adjust the height as needed
                            margin: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        ref
                            .watch(getvendorbybrandnameProvider(widget.vid))
                            .when(
                              data: (data) {
                                // if (data.data!.b2b?.length == 0) {
                                //   categories.where(
                                //     (element) => element == 'b2b',
                                //   );
                                // }
                                if (myselectedindex == 0) {
                                  alldata = data.data?.brandnew;
                                }
                                return Column(
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      height: tabsize?.toDouble(),
                                      child: TabBarView(
                                        controller: _tabController,
                                        children: [
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                // Search Fieldf
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                AnimatedSwitcher(
                                                  duration: const Duration(
                                                      milliseconds: 300),
                                                  child: _isSearchFieldVisible
                                                      ? SizedBox(
                                                          key: const ValueKey(
                                                              'SearchField'),
                                                          width: 300.0,
                                                          child: TextField(
                                                            onSubmitted:
                                                                (value) {},
                                                            controller:
                                                                _vendorsearchController,
                                                            decoration:
                                                                InputDecoration(
                                                              contentPadding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      left: 5),
                                                              hintText:
                                                                  "Search...",
                                                              filled: true,
                                                              fillColor: Colors
                                                                  .grey
                                                                  .withOpacity(
                                                                      0.1),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Colors
                                                                      .grey
                                                                      .withOpacity(
                                                                          0.4),
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    const BorderRadius
                                                                        .all(
                                                                        Radius.circular(
                                                                            10.0)),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Colors
                                                                      .blue
                                                                      .withOpacity(
                                                                          0.6),
                                                                  width: 1.5,
                                                                ),
                                                                borderRadius:
                                                                    const BorderRadius
                                                                        .all(
                                                                        Radius.circular(
                                                                            10.0)),
                                                              ),
                                                              suffixIcon:
                                                                  InkWell(
                                                                onTap: () {
                                                                  setState(() {
                                                                    vendorsearchrespnse =
                                                                        [];
                                                                    searchvendor(
                                                                        _vendorsearchController
                                                                            .text);
                                                                  });
                                                                },
                                                                child:
                                                                    Container(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                          10),
                                                                  decoration:
                                                                      const BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      topRight:
                                                                          Radius.circular(
                                                                              10),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              10),
                                                                    ),
                                                                    color: Colors
                                                                        .black, // Replace with `ColorConstant.blackColor`
                                                                  ),
                                                                  child:
                                                                      const Icon(
                                                                    Icons
                                                                        .search,
                                                                    color: Colors
                                                                        .white, // Replace with `ColorConstant.whiteColor`
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        )
                                                      : IconButton(
                                                          onPressed: () {
                                                            setState(() {
                                                              _isSearchFieldVisible =
                                                                  true;
                                                            });
                                                          },
                                                          icon: Container(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        5,
                                                                    vertical:
                                                                        5),
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                                color: ColorConstant
                                                                    .blackColor),
                                                            child: const Icon(
                                                              Icons.search,
                                                              color: ColorConstant
                                                                  .whiteColor,
                                                            ),
                                                          ),
                                                        ),
                                                ),

                                                SizedBox(
                                                  height: 50,
                                                  width: 750.w,
                                                  child: Row(
                                                    children: List.generate(
                                                        _categorieslength!,
                                                        (index) {
                                                      return GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            vendorsearchrespnse =
                                                                [];
                                                            //   print(
                                                            //   "raja $myselectedindex");
                                                            print(
                                                                "rajali ${data.data?.services?.length}");
                                                            myselectedindex =
                                                                index;

                                                            alldata = [
                                                                  data.data
                                                                      ?.brandnew,
                                                                  data.data
                                                                      ?.used,
                                                                  data.data
                                                                      ?.services,
                                                                  data.data
                                                                      ?.events,
                                                                  data.data
                                                                      ?.services,
                                                                  data.data
                                                                      ?.b2b,
                                                                  data.data
                                                                      ?.grocery
                                                                ][index] ??
                                                                [];
                                                          });
                                                        },
                                                        child: Container(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      10.0,
                                                                  vertical:
                                                                      5.h),
                                                          margin: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      10.w),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: myselectedindex ==
                                                                    index
                                                                ? ColorConstant
                                                                    .blackColor
                                                                : Colors
                                                                    .grey[300],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                          ),
                                                          child: Text(
                                                            categories[index],
                                                            style: TextStyle(
                                                              color:
                                                                  myselectedindex ==
                                                                          index
                                                                      ? Colors
                                                                          .white
                                                                      : Colors
                                                                          .black,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    }),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          AnimatedContainer(
                                            margin: const EdgeInsets.all(5),
                                            duration: const Duration(
                                                milliseconds: 500),
                                            curve: Curves.easeInOut,
                                            color: Colors.white,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 24.w, top: 32.h),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      if (data.data
                                                                  ?.vendor_about !=
                                                              null &&
                                                          data
                                                                  .data
                                                                  ?.vendor_about
                                                                  ?.bio
                                                                  ?.length !=
                                                              0)
                                                        if (data.data!
                                                                    .vendor_about !=
                                                                null &&
                                                            data.data
                                                                    ?.vendor_about !=
                                                                '')
                                                          Text("Opening hours:\n${(jsonDecode(data.data!.vendor_about!.opening_hours!) as List).map((e) => '${e['day']}: ${e['closed'] ? 'Closed' : '${e['from'] ?? 'N/A'} - ${e['to'] ?? 'N/A'}'}').join('\n')}",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      12.sp)),
                                                      SizedBox(height: 10.h),
                                                      if (data.data
                                                              ?.vendor_about !=
                                                          null)
                                                        Row(
                                                          children: [
                                                            Icon(Icons.phone,
                                                                color: const Color(
                                                                    0xFF8B6C6C),
                                                                size: 14.h),
                                                            SizedBox(
                                                              width: 10.w,
                                                            ),
                                                            if (data.data
                                                                    ?.vendor_about !=
                                                                null)
                                                              Text(
                                                                data
                                                                        .data
                                                                        ?.vendor_about!
                                                                        .phone ??
                                                                    '',
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      12.sp,
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      SizedBox(height: 10.h),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                              Icons.location_on,
                                                              color: const Color(
                                                                  0xFF8B6C6C),
                                                              size: 14.h),
                                                          SizedBox(
                                                            width: 10.w,
                                                          ),
                                                          if (data.data
                                                                  ?.vendor_about !=
                                                              null)
                                                            Text(
                                                              data
                                                                      .data
                                                                      ?.vendor_about!
                                                                      .nearestbranch ??
                                                                  'The Bio is not yet published stay tuned',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 12.sp,
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 10.h),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.email,
                                                              color: const Color(
                                                                  0xFF8B6C6C),
                                                              size: 14.h),
                                                          SizedBox(
                                                            width: 10.w,
                                                          ),
                                                          if (data
                                                                  .data
                                                                  ?.vendor_about
                                                                  ?.email !=
                                                              null)
                                                            Text(
                                                              data
                                                                  .data!
                                                                  .vendor_about!
                                                                  .email!,
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 12.sp,
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 10.h),
                                                      Text(
                                                        "Bio",
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 14.sp,
                                                        ),
                                                      ),
                                                      SizedBox(height: 10.h),
                                                      if (data
                                                              .data
                                                              ?.vendor_about
                                                              ?.bio !=
                                                          null)
                                                        Text(
                                                          data
                                                              .data!
                                                              .vendor_about!
                                                              .bio!,
                                                          style: TextStyle(
                                                              fontSize: 12.sp),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          AnimatedContainer(
                                            duration: const Duration(
                                                milliseconds: 500),
                                            curve: Curves.easeInOut,
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Coming Soon.........',
                                              style: headerstyle.copyWith(
                                                color: ColorConstant.blackColor,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                          AnimatedContainer(
                                            duration: const Duration(
                                                milliseconds: 500),
                                            curve: Curves.easeInOut,
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Coming Soon.........',
                                              style: headerstyle.copyWith(
                                                color: ColorConstant.blackColor,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                          AnimatedContainer(
                                            duration: const Duration(
                                                milliseconds: 500),
                                            curve: Curves.easeInOut,
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Coming Soon.........',
                                              style: headerstyle.copyWith(
                                                color: ColorConstant.blackColor,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                          AnimatedContainer(
                                            duration: const Duration(
                                                milliseconds: 500),
                                            curve: Curves.easeInOut,
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Coming Soon.........',
                                              style: headerstyle.copyWith(
                                                color: ColorConstant.blackColor,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    if (showsearch!)
                                      vendorsearchrespnse == null ||
                                                  vendorsearchrespnse!
                                                      .isEmpty ??
                                              true
                                          ? (alldata?.isEmpty ?? true
                                              ? const Padding(
                                                  padding: EdgeInsets.all(40.0),
                                                  child: Center(
                                                    child: Text(
                                                        "No Listing available....."),
                                                  ),
                                                )
                                              : AnimatedContainer(
                                                  duration: const Duration(
                                                      milliseconds: 400),
                                                  child: SingleChildScrollView(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    child: Wrap(
                                                      spacing: 3.w,
                                                      children: List.generate(
                                                          alldata?.length ?? 0,
                                                          (index) {
                                                        BrandNewModel prod =
                                                            alldata![index];
                                                        return ProductDetailWidget(
                                                          lat: prod.userdetails
                                                              ?.latitude,
                                                          long: prod.userdetails
                                                              ?.longitude,
                                                          productid: prod.id,
                                                          posttype:
                                                              prod.post_type_id,
                                                          vendorid: prod
                                                              .userdetails!
                                                              .user_id,
                                                          onRefresh: () {
                                                            refreshAllprovider();
                                                            ref.refresh(
                                                                getVendorCardProvider(
                                                                    widget
                                                                        .vid));
                                                          },
                                                          membershipid: prod
                                                              .userdetails
                                                              ?.membership_id,
                                                          didcountpercentage:
                                                              prod.discount_percentage ??
                                                                  0,
                                                          lefttile: "TradeHub",
                                                          vendorname: prod
                                                                  .userdetails
                                                                  ?.name ??
                                                              "",
                                                          Vimage: prod
                                                                  .userdetails
                                                                  ?.photo ??
                                                              "",
                                                          avg_rating: prod
                                                                  .avg_rating
                                                                  ?.toDouble() ??
                                                              0,
                                                          comment: prod
                                                                  .commentcount
                                                                  ?.toString() ??
                                                              "0",
                                                          discounttedPrice: prod
                                                                  .discounted_price
                                                                  ?.toString() ??
                                                              "0",
                                                          distance: double.tryParse(prod
                                                                  .shortestDistance
                                                                  ?.toString() ??
                                                              "0"),
                                                          issponsored: prod
                                                                  .userdetails
                                                                  ?.sponsored ??
                                                              false,
                                                          membershipColor: prod
                                                                  .userdetails
                                                                  ?.membership_color ??
                                                              "",
                                                          membershipTitle: prod
                                                                  .userdetails
                                                                  ?.membership_title ??
                                                              "",
                                                          offer: prod.wow ?? "",
                                                          price:
                                                              prod.price ?? "",
                                                          productImage:
                                                              prod.image,
                                                          shortestDistance:
                                                              prod.shortestDistance ??
                                                                  0.0,
                                                          similarproductCount:
                                                              prod.similarVendorProfileProductCount ??
                                                                  0,
                                                          title:
                                                              prod.title ?? "",
                                                          wow: prod.wow ?? "",
                                                        );
                                                      }),
                                                    ),
                                                  ),
                                                ))
                                          : SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Wrap(
                                                spacing: 3.w,
                                                children: List.generate(
                                                    vendorsearchrespnse
                                                            ?.length ??
                                                        0, (index) {
                                                  VendorSearchModel prod =
                                                      vendorsearchrespnse![
                                                          index];
                                                  return ProductDetailWidget(
                                                    lat: prod
                                                        .userdetails?.latitude,
                                                    long: prod
                                                        .userdetails?.longitude,
                                                    productid: prod.id!,
                                                    posttype: prod.postType,
                                                    vendorid: prod
                                                        .userdetails?.userId,
                                                    onRefresh: () {
                                                      refreshAllprovider();
                                                    },
                                                    membershipid: prod
                                                        .userdetails
                                                        ?.membershipId,
                                                    didcountpercentage: prod
                                                        .discountPercentage
                                                        ?.toInt(),
                                                    lefttile: "TradeHub",
                                                    vendorname: prod.userdetails
                                                            ?.name ??
                                                        "",
                                                    Vimage: prod.userdetails
                                                            ?.photo ??
                                                        "",
                                                    avg_rating: prod.avgRating
                                                            ?.toDouble() ??
                                                        0,
                                                    comment: prod.commentCount
                                                            ?.toString() ??
                                                        "0",
                                                    discounttedPrice: prod
                                                            .discountedPrice
                                                            ?.toString() ??
                                                        "0",
                                                    distance: double.tryParse(prod
                                                            .userdetails
                                                            ?.shortestDistance
                                                            ?.toString() ??
                                                        "0"),
                                                    issponsored: prod
                                                            .userdetails
                                                            ?.sponsored ??
                                                        false,
                                                    membershipColor: prod
                                                            .userdetails
                                                            ?.membershipColor ??
                                                        "",
                                                    membershipTitle: prod
                                                            .userdetails
                                                            ?.membershipTitle ??
                                                        "",
                                                    offer: prod.wow ?? "",
                                                    price: prod.price ?? "",
                                                    productImage: prod.image,
                                                    shortestDistance: prod
                                                            .userdetails
                                                            ?.shortestDistance ??
                                                        0.0,
                                                    similarproductCount:
                                                        prod.similarProductCount ??
                                                            0,
                                                    title: prod.title ?? "",
                                                    wow: prod.wow ?? "",
                                                  );
                                                }),
                                              ),
                                            ),
                                  ],
                                );
                              },
                              error: (error, stackTrace) => const Text("login"),
                              loading: () => Shimmer.fromColors(
                                baseColor: Colors.grey[300]!,
                                highlightColor: Colors.grey[100]!,
                                child: Container(
                                  height: 100,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                      ],
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: const DottedLine(
                              dashRadius: 5,
                              dashColor: Color(0xffD9D9D9),
                              dashLength: 7),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 18.w, bottom: 10, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "POSTS",
                              style: TextStyle(
                                  fontSize: 18.sp, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        liveandpost.when(
                          data: (data) {
                            if (data.feedPosts.isEmpty) {
                              return Center(
                                  child:
                                      nolistingfound()); // ✅ Show "No Listing Found" if `feedPosts` is empty
                            }

                            return SizedBox(
                              width: double.infinity,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: data.feedPosts.map((dataz) {
                                    print("raja ${dataz.photo}");

                                    return PostCard(
                                      id: dataz.id,
                                      image: dataz.image ?? "",
                                      name: dataz.name ?? "Unknown",
                                      caption: dataz.caption ?? "",
                                      photo: dataz.photo ?? "",
                                      subscribers:
                                          dataz.subscribers?.toString() ?? "0",
                                    );
                                  }).toList(),
                                ),
                              ),
                            );
                          },
                          loading: () => SizedBox(
                            height: 295.h,
                            width: double.infinity,
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 5, // ✅ Placeholder shimmer count
                              itemBuilder: (context, index) =>
                                  Shimmer.fromColors(
                                baseColor: Colors.grey[300]!,
                                highlightColor: Colors.grey[100]!,
                                child: Container(
                                  width: 200.w,
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 10.w),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          error: (error, stack) => Center(
                            child: Text("Error: $error",
                                style: const TextStyle(color: Colors.red)),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: const DottedLine(
                              dashRadius: 5,
                              dashColor: Color(0xffD9D9D9),
                              dashLength: 7),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 18.w, top: 10.h),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Live Prizes",
                              style: TextStyle(
                                  fontSize: 18.sp, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        liveandpost.when(
                          data: (data) {
                            if (data.live_prizes == null ||
                                data.live_prizes!.isEmpty) {
                              return Center(
                                  child:
                                      nolistingfound()); // ✅ Shows "No Listing Found" when empty
                            }

                            return SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: data.live_prizes!.map((card) {
                                  return PostCard(
                                    id: card.id,
                                    // subscribers: data.subscribers.toString(),
                                    isLive: false,
                                    image: card.image!,
                                    name: card.name!,
                                    caption: card.caption ?? '',
                                    photo: card.photo!,
                                    subscribers: card.subscribers!.toString(),
                                  );
                                }).toList(),
                              ),
                            );
                          },
                          loading: () => SizedBox(
                            height: 260,
                            width: double.infinity,
                            child: Shimmer.fromColors(
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[100]!,
                              child: Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          error: (error, stack) => Center(
                            child: Text("Error: $error",
                                style: const TextStyle(color: Colors.red)),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.h),
                          child: const DottedLine(
                              dashRadius: 5,
                              dashColor: Color(0xffD9D9D9),
                              dashLength: 7),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "All Products",
                            textAlign: TextAlign.left,
                            style: headerstyle.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: ColorConstant.blackColor),
                          ),
                        ),
                        allproductsresp.when(
                          data: (data) {
                            if (data.data.all_products == null ||
                                data.data.all_products!.isEmpty) {
                              return Center(
                                  child:
                                      nolistingfound()); // ✅ Shows "No Listing Found" when empty
                            }

                            return Padding(
                              padding: EdgeInsets.symmetric(vertical: 20.h),
                              child: SingleChildScrollView(
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.vertical,
                                child: Wrap(
                                  spacing: 5.w,
                                  runSpacing: 15.h,
                                  children: List.generate(
                                    data.data.all_products!.length,
                                    (index) {
                                      BrandNewModel res =
                                          data.data.all_products![index];

                                      return SizedBox(
                                        width:
                                            (MediaQuery.of(context).size.width -
                                                    30.w) /
                                                2,
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
                                            savedid: res.savedByLoggedUser
                                                    ?.map((e) => SavedPost(
                                                          id: e.id,
                                                          userId: e.userId,
                                                          postId: e.postId,
                                                          createdAt:
                                                              e.createdAt,
                                                          updatedAt:
                                                              e.updatedAt,
                                                        ))
                                                    .toList() ??
                                                [], // ✅ Ensured `null` safety

                                            onRefresh: () {
                                              refreshAllprovider();
                                            },
                                            lat: res.userdetails?.latitude,
                                            long: res.userdetails?.longitude,
                                            productid: res.id,
                                            posttype: res.post_type_id,
                                            membershipid:
                                                res.userdetails?.membership_id,
                                            id: int.tryParse(res.id),
                                            didcountpercentage:
                                                res.discount_percentage ?? 0,
                                            productImage: res.image,
                                            Vimage:
                                                res.userdetails?.photo ?? "",
                                            avg_rating:
                                                res.avg_rating?.toDouble(),
                                            comment:
                                                res.commentcount.toString(),
                                            discounttedPrice: res
                                                    .discounted_price
                                                    ?.toString() ??
                                                "0",
                                            distance:
                                                res.shortestDistance ?? 0.0,
                                            issponsored:
                                                res.userdetails?.sponsored ??
                                                    false,
                                            lefttile: "All Products",
                                            membershipColor: res.userdetails
                                                    ?.membership_color ??
                                                "",
                                            membershipTitle: res.userdetails
                                                    ?.membership_title ??
                                                "",
                                            offer: res.offers ?? "",
                                            price: res.price ?? "0",
                                            shortestDistance:
                                                res.shortestDistance ?? 0.0,
                                            similarproductCount:
                                                res.similarVendorProfileProductCount ??
                                                    0,
                                            title: res.title ?? "No Title",
                                            vendorname: res.userdetails?.name ??
                                                "Unknown",
                                            wow: res.wow ?? "",
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            );
                          },
                          loading: () => SizedBox(
                            width: 100.w,
                            height: 100.h,
                            child: Center(
                              child: Image.asset(
                                'assets/images/preloader.gif',
                                width: 100.w,
                                height: 100.h,
                                fit: BoxFit
                                    .contain, // Ensures the image fits within its bounds
                              ),
                            ),
                          ),
                          error: (error, stack) => Center(
                            child: Text("Error: $error",
                                style: const TextStyle(color: Colors.red)),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}

class DottedContainer extends StatelessWidget {
  final String? firstImage;
  final List<Deal>? deals;
  final String vname;

  const DottedContainer(
      {super.key,
      required this.firstImage,
      required this.deals,
      required this.vname});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: SizedBox(
        height: 180.h,
        child: Row(
          children: [
            _buildFirstItem(firstImage!, vname, context),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: deals?.length ?? 0,
                itemBuilder: (context, index) {
                  final data = deals![index];
                  return buildDealItemWidget(data: data);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFirstItem(String firstImage, String name, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context, rootNavigator: true).push(
          MaterialPageRoute(
            builder: (context) => const CreateNewListinScreen(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: DottedBorder(
          color: Colors.black,
          strokeWidth: 2,
          borderType: BorderType.RRect,
          radius: const Radius.circular(12),
          dashPattern: const [6, 5],
          child: Stack(
            children: [
              SizedBox(
                width: 100.w,
                height: 180.h,
                child: Image.network(
                  firstImage ?? 'https://via.placeholder.com/120',
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                left: 10.w,
                bottom: 10.h,
                child: Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 13.sp,
                    color: Colors.black,
                  ),
                ),
              ),
              Positioned(
                left: 30.w,
                bottom: 4,
                child: Icon(Icons.add),
                height: 12,
                width: 12,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class buildDealItemWidget extends StatelessWidget {
  const buildDealItemWidget({
    super.key,
    required this.data,
  });

  final Deal data;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 2.w),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: DottedBorder(
        color: const Color(0xffD9D9D9),
        strokeWidth: 2,
        borderType: BorderType.RRect,
        radius: const Radius.circular(12),
        dashPattern: const [6, 5],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Image.network(
              data.image ?? 'https://via.placeholder.com/110',
              height: 90.h,
              width: 90.w,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 30.h),
            SizedBox(
              height: 30.h,
              width: 110.w,
              child: ElevatedButton(
                style: ButtonStyle(
                  padding: WidgetStateProperty.all(EdgeInsets.zero),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  backgroundColor: WidgetStateProperty.all(
                    const Color(0xff362677),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  data.discount_percentage == null
                      ? '0%'
                      : '${data.discount_percentage}%',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12.sp,
                      color: ColorConstant.whiteColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class VendorFirstTabBarSection extends StatefulWidget {
//   final TabController tabController;
//   final VendorCard data;
//   final VendorAbout vabout;

//   const VendorFirstTabBarSection({
//     Key? key,
//     required this.tabController,
//     required this.data,
//     required this.vabout,
//   }) : super(key: key);

//   @override
//   State<VendorFirstTabBarSection> createState() =>
//       _VendorFirstTabBarSectionState();
// }

// class _VendorFirstTabBarSectionState extends State<VendorFirstTabBarSection> {
//   double _containerHeight = 540.h;
//   // Future<void> follow() async {

//   //   // Map<String, String> _getfollow = await followvendor(data.membership_id);
//   // }

//   @override
//   void initState() {
//     super.initState();
//     // Add a listener to the tab controller
//     tabController.addListener(() {
//       setState(() {
//         // Adjust the height dynamically based on the selected tab
//         if (tabController.index == 0) {
//           _containerHeight = 540.h; // Height for the first tab
//         } else {
//           _containerHeight = 400.h; // Height for the second tab
//         }
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         TabBar(
//           controller: tabController,
//           indicator: const UnderlineTabIndicator(
//             borderSide: BorderSide(
//               width: 4,
//               color: Color(0xFF646464),
//             ),
//           ),
//           isScrollable: true,
//           labelPadding: const EdgeInsets.only(left: 0, right: 30),
//           tabs: const [
//             Tab(
//               text: "Home",
//             ),
//             Tab(
//               text: "About",
//             ),
//           ],
//         ),
//         AnimatedContainer(
//           duration: const Duration(milliseconds: 300),
//           curve: Curves.easeInOut,
//           height: _containerHeight,
//           child: TabBarView(
//             controller: tabController,
//             children: [
//               // BigContainer(
//               //   memebertitle: data.membership_title!,
//               //   lat: double.tryParse(data.vendor_card! ?? '0.0') ?? 0.0,
//               //   long: double.tryParse(data.vendor_card! ?? '0.0') ?? 0.0,
//               //   title: data.name!,
//               //   logo: data.photo!,
//               //   contact: data.phone ?? '9812457859',
//               //   storyCount: data.storycount!.toString(),
//               //   membershipTitle: data.membership_title!,
//               //   deals_circle: '0',
//               //   total_connections: "0",
//               //   total_prize_worth: '0',
//               //   location: data.nearestbranch.toString(),
//               //   Cnumber: data.phone ?? '9845612345',
//               // ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: Colors.black,
//                     ),
//                   ),
//                   child: Padding(
//                     padding: EdgeInsets.only(left: 24.w, top: 32.h),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                             "Opening hours:\n${(jsonDecode(vabout.opening_hours!) as List).map((e) => '${e['day']}: ${e['closed'] ? 'Closed' : '${e['from'] ?? 'N/A'} - ${e['to'] ?? 'N/A'}'}').join('\n')}",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w600, fontSize: 12.sp)),
//                         SizedBox(height: 10.h),
//                         Row(
//                           children: [
//                             Icon(Icons.phone,
//                                 color: const Color(0xFF8B6C6C), size: 14.h),
//                             SizedBox(
//                               width: 10.w,
//                             ),
//                             Text(
//                               vabout.phone ?? '',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 12.sp,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 10.h),
//                         Row(
//                           children: [
//                             Icon(Icons.location_on,
//                                 color: const Color(0xFF8B6C6C), size: 14.h),
//                             SizedBox(
//                               width: 10.w,
//                             ),
//                             Text(
//                               vabout.nearestbranch ??
//                                   'The Bio is not yet published stay tuned',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 12.sp,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 10.h),
//                         Row(
//                           children: [
//                             Icon(Icons.email,
//                                 color: const Color(0xFF8B6C6C), size: 14.h),
//                             SizedBox(
//                               width: 10.w,
//                             ),
//                             Text(
//                               vabout.email!,
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 12.sp,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 10.h),
//                         Text(
//                           "Bio",
//                           style: TextStyle(
//                             fontWeight: FontWeight.w600,
//                             fontSize: 14.sp,
//                           ),
//                         ),
//                         SizedBox(height: 10.h),
//                         Text(
//                           vabout.bio!,
//                           style: TextStyle(fontSize: 12.sp),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             decoration: BoxDecoration(
//               border: Border.all(
//                 color: Colors.black,
//               ),
//             ),
//             child: Padding(
//               padding: EdgeInsets.only(left: 24.w, top: 32.h),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                       "Opening hours:\n${(jsonDecode(vabout.opening_hours!) as List).map((e) => '${e['day']}: ${e['closed'] ? 'Closed' : '${e['from'] ?? 'N/A'} - ${e['to'] ?? 'N/A'}'}').join('\n')}",
//                       style: TextStyle(
//                           fontWeight: FontWeight.w600, fontSize: 12.sp)),
//                   SizedBox(height: 10.h),
//                   Row(
//                     children: [
//                       Icon(Icons.phone,
//                           color: const Color(0xFF8B6C6C), size: 14.h),
//                       SizedBox(
//                         width: 10.w,
//                       ),
//                       Text(
//                         vabout.phone ?? '',
//                         style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           fontSize: 12.sp,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 10.h),
//                   Row(
//                     children: [
//                       Icon(Icons.location_on,
//                           color: const Color(0xFF8B6C6C), size: 14.h),
//                       SizedBox(
//                         width: 10.w,
//                       ),
//                       Text(
//                         vabout.nearestbranch ??
//                             'The Bio is not yet published stay tuned',
//                         style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           fontSize: 12.sp,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 10.h),
//                   Row(
//                     children: [
//                       Icon(Icons.email,
//                           color: const Color(0xFF8B6C6C), size: 14.h),
//                       SizedBox(
//                         width: 10.w,
//                       ),
//                       Text(
//                         vabout.email!,
//                         style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           fontSize: 12.sp,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 10.h),
//                   Text(
//                     "Bio",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                       fontSize: 14.sp,
//                     ),
//                   ),
//                   SizedBox(height: 10.h),
//                   Text(
//                     vabout.bio!,
//                     style: TextStyle(fontSize: 12.sp),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

class BigContainer extends StatefulWidget {
  final String id;
  final String title;
  final String logo;
  final String contact;
  final String storyCount;
  final String membershipTitle;
  final bool hasSpo;
  final String storycount,
      total_prize_worth,
      total_connections,
      location,
      Cnumber;
  final double long, lat;
  final String memebertitle;
  bool issubbed = false;
  final VoidCallback? onsubscribed; // Changed this to VoidCallback?
  final VoidCallback? ondoenload; // Changed this to VoidCallback?

  // Constructor
  BigContainer(
      {required this.lat,
      required this.long,
      required this.id,
      super.key,
      required this.title,
      required this.logo,
      required this.contact,
      required this.storyCount,
      required this.membershipTitle,
      this.hasSpo = false, // Default value
      required this.storycount,
      required this.total_connections,
      required this.total_prize_worth,
      required this.location,
      required this.Cnumber,
      required this.issubbed,
      required this.memebertitle,
      required this.onsubscribed,
      required this.ondoenload});

  @override
  State<BigContainer> createState() => _BigContainerState();
}

class _BigContainerState extends State<BigContainer> {
  // Future<void> _openGoogleMap(double latitude, double longitude) async {\
  final GlobalKey globalKey = GlobalKey();
  bool? _hassubbed;
  @override
  void initState() {
    // TODO: implement initState
    _hassubbed = widget.issubbed;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: DottedBorder(
        color: const Color(0xFF6D1A49),
        strokeWidth: 1,
        borderType: BorderType.RRect,
        radius: const Radius.circular(35),
        dashPattern: const [7, 5],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      widget.ondoenload?.call(); // ✅ Make sure it's called
                    },
                    icon: Icon(
                      Icons.file_download_outlined,
                      color: Color(0xFF6D1A49),
                    ),
                  ),
                  PopupMenuButton(
                    icon: const Icon(Icons.more_vert, color: Color(0xFF6D1A49)),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        value: 'Enquire',
                        child: Text('Enquire',
                            style: TextStyle(color: Colors.black)),
                      ),
                      PopupMenuItem(
                        onTap: () {
                           
                       
                        },
                        value: 'Report',
                        child: Text('Report',
                            style: TextStyle(color: Colors.black)),
                      ),
           PopupMenuItem(
  onTap: () async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        Future.delayed(const Duration(milliseconds: 300), () async {
          Navigator.of(context).pop(); // Close dialog after 300ms
          await captureAndShare(); // Capture and share image
        });

        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: const EdgeInsets.all(10),
          child: Center(
            child: RepaintBoundary(
              key: _widgetKey,
              child: Container(
                color: Colors.white, // Ensure background color
                padding: EdgeInsets.all(10), // Avoid layout issues
                child: SizedBox(
                  height: 600.h,
                  width: 450.w,
                  child: BigContainer(

                    storycount: widget.storyCount,
                    lat: widget.lat,
                    long: widget.long,
                    id: widget.id,
                    title: widget.title,
                    logo: widget.logo,
                    contact: widget.contact,
                    storyCount: widget.storyCount,
                    membershipTitle: widget.membershipTitle,
                    total_connections: widget.total_connections,
                    total_prize_worth: widget.total_prize_worth,
                    location: widget.location,
                    Cnumber: widget.Cnumber,
                    issubbed: widget.issubbed == 1 ? true : false,
                    memebertitle: widget.membershipTitle,
                    onsubscribed: widget.onsubscribed,
                    ondoenload: () {},
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  },
  value: 'Share',
  child: Text('Share', style: TextStyle(color: Colors.black)),
),
                    ],
                    onSelected: (value) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("$value Clicked")),
                      );
                    },
                  ),
                  //  IconButton(
                  //   onPressed: () {

                  //  }, icon:  Icon(
                  //     Icons.more_vert_rounded,
                  //     color: Color(0xFF6D1A49),
                  //   ),)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    children: [
                      Text(
                        "Connect",
                        style: TextStyle(fontSize: 9.sp),
                      ),
                      Text(
                        "Pass",
                        style: TextStyle(fontSize: 9.sp),
                      )
                    ],
                  ),
                ),
                DottedBorder(
                  color: const Color(0xff6d1a49),
                  strokeWidth: 2,
                  borderPadding: const EdgeInsets.all(3),
                  dashPattern: const [9, 5],
                  borderType: BorderType.Circle,
                  child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 40,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(widget.logo),
                          radius: 60,
                          backgroundColor: Colors.white,
                        ),
                      )),
                ),
                Column(
                  children: [
                    Image.asset(
                      widget.id.toString() == "2"
                          ? spotlighticon
                          : widget.id.toString() == "1"
                              ? basicsellericon
                              : widget.id.toString() == "3"
                                  ? domesticseller
                                  : widget.id.toString() == "25"
                                      ? globalicon
                                      : basicsellericon, // Default icon
                      width: 50,
                      height: 50,
                      color: Colors.grey,
                    ),

                    Text(
                      widget.membershipTitle,
                      style: TextStyle(fontSize: 9.sp),
                    ),
                    // Text(
                    //   "Exclusive",
                    //   style: TextStyle(fontSize: 9.sp),
                    // ),
                    // Text(
                    //   "Brand",
                    //   style: TextStyle(fontSize: 9.sp),
                    // )
                  ],
                ),
              ],
            ),
            SizedBox(height: 10.sp),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    widget.title,
                    style: TextStyle(
                        fontSize: 24.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () async {
                            // Use Google Maps app-specific URL scheme
                            final Uri mapsIntentUrl = Uri.parse(
                                'https://www.google.com/maps/dir/?api=1&destination=${widget.lat},${widget.long}');

                            // Fallback check
                            if (await canLaunchUrl(mapsIntentUrl)) {
                              await launchUrl(
                                mapsIntentUrl,
                                mode: LaunchMode.externalApplication,
                              );
                            } else {
                              print(
                                  "Could not open Google Maps using intent URL");
                            }
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: const Color(0xFF370C6B),
                                size: 15.w,
                              ),
                              Text(
                                "Open",
                                style: TextStyle(
                                  fontSize: 9.sp,
                                  color: const Color(0xFF370C6B),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Icon(
                          Icons.directions,
                          color: const Color(0xFF370C6B),
                          size: 15.w,
                        ),
                        Text(
                          "Directions",
                          style: TextStyle(
                            fontSize: 9.sp,
                            color: const Color(0xFF370C6B),
                          ),
                        ),
                      ],
                    ),
                    widget.location == 'null'
                        ? const SizedBox()
                        : Text(
                            widget.location,
                            style: TextStyle(
                              fontSize: 9.sp,
                              color: const Color(0xFF370C6B),
                            ),
                          )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.phone,
                          color: const Color(0xFF370C6B),
                          size: 15.w,
                        ),
                        Text(
                          "Customer Service",
                          style: TextStyle(
                            fontSize: 9.sp,
                            color: const Color(0xFF370C6B),
                          ),
                        ),
                        SizedBox(width: 5.w),
                      ],
                    ),
                    Text(
                      widget.Cnumber,
                      style: TextStyle(
                        fontSize: 9.sp,
                        color: const Color(0xFF370C6B),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              margin: EdgeInsets.only(top: 5.h),
              width: MediaQuery.sizeOf(context).width,
              color: const Color(0xFF4B004B),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 18.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          widget.total_connections,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 13.sp,
                              color: Colors.white),
                        ),
                        Text(
                          "Connections",
                          style:
                              TextStyle(fontSize: 10.sp, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(width: 15.w),
                    Column(
                      children: [
                        Text(
                          widget.storycount,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 13.sp,
                              color: Colors.white),
                        ),
                        Text(
                          "DealzCircle",
                          style:
                              TextStyle(fontSize: 10.sp, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(width: 15.w),
                    Column(
                      children: [
                        Text(
                          "Rs.${widget.total_prize_worth}",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 13.sp,
                              color: Colors.white),
                        ),
                        Text(
                          "Prize Worth",
                          style:
                              TextStyle(fontSize: 10.sp, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  color: const Color(0xFF4B004B),
                  width: MediaQuery.sizeOf(context).width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: Text(
                      "smartbazaar.com.np/${widget.title}",
                      style: const TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Positioned(
                  bottom:
                      -40, // Adjust based on how much the CircleAvatar should overlap
                  left: MediaQuery.sizeOf(context).width / 2 -
                      50, // Center the avatar
                  child: ClipOval(
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: InkWell(
                        onTap: () {
                              followUnfollowVendor(widget.id).then(
                  (value) {
                    showCustomToast(context, value.msg!);
                    if(value.scratchAva=='1')
                         showDialog(
                        context: context,
                        builder: (context) {
                          return const Dialog(
                              backgroundColor: Colors.transparent,
                              insetPadding: EdgeInsets.all(10),
                              child: ScratchCard());
                        },
                      );
                  },
                );
                        },
                        child: Image.asset(
                          'assets/images/zoomlogo.png',
                          fit: BoxFit.cover,
                          width: 140,
                          height: 140,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            SizedBox(height: 40.h),
            Padding(
              padding: EdgeInsets.only(left: 8.w, bottom: 5.w),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(_hassubbed! ? "Connected" : "Connect",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                          color: const Color(0xff370C6B),
                        ),
                        textAlign: TextAlign.center),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Shop",
                      style: TextStyle(
                          color: const Color(0xFF4B004B),
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    VerticalDivider(
                      thickness: 2.w,
                      color: const Color(0xFF4B004B),
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(
                          color: const Color(0xFF4B004B),
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    VerticalDivider(
                      thickness: 2.w,
                      color: const Color(0xFF4B004B),
                    ),
                    Text(
                      "Feed",
                      style: TextStyle(
                          color: const Color(0xFF4B004B),
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    VerticalDivider(
                      thickness: 2.w,
                      color: const Color(0xFF4B004B),
                    ),
                    Text(
                      "FreePrizes",
                      style: TextStyle(
                          color: const Color(0xFF4B004B),
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    VerticalDivider(
                      thickness: 2.w,
                      color: const Color(0xFF4B004B),
                    ),
                    Text(
                      "Brands",
                      style: TextStyle(
                          color: const Color(0xFF4B004B),
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    Image.asset('assets/images/arrow_down.png')
                  ]),
            ),
            SizedBox(
              height: 3.h,
            )
          ],
        ),
      ),
    );
  }
  
 Future<void> captureAndShare() async {
  try {
    RenderRepaintBoundary boundary =
        _widgetKey.currentContext?.findRenderObject() as RenderRepaintBoundary;
    if (boundary == null) return;

    ui.Image image = await boundary.toImage(pixelRatio: 3.0);
    ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    Uint8List pngBytes = byteData!.buffer.asUint8List();

    // Save to temporary directory
    final tempDir = await getTemporaryDirectory();
    final file = File('${tempDir.path}/shared_image.png');
    await file.writeAsBytes(pngBytes);

    // Share the image
    await Share.shareXFiles([XFile(file.path)], text: 'Check this out!');
  } catch (e) {
    debugPrint('Error capturing image: $e');
  }
}
}

// class VendorSearchContainer extends StatelessWidget {
//   Function(String)? MYonchnage;
//   TextEditingController controller;
//   final Function(bool)? onSearchFocusChanged;
//   final String img;

//   VendorSearchContainer(
//       {super.key,
//       required this.MYonchnage,
//       required this.controller,
//       required this.img,
//       required this.onSearchFocusChanged});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 140.h,
//       decoration: const BoxDecoration(
//         borderRadius: BorderRadius.only(
//             bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
//         gradient: LinearGradient(colors: [
//           Color(0xFF85237C),
//           Color(0xFF5C1E56),
//         ], begin: Alignment.topLeft, end: Alignment.bottomRight),
//       ),
//       child: Column(
//         children: [
//           const SizedBox(
//             height: 40,
//           ),
//           Row(
//             children: [
//               const SizedBox(
//                 width: 10,
//               ),
//               InkWell(
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//                 child: const Icon(
//                   Icons.arrow_back_ios,
//                   color: Colors.white,
//                 ),
//               ),
//               const SizedBox(
//                 width: 30,
//               ),
//               SizedBox(
//                   height: 42.h,
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         padding: EdgeInsets.only(
//                             left: 15.w, top: 3.h, bottom: 3.h, right: 5.w),
//                         decoration: BoxDecoration(
//                           color: Colors.transparent,
//                           border: Border.all(color: Colors.white, width: 0.1),
//                           borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(20.r),
//                             bottomLeft: Radius.circular(20.r),
//                           ),
//                         ),
//                         child: CircleAvatar(
//                           // radius: 10,
//                           // radius: 20,
//                           maxRadius: 15,
//                           backgroundImage: NetworkImage(
//                             scale: 1,
//                             img,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         width: 200.w,
//                         // height: 100.h,
//                         padding: EdgeInsets.symmetric(vertical: 6.h),
//                         decoration: const BoxDecoration(color: Colors.white),

//                         child: TextField(
//                           cursorHeight: 13.h,
//                           onChanged: MYonchnage,
//                           //  controller: searchController,
//                           decoration: InputDecoration(
//                             enabledBorder: InputBorder.none,
//                             border: InputBorder.none,
//                             focusedBorder: InputBorder.none,
//                             hintText: "   Search MyPower BizSpace",
//                             hintStyle: TextStyle(fontSize: 11.sp),
//                             isCollapsed: true,
//                             // contentPadding: EdgeInsets.symmetric(
//                             //     vertical: 18.h, horizontal: 15.w),
//                             disabledBorder: InputBorder.none,
//                             isDense: true,
//                             enabled: true,
//                           ),
//                         ),
//                       ),
//                       InkWell(
//                         onTap: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) =>
//                                     BusinessTabScreen(query: controller.text),
//                               ));
//                         },
//                         child: Container(
//                           padding: EdgeInsets.symmetric(
//                               horizontal: 10.w, vertical: 5.h),
//                           decoration: BoxDecoration(
//                             border: Border.all(color: Colors.white, width: 0.1),
//                             color: Colors.transparent,
//                             borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(15.r),
//                               bottomRight: Radius.circular(15.r),
//                             ),
//                           ),
//                           child: Padding(
//                             padding: EdgeInsets.all(3.r),
//                             child: Icon(
//                               Icons.search,
//                               color: Colors.white,
//                               size: 20.sp,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   )),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
