import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rxdart/rxdart.dart';
import 'package:smartbazar/common/appbar_widget.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/ads_screen/api/ad_api.dart';
import 'package:smartbazar/features/home/api/home_posts_proivider.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/home/model/home_posts_model.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/search_product_details/view/search_product_details.dart';
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
    final _debouncer = BehaviorSubject<String>();

  void _onSearchFocusChanged(bool hasFocus) {
    setState(() {
      _showSearchResults = hasFocus;
    });
  }
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
    final adsList = ref.watch(getAdsProvider);

    return GenericSafeArea(
        color: Colors.white,
        child: Scaffold(
          key: _key,
          resizeToAvoidBottomInset: false,
          backgroundColor: const Color(0xffF6F1F1),
          appBar: AppbarWidget(

            onsubmit: (p0) {
              
            },
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
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SearchScreen(
                                          query: _searchController.text,
                                        ),
                                      ));

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
                      loading: () {
                        return SimpleDialog(
                          children: [
                            adsList.isLoading
                                ? const SizedBox()
                                : Image.network(adsList.value!.first.image!)
                          ],
                        );
                      },
                      error: (error, stack) =>
                          const Center(child: CircularProgressIndicator()),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.w,
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
