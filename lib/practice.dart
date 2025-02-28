// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:smartbazar/features/vendor/vendor_profile/api/vendor_all_products_api.dart';
// import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_all_products_model.dart';

// class VendorProductsPage extends ConsumerStatefulWidget {
//   final int vendorId;

//   const VendorProductsPage({required this.vendorId, Key? key}) : super(key: key);

//   @override
//   _VendorProductsPageState createState() => _VendorProductsPageState();
// }

// class _VendorProductsPageState extends ConsumerState<VendorProductsPage> {
//   int _page = 1;
//   List<VendorAllproductsModel> _products = [];
//   bool _isLoading = false;
//   final ScrollController _allproductsscrollcontroller = ScrollController();

//   @override
//   void initState() {
//     super.initState();
//     _fetchProducts();
//     _allproductsscrollcontroller.addListener(_onScroll);
//   }

//   void _onScroll() {
//     if (_allproductsscrollcontroller.position.pixels >= _allproductsscrollcontroller.position.maxScrollExtent - 200) {
//       _fetchProducts();
//     }
//   }

//   Future<void> _fetchProducts() async {
//     if (_isLoading) return;

//     setState(() {
//       _isLoading = true;
//     });

//     try {
//       final response = await ref.read(
//         getVendorAllProductsProvider(widget.vendorId, page: _page).future,
//       );

//       setState(() {
//         _products.addAll(response.data?.all_products?.data ?? []);
//         _page++; // Increment page for next request
//       });
//     } catch (e) {
//       debugPrint("Error fetching products: $e");
//     } finally {
//       setState(() {
//         _isLoading = false;
//       });
//     }
//   }

//   @override
//   void dispose() {
//     _allproductsscrollcontroller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Vendor Products')),
//       body: SingleChildScrollView(
//         controller: _allproductsscrollcontroller,
//         padding: const EdgeInsets.all(8.0),
//         child: Wrap(
//           spacing: 8.0,
//           runSpacing: 8.0,
//           alignment: WrapAlignment.start,
//           children: [
//             for (var product in _products)
//               Card(
//                 elevation: 4,
//                 child: SizedBox(
//                   width: MediaQuery.of(context).size.width * 0.45, // Responsive width
//                   child: Column(
//                     children: [
//                       Image.network(
//                         product.image, // Ensure your model has imageUrl
//                         height: 120,
//                         width: double.infinity,
//                         fit: BoxFit.cover,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(
//                           product.title,
//                           textAlign: TextAlign.center,
//                           maxLines: 2,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             if (_isLoading)
//               const Center(
//                 child: Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: CircularProgressIndicator(),
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//   //  allproductsresp.when(
//   //                         data: (data) {
//   //                           if (data.data?.all_products == null ||
//   //                               data.data!.all_products!.data!.isEmpty!) {
//   //                             return Center(
//   //                                 child:
//   //                                     nolistingfound()); // ✅ Shows "No Listing Found" when empty
//   //                           }

//   //                           return Padding(
//   //                             padding: EdgeInsets.symmetric(vertical: 20.h),
//   //                             child: SingleChildScrollView(
//   //                               physics: const BouncingScrollPhysics(),
//   //                               scrollDirection: Axis.vertical,
//   //                               child: Wrap(
//   //                                 spacing: 5.w,
//   //                                 runSpacing: 15.h,
//   //                                 children: List.generate(
//   //                                   data.data!.all_products!.data!.length,
//   //                                   (index) {
//   //                                    VendorAllproductsModel  res =
//   //                                         data.data!.all_products!.data![index];

//   //                                     return SizedBox(
//   //                                       width:
//   //                                           (MediaQuery.of(context).size.width -
//   //                                                   30.w) /
//   //                                               2,
//   //                                       child: Card(
//   //                                         clipBehavior: Clip.antiAlias,
//   //                                         shadowColor: const Color(0xff3D215F)
//   //                                             .withOpacity(0.5),
//   //                                         elevation: 9,
//   //                                         margin: EdgeInsets.symmetric(
//   //                                             horizontal: 5.w),
//   //                                         shape: RoundedRectangleBorder(
//   //                                           borderRadius:
//   //                                               BorderRadius.circular(15.0),
//   //                                         ),
//   //                                         child: AllProductDetailWidget(
//   //                                            ref: ref,
//   //                                             onenquiredclicked: () {
                                           

//   //                                                       getEnquire(ref, res.id)
//   //                                                           .then(
//   //                                                         (value) {
//   //                                                           value.data?.enquire ==
//   //                                                                   0
//   //                                                               ? showModalBottomSheet(
//   //                                                                   useSafeArea:
//   //                                                                       true,
//   //                                                                   isScrollControlled:
//   //                                                                       true,
//   //                                                                   context:
//   //                                                                       context,
//   //                                                                   builder:
//   //                                                                       (BuildContext
//   //                                                                           context) {
//   //                                                                     return SizedBox(
//   //                                                                       height: MediaQuery.of(context).size.height *
//   //                                                                           0.8, // Use 80% of the screen height

//   //                                                                       child:
//   //                                                                           SendMessageBottomWidget(
//   //                                                                         ref:
//   //                                                                             ref,
//   //                                                                         productidid:
//   //                                                                             res.id,
//   //                                                                       ),
//   //                                                                     );
//   //                                                                   },
//   //                                                                 )
//   //                                                               : navigateToPage(
//   //                                                                   context:
//   //                                                                       context,
//   //                                                                   page: ChatScreen(
//   //                                                                       threadId: value
//   //                                                                           .data!
//   //                                                                           .thread!
//   //                                                                           .id!,
//   //                                                                       username: value
//   //                                                                           .data!
//   //                                                                           .thread!
//   //                                                                           .subject!,
//   //                                                                       postId: value
//   //                                                                           .data!
//   //                                                                           .thread!
//   //                                                                           .post_id!),
//   //                                                                   ref: ref,
//   //                                                                   showNavBar:
//   //                                                                       false, // Hide bottom navbar
//   //                                                                 );
//   //                                                           // if ()

//   //                                                           // SendMessageBottomWidget(
//   //                                                           //     ref: ref,
//   //                                                           //     productidid:
//   //                                                           //         prod.id);
//   //                                                         },
//   //                                                       ).catchError((error) {
//   //                                                         print(
//   //                                                             'Error: $error');
//   //                                                       });
//   //                                                     },
//   //                                           savedid: res.savedByLoggedUser ==
//   //                                                       null ||
//   //                                                   res.savedByLoggedUser!
//   //                                                       .isEmpty
//   //                                               ? []
//   //                                               : res.savedByLoggedUser
//   //                                                   ?.map(
//   //                                                     (e) => SavedPost(
//   //                                                         id: e.id!,
//   //                                                         userId: e.user_id!,
//   //                                                         postId: e.post_id!,
//   //                                                         createdAt:
//   //                                                             e.createdAt ?? '',
//   //                                                         updatedAt:
//   //                                                             e.updatedAt ??
//   //                                                                 ''),
//   //                                                   )
//   //                                                   .toList(),
//   //                                           onRefresh: () {
//   //                                             ref.invalidate(
//   //                                                 getVendorAllProductsProvider); // This will force a fresh fetch
//   //                                           },
//   //                                           lat: res.userdetails?.latitude,
//   //                                           long: res.userdetails?.longitude,
//   //                                           productid: res.id,
//   //                                           posttype: res.post_type_id,
//   //                                           membershipid:
//   //                                               res.userdetails?.membership_id,
//   //                                           id: int.tryParse(res.id),
//   //                                           didcountpercentage:
//   //                                               res.discount_percentage ?? 0,
//   //                                           productImage: res.image,
//   //                                           Vimage:
//   //                                               res.userdetails?.photo ?? "",
//   //                                           avg_rating:
//   //                                               res.avg_rating?.toDouble(),
//   //                                           comment:
//   //                                               res.commentcount.toString(),
//   //                                           discounttedPrice: res
//   //                                                   .discounted_price
//   //                                                   ?.toString() ??
//   //                                               "0",
//   //                                           distance:
//   //                                               res.shortestDistance ?? 0.0,
//   //                                           issponsored:
//   //                                               res.userdetails?.sponsored ??
//   //                                                   false,
//   //                                           lefttile: "All Products",
//   //                                           membershipColor: res.userdetails
//   //                                                   ?.membership_color ??
//   //                                               "",
//   //                                           membershipTitle: res.userdetails
//   //                                                   ?.membership_title ??
//   //                                               "",
//   //                                           offer: res.offers ?? "",
//   //                                           price: res.price ?? "0",
//   //                                           shortestDistance:
//   //                                               res.shortestDistance ?? 0.0,
//   //                                           similarproductCount:
//   //                                               res.similarVendorProfileProductCount ??
//   //                                                   0,
//   //                                           title: res.title ?? "No Title",
//   //                                           vendorname: res.userdetails?.name ??
//   //                                               "Unknown",
//   //                                           wow: res.wow ?? "",
//   //                                         ),
//   //                                       ),
//   //                                     );
//   //                                   },
//   //                                 ),
//   //                               ),
//   //                             ),
//   //                           );
//   //                         },
//   //                         loading: () => Center(
//   //                           child: SizedBox(
//   //                             width: 100.w,
//   //                             height: 100.h,
//   //                             child: Center(
//   //                               child: Image.asset(
//   //                                 'assets/images/preloader.gif',
//   //                                 width: 100.w,
//   //                                 height: 100.h,
//   //                                 fit: BoxFit
//   //                                     .contain, // Ensures the image fits within its bounds
//   //                               ),
//   //                             ),
//   //                           ),
//   //                         ),
//   //                         error: (error, stack) => Center(
//   //                           child: Text("Error: $error",
//   //                               style: const TextStyle(color: Colors.red)),
//   //                         ),
//   //                       )



//   class VendorProductListWidget extends StatefulWidget {
//   final int vid;

//   const VendorProductListWidget({Key? key, required this.vid}) : super(key: key);

//   @override
//   _VendorProductListWidgetState createState() => _VendorProductListWidgetState();
// }

// class _VendorProductListWidgetState extends State<VendorProductListWidget> {
//   final ScrollController _scrollController = ScrollController();
//   int _currentPage = 1;

//   @override
//   void initState() {
//     super.initState();
//     // Listen to scroll position to handle pagination
//     _scrollController.addListener(() {
//       if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
//         // Reached the bottom, trigger loading more products
//         setState(() {
//           _currentPage++;
//         });
//         // Fetch next page of products
//         ref.refresh(getVendorAllProductsProvider(widget.vid, page: _currentPage));
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _scrollController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ref.watch(getVendorAllProductsProvider(widget.vid, page: _currentPage)).when(
//       data: (data) {
//         final allProducts = data.data?.all_products?.data ?? [];

//         if (allProducts.isEmpty) {
//           return Center(
//             child: Text("No Listing Found", style: TextStyle(fontSize: 16)),
//           );
//         }

//         return Padding(
//           padding: EdgeInsets.symmetric(vertical: 20.h),
//           child: SingleChildScrollView(
//             controller: _scrollController, // Attach ScrollController here
//             physics: const BouncingScrollPhysics(),
//             scrollDirection: Axis.vertical,
//             child: Wrap(
//               spacing: 5.w,
//               runSpacing: 15.h,
//               children: List.generate(allProducts.length, (index) {
//                 VendorAllproductsModel product = allProducts[index];

//                 return SizedBox(
//                   width: (MediaQuery.of(context).size.width - 30.w) / 2,
//                   child: Card(
//                     clipBehavior: Clip.antiAlias,
//                     shadowColor: const Color(0xff3D215F).withOpacity(0.5),
//                     elevation: 9,
//                     margin: EdgeInsets.symmetric(horizontal: 5.w),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(15.0),
//                     ),
//                     child: AllProductDetailWidget(
//                       ref: ref,
//                       onenquiredclicked: () {
//                         getEnquire(ref, product.id).then((value) {
//                           value.data?.enquire == 0
//                               ? showModalBottomSheet(
//                                   useSafeArea: true,
//                                   isScrollControlled: true,
//                                   context: context,
//                                   builder: (BuildContext context) {
//                                     return SizedBox(
//                                       height: MediaQuery.of(context).size.height * 0.8,
//                                       child: SendMessageBottomWidget(
//                                         ref: ref,
//                                         productidid: product.id,
//                                       ),
//                                     );
//                                   },
//                                 )
//                               : navigateToPage(
//                                   context: context,
//                                   page: ChatScreen(
//                                     threadId: value.data!.thread!.id!,
//                                     username: value.data!.thread!.subject!,
//                                     postId: value.data!.thread!.post_id!,
//                                   ),
//                                   ref: ref,
//                                   showNavBar: false,
//                                 );
//                         }).catchError((error) {
//                           print('Error: $error');
//                         });
//                       },
//                       savedid: product.savedByLoggedUser?.map((e) => SavedPost(
//                         id: e.id!,
//                         userId: e.user_id!,
//                         postId: e.post_id!,
//                         createdAt: e.createdAt ?? '',
//                         updatedAt: e.updatedAt ?? '',
//                       )).toList() ?? [],
//                       onRefresh: () {
//                         ref.invalidate(getVendorAllProductsProvider);
//                       },
//                       lat: product.userdetails?.latitude,
//                       long: product.userdetails?.longitude,
//                       productid: product.id,
//                       posttype: product.post_type_id,
//                       membershipid: product.userdetails?.membership_id,
//                       id: int.tryParse(product.id),
//                       didcountpercentage: product.discount_percentage ?? 0,
//                       productImage: product.image,
//                       Vimage: product.userdetails?.photo ?? "",
//                       avg_rating: product.avg_rating?.toDouble(),
//                       comment: product.commentcount.toString(),
//                       discounttedPrice: product.discounted_price?.toString() ?? "0",
//                       distance: product.shortestDistance ?? 0.0,
//                       issponsored: product.userdetails?.sponsored ?? false,
//                       lefttile: "All Products",
//                       membershipColor: product.userdetails?.membership_color ?? "",
//                       membershipTitle: product.userdetails?.membership_title ?? "",
//                       offer: product.offers ?? "",
//                       price: product.price ?? "0",
//                       shortestDistance: product.shortestDistance ?? 0.0,
//                       similarproductCount: product.similarVendorProfileProductCount ?? 0,
//                       title: product.title ?? "No Title",
//                       vendorname: product.userdetails?.name ?? "Unknown",
//                       wow: product.wow ?? "",
//                     ),
//                   ),
//                 );
//               }),
//             ),
//           ),
//         );
//       },
//       loading: () => Center(
//         child: CircularProgressIndicator(),
//       ),
//       error: (error, stack) => Center(
//         child: Text("Error: $error", style: const TextStyle(color: Colors.red)),
//       ),
//     );
//   }
// }
