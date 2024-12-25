import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rxdart/rxdart.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/brand_bazar/brand_bazar_screen.dart';
import 'package:smartbazar/features/bussiness_tab_screen/view/api/search_result_provider.dart';
import 'package:smartbazar/features/home/api/buy_or_now_provider.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/home/view/header.dart';
import 'package:smartbazar/features/product_details/constant/all_product_detail_widget.dart';
import 'package:smartbazar/features/product_details/constant/product_detail_widget.dart';
import 'package:smartbazar/features/product_details/constant/product_detail_widget_list_search.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/scratch_win/screen/subscribe_win_every_day_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_profile_screen.dart';

class BusinessTabScreen extends ConsumerStatefulWidget {
  final String query;
  const BusinessTabScreen({Key? key, required this.query}) : super(key: key);

  @override
  ConsumerState<BusinessTabScreen> createState() => _BusinessTabScreenState();
}

class _BusinessTabScreenState extends ConsumerState<BusinessTabScreen>
    with SingleTickerProviderStateMixin {
  late String _query;
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
  Map<String, String> sortOptions = {
    'price: Low to High': 'price-low-to-high',
    'price: High to Low': 'price-high-to-low',
    'Relevance': 'relevance',
    'Date': 'date',
  };
  String dropdownValue = 'sort-type';
  bool _showSearchProductModels = false;

  void _onPageChanged(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void _onSearchFocusChanged(bool hasFocus) {
    setState(() {
      _showSearchProductModels = hasFocus;
    });
  }

  int selectedTabIndex = 0;

  PageController _pageController = PageController(viewportFraction: 0.3);

  @override
  void initState() {
    _query = widget.query;
    // _searchController.text =
    //     _searchController.text.isEmpty ? _query : _searchController.text;
    _pageController = PageController(
      viewportFraction: 0.3,
      initialPage: selectedIndex!,
    );

    // Use the addPostFrameCallback to jump to the selected page after the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _pageController.jumpToPage(selectedIndex!);
    });
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

  @override
  Widget build(BuildContext context) {
    final searchData = ref.watch(getSearchResponseProvider(_query));
    final SearchProductModels =
        ref.watch(searchProvider(_searchController.text));

    return Scaffold(
      // bottomNavigationBar: BottomNavigationScreen(),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: IntrinsicHeight(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                              child: Image.asset('assets/images/group.png')),
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
                                      title: Text(product.title),
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
                                            const SubscribeAndWinEveryDay(),
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
                searchData.when(
                  data: (data) {
                    // print("bibash ${data.brandNew?.first.id?? 0}");
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Showing results for ${widget.query}",
                                style: headerstyle.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: ColorConstant.blackColor),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: ColorConstant.blackColor,
                                      width: 0.9,
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                child: DropdownButton(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.w, vertical: 2.h),
                                  isDense: true,
                                  icon: const Icon(Icons.keyboard_arrow_down,
                                      color: ColorConstant.blackColor),
                                  isExpanded: false,
                                  underline: const SizedBox(),
                                  elevation: 0,
                                  hint: Text(
                                    "Sort by",
                                    style: headerstyle.copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: ColorConstant.blackColor),
                                  ),
                                  items: const [],
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        DefaultTabController(
                            length: 4,
                            child: Column(
                              children: [
                                TabBar(
                                  tabAlignment: TabAlignment.start,
                                  isScrollable: true,
                                  onTap: (index) {
                                    setState(() {
                                      selectedTabIndex = index;
                                    });
                                  },
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  tabs: [
                                    Tab(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "All Listing",
                                            style: headerstyle.copyWith(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                color:
                                                    ColorConstant.blackColor),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 7, vertical: 5),
                                            margin: EdgeInsets.only(left: 5.h),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: const Color(0xff781740)),
                                            child: Text(
                                              data.brandNew?.length
                                                      .toString() ??
                                                  '0',
                                              style: headerstyle,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Tab(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Business",
                                            style: headerstyle.copyWith(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                color:
                                                    ColorConstant.blackColor),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 7, vertical: 5),
                                            margin: EdgeInsets.only(left: 5.h),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: const Color(0xff362677)),
                                            child: Text(
                                              data.business?.length
                                                      .toString() ??
                                                  '0',
                                              style: headerstyle,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Tab(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Used",
                                            style: headerstyle.copyWith(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                color:
                                                    ColorConstant.blackColor),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 7, vertical: 5),
                                            margin: EdgeInsets.only(left: 5.h),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: const Color(0xff362677)),
                                            child: Text(
                                              data.used?.length.toString() ??
                                                  '0',
                                              style: headerstyle,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Tab(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Services",
                                            style: headerstyle.copyWith(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                color:
                                                    ColorConstant.blackColor),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 7, vertical: 5),
                                            margin: EdgeInsets.only(left: 5.h),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: const Color(0xff362677)),
                                            child: Text(
                                              data.services?.toString() ?? '0',
                                              style: headerstyle,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 15.3,
                                  child: TabBarView(children: [
                                    data.brandNew!.isEmpty
                                        ? nolistingfound()
                                        : LayoutBuilder(
                                            builder: (context, constraints) {
                                            return GridView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(), // Disable grid scrolling
                                              shrinkWrap:
                                                  true, // Adjust to fit content
                                              itemCount: data.brandNew?.length,

                                              gridDelegate:
                                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                                // mainAxisExtent:
                                                //     constraints.maxWidth > 430
                                                //         ? 4
                                                //         : 2,
                                                // crossAxisCount: 2,
                                                // crossAxisSpacing: 0.2,
                                                // mainAxisSpacing: 0.2,
                                                // childAspectRatio: 0.9,
                                                mainAxisExtent: 400,
                                                crossAxisCount: 2,
                                                crossAxisSpacing: 0.2,
                                                mainAxisSpacing: 0.2,
                                                childAspectRatio: 0.9,
                                              ),
                                              itemBuilder: (context, index) {
                                                GlobalModel res =
                                                    data.brandNew![index];
                                                return InkWell(
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            ProductDetailScreen(
                                                                productId:
                                                                    res.id),
                                                      ),
                                                    );
                                                  },
                                                  child: AllProductDetailWidget(
                                                      issponsored: res
                                                          .user[0].sponsored!,
                                                      productImage:
                                                          res.imageUrl,
                                                      Vimage:
                                                          res.user[0].photo!,
                                                      vendorname:
                                                          res.user[0].name!,
                                                      title: res.title,
                                                      price: res.price,
                                                      similarproductCount: res
                                                          .similarproductCount,
                                                      membershipColor: res
                                                          .user[0]
                                                          .membership_color!,
                                                      membershipTitle: res
                                                          .user[0]
                                                          .membership_title!),
                                                );
                                              },
                                            );
                                          }),
                                    Column(
                                      children: data.business!.map(
                                        (e) {
                                          return BigContainer(
                                            memebertitle: e.membershipTitle!,
                                            lat: double.tryParse(
                                                    e.latitude ?? '0') ??
                                                0,
                                            long: double.tryParse(
                                                    e.longitude ?? '0') ??
                                                0,
                                            Cnumber: e.contact ?? '9887654867',
                                            deals_circle: e.dealsCircle!,
                                            location: e.location ?? 'Nepal',
                                            total_connections:
                                                e.totalConnections!,
                                            total_prize_worth:
                                                e.totalPrizeWorth!,
                                            title: e.vendorName!,
                                            contact: e.contact ?? '9845784578',
                                            logo: e.logo!,
                                            membershipTitle: e.membershipTitle!,
                                            storyCount: e.storyCount!,
                                            hasSpo: e.hasSponsoredGifts!,
                                          );
                                        },
                                      ).toList(),
                                    ),
                                    data.used!.isEmpty
                                        ? nolistingfound()
                                        : LayoutBuilder(
                                            builder: (context, constraints) {
                                            return GridView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(), // Disable grid scrolling
                                              shrinkWrap:
                                                  true, // Adjust to fit content
                                              padding: EdgeInsets.zero,
                                              itemCount: data.used?.length,
                                              gridDelegate:
                                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                                mainAxisExtent: 400,
                                                crossAxisCount: 2,
                                                crossAxisSpacing: 0.2,
                                                mainAxisSpacing: 0.2,
                                                childAspectRatio: 0.9,
                                              ),

                                              itemBuilder: (context, index) {
                                                GlobalModel res =
                                                    data.used![index];
                                                return AllProductDetailWidget(
                                                    issponsored:
                                                        res.user[0].sponsored!,
                                                    productImage: res.imageUrl,
                                                    Vimage: res.user[0].photo!,
                                                    vendorname:
                                                        res.user[0].name!,
                                                    title: res.title,
                                                    price: res.price,
                                                    similarproductCount:
                                                        res.similarproductCount,
                                                    membershipColor: res.user[0]
                                                        .membership_color!,
                                                    membershipTitle: res.user[0]
                                                        .membership_title!);
                                              },
                                            );
                                          }),
                                    data.services!.isEmpty
                                        ? nolistingfound()
                                        : GridView.builder(
                                            physics:
                                                const NeverScrollableScrollPhysics(), // Disable grid scrolling
                                            shrinkWrap:
                                                true, // Adjust to fit content
                                            padding: EdgeInsets.zero,
                                            itemCount: data.services?.length,
                                            gridDelegate:
                                                const SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent: 400,
                                              crossAxisCount: 2,
                                              crossAxisSpacing: 0.2,
                                              mainAxisSpacing: 0.2,
                                              childAspectRatio: 0.9,
                                            ),

                                            itemBuilder: (context, index) {
                                              GlobalModel res =
                                                  data.services![index];
                                              return AllProductDetailWidget(
                                                  issponsored:
                                                      res.user[0].sponsored!,
                                                  productImage: res.imageUrl,
                                                  Vimage: res.user[0].photo!,
                                                  vendorname: res.user[0].name,
                                                  title: res.title,
                                                  price: res.price,
                                                  similarproductCount:
                                                      res.similarproductCount,
                                                  membershipColor: res.user[0]
                                                      .membership_color!,
                                                  membershipTitle: res.user[0]
                                                      .membership_title!);
                                            },
                                          ),
                                  ]),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                              ],
                            )),
                      ],
                    );
                  },
                  error: (error, stackTrace) {
                    return Text("error is $error");
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
