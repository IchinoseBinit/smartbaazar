import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/auth/view/bottom_navigation_bar.dart';
import 'package:smartbazar/features/b2b_screen/view/fakescreen.dart';
import 'package:smartbazar/features/scran_screen/scan_screen.dart';
import 'package:smartbazar/features/b2b_screen/view/b2b_screen.dart';
import 'package:smartbazar/features/brand_bazar/brand_bazar_screen.dart';
import 'package:smartbazar/features/bussiness_tab_screen/view/business_tab_screen.dart';
import 'package:smartbazar/features/button_nav_bar/cusom_btn_bar/custom_bottom_nav.dart';
import 'package:smartbazar/features/create_listing/view/create_new_listing_screen.dart';
import 'package:smartbazar/features/events_screen/view/events_screen.dart';
import 'package:smartbazar/features/feed_page/api/get_feed_of_following_api.dart';
import 'package:smartbazar/features/feed_page/api/get_following_story_api.dart';
import 'package:smartbazar/features/feed_page/api/get_for_you_feed_api.dart';
import 'package:smartbazar/features/feed_page/api/get_for_you_story_api.dart';
import 'package:smartbazar/features/feed_page/model/get_feed_stories_model.dart';
import 'package:smartbazar/features/feed_page/widget/feed_container.dart';
import 'package:smartbazar/features/feed_page/widget/feed_story_add_widget.dart';
import 'package:smartbazar/features/feed_page/widget/promo_card.dart';
import 'package:smartbazar/features/grocessary_screen/view/grocary_screen.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/home/view/header.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/jobs_screen/view/jobs_screen.dart';
import 'package:smartbazar/features/message/view/message_view_screen.dart';
import 'package:smartbazar/features/my_order/view/my_order_screen.dart';
import 'package:smartbazar/features/pending_approval/pending_approval.dart';
import 'package:smartbazar/features/services_screen/service_screen.dart';
import 'package:smartbazar/features/socio_screen/view/socio_screen.dart';
import 'package:smartbazar/features/used_screen/view/used_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_name.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_profile_screen.dart';
import 'package:smartbazar/features/vendor/view/my_subscribe_and_win_page.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';
import 'package:smartbazar/features/search_story/view/story_search_bar.dart';
import 'package:smartbazar/network_service/smart-client.dart';

final _selectedIndexProvider = StateProvider<int>((ref) => 3);
bool isSliverAppBarVisible = true; // Track the visibility of SliverAppBar

class FeedScreen extends ConsumerStatefulWidget {
   FeedScreen({
    super.key,
  });
    final ScrollController _totopscrollController = ScrollController();


  @override
  ConsumerState<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends ConsumerState<FeedScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final TextEditingController _searchController = TextEditingController();
  bool _showSearchProductModels = false;
  final bool _isPopupVisible = false;
  final ScrollController _scrollController = ScrollController();
  bool _isSectionsVisible = true;
  double _lastScrollOffset = 1;
  Offset _initialDragPosition = Offset.zero; // Track initial drag position
  late TabController _tabController;

  PageController _pageController = PageController(viewportFraction: 0.3);
  final double _currentHeight = 500; // Default height for first tab
  Map<String, String>? dropdownValue;
  int? postypeid = 0;
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
    _tabController = TabController(length: 2, vsync: this);
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
    _tabController.addListener(() {
      if (_tabController.index == 0) {
        setState(() {
          isSliverAppBarVisible = true; // Show SliverAppBar when switching tabs
        });
      } else if (_tabController.index == 1) {
        setState(() {
          isSliverAppBarVisible = true; // Show SliverAppBar when switching tabs
        });
      }
      setState(() {
        isSliverAppBarVisible = true; // Show SliverAppBar when switching tabs
      });
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
    _searchController.dispose(); // Dispose the controller
    _scrollController.dispose();
    _debouncer.close(); // Close the debouncer if applicable
    _pageController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void scrollToTop() {
  if (_scrollController.hasClients) {
    _scrollController.animateTo(
      0.0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
    final pselectedIndex = ref.watch(bottomNavIndexProvider);
    final SearchProductModels =
        ref.watch(searchProvider(_searchController.text));

    Future<void> refreshprovider() async {
      ref.watch(bottomNavIndexProvider);
    }
     void didChangeDependencies() {
    super.didChangeDependencies();

    ref.listen<bool>(scrollToTopProvider, (previous, next) {
      if (next) {
        scrollToTop();
        ref.read(scrollToTopProvider.notifier).state = false; // Reset trigger
      }
    });
  }

    Future<void> refreshProvider() async {
      // You can perform any necessary refresh actions here.
      // For example, re-fetching data or resetting some state.
      ref.refresh(bottomNavIndexProvider);
      ref.refresh(searchProvider(_searchController.text));
      setState(() {});
    }
        // final scrollToTop = ref.watch(scrollToTopProvider);

  //  void _scrollToTop() {
  //   if (_scrollController.hasClients) {
  //     _scrollController.animateTo(
  //       0.0,
  //       duration: const Duration(milliseconds: 300),
  //       curve: Curves.easeInOut,
  //     );
  //   }
  // }

    return RefreshIndicator(
      onRefresh: refreshProvider,
      child: DefaultTabController(
        initialIndex: 1,
        length: 2, // Two tabs: "Following" and "For You"
        child: Scaffold(
          extendBody: true,

          // backgroundColor: Colors.transparent,
          key: _key,
          resizeToAvoidBottomInset: false,
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
                  controller: widget._totopscrollController,
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // expandedContainer()
                          TabBar(
                            controller: _tabController,
                            dividerHeight: 0,
                            padding: EdgeInsets.zero,
                            indicatorColor: const Color(0xFF392574),
                            labelColor: Colors.black,
                            unselectedLabelColor: Colors.grey,
                            tabs: const [
                              Tab(text: "For You"),
                              Tab(text: "Following"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SliverFillRemaining(
                      child: SizedBox(
                        height: MediaQuery.of(context)
                            .size
                            .height, // Ensuring it has a height
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  _buildForYouTabContent(ref),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  _buildFollowingTabContent(ref),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
            ),
          ),
        ),
      ),
    );
  }

  // Following Tab Content
  Widget _buildFollowingTabContent(WidgetRef ref) {
    final asyncFollowingFeedContent = ref.watch(getFeedOfFollowingProvider);
    final asyncFollowingStoryContent = ref.watch(getFollowingStoryProvider);
    Future<void> refreshprovider() async {
      ref.refresh(getFollowingStoryProvider);
      ref.refresh(getFeedOfFollowingProvider);
    }

    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        spacing: 5.h,
        children: [
          SizedBox(height: 5.h),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            child: asyncFollowingStoryContent.when(
                data: (feedStoryData) {
                  final feedStoryContent = feedStoryData.data?.feedstory;

                  return SizedBox(
                    height: feedStoryContent == null ||
                            feedStoryContent.posts == null
                        ? 20.h
                        : 95.h,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (feedStoryContent != null &&
                              feedStoryContent.posts != null)
                            Expanded(
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: feedStoryContent.posts!.length,
                                itemBuilder: (context, index) {
                                  final Post story =
                                      feedStoryContent.posts![index];

                                  return FeedStoryAddWidget(
                                    index: index,
                                    vendorName:
                                        story.vendorName ?? "Unknown Vendor",
                                    vendorImage: story.vendorImage ??
                                        "https://example.com/default-image.png",
                                    storyCount: story.storyCount ?? 0,
                                    showGift: story.hasSponsoredGifts ?? false,
                                    feedStoryContent: feedStoryContent,
                                    userId: story.vendorId ?? "",
                                  );
                                },
                              ),
                            )
                          else
                            const Center(
                              child: Text("No stories available"),
                            ),
                        ],
                      ),
                    ),
                  );
                },
                loading: () => SizedBox(
                      height: 20.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Shimmer.fromColors(
                                    baseColor: Colors.grey[300]!,
                                    highlightColor: Colors.grey[100]!,
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                error: (error, stack) =>
                    const Center(child: Text("please login"))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: asyncFollowingFeedContent.when(
                data: (feedData) {
                  if (feedData.data != null &&
                      feedData.data!.feedPost != null) {
                    final feedItems = feedData.data!.feedPost!;
                    return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: feedItems.length,
                        itemBuilder: (context, index) {
                          final feedItem = feedItems[index];
                          final userDetails = feedItem.userDetail;
                          final interested = feedItem.interested;
                          final feedDetail = feedItem.feedDetail;
                        //  print('kala ${feedItem?.captionTitle}');

                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 3.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FeedContainer(
                                  productinfo: feedItem.captionTitle,
                                  refreshprovider: () {
                                    refreshprovider();
                                  },
                                  isLiked: feedItem.wowstatus,
                                  hassttory: userDetails!.storyCount! > 0
                                      ? true
                                      : false,
                                  productCount:
                                      userDetails.productCount.toString(),
                                  suscribers:
                                      userDetails.subscribers.toString(),
                                  vendorName: userDetails.vendorName!,
                                  vendorImage: userDetails.vendorImage!,
                                  livePrize: userDetails.livePrize.toString(),
                                  distance:
                                      userDetails.distance?.toStringAsFixed(0),
                                  interested:
                                      interested?.interested?.toString(),
                                  engagement:
                                      interested?.engagement?.toString(),
                                  views: interested?.views,
                                  feedDetailImage: feedDetail!.image!,
                                  membershipTitle:
                                      userDetails.membershipTitle ?? '',
                                  membershipId: userDetails.membershipId ?? '',
                                  showGift:
                                      userDetails.hasSponsoredGifts ?? false,
                                  userId: feedItem.userId ?? '',
                                  feedId: feedItem.id ?? '',
                                ),
                                PromoCard(
                                  products: feedItem.products!
                                      .map((product) => {
                                            "imagePath": product.image ??
                                                "https://smartbazaar.jianjun-rnd.com.np/uploads/smartbazaar_app_loading_logo.png",
                                            "price": product.price ?? "N/A",
                                            "id": feedItem.id ?? "",
                                          })
                                      .toList(),
                                  captionTitle: '${feedItem.captionTitle}',
                                  caption: feedItem.caption ?? '',
                                  offerText:
                                      feedItem.offers ?? 'Special Offer!',
                                ),
                              ],
                            ),
                          );
                        });
                  } else {
                    return const Center(child: Text('No feed items available'));
                  }
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stack) =>
                    const Center(child: Text("please login"))),
          ),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }

  // For You Tab Content
  Widget _buildForYouTabContent(WidgetRef ref) {
    final asyncForYouFeedContent = ref.watch(getForYouFeedApiProvider);
    final asyncForYouStoryContent = ref.watch(getForYouStoryProvider);

    Future<void> refreshprovider() async {
      ref.refresh(getForYouFeedApiProvider);
      ref.refresh(getForYouStoryProvider);
    }

    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 5.h,
        children: [
          SizedBox(height: 5.h),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            child: asyncForYouStoryContent.when(
              data: (feedStoryData) {
                final feedStoryContent = feedStoryData.data?.feedstory;
                final posts = feedStoryContent?.posts ?? [];

                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: SizedBox(
                    height: feedStoryContent == null || posts.isEmpty
                        ? 20.h
                        : 100.h,
                    child: posts.isNotEmpty
                        ? ListView.builder(
                            padding: EdgeInsets.only(left: 3.w),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: posts.length,
                            itemBuilder: (context, index) {
                              final story = posts[index];
                              return FeedStoryAddWidget(
                                index: index,
                                vendorName:
                                    story.vendorName ?? "Unknown Vendor",
                                vendorImage: story.vendorImage ??
                                    "https://example.com/default-image.png",
                                storyCount: story.storyCount ?? 0,
                                showGift: story.hasSponsoredGifts ?? false,
                                feedStoryContent: feedStoryContent!,
                                userId: story.vendorId ?? '',
                              );
                            },
                          )
                        : const Center(child: Text("No stories available")),
                  ),
                );
              },
              loading: () => SizedBox(
                height: 75.h,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (_, __) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        width: 80,
                        height: 80,
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
                height: 70.h,
                child: Center(
                  child: Text(
                    error.toString().contains('Session has expired')
                        ? 'Please log in again.'
                        : 'Error: $error',
                  ),
                ),
              ),
            ),
          ),
          asyncForYouFeedContent.when(
              data: (feedData) {
                if (feedData.data != null && feedData.data!.feedPost != null) {
                  final feedItems = feedData.data!.feedPost!;
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: feedItems.length,
                    itemBuilder: (context, index) {
                      final feedItem = feedItems[index];
                      final userDetails = feedItem.userDetail;
                      final interested = feedItem.interested;
                      final feedDetail = feedItem.feedDetail;
                      // print("kala ${feedItem.wow_status}");

                      // return _buildFeedItem(feedItems[index]);
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 2.0,
                          //  horizontal: 16,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FeedContainer(
                              productinfo: feedItem.captionTitle,
                              refreshprovider: () async {
                                refreshprovider();
                              },
                              isLiked: feedItem.wow_status,
                              hassttory:
                                  userDetails!.storyCount! > 0 ? true : false,
                              productCount: userDetails.productCount.toString(),
                              suscribers: userDetails.subscribers.toString(),
                              vendorName: userDetails.vendorName!,
                              vendorImage: userDetails.vendorImage!,
                              livePrize: userDetails.livePrize.toString(),
                              distance:
                                  userDetails.distance?.toStringAsFixed(0),
                              interested: interested?.interested?.toString(),
                              engagement: interested?.engagement?.toString(),
                              views: interested?.views,
                              feedDetailImage: feedDetail!.image!,
                              membershipTitle: userDetails.membershipTitle,
                              membershipId: userDetails.membershipId ?? '',
                              showGift: userDetails.hasSponsoredGifts ?? false,
                              userId: feedItem.userId ?? '',
                              feedId: feedItem.id ?? '',
                              //feedDetail: feedItem.feedDetail,
                            ),
                            PromoCard(
                              products: feedItem.products!
                                  .map((product) => {
                                        "imagePath": product.image ??
                                            "https://smartbazaar.jianjun-rnd.com.np/uploads/smartbazaar_app_loading_logo.png",
                                        "price": product.price ?? "N/A",
                                        "id": feedItem.id ?? "",
                                      })
                                  .toList(),
                              captionTitle: '${feedItem.captionTitle}',
                              caption: feedItem.caption ?? '',
                              offerText: feedItem.offers ?? 'Special Offer!',
                            ),
                          ],
                        ),
                      );
                    },
                  );
                } else {
                  return const Center(child: Text('No feed items available'));
                }
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) =>
                  const Center(child: Text("please login"))),
          const SizedBox.shrink()
        ],
      ),
    );
  }
}

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
                    tag: 'FeedHero',
                    child: TweenAnimationBuilder<Color?>(
                      tween: ColorTween(
                        begin: Colors.blue.withOpacity(0.6),
                        end: Colors.purple.withOpacity(0.6),
                      ),
                      duration: const Duration(seconds: 2),
                      builder: (context, color, child) {
                        return Container(
                          margin: EdgeInsets.only(right: 3.w),
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: const Color.fromARGB(255, 115, 92, 119),
                                width: 0.7),
                          ),
                          child: CircleAvatar(
                            radius: 18,
                            backgroundImage:
                                NetworkImage(SmartClient.userPhoto),
                          ),
                        );
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
                            tag: 'FeedHero',
                            child: Container(
                              margin: EdgeInsets.only(right: 3.w),
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.black, width: 0.5),
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
                          SizedBox(height: 10.h),
                          IconButton(
                            onPressed: () {
                              Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(
                                  builder: (context) => const ScanScreen(),
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
                                  builder: (context) => const AddToCartScreen(),
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
                              Navigator.of(context, rootNavigator: true).push(
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
                                  builder: (context) => const MyOrderScreen(),
                                ),
                              );
                            },
                            icon: Column(
                              children: [
                                Image.asset('assets/images/tennis.png'),
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
                      ),
                    ),
                  ),
          ),
        );
      },
    );
  }
}
