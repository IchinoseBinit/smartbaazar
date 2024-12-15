import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rxdart/rxdart.dart';
import 'package:smartbazar/common/appbar_widget.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/ads_screen/api/ad_api.dart';
import 'package:smartbazar/features/b2b_screen/model/b2b_model.dart';
import 'package:smartbazar/features/create_listing/view/create_new_listing_screen.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/home/model/product_model.dart';
import 'package:smartbazar/features/product_screen/Api/product_api_repository.dart';
import 'package:smartbazar/features/search_product_details/view/search_product_details.dart';
import 'package:smartbazar/features/widgets/custom_drawer_widget.dart';
import 'package:smartbazar/features/widgets/product_card.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class ProductScreen extends ConsumerStatefulWidget {
  const ProductScreen({super.key});

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends ConsumerState<ProductScreen> {
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
      ref.refresh(
          searchProvider(query)); // Ensure this provider works as expected
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

  @override
  Widget build(BuildContext context) {
    final adsList = ref.watch(fetchAdsProvider);
    final AsyncbajarValue = ref.watch(getprodwuctResposneProvider);
    final searchResults = ref.watch(searchProvider(
        _searchController.text)); // Ensure this updates correctly

    return GenericSafeArea(
      color: Colors.white,
      child: Scaffold(
        key: _key,
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xffF6F1F1),
        appBar: AppbarWidget(
          onsubmit: (p0) {},
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
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {},
          child: Stack(
            children: [
              AsyncbajarValue.when(
                data: (data) {
                  List<B2bSlider> slider = data.sliders!;
                  List<B2bAdvertisement> ads = data.advertisements!;

                  return SingleChildScrollView(
                    child: Column(
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
                                  debugPrint(
                                      "Search results: $results"); // Debug print
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
                                                    SearchScreen(
                                                  query: _searchController.text,
                                                ),
                                              ),
                                            );

                                            setState(() {
                                              _showSearchResults = false;
                                              FocusScope.of(context).unfocus();
                                            });
                                          },
                                        );
                                      },
                                      separatorBuilder: (context, index) =>
                                          const Divider(),
                                    ),
                                  );
                                },
                                loading: () {
                                  return const Center(
                                      child: CircularProgressIndicator());
                                },
                                error: (error, stack) => const Center(
                                    child:
                                        Text('Error loading search results')),
                              ),
                            ),
                          ),
                        CarouselSlider(
                            items: slider.map(
                              (e) {
                                return InkWell(
                                  onTap: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //       builder: (context) =>
                                    //           const subscribeanwinsc(),
                                    //     ));
                                  },
                                  child: Image.network(
                                      width: double.infinity,
                                      fit: BoxFit.contain,
                                      e.image!),
                                );
                              },
                            ).toList(),
                            options: CarouselOptions(
                              height: 150.h,
                              aspectRatio: 0.1,
                              reverse: true,
                              viewportFraction: 1,
                              autoPlay: true,
                              enlargeCenterPage: true,
                            )),
                        SizedBox(
                          height: 10.h,
                        ),
                        ProductSlider(
                          data: data,
                          title: "Hot products",
                        ),
                        CarouselSlider(
                            items: ads.map(
                              (e) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const CreateNewListinScreen(),
                                        ));
                                  },
                                  child: Image.network(
                                      width: double.infinity,
                                      fit: BoxFit.contain,
                                      e.image!),
                                );
                              },
                            ).toList(),
                            options: CarouselOptions(
                              height: 150.h,
                              aspectRatio: 0.1,
                              reverse: true,
                              viewportFraction: 1,
                              autoPlay: true,
                              enlargeCenterPage: true,
                            )),
                        ProductSlider(
                          ishot: false,
                          data: data,
                          title: "Products",
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                      ],
                    ),
                  );
                },
                error: (err, stack) => Center(child: Text('Error: $err')),
                loading: () {
                  return SimpleDialog(
                    children: [
                      adsList.isLoading
                          ? const SizedBox()
                          : Image.network(adsList.value!.first.image!)
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProductSlider extends StatelessWidget {
  ProductSlider(
      {super.key,
      required this.data,
      // required this.valueExtractor,
      required this.title,
      this.ishot = true
      // required this.length,
      });

  final String title;
  final B2bModel data;
  bool ishot;
  // final int? length;
  // final List<Product> Function(HomePosts) valueExtractor;

  @override
  Widget build(BuildContext context) {
    // final value = homePostsData.;
    // print("here is ${length}");
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
          height: 10.h,
        ),
        SizedBox(
          height: productCardHeight,
          child: ListView.separated(
            primary: false,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            shrinkWrap: true,
            itemCount:
                ishot ? data.hot_products!.length : data.products!.data!.length,
            itemBuilder: (context, index) {
              final Product product = ishot
                  ? data.hot_products![index]
                  : data.products!.data![index];
              return ProductCard(
                product: product,
                onTap: (product) {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) =>
                  //           ProductDetailScreen(productId: product.id),
                  //     ));
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
        ),
      ],
    );
  }
}
