import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:rxdart/rxdart.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:smartbazar/common/appbar_widget.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/ads_screen/api/ad_api.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/search_product_details/view/search_product_details.dart';
import 'package:smartbazar/features/services_screen/api/service_provider.dart';
import 'package:smartbazar/features/used_screen/api/used_provider.dart';
import 'package:smartbazar/features/used_screen/model/used_model.dart';
import 'package:smartbazar/features/used_screen/view/used_screen.dart';
import 'package:smartbazar/features/widgets/custom_drawer_widget.dart';
import 'package:smartbazar/features/widgets/product_card.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class ServicesScreen extends ConsumerStatefulWidget {
  const ServicesScreen({super.key});

  @override
  _ServicesScreenState createState() => _ServicesScreenState();
}

class _ServicesScreenState extends ConsumerState<ServicesScreen> {
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
    ref.watch(getAdsProvider);
        final adsList = ref.watch(getAdsProvider);

    final AsyncbajarValue = ref.watch(getServiceProviderProvider);
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
        drawer: CustomDrawer(),
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {},
          child: Stack(
            children: [
              AsyncbajarValue.when(
                  data: (data) {
                    List<UsedSlider> slider = data.sliders!;
                    List<UsedAdvertisement> ads = data.advertisements!;
                    // final UsedModel maindata = data;

                    // print("bibash ${maindata.hot_products!.length!}");
                    // print("bibash ${maindata.products!.data![2]}");

                    // List<Product> hotproducts = data.hot_products!;

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
                                                    query:
                                                        _searchController.text,
                                                  ),
                                                ),
                                              );

                                              setState(() {
                                                _showSearchResults = false;
                                                FocusScope.of(context)
                                                    .unfocus();
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
                                  print("ram ${e.image}}");
                                  return Image.network(
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                      e.image!);
                                },
                              ).toList(),
                              options: CarouselOptions(
                                height: 130.h,
                                aspectRatio: 0.1,
                                reverse: true,
                                viewportFraction: 1,
                                autoPlay: true,
                                enlargeCenterPage: true,
                              )),
                          SizedBox(
                            height: 10.h,
                          ),
                          UsedProductSlider(
                            data: data.hot_products!,
                            title: "Hot products",
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          CarouselSlider(
                              items: ads.map(
                                (e) {
                                  return Image.network(
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                      e.image!);
                                },
                              ).toList(),
                              options: CarouselOptions(
                                height: 80.h,
                                aspectRatio: 0.1,
                                reverse: true,
                                viewportFraction: 1,
                                autoPlay: true,
                                enlargeCenterPage: true,
                              )),
                          SizedBox(
                            height: 10.h,
                          ),
                          UsedProductSlider(
                            data: data.products!.data!,
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
                      },)
            ],
          ),
        ),
      ),
    );
  }
}

