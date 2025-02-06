import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rxdart/rxdart.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/brand_bazar/brand_bazar_screen.dart';
import 'package:smartbazar/features/bussiness_tab_screen/view/business_tab_screen.dart';
import 'package:smartbazar/features/feed_page/view/feed_page_screen.dart';
import 'package:smartbazar/features/home/api/buy_or_now_provider.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/home/view/header.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/hot_deals/api/hot_deals_provider.dart';
import 'package:smartbazar/features/hot_deals/view/components/hot_deals_components.dart';
import 'package:smartbazar/features/message/view/message_view_screen.dart';
import 'package:smartbazar/features/product_details/constant/all_product_detail_widget.dart';
import 'package:smartbazar/features/product_details/constant/product_detail_widget.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/scratch_win/screen/subscribe_win_every_day_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_profile_screen.dart';
import 'package:smartbazar/features/vendor/view/my_subscribe_and_win_page.dart';
import 'package:smartbazar/main.dart';

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
    const FeedScreen(),
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
    final SearchProductModels =
        ref.watch(searchProvider(_searchController.text));
    final getHotData = ref.watch(getHotDealsProvider(widget.header));
    Future<void> refresh() async {
      await ref.refresh(getHotDealsProvider(widget.header));
    }

    debugPrint('Search Results: ${SearchProductModels.asData?.value}');
    return Scaffold(
        extendBody: true,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
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
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const VendorProfileScreen(),
                                  ));
                            },
                            child: const CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(
                                  'assets/images/Smartbazaar-Icon-for-QR.png'),
                            )),
                        SizedBox(
                          width: 2.w,
                        ),
                        SizedBox(
                            height: 50,
                            child: NewSearchWidget(
                              onSearchFocusChanged: _onSearchFocusChanged,
                              searchController: _searchController,
                              ontapped: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => BusinessTabScreen(
                                        query: _searchController.text,
                                      ),
                                    ));
                              },
                              onchnage: (p0) {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) =>
                                //           const BusinessTabScreen(),
                                //     ));
                              },
                            )),
                      ],
                    ),
                    if (_showSearchProductModels)
                      Positioned(
                        top: 0.h, // Position just below the search bar
                        left: 0,
                        right: 0,
                        child: Container(
                          width: double.infinity,
                          color: Colors.white,
                          child: SearchProductModels.when(data: (results) {
                            if (results.isEmpty) {
                              return const SizedBox(
                                child: Text('No result found'),
                              ); // No results
                            }
                            return Card(
                              elevation: 8,
                              child: ListView.separated(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                primary: false,
                                itemCount: results.length,
                                itemBuilder: (context, index) {
                                  final product = results[index];
                                  return ListTile(
                                    title: Text(product.name),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                BusinessTabScreen(
                                              query: _searchController.text,
                                            ),
                                          ));

                                      setState(() {
                                        _showSearchProductModels = false;

                                        FocusScope.of(context).unfocus();
                                      });
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //     builder: (context) =>
                                      //         ProductDetailsScreen(
                                      //       productId: product.id,
                                      //     ),
                                      //   ),
                                      // );
                                    },
                                  );
                                },
                                separatorBuilder: (context, index) =>
                                    const Divider(),
                              ),
                            );
                          }, loading: () {
                            return null;

                            // return SizedBox(
                            //     width: 10.w,
                            //     height: 10.h,
                            //     child: CircularProgressIndicator());
                          }, error: (error, stack) {
                            return null;

                            // return SizedBox(
                            //     width: 10.w,
                            //     height: 10.h,
                            //     child: CircularProgressIndicator());
                          }),
                        ),
                      ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(items.length, (index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
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
                      height: 80.h,
                      child: PageView.builder(
                        itemCount: items.length,
                        padEnds: false,
                        controller: _pageController,
                        //  // onPageChanged: _onPageChanged,
                        itemBuilder: (context, index) {
                          Map<String, dynamic> data = items[index];

                          // Highlight only when index == 4
                          bool isActive = index == 1;
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                              _pageController.animateToPage(
                                2,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
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
                                        builder: (context) => data['screen']),
                                  );
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (data['icon']
                                        .toString()
                                        .endsWith('.svg'))
                                      SvgPicture.asset(
                                        data['icon'],
                                        alignment: Alignment.center,
                                        fit: BoxFit.contain,
                                        theme: const SvgTheme(
                                            currentColor: Color(0xffdd9d9d9)),
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
                    const Divider(
                      height: 0.1,
                      color: ColorConstant.grayColor,
                    ),
                    if (_isSectionsVisible)
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const BrandBazarScreen(),
                                    ));
                              },
                              child: const Text(
                                "Brandbazaar",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFFD9D9D9),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const MySubscribeAndWinPage(),
                                    ));
                              },
                              child: const Text(
                                "BuyOrWin",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFFD9D9D9),
                                  fontWeight: FontWeight.w500,
                                ),
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
                  padding: const EdgeInsets.all(5.0),
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
                height: 4.h,
              ),
              Column(
                children: [
                  Image.asset('assets/images/banner.png'),
                  SizedBox(
                    height: 10.h,
                  ),
                  const hot_deals_container(),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          widget.header == 'hotdeals'
                              ? Text(
                                  'HOT DEALS',
                                  style: headerstyle.copyWith(
                                      fontStyle:
                                          GoogleFonts.quicksand().fontStyle,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15,
                                      color: Colors.black),
                                )
                              : Text(
                                  'Sponsored DEALS',
                                  style: headerstyle.copyWith(
                                      fontStyle:
                                          GoogleFonts.quicksand().fontStyle,
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
                  getHotData.when(
                    data: (data) {
                      return SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection:
                            Axis.vertical, // Scroll vertically if needed
                        child: Wrap(
                          spacing: 5.w, // Horizontal space between items
                          runSpacing: 15.h, // Vertical space between rows
                          children: List.generate(
                            data.length,
                            (index) {
                              GlobalModel res = data[index];

                              return SizedBox(
                                width: (MediaQuery.of(context).size.width -
                                        25.w) /
                                    2, // Dynamically adjust to fit two items per row
                                child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  shadowColor: const Color(0xff3D215F)
                                      .withOpacity(0.5),
                                  elevation: 9,
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 5.w),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: AllProductDetailWidget(
                                    savedid: res.savedByLoggedUser == null ||
                                            res.savedByLoggedUser!.isEmpty
                                        ? []
                                        : res.savedByLoggedUser
                                            ?.map(
                                              (e) => SavedPost(
                                                  id: e.id,
                                                  userId: e.userId,
                                                  postId: e.postId,
                                                  createdAt: e.createdAt,
                                                  updatedAt: e.updatedAt),
                                            )
                                            .toList(),
                                    onRefresh: () {
                                      refresh();
                                    },
                                    productid: res.id,
                                    lat: res.user[0].latitude,
                                    long: res.user[0].longitude,
                                    membershipid: res.user[0].membership_id,
                                    posttype: res.post_type_id,
                                    didcountpercentage:
                                        res.discount_percentage,
                                    id: int.tryParse(res.id),
                                    shortestDistance:
                                        res.user[0].shortestDistance,
                                    issponsored:
                                        res.user[0].sponsored ?? false,
                                    distance: res.user[0].shortestDistance,
                                    wow: res.wow.toString(),
                                    discounttedPrice: res.discont,
                                    comment: res.commentnum,
                                    avg_rating:
                                        res.avg_rating?.toDouble() ?? 0.0,
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
                            },
                          ),
                        ),
                      );
                    },
                    error: (error, stackTrace) {
                      return const Text("data");
                    },
                    loading: () => const CircularProgressIndicator(),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
