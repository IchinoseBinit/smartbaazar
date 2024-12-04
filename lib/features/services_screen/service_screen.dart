import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/product_item_widget.dart';

import 'package:skeletonizer/skeletonizer.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/feed_page/widget/story_add_widget.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/home/view/buyorwin_widget.dart';
import 'package:smartbazar/features/home/view/header.dart';
import 'package:rxdart/rxdart.dart';

final List<String> _images = ['assets/images/home.png'];

class ServicesScreen extends ConsumerStatefulWidget {
  const ServicesScreen({super.key});

  @override
  ConsumerState<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends ConsumerState<ServicesScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final TextEditingController _searchController = TextEditingController();
  final _debouncer = BehaviorSubject<String>();
  int? selectedIndex = 1;
  final ScrollController _scrollController = ScrollController();
  bool _isSectionsVisible = true;
  double _lastScrollOffset = 0;
  Offset _initialDragPosition = Offset.zero;
  final ValueNotifier<bool> _showSideBar = ValueNotifier<bool>(true);

  // bool _showSearchResults = false;
  late TabController tabController;
  final List<String> _services = [
    'SHOPZONE',
    'TRADEHUB',
    'SERVICES',
    'USED',
    'HOB'
  ];
  PageController _pageController = PageController(viewportFraction: 0.3);

  void _onPageChanged(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

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
    tabController = TabController(length: 3, vsync: this);

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

  void _handleScroll() {
    final scrollOffset = _scrollController.offset;

    if (scrollOffset > _lastScrollOffset && scrollOffset > 100) {
      setState(() {
        _isSectionsVisible = false;
      });
    } else if (scrollOffset < _lastScrollOffset && scrollOffset < 50) {
      setState(() {
        _isSectionsVisible = true;
      });
    }

    _lastScrollOffset = scrollOffset;
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
  void dispose() {
    _debouncer.close();
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchFocusChanged(bool hasFocus) {
    setState(() {
      // _showSearchResults = hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ref.watch(getAdsProvider);
    //     final adsList = ref.watch(getAdsProvider);

    // final asyncbajarValue = ref.watch(getServiceProviderProvider);
    // final searchResults = ref.watch(searchProvider(
    //     _searchController.text)); // Ensure this updates correctly

    return Scaffold(
        key: _key,
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xffF6F1F1),
        body: Stack(children: [
          SingleChildScrollView(
            child: Column(
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
                          const SizedBox(height: 50, child: NewSearchWidget()),
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
                            bool isActive = index == 1;

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
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                "Brandbazaar",
                                style: TextStyle(
                                  color: Color(0xFFD9D9D9),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    "REDISCOVER SERVICES!",
                                    style: headerstyle.copyWith(
                                        color: const Color(0xffF9BB00),
                                        fontSize: 12),
                                  ),
                                  Text(
                                    "Connect,Save,Win & Beyond.",
                                    style: headerstyle.copyWith(
                                        color: const Color(0xffD9D9D9),
                                        fontSize: 10),
                                  )
                                ],
                              ),
                              const Text(
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
                // Center(
                //   child: Container(
                //     alignment: AlignmentDirectional.centerStart,
                //     margin: EdgeInsets.only(top: 5.h),
                //     height: 7.h,
                //     width: 60.w,
                //     decoration: BoxDecoration(
                //         color: const Color(0xFF681b4e),
                //         borderRadius: BorderRadius.circular(5)),
                //   ),
                // ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 130,
                  child: ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return StoryAddWidget(
                            index: index,
                            showgift: false,
                          );
                        } else if (index >= 1 && index <= 3) {
                          return StoryAddWidget(
                            index: index,
                            showgift: true,
                          );
                        }
                        return StoryAddWidget(index: index);
                      }),
                ),
                SizedBox(
                  height: 150.h,
                  width: double.infinity,
                  child: PageView.builder(
                    reverse: true,
                    allowImplicitScrolling: true,
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Image.asset(
                          height: 150.h,
                          width: double.infinity,
                          fit: BoxFit.fill,
                          _images[0]);
                    },
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 100.h,
                  width: double.infinity,
                  child: ListView(
                    physics: const BouncingScrollPhysics(
                      
                    ),
                    padding: EdgeInsets.only(left: 7.w),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      DottedBorder(
                        
                        strokeWidth: 2,
                        color: Colors.grey,
                        borderType: BorderType.RRect,
                        radius: const Radius.circular(10),
                        dashPattern: const [15, 15],
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Text("ALL",
                              style: headerstyle.copyWith(
                                color: ColorConstant.blackColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                              Text("SERVICES",
                              style: headerstyle.copyWith(
                                color: ColorConstant.blackColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              )
                              )
                            ],
                          ),
                        ),
                      ),
                      // DottedBorder(
                      //     strokeWidth: 2,

                      //     dashPattern: [15, 10],
                      //     borderPadding: const EdgeInsets.only(left: 5),
                      //     stackFit: StackFit.loose,
                      //     radius: const Radius.circular(70),
                      //     padding: const EdgeInsets.all(27),
                      //     color: Colors.black,
                      //     child: Container(
                      //       height: 100,
                      //       width: 100,
                      //       child: const Text("data"))
                      //     ),
                      SizedBox(
                        width:20.w,
                      ),
                       DottedBorder(
                        strokeWidth: 2,
                        color: Colors.grey,
                        borderType: BorderType.RRect,
                        radius: const Radius.circular(10),
                        dashPattern: const [10, 10],
                        child: SizedBox(
                          width: 100.w,
                          height: 100.h,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/cloth.png'),
                              Wrap(
                                children: [
                                  Text(
                                    "HEALTH,\nSPORTS",
                                    style: headerstyle.copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13),
                                  )
                                ],
                              ),
                            ],
                          )),
                      ),
                 
                      SizedBox(
                        width: 20.w,
                      ),
                         DottedBorder(
                        strokeWidth: 2,
                        color: Colors.grey,
                        borderType: BorderType.RRect,
                        radius: const Radius.circular(10),
                        dashPattern: const [10, 10],
                        child: SizedBox(
                          width: 100.w,
                          height: 100.h,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/cloth.png',
                              ),
                              Wrap(
                                children: [
                                  Text(
                                    "SPORTS,\nAND",
                                    style: headerstyle.copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13),
                                  )
                                ],
                              ),
                            ],
                          )),
                      ),
                        SizedBox(
                        width: 10.w,
                      ),
                 
                      // DottedBorder(
                      //     borderPadding: const EdgeInsets.only(left: 5),
                      //     radius: const Radius.circular(10),
                      //     padding: const EdgeInsets.all(20),
                      //     strokeWidth: 1,
                      //     color: Colors.black,
                      //     child: Column(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       crossAxisAlignment: CrossAxisAlignment.center,
                      //       children: [
                      //         Image.asset(
                      //           'assets/images/cloth.png',
                      //         ),
                      //         Wrap(
                      //           children: [
                      //             Text(
                      //               "SPORTS,\nAND",
                      //               style: headerstyle.copyWith(
                      //                   color: Colors.black,
                      //                   fontWeight: FontWeight.w500,
                      //                   fontSize: 13),
                      //             )
                      //           ],
                      //         ),
                      //       ],
                      //     )),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.flight,
                            color: Color(0xff6E6E6E),
                          ),
                          Text(
                            "TRAVELS,\nTOURS",
                            style: headerstyle.copyWith(
                                color: const Color(0xff6E6E6E),
                                fontWeight: FontWeight.w500,
                                fontSize: 13),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.tv,
                            color: Color(0xff6E6E6E),
                          ),
                          Text(
                            "ELECTRONICS",
                            style: headerstyle.copyWith(
                                color: const Color(0xff6E6E6E),
                                fontWeight: FontWeight.w500,
                                fontSize: 13),
                          ),
                           Text(
                            "&",
                            style: headerstyle.copyWith(
                                color: const Color(0xff6E6E6E),
                                fontWeight: FontWeight.w500,
                                fontSize: 13),
                          )
                        ],
                      ),
                      SizedBox(width: 10.w,)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
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
                ),

                // Expanded(

                // child: Product_item_widget(),),
                SizedBox(
                  height: 5.h,
                ),

                SizedBox(
                  height: 400.h,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const SizedBox(
                        height: 450,
                        child: Product_item_widget(),
                      );
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text(
                        'Destocking- Commercial',
                        style: headerstyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),

                // Expanded(

                // child: Product_item_widget(),),
                SizedBox(
                  height: 5.h,
                ),

                SizedBox(
                  height: 400.h,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const SizedBox(
                        height: 450,
                        child: Product_item_widget(),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text(
                        'ELECTRICIAN',
                        style: headerstyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),

                // Expanded(

                // child: Product_item_widget(),),
                SizedBox(
                  height: 5.h,
                ),

                SizedBox(
                  height: 400.h,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const SizedBox(
                        height: 450,
                        child: Product_item_widget(),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text(
                        'HEALTH,BEAUTY',
                        style: headerstyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),

                // Expanded(

                // child: Product_item_widget(),),
                SizedBox(
                  height: 5.h,
                ),

                SizedBox(
                  height: 400.h,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const SizedBox(
                        height: 450,
                        child: Product_item_widget(),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: TabBar(
                    controller: tabController,
                    tabs: const [
                      Tab(text: ' Global\n Brands'),
                      Tab(text: ' Domestic\n Brands'),
                      Tab(
                          text:
                              ' Spotlight\n Sellers'), // Changed label for clarity
                    ],
                    labelColor: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 100.h,
                  width: double.infinity,
                  // Use Expanded for better layout management
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                            padding: EdgeInsets.only(top: 5.h),
                            shrinkWrap: true,
                            reverse: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return StoryAddWidget(index: index);
                            }),
                      ),
                      const Center(child: Text("Phone Number Content")),
                      const Center(child: Text("Other Option Content")),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 5.h,
                ),

                SizedBox(
                  height: 400.h,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const SizedBox(
                        height: 450,
                        child: Product_item_widget(),
                      );
                    },
                  ),
                ),

                Center(
                  child: Column(
                    children: [
                      Text(
                        "BuyOrWin",
                        textAlign: TextAlign.center,
                        style: headerstyle.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: const Color(0xff551b55)),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Center(
                        child: Container(
                          alignment: AlignmentDirectional.centerStart,
                          margin: EdgeInsets.only(bottom: 5.h),
                          height: 5.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              color: const Color(0xFF681b4e),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 310.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const buyorwin_widget();
                    },
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(40.w),
                  color: const Color(0xff606164),
                  child: Text(
                    "ADVERTISEMENT",
                    style: headerstyle,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _services.length,
                    itemBuilder: (context, index) {
                      String fac = _services[index];
                      return Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(5),
                        width: 100.w,
                        // padding: EdgeInsets.only(left: 17,top: 10),
                        decoration: const BoxDecoration(
                          color: Color(0xFF681b4e),
                        ),
                        child: Text(
                          fac,
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      );
                    },
                  ),
                ),

                SizedBox(
                  height: 400.h,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const SizedBox(
                        child: Product_item_widget(),
                      );
                    },
                  ),
                ),

                // Container(
                //   margin: const EdgeInsets.only(top: 2),
                //   height: 40.h,
                //   padding: const EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //     border: Border.all(color: Colors.black),
                //   ),
                //   child: Image.asset('assets/icon/home.png'),
                // ),
              ],
            ),
          ),
          ValueListenableBuilder<bool>(
            valueListenable: _showSideBar,
            builder: (context, value, child) {
              return Positioned(
                  top: _isSectionsVisible ? 200 : 200,
                  right: 0,
                  child: InkWell(
                    onTap: () {
                      _showSideBar.value = !value;
                    },
                    child: value
                        ? const CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                AssetImage('assets/images/smart.png'),
                          )
                        : Container(
                            width: 60.w,
                            padding: EdgeInsets.symmetric(
                              vertical: 5.h,
                            ),
                            // Explicit height set
                            decoration: BoxDecoration(
                                color: const Color(0xffE2DAE5).withOpacity(0.9),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10))),
                            child: Center(
                                child: Column(
                              children: [
                                SizedBox(
                                  height: 6.h,
                                ),
                                Image.asset('assets/images/smart.png'),
                                SizedBox(
                                  height: 6.h,
                                ),
                                IconButton(
                                    onPressed: () {},
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
                                              color: const Color(0xff918994)),
                                        )
                                      ],
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: Column(
                                      children: [
                                        const Icon(
                                          Icons.shopping_cart_outlined,
                                          size: 15,
                                          color: Color(0xff918994),
                                        ),
                                        Text(
                                          "cart",
                                          style: headerstyle.copyWith(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w700,
                                              color: const Color(0xff918994)),
                                        )
                                      ],
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: Column(
                                      children: [
                                        const Icon(
                                          Icons.add,
                                          size: 15,
                                          color: Color(0xff918994),
                                        ),
                                        Text(
                                          "add",
                                          style: headerstyle.copyWith(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w700,
                                              color: const Color(0xff918994)),
                                        )
                                      ],
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: Column(
                                      children: [
                                        Image.asset('assets/images/tennis.png'),
                                        Text(
                                          "Orders",
                                          style: headerstyle.copyWith(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w700,
                                              color: const Color(0xff918994)),
                                        )
                                      ],
                                    )),
                              ],
                            )),
                          ),
                  ));
            },
          ),
          //
        ]));
  }
}
