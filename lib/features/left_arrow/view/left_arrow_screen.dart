import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rxdart/rxdart.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/payment/create_listing_payement.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';
import 'package:smartbazar/payment/payment_screen.dart';

class LeftArrowScreen extends ConsumerStatefulWidget {
  const LeftArrowScreen({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<LeftArrowScreen> createState() => _LeftArrowScreenState();
}

class _LeftArrowScreenState extends ConsumerState<LeftArrowScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final TextEditingController _searchController = TextEditingController();
  bool _showSearchProductModels = false;
  final _debouncer = BehaviorSubject<String>();
  // late List<Container> items;

  void _onSearchFocusChanged(bool hasFocus) {
    setState(() {
      _showSearchProductModels = hasFocus;
    });
  }

  final CarouselSliderController _carouselController =
      CarouselSliderController(); // Correct CarouselController instance
  final ScrollController _scrollController = ScrollController();

  // @override
  // void initState() {
  //   super.initState();
  //   items = [
  //     left_arrow(
  //         const Color(
  //           0xff362664,
  //         ),
  //         '34999'),
  //     left_arrow(const Color(0xff901B41), '9999'),
  //     left_arrow(const Color(0xff362664), '19999'),
  //   ];
  // }
  void _nextPage() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % items.length;
    });
    _scrollToCurrentIndex();
  }

  void _previousPage() {
    setState(() {
      _currentIndex = (_currentIndex - 1 + items.length) % items.length;
    });
    _scrollToCurrentIndex();
  }

  void _scrollToCurrentIndex() {
    _scrollController.animateTo(
      _currentIndex * 320.0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  int _currentIndex = 0;

  final List<Map<String, dynamic>> items = [
    {'color': const Color(0xff362664), 'price': '34999'},
    {'color': const Color(0xff901B41), 'price': '9999'},
    {'color': const Color(0xff362664), 'price': '19999'},
  ];

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          scrolledUnderElevation: 0,
          elevation: 0,
          toolbarHeight: 80.h,
          leadingWidth: 30.h,
          titleSpacing: 5,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsets.only(top: 5.h),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/smartlogo.png', // Replace with your logo asset path
                  width: 150.w, // Responsive width
                ),
                Row(
                  children: [
                    const Spacer(),
                    const CircleAvatar(
                      backgroundColor: ColorConstant.blackColor,
                      radius: 12,
                      child: Icon(
                        Icons.person,
                        color: ColorConstant.whiteColor,
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  IconButton(
                    icon: SvgPicture.asset(
                        drawerIcon), // Replace with your drawer icon path
                    onPressed: () {},
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 15.w),
                      child: SizedBox(
                        height: 33.h,
                        child: TextFormField(
                          onFieldSubmitted: (value) {},
                          controller: null,
                          decoration: InputDecoration(
                            hintText: 'Search...',
                            prefixIconConstraints:
                                BoxConstraints(minWidth: 40.w),
                            hintStyle: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xffBFBFBF),
                            ),
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(top: 5.h, left: 8.w),
                              child: Icon(
                                Icons.search,
                                size: 20.sp,
                              ),
                            ),
                            suffixIcon: InkWell(
                              onTap: () {},
                              child: Container(
                                width: 70.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(25.r),
                                    topRight: Radius.circular(25.r),
                                  ),
                                  color: const Color(0xff362677),
                                ),
                                child: Icon(
                                  Icons.search,
                                  size: 30.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            contentPadding: EdgeInsets.zero,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10.h),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: ColorConstant.blackColor,
                      width: 1,
                    )),
                child: Column(
                  children: [
                    Text(
                      "Start the #SmartRevolution",
                      style: headerstyle.copyWith(
                          fontFamily: GoogleFonts.kantumruyPro().fontFamily,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w300,
                          fontSize: 20.sp,
                          color: ColorConstant.blackColor),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffe2a90c),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(20),
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffe2a90c),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "0%",
                                  style: headerstyle.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 26.sp,
                                      color: ColorConstant.blackColor),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Commission",
                                      style: headerstyle.copyWith(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.sp,
                                          color: ColorConstant.blackColor),
                                    ),
                                    Text(
                                      "Forever",
                                      style: headerstyle.copyWith(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.sp,
                                          color: ColorConstant.blackColor),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              SizedBox(
                height: 450.h,
                child: SingleChildScrollView(
                  controller: _scrollController,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: items.map((item) {
                      return Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: left_arrow(item['color'], item['price']),
                      );
                    }).toList(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: _previousPage,
                      icon: const Icon(Icons.arrow_back_ios_new_rounded),
                    ),
                    IconButton(
                      onPressed: _nextPage,
                      icon: const Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container left_arrow(Color color, String price) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: const Color(0xffF1EDED)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          //   const SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
                color: color),
            child: Column(
              children: [
                Text(
                  "Basic Seller",
                  style: headerstyle.copyWith(
                      fontFamily: GoogleFonts.kantumruyPro().fontFamily,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "Get Started Selling",
                  style: headerstyle.copyWith(
                      fontFamily: GoogleFonts.kantumruyPro().fontFamily,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Free",
                  style: headerstyle.copyWith(
                      fontFamily: GoogleFonts.kantumruyPro().fontFamily,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
                Text(
                  "Rs $price/monthly",
                  style: headerstyle.copyWith(
                      fontStyle: FontStyle.italic,
                      fontFamily: GoogleFonts.kantumruyPro().fontFamily,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          row_widget("Unlimited Retail & B2B Sales for 1 year", Icons.check,
              const Color(0xff46D916)),
          row_widget("FREE BizSpace:smartbazaar.com.np", Icons.check,
              const Color(0xff46D916)),
          row_widget(
              "Jobs & Events Listing", Icons.check, const Color(0xff46D916)),
          row_widget(
              "Cloud-based IMS Software", Icons.check, const Color(0xff46D916)),
          row_widget(
              "SmartBoost Available", Icons.check, const Color(0xff46D916)),
          row_widget(
              "Featured in Bandbazaar", Icons.close, const Color(0xffD91619)),
          row_widget(
              "Featured in Homepage", Icons.close, const Color(0xffD91619)),
          Spacer(),
          Center(
            child: SizedBox(
              width: 290.w,
              child: ElevatedButton(
                  style: ButtonStyle(
                      padding:
                          WidgetStatePropertyAll(EdgeInsets.only(top: 3.h)),
                      shape: WidgetStatePropertyAll(BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                      backgroundColor: WidgetStatePropertyAll(color)),
                  onPressed: () async {
                    await CrateListingIniatepayment(context, price, false);
                  },
                  child: Text(
                    "Choose Plan",
                    style: headerstyle.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w400),
                  )),
            ),
          )
        ],
      ),
    );
  }

  Row row_widget(String text, IconData icon, Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          text,
          style: headerstyle.copyWith(
              fontFamily: GoogleFonts.kantumruyPro().fontFamily,
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: ColorConstant.blackColor),
        ),
        Icon(
          icon,
          color: color,
        )
      ],
    );
  }
}
