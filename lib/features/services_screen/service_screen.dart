import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/ads_screen/api/ad_api.dart';
import 'package:smartbazar/features/brand_bazar/api/brand_bazar_api.dart';
import 'package:smartbazar/features/feed_page/widget/story_add_widget.dart';
import 'package:smartbazar/features/home/api/home_posts_proivider.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/home/model/home_posts_model.dart';
import 'package:smartbazar/features/home/model/product_model.dart';
import 'package:smartbazar/features/home/view/buyorwin_widget.dart';
import 'package:smartbazar/features/home/view/header.dart';
import 'package:smartbazar/features/product_details/constant/product_detail_widget.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/services_screen/service_screen.dart';
import 'package:smartbazar/features/widgets/custom_drawer_widget.dart';
import 'package:smartbazar/features/widgets/product_card.dart';
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
  // bool _showSearchResults = false;
  late TabController tabController;
    final List<String> _services = [
    'SHOPZONE',
    'TRADEHUB',
    'SERVICES',
    'USED',
    'HOB'
  ];

  @override
  void initState() {
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
        drawer: const CustomDrawer(),
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
                      SizedBox(
                        height: 80, // Increased height for better visibility
                        width: double.infinity,
                        child: ListView.builder(
                          reverse: true,
                          itemCount: items.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            Map<String, dynamic> data = items[index];
                            return GestureDetector(
                              onTap: () {
                                if (data['screen'] != null) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => data['screen']),
                                  );
                                }
                              },
                              child: Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 10), // Spacing between items
                                child: Column(
                                  mainAxisSize: MainAxisSize
                                      .min, // Shrinks to fit children
                                  mainAxisAlignment: MainAxisAlignment
                                      .center, // Center within available space
                                  children: [
                                    if (data['icon']
                                        .toString()
                                        .endsWith('.svg'))
                                      SvgPicture.asset(
                                        data['icon'],
                                        colorFilter: const ColorFilter.mode(
                                          Colors.white,
                                          BlendMode.srcIn,
                                        ),
                                        width: 20, // Adjust size
                                        height: 20,
                                      )
                                    else
                                      Image.asset(
                                        data['icon'],
                                        width: 20, // Adjust size
                                        height: 20,
                                      ),
                                    const SizedBox(
                                        height:
                                            8), // Space between icon and label
                                    Text(
                                      data['label'],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      const Divider(
                        height: 0.1,
                      ),
                      Padding(
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
                            Column(
                              children: [
                                Text(
                                  "REDISCOVER SERVICES!",
                                  style: headerstyle.copyWith(
                                      color: Color(0xffF9BB00), fontSize: 12),
                                ),
                                Text(
                                  "Connect,Save,Win & Beyond.",
                                  style: headerstyle.copyWith(
                                      color: Color(0xffD9D9D9), fontSize: 10),
                                )
                              ],
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
                Center(
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
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return StoryAddWidget(index: index);
                      }),
                ),
                SizedBox(
                  height: 200.h,
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
                SizedBox(height: 10.h,),
                SizedBox(
                  height: 100.h,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      DottedBorder(
                          borderPadding: EdgeInsets.only(left: 5),
                          radius: Radius.circular(10),
                          padding: EdgeInsets.all(27),
                          strokeWidth: 1,
                          color: Colors.black,
                          child: Wrap(
                            children: [
                              Text(
                                "ALL\nServices",
                                style: headerstyle.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13),
                              )
                            ],
                          )),
                          SizedBox(width: 5.w,),
                      DottedBorder(
                          borderPadding: EdgeInsets.only(left: 5),
                          radius: Radius.circular(10),
                          padding: EdgeInsets.all(20),
                          strokeWidth: 1,
                          color: Colors.black,
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
                          SizedBox(width: 5.w,),
                      DottedBorder(
                          borderPadding: EdgeInsets.only(left: 5),
                          radius: Radius.circular(10),
                          padding: EdgeInsets.all(20),
                          strokeWidth: 1,
                          color: Colors.black,
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
                          SizedBox(width: 10.w,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.flight,
                            color: Color(0xff6E6E6E),
                          ),
                          Text(
                            "TRAVELS,\nTOURS",
                            style: headerstyle.copyWith(
                                color: Color(0xff6E6E6E),
                                fontWeight: FontWeight.w500,
                                fontSize: 13),
                          )
                        ],
                      ),
                            SizedBox(width: 10.w,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.tv,
                            color: Color(0xff6E6E6E),
                          ),
                          Text(
                            "ELECTRONICS,\n&",
                            style: headerstyle.copyWith(
                                color: Color(0xff6E6E6E),
                                fontWeight: FontWeight.w500,
                                fontSize: 13),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text('HOT DEALS',
                      style: headerstyle.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black
                  
                      ),
                      
                      ),
                      SizedBox(width: 10.w,),
                      Image.asset('assets/images/flameIcon.png',
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
                      Text('Destocking- Commercial',
                      style: headerstyle.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black
                  
                      ),
                      
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
                      Text('ELECTRICIAN',
                      style: headerstyle.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black
                  
                      ),
                      
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
                      Text('HEALTH,BEAUTY',
                      style: headerstyle.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black
                  
                      ),
                      
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
                    tabs: [
                      const Tab(text: ' Global\n Brands'),
                      const Tab(text: ' Domestic\n Brands'),
                      const Tab(
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
                SizedBox(height: 5.h,),
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
                color: Color(0xff606164),
                child: Text("ADVERTISEMENT",
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
                      String _fac = _services[index];
                      return Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(5),
                        width: 100.w,
                        // padding: EdgeInsets.only(left: 17,top: 10),
                        decoration: const BoxDecoration(
                          color: Color(0xFF681b4e),
                        ),
                        child: Text(
                          _fac,
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
          Positioned(
              top: 200, // Fixed height from the top
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                // Explicit height set
                decoration: BoxDecoration(
                    color: Color(0xffE2DAE5).withOpacity(0.8),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10))),
                child: Center(
                    child: Column(
                  children: [
                    const Icon(
                      Icons.close,
                      color: Color(0xff918994),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Column(
                          children: [
                            Icon(
                              Icons.document_scanner,
                              color: Color(0xff918994),
                            ),
                            Text("Connect")
                          ],
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Column(
                          children: [
                            Icon(
                              Icons.shopping_cart_outlined,
                              color: Color(0xff918994),
                            ),
                            Text("cart")
                          ],
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Column(
                          children: [
                            Icon(
                              Icons.add,
                              color: Color(0xff918994),
                            ),
                            Text("add")
                          ],
                        )),
                  ],
                )),
              ))
          //
        ]));
  }
}
