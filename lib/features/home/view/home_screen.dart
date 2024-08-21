import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/home/api/home_posts_proivider.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/home/model/home_posts_model.dart';
import 'package:smartbazar/features/home/model/product_model.dart';
import 'package:smartbazar/features/view/product_deatials_screen.dart';
import 'package:smartbazar/features/widgets/banner_widget.dart';
import 'package:smartbazar/features/widgets/brand_bazar_widget.dart';
import 'package:smartbazar/features/widgets/custom_drawer_widget.dart';
import 'package:smartbazar/features/widgets/product_card.dart';
import 'package:smartbazar/features/widgets/service_container_widget.dart';
import 'package:smartbazar/features/favourite_list/view/favourite_listing_screen.dart';
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

  @override
  Widget build(BuildContext context) {
    final AsyncValue<HomePosts> homePostsData = ref.watch(homePostsProvider);
    final searchResults = ref.watch(searchProvider(_searchController.text));
    debugPrint('Search Results: ${searchResults.asData?.value}');

    return GenericSafeArea(
      color: Colors.white,
      child: Scaffold(
        key: _key,
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xffF6F1F1),
        appBar: AppBar(
          scrolledUnderElevation: 0,
          elevation: 0,
          toolbarHeight: 85.h,
          leadingWidth: 30.h,
          titleSpacing: 5,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: SvgPicture.asset(drawerIcon),
            onPressed: () {
              _key.currentState?.openDrawer();
            },
          ),
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    SizedBox(
                      height: 33.h,
                      child: TextFormField(
                        onTap: () {
                          setState(() {
                            _showSearchResults =
                                _searchController.text.isNotEmpty;
                          });
                        },
                        controller: _searchController,
                        decoration: InputDecoration(
                            hintText: 'Search...',
                            prefixIconConstraints:
                                BoxConstraints(minWidth: 40.w),
                            hintStyle: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xffBFBFBF)),
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(top: 5.h, left: 8.w),
                              child: Icon(
                                Icons.search,
                                size: 20.sp,
                              ),
                            ),
                            suffixIcon: Container(
                              width: 70.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(25.r),
                                    topRight: Radius.circular(25.r)),
                                color: const Color(0xff362677),
                              ),
                              child: Icon(
                                Icons.search,
                                size: 30.sp,
                                color: Colors.white,
                              ),
                            ),
                            contentPadding: EdgeInsets.zero,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.r))),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const AddToCartScreen()));
                },
                child: Container(
                  height: 30.h,
                  width: 30.h,
                  padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1.w,
                      )),
                  child: SvgPicture.asset(openCart),
                ),
              ),
            ],
          ),
        ),
        drawer: const CustomDrawer(),
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            if (_showSearchResults) {
              setState(() {
                _showSearchResults = false;
                FocusScope.of(context).unfocus();
              });
            }
          },
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.symmetric(
                                horizontal: 26.w, vertical: 24.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.r),
                                  topRight: Radius.circular(30.r)),
                              gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xff362677),
                                  Color(0xff781740),
                                ],
                              ),
                            ),
                            child: Text(
                              'Redefing shopping,\n trade and much more.',
                              style: TextStyle(
                                  fontSize: 24.sp, color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 10.h),
                            color: const Color(0xff19328D),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 20.w,
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Text(
                                      'Buy & sell anything.\n you\'ll forget everything else.',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12.sp),
                                    ),
                                  ],
                                ),
                                Image.asset(ImageConstant.shoppingImage)
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          const ServiceContainer(),
                          SizedBox(
                            height: 20.h,
                          ),
                        ],
                      ),
                    ),
                    ProductSlider(
                      homePostsData: homePostsData,
                      valueExtractor: (product) => product.sponsored_post,
                      title: 'SPONSORED LISTINGS',
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const BannerWidget(),
                    SizedBox(
                      height: 12.h,
                    ),
                    ProductSlider(
                      homePostsData: homePostsData,
                      valueExtractor: (product) => product.trending,
                      title: 'TRENDING',
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const BannerWidget(),
                    SizedBox(
                      height: 12.h,
                    ),
                    ProductSlider(
                      homePostsData: homePostsData,
                      valueExtractor: (product) => product.hot_products,
                      title: 'HOT DEALS',
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    const BannerWidget(),
                    SizedBox(
                      height: 12.h,
                    ),
                    const BrandBazarWidget(),
                    SizedBox(
                      height: 12.h,
                    ),
                    const BannerWidget(),
                    SizedBox(
                      height: 12.h,
                    ),
                    ProductSlider(
                      homePostsData: homePostsData,
                      valueExtractor: (product) => product.new_products,
                      title: 'SHOP FOR NEW PRODUCTS',
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    const BannerWidget(),
                    SizedBox(
                      height: 12.h,
                    ),
                    ProductSlider(
                      homePostsData: homePostsData,
                      valueExtractor: (product) => product.new_products,
                      title: 'SAVE WITH THRIFTS',
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    ProductSlider(
                      homePostsData: homePostsData,
                      valueExtractor: (product) => product.jobs,
                      title: 'FIND JOBS FOR YOU',
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    ProductSlider(
                      homePostsData: homePostsData,
                      valueExtractor: (product) => product.events,
                      title: 'SEARCH LATEST EVENTS',
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    // ProductSlider(
                    //   homePostsData: homePostsData,
                    //   valueExtractor: (product) => product.new_products,
                    //   title: 'DISCOVER FOODS & RESTURANTS',
                    // ),
                    // SizedBox(
                    //   height: 12.h,
                    // ),
                    ProductSlider(
                      homePostsData: homePostsData,
                      valueExtractor: (product) => product.b2b_products,
                      title: 'B2B PRODUCTS',
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    const BannerWidget(),
                    SizedBox(
                      height: 12.h,
                    ),
                    ProductSlider(
                      homePostsData: homePostsData,
                      valueExtractor: (product) => product.all_products,
                      title: 'ALL PRODUCTS',
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                  ],
                ),
              ),
              if (_showSearchResults)
                Positioned(
                  top: 0.h, // Position just below the search bar
                  left: 0,
                  right: 0,
                  child: Container(
                    color: Colors.white,
                    child: searchResults.when(
                      data: (results) {
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
                                  setState(() {
                                    _showSearchResults = false;
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
                      },
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      error: (error, stack) =>
                          Center(child: Text('Error: $error')),
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
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
                                builder: (context) => ProductDetailsScreen(
                                      productId: product.id,
                                    )));
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
