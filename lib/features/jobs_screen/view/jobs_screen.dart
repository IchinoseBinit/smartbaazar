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
import 'package:smartbazar/features/jobs_screen/api/jobs_provider.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/search_product_details/view/search_product_details.dart';
import 'package:smartbazar/features/services_screen/api/service_provider.dart';
import 'package:smartbazar/features/used_screen/api/used_provider.dart';
import 'package:smartbazar/features/used_screen/model/used_model.dart';
import 'package:smartbazar/features/widgets/custom_drawer_widget.dart';
import 'package:smartbazar/features/widgets/product_card.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class JobssScreen extends ConsumerStatefulWidget {
  const JobssScreen({super.key});

  @override
  _JobssScreenState createState() => _JobssScreenState();
}

class _JobssScreenState extends ConsumerState<JobssScreen> {
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
    final AsyncbajarValue = ref.watch(getjobsResponseProvider);
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
                    return const Center(child: CircularProgressIndicator());
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class UsedProductSlider extends StatelessWidget {
  UsedProductSlider({
    super.key,
    required this.data,
    required this.title,
  });

  final String title;
  final List<UsedProduct> data;
  int? length;

  @override
  Widget build(BuildContext context) {
    print("ramu ${data.length}");
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
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 8.h),
        SizedBox(
          height: productCardHeight,
          child: data.isNotEmpty
              ? ListView.separated(
                  primary: false,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  shrinkWrap: true,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final modeldata = data[index];
                    return InkWell(
                      onTap: () {
                         Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ProductDetailScreen(productId: modeldata.id!),
                      ));
                        // Add navigation or other actions here
                      },
                      child: SizedBox(
                        height: productCardHeight,
                        width: productCardWidth,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Product Image
                            Skeleton.replace(
                              width: productCardWidth,
                              height: 110.h,
                              child: Container(
                                width: productCardWidth,
                                height: 100.h,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      modeldata.image ?? '', // Default if null
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 9.h),
                            // Product Title
                            Skeleton.replace(
                              height: 15.h,
                              child: SizedBox(
                                height: 30.h,
                                child: Text(
                                  modeldata.title ?? 'No Title',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 4.h),
                            // Product Price and Rating
                            Row(
                              children: [
                                Text(
                                  'Rs. ${modeldata.price ?? 'N/A'}',
                                  style: TextStyle(fontSize: 14.sp),
                                ),
                                SizedBox(width: 10.w),
                                _buildRatingBox(modeldata.avg_rating),
                              ],
                            ),
                            SizedBox(height: 4.h),
                            // Contact Name
                            Skeleton.replace(
                              height: 10.h,
                              width: productCardWidth,
                              child: SizedBox(
                                width: productCardWidth,
                                child: Text(
                                  modeldata.contact_name ?? 'No Contact',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 6.h),
                            // Rating and Views
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                _buildRatingStars(modeldata.avg_rating),
                                SizedBox(width: 4.w),
                                Text(
                                  "(${modeldata.avg_rating ?? 0})",
                                  style: TextStyle(
                                    fontSize: 9.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff888888),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6.h),
                            // Views and Pickup Location
                            _buildViewsAndLocation(modeldata),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(width: 12.w);
                  },
                )
              : Center(
                  child: Text('No products available'),
                ),
        ),
      ],
    );
  }

  // Helper method for building the rating box
  Widget _buildRatingBox(double? avgRating) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
      decoration: BoxDecoration(
        color: const Color(0xff362677),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10.r),
          bottomLeft: Radius.circular(10.r),
        ),
      ),
      child: Text(
        avgRating != null ? avgRating.toStringAsFixed(1) : '0.0',
        style: TextStyle(
          fontSize: 9.sp,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
    );
  }

  // Helper method for building rating stars
  Widget _buildRatingStars(double? avgRating) {
    return RatingBar.builder(
      initialRating: avgRating ?? 0.0,
      minRating: 0,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 15,
      itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Color(0xfff781740),
      ),
      onRatingUpdate: (rating) {},
    );
  }

  // Helper method for building views and pickup location
  Widget _buildViewsAndLocation(UsedProduct modeldata) {
    return Row(
      children: [
        const Icon(Icons.visibility, size: 20, color: Color(0xff888888)),
        SizedBox(width: 3.w),
        Flexible(
          child: Text(
            '${NumberFormat.compact().format(int.tryParse(modeldata.visits ?? '0') ?? 0)} Views',
            style: TextStyle(
              fontSize: 9.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xff888888),
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        if (modeldata.pickup != null) ...[
          SizedBox(width: 18.w),
          const Icon(Icons.location_on, size: 20, color: Color(0xff888888)),
          SizedBox(width: 2.w),
          Flexible(
            child: Text(
              modeldata.pickup!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff888888),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
