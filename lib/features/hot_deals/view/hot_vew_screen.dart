import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smartbazar/constant/button_nav_sheet.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/brand_bazar/brand_bazar_screen.dart';
import 'package:smartbazar/features/bussiness_tab_screen/view/business_tab_screen.dart';
import 'package:smartbazar/features/button_nav_bar/cusom_btn_bar/custom_bottom_nav.dart';
import 'package:smartbazar/features/feed_page/view/feed_page_screen.dart';
import 'package:smartbazar/features/home/api/buy_or_now_provider.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/home/view/header.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/hot_deals/api/hot_deals_provider.dart';
import 'package:smartbazar/features/hot_deals/view/components/hot_deals_components.dart';
import 'package:smartbazar/features/message/view/chat_screen.dart';
import 'package:smartbazar/features/message/view/message_view_screen.dart';
import 'package:smartbazar/features/product_details/api/check_enquire_provider.dart';
import 'package:smartbazar/features/product_details/constant/all_product_detail_widget.dart';
import 'package:smartbazar/features/product_details/constant/product_detail_widget.dart';
import 'package:smartbazar/features/product_details/model/enquire_model.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/scratch_win/screen/subscribe_win_every_day_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_profile_screen.dart';
import 'package:smartbazar/features/vendor/view/my_subscribe_and_win_page.dart';
import 'package:smartbazar/main.dart';

int selectedIndex = 0;
final ValueNotifier<bool> showSideBar = ValueNotifier(true);
final _selectedIndexProvider = StateProvider<int>((ref) => 0);

class HotViewScreen extends ConsumerStatefulWidget {
  String header = 'sponsored';
  HotViewScreen({Key? key, required this.header}) : super(key: key);

  @override
  ConsumerState<HotViewScreen> createState() => _HotViewScreenState();
}

class _HotViewScreenState extends ConsumerState<HotViewScreen>
    with SingleTickerProviderStateMixin {
  bool _showSearchProductModels = false;
  void _onSearchFocusChanged(bool hasFocus) {
    setState(() {
      _showSearchProductModels = hasFocus;
    });
  }

  // final GlobalKey<ScaffoldState> _key = GlobalKey();
  final TextEditingController _searchController = TextEditingController();
  final _debouncer = BehaviorSubject<String>();
  int? selectedIndex = 3;
  // final ScrollController _scrollController = ScrollController();
  bool _isSectionsVisible = true;
  // double _lastScrollOffset = 0;
  Offset _initialDragPosition = Offset.zero;
  // final ValueNotifier<bool> _showSideBar = ValueNotifier<bool>(true);
  late TabController tabController;

  // final List<String> _services = [
  //   'SHOPZONE',
  //   'TRADEHUB',
  //   'SERVICES',
  //   'USED',
  //   'HOB'
  // ];
  void _onPageChanged(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  int selectedTabIndex = 0;

  PageController _pageController = PageController(viewportFraction: 0.3);
  bool isSliverAppBarVisible = true;

  @override
  void initState() {
    _pageController = PageController(
      viewportFraction: 0.3,
      initialPage: selectedIndex!,
    );

    super.initState();
    tabController = TabController(length: 4, vsync: this);

    _searchController.addListener(() {
      _debouncer.add(_searchController.text);
    });

    _debouncer.debounceTime(const Duration(milliseconds: 300)).listen((query) {
      debugPrint("Search query: $query");
      ref.refresh(
          searchProvider(query)); // Ensure this provider works as expected
      setState(() {
        // _showSearchProductModels = query.isNotEmpty;
      });
    });
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

  int _selectedTab = 0;
  final List<Widget> _pages = [
    const HomeScreen(),
    FeedScreen(),
    const MessageViewScreen(),
    const VendorProfileScreen(),
  ];
  void _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Future<EnquireResponse> getEnquire(WidgetRef ref, String id) async {
      try {
        return await ref.read(checkEnquireProvider(id).future);
      } catch (e) {
        print("Error fetching enquiry: $e");
        throw Exception("Failed to fetch enquiry data");
      }
    }

    final SearchProductModels =
        ref.watch(searchProvider(_searchController.text));
    final getHotData = ref.watch(getHotDealsProvider(widget.header));
    Future<void> refresh() async {
      ref.refresh(getHotDealsProvider(widget.header));
    }

    debugPrint('Search Results: ${SearchProductModels.asData?.value}');
    return Scaffold(
        resizeToAvoidBottomInset: false,
        drawerScrimColor: const Color(0xff651c50),
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
                                itemCount: items.length,
                                padEnds: false,
                                controller: _pageController,
                                onPageChanged: (value) {
                                  ref
                                      .read(_selectedIndexProvider.notifier)
                                      .state = value;
                                },
                                itemBuilder: (context, index) {
                                  Map<String, dynamic> data = items[index];

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
            
                    const SliverToBoxAdapter(
                      child: hot_deals_container(),
                    ),
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: 5.h,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, top: 5, bottom: 5),
                            child: Row(
                              children: [
                                widget.header == 'hotdeals'
                                    ? Text(
                                        'HOT DEALS',
                                        style: headerstyle.copyWith(
                                            fontStyle: GoogleFonts.quicksand()
                                                .fontStyle,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15,
                                            color: Colors.black),
                                      )
                                    : Text(
                                        'Sponsored',
                                        style: headerstyle.copyWith(
                                            fontStyle: GoogleFonts.quicksand()
                                                .fontStyle,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15,
                                            color: Colors.black),
                                      ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Image.asset(
                                  'assets/images/flameIcon.png',
                                  width: 16.w,
                                  height: 17.h,
                                )
                              ],
                            ),
                          ),
                          const SizedBox()
                          // Text(
                          //   "view all",
                          //   style: headerstyle.copyWith(
                          //       fontSize: 16,
                          //       fontWeight: FontWeight.w400,
                          //       color: ColorConstant.blackColor),
                          // )
                        ],
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          int crossAxisCount = constraints.maxWidth > 600
                              ? 3
                              : 2; // Adjust grid count based on screen width

                          return Padding(
                            padding: EdgeInsets.only(left: 13.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                getHotData.when(
                                  data: (data) {
                                    return Wrap(
                                      spacing: 5.w,
                                      runSpacing: 10.h,
                                      children: data.map((res) {
                                        return SizedBox(
                                          width: (constraints.maxWidth /
                                                  crossAxisCount) -
                                              14, // Dynamic width
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
                                                            builder:
                                                                (BuildContext
                                                                    context) {
                                                              return SizedBox(
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    0.8,
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
                                                                  .post_id!,
                                                            ),
                                                            ref: ref,
                                                            showNavBar: false,
                                                          );
                                                  },
                                                ).catchError((error) {
                                                  print('Error: $error');
                                                });
                                              },
                                              savedid: res.savedByLoggedUser ==
                                                          null ||
                                                      res.savedByLoggedUser!
                                                          .isEmpty
                                                  ? []
                                                  : res.savedByLoggedUser
                                                      ?.map((e) => SavedPost(
                                                            id: e.id,
                                                            userId: e.userId,
                                                            postId: e.postId,
                                                            createdAt:
                                                                e.createdAt,
                                                            updatedAt:
                                                                e.updatedAt,
                                                          ))
                                                      .toList(),
                                              onRefresh: () {
                                                refresh();
                                              },
                                              productid: res.id,
                                              lat: res.user[0].latitude,
                                              long: res.user[0].longitude,
                                              membershipid:
                                                  res.user[0].membership_id,
                                              posttype: res.post_type_id,
                                              didcountpercentage:
                                                  res.discount_percentage,
                                              id: int.tryParse(
                                                  res.user[0].user_id),
                                              shortestDistance:
                                                  res.user[0].shortestDistance,
                                              issponsored:
                                                  res.user[0].sponsored ??
                                                      false,
                                              distance:
                                                  res.user[0].shortestDistance,
                                              wow: res.wow.toString(),
                                              discounttedPrice: res
                                                  .discount_percentage
                                                  .toString(),
                                              comment:
                                                  res.commentnum.toString(),
                                              avg_rating:
                                                  res.avg_rating?.toDouble() ??
                                                      0.0,
                                              offer: res.offers,
                                              productImage: res.imageUrl,
                                              Vimage: res.user[0].photo,
                                              vendorname: res.user[0].name,
                                              title: res.title,
                                              price: res.price,
                                              similarproductCount:
                                                  res.similarproductCount,
                                              membershipColor:
                                                  res.user[0].membership_color,
                                              membershipTitle:
                                                  res.user[0].membership_title,
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                    );
                                  },
                                  error: (error, stackTrace) {
                                    return const Center(
                                        child: Text("Error loading data"));
                                  },
                                  loading: () => Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.w),
                                    child: Wrap(
                                      spacing: 10.w,
                                      runSpacing: 10.h,
                                      children: List.generate(6, (index) {
                                        return SizedBox(
                                          width: (constraints.maxWidth /
                                                  crossAxisCount) -
                                              15,
                                          child: Shimmer.fromColors(
                                            baseColor: Colors.grey[300]!,
                                            highlightColor: Colors.grey[100]!,
                                            child: Container(
                                              height:
                                                  180.h, // Placeholder height
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(15.0),
                                              ),
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 5.w),
                                            ),
                                          ),
                                        );
                                      }),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: 40.h,
                      ),
                    ),
                     SliverToBoxAdapter(
                      child: SizedBox(
                        height: 30.h,
                      ),
                    ),
                  ],
                )
              ],
            )));
  }
}
