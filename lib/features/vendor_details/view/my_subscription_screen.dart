import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rxdart/rxdart.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/b2b_screen/view/b2b_screen.dart';
import 'package:smartbazar/features/brand_bazar/brand_bazar_screen.dart';
import 'package:smartbazar/features/events_screen/view/events_screen.dart';
import 'package:smartbazar/features/feed_page/view/feed_page_screen.dart';
import 'package:smartbazar/features/grocessary_screen/view/grocary_screen.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/jobs_screen/view/jobs_screen.dart';
import 'package:smartbazar/features/services_screen/service_screen.dart';
import 'package:smartbazar/features/socio_screen/view/socio_screen.dart';
import 'package:smartbazar/features/used_screen/view/used_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';
import 'package:smartbazar/features/vendor_details/api/get_subscription_api.dart';
import 'package:smartbazar/features/vendor_details/model/get_subscription_model.dart';

final _selectedIndexProvider = StateProvider<int>((ref) => 3);
bool isSliverAppBarVisible = true;

class MySubscriptionScreen extends ConsumerStatefulWidget {
  final ScrollController? scrollController;

  const MySubscriptionScreen({super.key, this.scrollController});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MySubscriptionScreenState();
}

class _MySubscriptionScreenState extends ConsumerState<MySubscriptionScreen> {
  final TextEditingController _searchController = TextEditingController();
  PageController _pageController = PageController(viewportFraction: 0.3);
  bool _isSectionsVisible = true;
  double _lastScrollOffset = 1;
  Offset _initialDragPosition = Offset.zero;
  final ScrollController _scrollController = ScrollController();
  bool _showSearchProductModels = false;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final _debouncer = BehaviorSubject<String>();
  final List<Map<String, dynamic>> _items = [
    {
      'icon': 'assets/icon/openCartIcon.svg',
      'label': 'SocioShop',
      'screen': const SocioShopScreen()
    },
    {
      'icon': 'assets/icon/loading.svg',
      'label': 'Everything',
      'screen': FeedScreen()
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
  @override
  void initState() {
    super.initState();

    // Initialize the PageController with the selected page

    _pageController = PageController(
      viewportFraction: 0.3,
      initialPage: selectedIndex,
    );

    // Debounce setup (only once)
    _searchController.addListener(() {
      _debouncer.add(_searchController.text);
    });

    _debouncer.debounceTime(const Duration(milliseconds: 300)).listen((query) {
      if (!mounted) return; // Prevent calling setState() after dispose

      debugPrint("Search query: $query");

      setState(() {
        // _isSectionsVisible = false;
        _showSearchProductModels = query.isNotEmpty;
      });

      ref.refresh(searchProvider(query));
    });

    _scrollController.addListener(_handleScroll);
  }

  void _handleScroll() {
    final scrollOffset = _scrollController.offset;

    SchedulerBinding.instance.addPostFrameCallback((_) {
      setState(() {
        if (scrollOffset > _lastScrollOffset && scrollOffset > 100) {
          _isSectionsVisible = false;
        } else if (scrollOffset < _lastScrollOffset && scrollOffset < 50) {
          _isSectionsVisible = true; // Ensure visibility when scrolling up
        }
        _lastScrollOffset = scrollOffset;
      });
    });
  }

  void _onDragUpdate(DragUpdateDetails details) {
    final dragDistance = details.globalPosition.dy - _initialDragPosition.dy;
    SchedulerBinding.instance.addPostFrameCallback((_) {
      setState(() {
        if (dragDistance > 50 && !_isSectionsVisible) {
          _isSectionsVisible = true;
        } else if (dragDistance < -50 && _isSectionsVisible) {
          _isSectionsVisible = false;
        }
      });
    });
  }

  void _onDragStart(DragStartDetails details) {
    _initialDragPosition = details.globalPosition;
  }

  void _onSearchFocusChanged(bool hasFocus) {
    setState(() {
      _showSearchProductModels = hasFocus;
      _isSectionsVisible = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Fetch the subscription data
    final subscriptionAsyncValue = ref.watch(getSubscriptionProvider);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 30.h,
      ),
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
        child: CustomScrollView(
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
                  expandedHeight: 90.h,
                  floating: false,
                  pinned: true,
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
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(4, (index) {
                              return GestureDetector(
                                onTap: () {
                                  ref
                                      .read(_selectedIndexProvider.notifier)
                                      .state = index;
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
                                        .read(_selectedIndexProvider.notifier)
                                        .state = index;
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
                        ],
                      ),
                    ),
                  )),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8, top: 11),
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
                child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Row(
                    children: [
                      SvgPicture.asset(heartIcon),
                      SizedBox(width: 8.w),
                      Text(
                        'My Subscriptions',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      const Spacer(),
                      const SizedBox()
                      // InkWell(
                      //   onTap: () => Navigator.pop(context),
                      //   child: Text(
                      //     'Go back',
                      //     style: TextStyle(
                      //         fontSize: 14.sp,
                      //         fontWeight: FontWeight.w700,
                      //         color: const Color(0xff888888)),
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2.w,
                  color: const Color(0xffD9D9D9),
                ),
                // Subscription Data UI
                subscriptionAsyncValue.when(
                  data: (subscriptionData) {
                    return _buildSubscriptionList(subscriptionData, context);
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (error, stackTrace) => const Center(
                    child: Text(
                      'Error fetching subscriptions',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
              ],
            )),
            SliverToBoxAdapter(
              child: Container(
                height: 100.h,
              ),
            )
          ],
        ),
      ),
    );
  }

  // Helper method to build the subscription list from the data
  Widget _buildSubscriptionList(
      GetSubscriptionModel subscriptionData, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: const Color(0xffF3F3F3),
          border: Border.all(width: 1.w, color: const Color(0xffADADAD)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: subscriptionData.subscriptions?.map((subscription) {
                return Column(
                  children: [
                    _buildSubscriptionItem(subscription, context),
                    SizedBox(height: 10.h),
                  ],
                );
              }).toList() ??
              [
                // Handle empty list case gracefully
                const Center(child: Text('No subscriptions available')),
              ],
        ),
      ),
    );
  }

  // Helper widget to display subscription item
  Widget _buildSubscriptionItem(
      Subscription subscription, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          subscription.vendor?.name ?? "Loading vendor...",
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
        ),
        GeneralTextButton(
          marginH: 0,
          height: 28.h,
          bgColor: const Color(0xff362677),
          fgColor: Colors.white,
          title: 'Profile',
          onPressed: () {
            // Ensure the vendorId is safely parsed
            final vendorId = int.tryParse(subscription.vendorId ?? '0') ?? 0;
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => VendorHomeScreen(
                  vendorName: subscription.vendor?.name ?? 'Unknown Vendor',
                  vid: vendorId,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
