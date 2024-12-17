import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rxdart/rxdart.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/home/view/header.dart';
import 'package:smartbazar/features/product_details/constant/product_detail_widget.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';

class BusinessTabScreen extends ConsumerStatefulWidget {
  const BusinessTabScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<BusinessTabScreen> createState() => _BusinessTabScreenState();
}

class _BusinessTabScreenState extends ConsumerState<BusinessTabScreen>
    with SingleTickerProviderStateMixin {
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
        // _showSearchResults = query.isNotEmpty;
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
    return Scaffold(
      // bottomNavigationBar: BottomNavigationScreen(),
      body: SingleChildScrollView(
        child: DefaultTabController(
          length: 4,
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
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset('assets/images/group.png'),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                            height: 50,
                            child: NewSearchWidget(
                              onchnage: (p0) {},
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
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
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: Container(
                            height: 5,
                            width: 5,
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
                        controller: _pageController,
                        // onPageChanged: _onPageChanged,
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          Map<String, dynamic> data = items[index];

                          // Highlight only when index == 3
                          bool isActive = index == 3;

                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                              _pageController.animateToPage(
                                index,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
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
                      const Padding(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Brandbazaar",
                              style: TextStyle(
                                color: Color(0xFFD9D9D9),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "BuyOrWin",
                              style: TextStyle(
                                color: Color(0xFFD9D9D9),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Showing results for “watch",
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
                  TabBar(
                    tabAlignment: TabAlignment.start,
                    isScrollable: true,
                    onTap: (index) {
                      setState(() {
                        selectedTabIndex = index;
                      });
                    },
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    tabs: [
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "All Listing",
                              style: headerstyle.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: ColorConstant.blackColor),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 7, vertical: 5),
                              margin: EdgeInsets.only(left: 5.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color(0xff781740)),
                              child: Text(
                                "21",
                                style: headerstyle,
                              ),
                            )
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Brand new",
                              style: headerstyle.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: ColorConstant.blackColor),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 7, vertical: 5),
                              margin: EdgeInsets.only(left: 5.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color(0xff362677)),
                              child: Text(
                                "10",
                                style: headerstyle,
                              ),
                            )
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Used",
                              style: headerstyle.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: ColorConstant.blackColor),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 7, vertical: 5),
                              margin: EdgeInsets.only(left: 5.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color(0xff362677)),
                              child: Text(
                                "5",
                                style: headerstyle,
                              ),
                            )
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Services",
                              style: headerstyle.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: ColorConstant.blackColor),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 7, vertical: 5),
                              margin: EdgeInsets.only(left: 5.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color(0xff362677)),
                              child: Text(
                                "5",
                                style: headerstyle,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2000.h,
                    width: double.infinity,
                    child: TabBarView(children: [
                      const Column(
                        children: [
                          big_container(),
                          big_container(),
                          big_container(),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 360.h,
                            width: double.infinity,
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              clipBehavior: Clip.antiAlias,
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Card(
                                  shadowColor:
                                      Colors.transparent.withOpacity(0.4),
                                  margin: const EdgeInsets.all(2),
                                  elevation: 1,
                                  child: ProductDetailWidget(),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: 360.h,
                            width: double.infinity,
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              clipBehavior: Clip.antiAlias,
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Card(
                                  shadowColor:
                                      Colors.transparent.withOpacity(0.4),
                                  margin: const EdgeInsets.all(2),
                                  elevation: 1,
                                  child: ProductDetailWidget(),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: 360.h,
                            width: double.infinity,
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              clipBehavior: Clip.antiAlias,
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Card(
                                  shadowColor:
                                      Colors.transparent.withOpacity(0.4),
                                  margin: const EdgeInsets.all(2),
                                  elevation: 1,
                                  child: ProductDetailWidget(),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      const Text("data"),
                      const Text("data")
                    ]),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
