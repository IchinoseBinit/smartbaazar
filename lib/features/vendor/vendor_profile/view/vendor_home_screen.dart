import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rxdart/rxdart.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:smartbazar/common/appbar_widget.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/vendor/vendor_profile/api/vendor_profile_api.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_model.dart';
import 'package:smartbazar/features/widgets/custom_drawer_widget.dart';
import 'package:smartbazar/features/widgets/product_card.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class VendorHomeScreen extends ConsumerStatefulWidget {
  final String vendorName;

  const VendorHomeScreen({super.key, required this.vendorName});

  @override
  ConsumerState<VendorHomeScreen> createState() => _VendorHomeScreenState();
}

class _VendorHomeScreenState extends ConsumerState<VendorHomeScreen>
    with SingleTickerProviderStateMixin {
   final GlobalKey<ScaffoldState> _key = GlobalKey();
  final TextEditingController _searchController = TextEditingController();
  final _debouncer = BehaviorSubject<String>();
  bool _showSearchResults = false;
  late TabController _tabController;

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
        _tabController = TabController(length: 3, vsync: this);

  }

 @override
  void dispose() {
    _debouncer.close();
    _searchController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  void _onSearchFocusChanged(bool hasFocus) {
    setState(() {
      _showSearchResults = hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(ImageConstant.cardImage),
                          SizedBox(height: 2.h),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            elevation: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    ImageConstant.adidasLogo,
                                    width: 60.w,
                                    height: 60.h,
                                  ),
                                  SizedBox(width: 16.w),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Adidas",
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 4.h),
                                        Text(
                                          "10000 Subscribers",
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            color: Colors.grey[700],
                                          ),
                                        ),
                                        SizedBox(height: 4.h),
                                        Text(
                                          "Brand Bazar/Flagship Store",
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            color: Colors.grey[600],
                                          ),
                                        ),
                                        SizedBox(height: 8.h),
                                        Text(
                                          "Contact Seller:",
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 4.h),
                                        Text(
                                          "+977 98xxxxxxxx",
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(height: 8.h),
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              whatsAppIcon,
                                              width: 24.w,
                                              height: 24.h,
                                            ),
                                            SizedBox(width: 8.w),
                                            SvgPicture.asset(
                                              viberIcon,
                                              width: 24.w,
                                              height: 24.h,
                                            ),
                                            SizedBox(width: 8.w),
                                            SvgPicture.asset(
                                              phoneIcon,
                                              width: 24.w,
                                              height: 24.h,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          // Handle Facebook share
                                        },
                                        child: Image.asset(
                                          ImageConstant.facebookShareImage,
                                          width: 50.w,
                                          height: 40.h,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          // Handle Subscribe
                                        },
                                        child: Image.asset(
                                          ImageConstant.subscribeImage,
                                          width: 50.w,
                                          height: 50.h,
                                        ),
                                      ),
                                      SizedBox(height: 4.h),
                                      Text(
                                        "Subscribe",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          //search bar for search in store
                          const SearchInStore(),

                          // TabBar and TabBarView
                          const TabBarAndTabView()
                        ],
                      ),
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
}

class SearchInStore extends StatelessWidget {
  const SearchInStore({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 33.h,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Search in store...',
          prefixIconConstraints: BoxConstraints(minWidth: 40.w),
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
          suffixIcon: Container(
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
          contentPadding: EdgeInsets.zero,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
          ),
        ),
      ),
    );
  }
}

class TabBarAndTabView extends StatelessWidget {
  const TabBarAndTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const TabBar(
            tabAlignment: TabAlignment.start,
            isScrollable: true,
            dividerColor: Color(0xffD9D9D9),
            tabs: [
              Tab(text: 'Homepage'),
              Tab(text: 'Brand New'),
              Tab(text: 'Used'),
            ],
          ),
          Flexible(
            fit: FlexFit.loose,
            //height: 400.h,
            child: TabBarView(
              children: [
                // First Tab Content
                // HotDealsWidget(),
                // ListView.builder(
                //   scrollDirection: Axis.horizontal,
                //   itemCount: 3,
                //   itemBuilder: (context, index) {
                //     final hotDeal = hotDeals[index];
                //     return HotDealCard(hotProduct: hotDeal);
                //   },
                // ),
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Text(
                          "Hot deals",
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
                        height: 210,
                        child: ListView.separated(
                          primary: false,
                          //  physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          shrinkWrap: true,
                          itemCount: 3,
                          //itemCount: valueExtractor(value).length,
                          itemBuilder: (context, index) {
                            //final product = valueExtractor(value)[index];
                            // return ProductCard(
                            //   product: product,
                            //   onTap: (product) {
                            //     // Navigator.push(
                            //     //     context,
                            //     //     MaterialPageRoute(
                            //     //         builder: (context) =>
                            //     //             ProductDetailsScreen(
                            //     //               productId: product.id,
                            //     //             )));
                            //   },
                            // );
                            InkWell(
                              onTap: () {
                                //  onTap(product);
                              },
                              child: SizedBox(
                                height: productCardHeight,
                                width: productCardWidth,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Skeleton.replace(
                                      width: productCardWidth,
                                      height: 100.h,
                                      child: Container(
                                        width: productCardWidth,
                                        height: 100.h,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                ImageConstant.laptopImage),
                                            // image: NetworkImage(product.image),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 9.h,
                                    ),
                                    Skeleton.replace(
                                      height: 15.h,
                                      child: SizedBox(
                                        height: 30.h,
                                        child: Text(
                                          "product.title",
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
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    const Row(
                                      children: [
                                        Text('Rs. {product.price}'),
                                        // SizedBox(
                                        //   width: 10.w,
                                        // ),
                                        // Container(
                                        //   padding: EdgeInsets.only(
                                        //       left: 10.w, right: 15.w, top: 5.h, bottom: 5.h),
                                        //   decoration: BoxDecoration(
                                        //     color: const Color(0xff362677),
                                        //     borderRadius: BorderRadius.only(
                                        //       topLeft: const Radius.circular(0),
                                        //       topRight: Radius.circular(10.r),
                                        //       bottomLeft: Radius.circular(10.r),
                                        //     ),
                                        //   ),
                                        //   child: Text(
                                        //     '0.4',
                                        //     style: TextStyle(
                                        //         fontSize: 9.sp,
                                        //         fontWeight: FontWeight.w400,
                                        //         color: Colors.white),
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    Skeleton.replace(
                                      height: 10.h,
                                      width: productCardWidth,
                                      child: SizedBox(
                                        width: productCardWidth,
                                        child: Text(
                                          "product.contact_name",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        // Skeleton.unite(
                                        //   child: RatingBar.builder(
                                        //     initialRating: product.avg_rating,
                                        //     minRating: 0,
                                        //     direction: Axis.horizontal,
                                        //     allowHalfRating: true,
                                        //     itemCount: 5,
                                        //     itemSize: 15,
                                        //     itemPadding:
                                        //         const EdgeInsets.symmetric(
                                        //       horizontal: 1.0,
                                        //     ),
                                        //     itemBuilder: (context, _) =>
                                        //         const Icon(
                                        //       Icons.star,
                                        //       color: Color(0xfff781740),
                                        //     ),
                                        //     onRatingUpdate: (rating) {},
                                        //   ),
                                        // ),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        Text(
                                          "({product.avg_rating})",
                                          style: TextStyle(
                                            fontSize: 9.sp,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xff888888),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Icon(
                                          Icons.visibility,
                                          size: 20,
                                          color: Color(0xff888888),
                                        ),
                                        SizedBox(
                                          width: 3.w,
                                        ),
                                        Text(
                                          "text",
                                          // '${NumberFormat.compact().format(
                                          //   int.parse(product.visits),
                                          // )} Views',
                                          style: TextStyle(
                                            fontSize: 9.sp,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xff888888),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 24.w,
                                        ),
                                        // if (product.pickup != null)
                                        //   Row(
                                        //     mainAxisAlignment:
                                        //         MainAxisAlignment.spaceBetween,
                                        //     children: [
                                        //       const Icon(
                                        //         Icons.location_on,
                                        //         size: 20,
                                        //         color: Color(0xff888888),
                                        //       ),
                                        //       SizedBox(
                                        //         width: 2.w,
                                        //       ),
                                        //       Skeleton.replace(
                                        //         width: 80.w,
                                        //         height: 10.h,
                                        //         child: SizedBox(
                                        //           width: 80.w,
                                        //           child: Text(
                                        //            " product.pickup!",
                                        //             maxLines: 1,
                                        //             overflow:
                                        //                 TextOverflow.ellipsis,
                                        //             style: TextStyle(
                                        //               fontSize: 10.sp,
                                        //               fontWeight: FontWeight.w400,
                                        //               color:
                                        //                   const Color(0xff888888),
                                        //             ),
                                        //           ),
                                        //         ),
                                        //       ),
                                        //     ],
                                        //   ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                            return null;
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width: 12.w,
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: ListView.separated(
                    itemCount: 2,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child:
                          const Center(child: Text("OrderPlacedContainer()")),
                    ),
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 14.h),
                  ),
                ),
                // Second Tab Content
                const Center(
                  child: Text('Order Placed Content Here'),
                ),
                // Center(
                //   child: Text('Order Placed Content Here'),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HotDealsWidget extends ConsumerWidget {
  final String vendorName;

  const HotDealsWidget({super.key, required this.vendorName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Correctly call the provider family with the vendorName
    final vendorProfileAsyncValue =
        ref.watch(getVendorProfileDataProvider(vendorName));

    return vendorProfileAsyncValue.when(
      data: (vendorProfile) {
        final hotDeals = vendorProfile.hotProducts;
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: hotDeals?.length,
          itemBuilder: (context, index) {
            final hotDeal = hotDeals?[index];
            return HotDealCard(hotProduct: hotDeal!);
          },
        );
      },
      loading: () => const CircularProgressIndicator(),
      error: (err, stack) => Text('Error: $err'),
    );
  }
}

class HotDealCard extends StatelessWidget {
  final HotProduct hotProduct;

  const HotDealCard({super.key, required this.hotProduct});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(hotProduct.image!, width: 100.w, height: 100.h),
          SizedBox(height: 8.h),
          Text(hotProduct.title!, style: TextStyle(fontSize: 14.sp)),
          Text('\$${hotProduct.price}',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

// class VendorProductSlider extends StatelessWidget {
//   const VendorProductSlider({
//     super.key,
//     required this.vendorProfileModel,
//     required this.valueExtractor,
//     required this.title,
//   });

//   final String title;
//   final AsyncValue<VendorProfileModel> vendorProfileModel;
//   final List<Product> Function(VendorProfileModel) valueExtractor;

//   @override
//   Widget build(BuildContext context) {
//     final value = vendorProfileModel.valueOrNull;
//     if (value != null && valueExtractor(value).isNotEmpty) {
//       return Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 16.w),
//             child: Text(
//               title,
//               style: TextStyle(
//                   fontSize: 14.sp,
//                   fontWeight: FontWeight.w700,
//                   color: Colors.black),
//             ),
//           ),
//           SizedBox(
//             height: 8.h,
//           ),
//           SizedBox(
//             height: productCardHeight,
//             child: switch (vendorProfileModel) {
//               AsyncData(:final value) => ListView.separated(
//                   primary: false,
//                   physics: const BouncingScrollPhysics(),
//                   scrollDirection: Axis.horizontal,
//                   padding: EdgeInsets.symmetric(horizontal: 16.w),
//                   shrinkWrap: true,
//                   itemCount: valueExtractor(value).length,
//                   itemBuilder: (context, index) {
//                     final product = valueExtractor(value)[index];
//                     return VendorProductCard(
//                       product: product,
//                       onTap: (product) {
//                         // Navigator.push(
//                         //     context,
//                         //     MaterialPageRoute(
//                         //         builder: (context) => ProductDetailsScreen(
//                         //               productId: product.id,
//                         //             )));
//                       },
//                     );
//                   },
//                   separatorBuilder: (BuildContext context, int index) {
//                     return SizedBox(
//                       width: 12.w,
//                     );
//                   },
//                 ),
//               AsyncError() => VendorProductSliderSkeleton(),
//               _ => VendorProductSliderSkeleton(),
//             },
//           ),
//         ],
//       );
//     } else {
//       return Container();
//     }
//   }
// }

// class VendorProductSliderSkeleton extends StatelessWidget {
//   VendorProductSliderSkeleton({super.key});

//   final List<Product> fakeDate = List.generate(
//     7,
//     (index) => Product(
//       id: '',
//       title: '',
//       price: '0',
//       image: '',
//       visits: '0',
//       contact_name: '',
//       pickup: '',
//     ),
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Skeletonizer(
//       enabled: true,
//       child: ListView.separated(
//         primary: false,
//         physics: const BouncingScrollPhysics(),
//         scrollDirection: Axis.horizontal,
//         padding: EdgeInsets.only(left: 5.w),
//         shrinkWrap: true,
//         itemCount: fakeDate.length,
//         itemBuilder: (context, index) {
//           final product = fakeDate[index];
//           return VendorProductCard(
//             product: product,
//             onTap: (product) {},
//           );
//         },
//         separatorBuilder: (BuildContext context, int index) {
//           return SizedBox(
//             width: 12.w,
//           );
//         },
//       ),
//     );
//   }
// }
