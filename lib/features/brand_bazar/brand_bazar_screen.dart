import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/common/appbar_widget.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/auth/view/bottom_navigation_bar.dart';
import 'package:smartbazar/features/home/api/home_posts_proivider.dart';
import 'package:smartbazar/features/home/model/home_posts_model.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/widgets/banner_widget.dart';
import 'package:smartbazar/features/widgets/brand_bazar_widget.dart';
import 'package:smartbazar/features/widgets/custom_drawer_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class BrandBazarScreen extends ConsumerStatefulWidget {
  const BrandBazarScreen({super.key});

  @override
  ConsumerState<BrandBazarScreen> createState() => _BrandBazarScreenState();
}

class _BrandBazarScreenState extends ConsumerState<BrandBazarScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final TextEditingController _searchController = TextEditingController();
  bool _showSearchResults = false;
  void _onSearchFocusChanged(bool hasFocus) {
    setState(() {
      _showSearchResults = hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<HomePosts> homePostsData = ref.watch(homePostsProvider);

    return GenericSafeArea(
        color: Colors.white,
        child: Scaffold(
          key: _key,
          resizeToAvoidBottomInset: false,
          backgroundColor: const Color(0xffF6F1F1),
          appBar: AppbarWidget(
            scaffoldKey: _key,
            searchController: _searchController,
            onCartTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const AddToCartScreen(),
                ),
              );
            },
            onSearchFocusChanged: _onSearchFocusChanged,
          ),
          drawer: const CustomDrawer(),
          body: SingleChildScrollView(
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
                      SizedBox(
                        height: 20.h,
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
                      const BannerWidget(),
                      SizedBox(
                        height: 12.h,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        
        ));
  }
}
