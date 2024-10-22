import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rxdart/rxdart.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:smartbazar/common/appbar_widget.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/ads_screen/api/ad_api.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/home/api/vendor_search.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/scratch_win/screen/subscribe_win_every_day_screen.dart';
import 'package:smartbazar/features/search_product_details/view/search_product_details.dart';
import 'package:smartbazar/features/vendor/vendor_profile/api/vendor_profile_api.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_name.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/search_in_store.dart';
import 'package:smartbazar/features/widgets/custom_drawer_widget.dart';
import 'package:smartbazar/features/widgets/product_card.dart';
import 'package:url_launcher/url_launcher.dart';

class VendorHomeScreen extends ConsumerStatefulWidget {
  final String vendorName;
  final int vid;
  const VendorHomeScreen(
      {super.key, required this.vendorName, required this.vid});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _VendorHomeScreenState();
}

class _VendorHomeScreenState extends ConsumerState<VendorHomeScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _vendorsearchController = TextEditingController();

  final _debouncer = BehaviorSubject<String>();
  bool _showSearchResults = false;
  bool _vendorsearchResullts = false;
  late TabController _tabController;
  int _postType = 0; // Default to 'Home' tab with postType 0

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this);

    // Listen for tab changes
    _tabController.addListener(() {
      setState(() {
        _postType = _tabController
            .index; // Update the postType based on the selected tab
        ref.refresh(getVendorProfileDataProvider(
          widget.vendorName.replaceAll(" ", ''),
          postType: _postType,
        ));
      });
    });
    _vendorsearchController.addListener(() {
      _debouncer.add(_vendorsearchController.text);
    });

    _debouncer.debounceTime(const Duration(milliseconds: 300)).listen((query) {
      debugPrint("Vendor Search query: $query");
      ref.refresh(VendorSearchProvider(query, widget.vid));
      setState(() {
        _vendorsearchResullts = query.isNotEmpty; // Update this flag
      });
    });

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

  void _onSearchFocusChanged(bool hasFocus) {
    setState(() {
      _showSearchResults = hasFocus;
    });
  }

  @override
  void dispose() {
    _debouncer.close();
    _searchController.dispose();
    _vendorsearchController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final adsList = ref.watch(getAdsProvider);

    final searchResults = ref.watch(searchProvider(_searchController.text));
    final vendorsearchResults = ref
        .watch(VendorSearchProvider(_vendorsearchController.text, widget.vid));

    final vendorProfileModelDataAsyncValue = ref.watch(
        getVendorProfileDataProvider(widget.vendorName.replaceAll(" ", '')));
    // print(
    //     "bibash is ${vendorProfileModelDataAsyncValue.value!.advertisements![0].image}");
    return SafeArea(
      child: Scaffold(
        key: _key,
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xffF6F1F1),
        appBar: AppbarWidget(
          onsubmit: (value) {
            if (_showSearchResults) {
              setState(() {
                _showSearchResults = false;
                FocusScope.of(context).unfocus();
              });
            }
            // setState(() {
            //      ref.watch(GetSearchDetailsProvider(value));
            // });
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
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            // if (_showSearchResults) {
            //   setState(() {
            //     _showSearchResults = false;
            //     FocusScope.of(context).unfocus();
            //   });
            // }
          },
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            // Add SingleChildScrollView here
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
                vendorProfileModelDataAsyncValue.when(
                  data: (vendorProfile) {
                    String scratch = vendorProfile.scratch_banner!;
                    return Column(
                      children: [
                        CarouselSlider(
                            items: vendorProfile.advertisements!.map(
                              (e) {
                                return Image.network(e.image!);
                              },
                            ).toList(),
                            options: CarouselOptions(
                              aspectRatio: 5,
                              reverse: true,
                              viewportFraction: 1,
                              autoPlay: true,
                              enlargeCenterPage: true,
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              SizedBox(height: 2.h),
                              InkWell(
                                onTap: () {
                                  launchUrl(Uri.parse(
                                      'tel:${vendorProfile.vendor?.phone}'));
                                },
                                child: Card(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  elevation: 4,
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        CachedNetworkImage(
                                          imageUrl:
                                              vendorProfile.vendor!.photo!,
                                          height: 100.h,
                                          width: 100.w,
                                          fit: BoxFit.cover,
                                          placeholder: (context, url) =>
                                              const CircularProgressIndicator(),
                                          errorWidget: (context, url, error) =>
                                              const Icon(Icons.error),
                                        ),
                                        SizedBox(width: 16.w),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              vendorProfile.vendor!.name!,
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
                                              vendorProfile.vendor!.name!,
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
                                              vendorProfile.vendor!.phone!,
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
                                                  width: 14.w,
                                                  height: 14.h,
                                                ),
                                                SizedBox(width: 8.w),
                                                SvgPicture.asset(
                                                  viberIcon,
                                                  width: 14.w,
                                                  height: 14.h,
                                                ),
                                                SizedBox(width: 8.w),
                                                SvgPicture.asset(
                                                  phoneIcon,
                                                  width: 14.w,
                                                  height: 14.h,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                // Handle Facebook share
                                              },
                                              child: Image.asset(
                                                ImageConstant
                                                    .facebookShareImage,
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
                              ),
                              SizedBox(height: 10.h),
                              SearchInStore(
                                searchController: _vendorsearchController,
                                onsubmit: (value) {
                                  if (_showSearchResults) {
                                    setState(() {
                                      _showSearchResults = false;
                                      FocusScope.of(context).unfocus();
                                    });
                                  }
                                },
                              ),
                              if (_vendorsearchResullts)
                                Container(
                                  color: Colors.white,
                                  child: vendorsearchResults.when(
                                    data: (results) {
                                      if (results.isEmpty) {
                                        return const SizedBox(
                                          child: Text('No result found'),
                                        );
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
                                                            _vendorsearchController
                                                                .text,
                                                      ),
                                                    ));
                                                setState(() {
                                                  _vendorsearchResullts = false;
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
                                    loading: () =>
                                        const CircularProgressIndicator(),
                                    error: (error, stack) =>
                                        Center(child: Text('Error: $error')),
                                  ),
                                ),
                              SizedBox(
                                height: 10.h,
                              ),
                              InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              SubscribeAndWinEveryDay(),
                                        ));
                                  },
                                  child: Image.network(scratch))
                            ],
                          ),
                        ),
                        // Container(
                        //     color: Colors.blue, // Example banner color
                        //     child: Image.network(
                        //         vendorProfile.advertisements![0].image!)),
                        // TabBar placed inside the body
                        TabBar(
                          isScrollable: false,
                          controller: _tabController,
                          tabs: const [
                            Tab(text: 'Home'),
                            Tab(
                              text: 'Brand',
                            ),
                            Tab(text: 'Used'),
                          ],
                        ),
                        SizedBox(
                          height: 1000,
                          child: TabBarView(
                            dragStartBehavior: DragStartBehavior.down,
                            physics: const NeverScrollableScrollPhysics(),
                            controller: _tabController,
                            children: [
                              buildTabContent("brandnew", "Hot Products"),
                              buildTabContent("brandnew", "Brand New"),
                              buildTabContent("used", "Used Products")
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                  error: (error, stack) => Center(child: Text('Error: $error')),
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
      ),
    );
  }

  Widget buildTabContent(String category, String name) {
    final adsList = ref.watch(getAdsProvider);

    // Use ref.watch to get search results based on category
    final searchResults = ref.watch(getVendorProfileDataProvider(
      widget.vendorName.replaceAll(" ", ''),
      category: category,
    ));

    return searchResults.when(
      loading: () {
        // Check if ads are loading and display loading indicator
        if (adsList.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        // Check for errors when loading ads
        else if (adsList.hasError) {
          print("Error loading ads: ${adsList.error}");
          return Center(child: Text('Error loading ads: ${adsList.error}'));
        }
        // Show ad if available and non-null
        else if (adsList.value != null && adsList.value!.isNotEmpty) {
          final ad = adsList.value!.first; // Get the first ad
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Safely display the ad image
              Image.network(
                ad.image ?? '', // Default to empty string if null
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.error),
              ),
              // Display ad ID safely
            ],
          );
        }
        return const Center(child: Text('No ads available.'));
      },
      // Handle errors in the search results
      error: (err, stack) => Center(child: Text('Error: $err')),
      data: (VendorData data) {
        if (data.vendorposts!.isEmpty) {
          return const Center(child: Text('No results found.'));
        }
        // Display search results in a grid
        return _buildHomeTab(data.vendorposts!, name);
      },
    );
  }

  Widget _buildHomeTab(List<VendorPost> data, String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 16.h),

        // Wrap GridView.builder with Expanded to avoid layout issues
        Expanded(
          child: GridView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            padding: const EdgeInsets.only(left: 10, right: 5, top: 1),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
              childAspectRatio: 0.90,
            ),
            itemCount: data.length,
            itemBuilder: (context, index) {
              final post = data[index];
              return InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductDetailScreen(productId: post.id!),
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.only(top: 2),
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                      width: 0.2,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      // Image display with Skeleton placeholder
                      Skeleton.replace(
                        width: productCardWidth,
                        child: Container(
                          margin: EdgeInsets.only(right: 2, top: 4),
                          width: productCardWidth,
                          height: 100.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(post.image!),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 9.h),

                      // Title text with skeleton placeholder
                      Skeleton.replace(
                        height: 15.h,
                        child: SizedBox(
                          height: 30.h,
                          child: Text(
                            post.title!,
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

                      // Price and username section
                      Row(
                        children: [
                          Text(
                            "RS ${post.price}",
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        ],
                      ),
                      SizedBox(height: 2.h),

                      // Username with skeleton placeholder
                      Skeleton.replace(
                        width: productCardWidth,
                        child: SizedBox(
                          width: productCardWidth,
                          child: Text(
                            post.username!,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 12.h),

                      // Views and pickup location section
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.visibility,
                            size: 15,
                            color: Color(0xff888888),
                          ),
                          Text("${post.visits!}K Views"),
                          const Spacer(),
                          Text(
                            (post.pickup != null && post.pickup!.isNotEmpty)
                                ? post.pickup!
                                    .split(',')
                                    .map((s) => s
                                        .trim()) // Split by comma and trim spaces
                                    .toList() // Convert to a list
                                    .reversed // Reverse the list
                                    .elementAt(1) // Get the second last item
                                : "Kathmandu", // Fallback if pickup is null or empty
                            overflow: TextOverflow.ellipsis, // Prevent overflow
                          ),
                          const SizedBox(
                            width: 2.5,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
