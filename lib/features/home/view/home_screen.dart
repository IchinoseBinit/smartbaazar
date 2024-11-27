import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:smartbazar/common/appbar_widget.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/ads_screen/api/ad_api.dart';
import 'package:smartbazar/features/b2b_screen/view/b2b_screen.dart';
import 'package:smartbazar/features/brand_bazar/api/brand_bazar_api.dart';
import 'package:smartbazar/features/feed_page/widget/story_add_widget.dart';
import 'package:smartbazar/features/home/api/home_posts_proivider.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/home/model/home_posts_model.dart';
import 'package:smartbazar/features/home/model/product_model.dart';
import 'package:smartbazar/features/home/view/header.dart';
import 'package:smartbazar/features/search_product_details/view/search_product_details.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/widgets/banner_widget.dart';
import 'package:smartbazar/features/widgets/brand_bazar_widget.dart';
import 'package:smartbazar/features/widgets/custom_drawer_widget.dart';
import 'package:smartbazar/features/widgets/product_card.dart';
import 'package:smartbazar/features/widgets/service_container_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';
import 'package:rxdart/rxdart.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final TextEditingController _searchController = TextEditingController();
  final _debouncer = BehaviorSubject<String>();
  bool _showSearchResults = false;

  @override
  void initState() {
    super.initState();

    _searchController.addListener(() {
      _debouncer.add(_searchController.text);
    });

    _debouncer.debounceTime(const Duration(milliseconds: 300)).listen((query) {
      debugPrint("Search query: $query");
      ref.refresh(searchProvider(query));
      setState(() {
        _showSearchResults = query.isNotEmpty;
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
      _showSearchResults = hasFocus;
    });
  }

  List<String> _images = ['assets/images/home.png'];
  List<String> _services = ['SHOPZONE', 'TRADEHUB', 'SERVICES', 'USED', 'HOB'];
  @override
  Widget build(BuildContext context) {
    final adsList = ref.watch(getAdsProvider);

    final AsyncValue<HomePosts> homePostsData = ref.watch(homePostsProvider);
    final brandbajarAsyncValue = ref.watch(getBrandBazaarResponseProvider);

    final searchResults = ref.watch(searchProvider(_searchController.text));
    debugPrint('Search Results: ${searchResults.asData?.value}');
    return Scaffold(
        key: _key,
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xffF6F1F1),
        drawer: const CustomDrawer(),
        body: SingleChildScrollView(
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
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset('assets/images/group.png'),
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(height: 40, child: NewSearchWidget()),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/icon/b2bIcon.svg',
                              colorFilter: const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                            Text(
                              "Live",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              openCart,
                              colorFilter: const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                            Text(
                              "Shopping",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        // SizedBox(
                        //   width: 25.w,
                        // ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/images/loading.png',
                            ),
                            Text(
                              "Everything",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/icon/b2bIcon.svg',
                              colorFilter: const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                            Text(
                              "TradeHub",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        // SizedBox(
                        //   width: 25.w,
                        // ),
                        Column(
                          children: [
                            SvgPicture.asset(
                              jobIcon,
                              colorFilter: const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                            Text(
                              "TradeHub",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
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
                      color: Color(0xFF681b4e),
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
                      margin: EdgeInsets.all(5),
                      width: 100.w,
                      // padding: EdgeInsets.only(left: 17,top: 10),
                      decoration: BoxDecoration(
                        color: Color(0xFF681b4e),
                      ),
                      child: Text(
                        _fac,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}

class ProductSlider extends StatelessWidget {
  const ProductSlider({
    super.key,
    required this.homePostsData,
    required this.valueExtractor,
    required this.title,
  });

  final String title;
  final AsyncValue<HomePosts> homePostsData;
  final List<Product> Function(HomePosts) valueExtractor;

  @override
  Widget build(BuildContext context) {
    final value = homePostsData.valueOrNull;
    if (value != null && valueExtractor(value).isNotEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            height: productCardHeight,
            child: switch (homePostsData) {
              AsyncData(:final value) => ListView.separated(
                  primary: false,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  shrinkWrap: true,
                  itemCount: valueExtractor(value).length,
                  itemBuilder: (context, index) {
                    final product = valueExtractor(value)[index];
                    return ProductCard(
                      product: product,
                      onTap: (product) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ProductDetailScreen(productId: product.id),
                            ));
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => ProductDetailsScreen(
                        //               productId: product.id,
                        //             )
                        //             ));
                      },
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 12.w,
                    );
                  },
                ),
              AsyncError() => ProductSliderSkeleton(),
              _ => ProductSliderSkeleton(),
            },
          ),
        ],
      );
    } else {
      return Container();
    }
  }
}

class ProductSliderSkeleton extends StatelessWidget {
  ProductSliderSkeleton({super.key});

  final List<Product> fakeDate = List.generate(
    7,
    (index) => Product(
      id: '',
      title: '',
      price: '0',
      image: '',
      visits: '0',
      contact_name: '',
      pickup: '',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: ListView.separated(
        primary: false,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 5.w),
        shrinkWrap: true,
        itemCount: fakeDate.length,
        itemBuilder: (context, index) {
          final product = fakeDate[index];
          return ProductCard(
            product: product,
            onTap: (product) {},
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 12.w,
          );
        },
      ),
    );
  }
}
