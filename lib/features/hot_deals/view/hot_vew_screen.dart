import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rxdart/rxdart.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/view/bottom_navigation_bar.dart';
import 'package:smartbazar/features/feed_page/view/feed_page_screen.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/home/view/header.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/hot_deals/view/components/hot_deals_components.dart';
import 'package:smartbazar/features/message/view/message_view_screen.dart';
import 'package:smartbazar/features/product_details/constant/product_detail_widget.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_profile_screen.dart';

class HotViewScreen extends ConsumerStatefulWidget {
  const HotViewScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<HotViewScreen> createState() => _HotViewScreenState();
}

class _HotViewScreenState extends ConsumerState<HotViewScreen>
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
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 70.w, vertical: 10.h),
        child: Card(
              elevation: 5,
              shape:const StadiumBorder(),
              color: const Color(0xfff5f2f6),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BottomNavigationBar(
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  type: BottomNavigationBarType.fixed,
                  selectedItemColor: const Color(0xff362677),
                  selectedIconTheme:
                      const IconThemeData(color: Color(0xff362677)),
                  selectedLabelStyle: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff36383C),
                  ),
                  unselectedLabelStyle: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff36383C),
                  ),
                  backgroundColor: const Color(0xfff5f2f6),
                  currentIndex: _selectedTab,
                  onTap: _changeTab,
                  items: <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      label: '',
                      icon: Container(
                        margin: const EdgeInsets.only(top: 2),
                        height: 40.h,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),
                        ),
                        child: Image.asset('assets/icon/home.png'),
                      ),
                    ),
                    BottomNavigationBarItem(
                      label: '',
                      icon: Container(
                        margin: const EdgeInsets.only(top: 2),
                        height: 40.h,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),
                        ),
                        child: Image.asset('assets/icon/news.png'),
                      ),
                    ),
                    BottomNavigationBarItem(
                      label: '',
                      icon: Container(
                        margin: const EdgeInsets.only(top: 2),
                        height: 40.h,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),
                        ),
                        child: Image.asset('assets/icon/message.png'),
                      ),
                    ),
                    BottomNavigationBarItem(
                      label: '',
                      icon: Container(
                        margin: const EdgeInsets.only(top: 2),
                        height: 40.h,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),
                        ),
                        child: Image.asset('assets/icon/wifi.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
      ),
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.w),
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
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/images/group.png'),
                      const SizedBox(
                        width: 20,
                      ),
                       SizedBox(height: 50, child: NewSearchWidget(
                        onchnage: (p0) {
                          
                        },
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
                      onPageChanged: _onPageChanged,
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
                                  if (data['icon'].toString().endsWith('.svg'))
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
              children: [
                Image.asset('assets/images/banner.png'),
                SizedBox(
                  height: 10.h,
                ),
                const hot_deals_container(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'HOT DEALS',
                          style: headerstyle.copyWith(
                              fontWeight: FontWeight.bold,
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
                    Text(
                      "view all",
                      style: headerstyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: ColorConstant.blackColor),
                    )
                  ],
                ),
                SizedBox(
                  height: 360.h,
                  width: double.infinity,
                  child: ListView.builder(
                    
        
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const ProductDetailWidget();
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
