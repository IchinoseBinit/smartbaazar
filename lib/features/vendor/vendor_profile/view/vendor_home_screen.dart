import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rxdart/rxdart.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:smartbazar/features/ads_screen/api/ad_api.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/home/api/vendor_search.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/api/vendor_profile_api.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_name.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/postcard.dart';
import 'package:smartbazar/features/widgets/custom_drawer_widget.dart';
import 'package:smartbazar/features/widgets/product_card.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class VendorHomeScreen extends ConsumerStatefulWidget {
  final String vendorName;
  final int vid;
  // final String connection,
      // contact,
      // total_connections,
      // membership_title,
      // has_sponsored_gifts,
      // story_count;
  const VendorHomeScreen({
    super.key,
    required this.vendorName,
    required this.vid,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _VendorHomeScreenState();
}

class _VendorHomeScreenState extends ConsumerState<VendorHomeScreen>
    with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _vendorsearchController = TextEditingController();

  final _debouncer = BehaviorSubject<String>();
  bool _showSearchProductModels = false;
  bool _vendorsearchResullts = false;
  late TabController _tabController;
  late TabController _firstTabController;
  int _postType = 0; // Default to 'Home' tab with postType 0

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
    _firstTabController = TabController(length: 2, vsync: this);
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
        _showSearchProductModels = query.isNotEmpty;
      });
    });
  }

  void _onSearchFocusChanged(bool hasFocus) {
    setState(() {
      _showSearchProductModels = hasFocus;
    });
  }

  @override
  void dispose() {
    _debouncer.close();
    _searchController.dispose();
    _vendorsearchController.dispose();
    _tabController.dispose();
    _firstTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final adsList = ref.watch(fetchAdsProvider);

    // final SearchProductModels = ref.watch(searchProvider(_searchController.text));
    // final vendorSearchProductModels = ref
    //     .watch(VendorSearchProvider(_vendorsearchController.text, widget.vid));

    final vendorProfileModelDataAsyncValue = ref.watch(
        getVendorProfileDataProvider(widget.vendorName.replaceAll(" ", '')));
    return GenericSafeArea(
      child: Scaffold(
        key: _key,
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xffF6F1F1),
        drawer: const CustomDrawer(),
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {},
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      const VendorSearchContainer(),
                      if (_showSearchProductModels)
                        // Positioned(
                        //   top: 0.h,
                        //   left: 0,
                        //   right: 0,
                        //   child: Container(
                        //     color: Colors.white,
                        //     child: SearchProductModels.when(
                        //       data: (results) {
                        //         if (results.isEmpty) {
                        //           return const SizedBox(
                        //             child: Text('No result found'),
                        //           );
                        //         }
                        //         return Card(
                        //           elevation: 8,
                        //           child: ListView.separated(
                        //             padding: EdgeInsets.zero,
                        //             shrinkWrap: true,
                        //             primary: false,
                        //             itemCount: results.length,
                        //             itemBuilder: (context, index) {
                        //               final product = results[index];
                        //               return ListTile(
                        //                 title: Text(product.title),
                        //                 onTap: () {
                        //                   Navigator.push(
                        //                     context,
                        //                     MaterialPageRoute(
                        //                       builder: (context) =>
                        //                           SearchScreen(
                        //                         query: _searchController.text,
                        //                       ),
                        //                     ),
                        //                   );
                        //                   setState(() {
                        //                     _showSearchProductModels = false;
                        //                     FocusScope.of(context).unfocus();
                        //                   });
                        //                 },
                        //               );
                        //             },
                        //             separatorBuilder: (context, index) =>
                        //                 const Divider(),
                        //           ),
                        //         );
                        //       },
                        //       loading: () {
                        //         return SimpleDialog(
                        //           children: [
                        //             adsList.isLoading
                        //                 ? const SizedBox()
                        //                 : Image.network(
                        //                     adsList.value!.first.image!)
                        //           ],
                        //         );
                        //       },
                        //       error: (error, stack) => const Center(
                        //           child: CircularProgressIndicator()),
                        //     ),
                        //   ),
                        // ),
                        SizedBox(
                          height: 20.h,
                        ),
                      _buildDottedContainer(),
                      VendorFirstTabBarSection(
                        tabController: _firstTabController,
                      ),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: TabBar(
                    controller: _tabController,
                    tabs: const [
                      Tab(text: 'SHOP'),
                      Tab(
                        text: 'CONNECT',
                      ),
                      Tab(text: 'FREE PRIZES'),
                    ],
                  ),
                ),
              ];
            },
            body: TabBarView(
              controller: _tabController,
              children: [
                // First Tab
                SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      vendorProfileModelDataAsyncValue.when(
                        data: (vendorProfile) {
                          String scratch = vendorProfile.scratch_banner!;
                          return Column(
                            children: [
                              CarouselSlider(
                                items: vendorProfile.advertisements!.map((e) {
                                  return Image.network(e.image!);
                                }).toList(),
                                options: CarouselOptions(
                                  aspectRatio: 5,
                                  reverse: true,
                                  viewportFraction: 1,
                                  autoPlay: true,
                                  enlargeCenterPage: true,
                                ),
                              ),
                            ],
                          );
                        },
                        loading: () =>
                            const Center(child: CircularProgressIndicator()),
                        error: (error, stack) =>
                            Center(child: Text('Error: $error')),
                      ),
                      // SizedBox(
                      //   height: 350.h,
                      //   child: ListView.builder(
                      //     shrinkWrap: true,
                      //     scrollDirection: Axis.horizontal,
                      //     itemCount: 5,
                      //     itemBuilder: (context, index) {
                      //       return const SizedBox(
                      //         height: 450,
                      //         child: Product_item_widget(),
                      //       );
                      //     },
                      //   ),
                      // ),
                      Padding(
                        padding: EdgeInsets.only(left: 18.w),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "POSTS",
                            style: TextStyle(
                                fontSize: 18.sp, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 350.h,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return const SizedBox(
                              height: 450,
                              child: PostCard(),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 18.w),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "ALL PRODUCTS",
                            style: TextStyle(
                                fontSize: 18.sp, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      // Wrap(
                      //   spacing: 3.h, // Horizontal spacing between items
                      //   runSpacing: 9.w, // Vertical spacing between rows
                      //   children: List.generate(5, (index) {
                      //     return SizedBox(
                      //       height: 310.h,
                      //       width: MediaQuery.of(context).size.width / 2 -
                      //           16, // Adjust width for 2 columns
                      //       child: const Product_item_widget(),
                      //     );
                      //   }),
                      // ),

                      // GridView.builder(
                      //   physics: NeverScrollableScrollPhysics(),
                      //   gridDelegate:
                      //       const SliverGridDelegateWithFixedCrossAxisCount(
                      //     crossAxisCount: 2,
                      //     crossAxisSpacing: 5.0,
                      //     mainAxisSpacing: 10.0,
                      //     childAspectRatio: 0.5,
                      //   ),
                      //   itemCount: 5,
                      //   itemBuilder: (context, index) {
                      //     return const Product_item_widget();
                      //   },
                      // ),
                    ],
                  ),
                ),
                // Second Tab
                // SingleChildScrollView(
                //   child: Column(
                //     children: [
                //       SizedBox(
                //         height: 350.h,
                //         child: ListView.builder(
                //           shrinkWrap: true,
                //           scrollDirection: Axis.horizontal,
                //           itemCount: 5,
                //           itemBuilder: (context, index) {
                //             return const SizedBox(
                //               height: 450,
                //               child: Product_item_widget(),
                //             );
                //           },
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // Third Tab
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 350.h,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return const SizedBox(
                              height: 450,
                              child: PostCard(),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const Text("data")
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTabContent(String category, String name) {
    final adsList = ref.watch(fetchAdsProvider);

    // Use ref.watch to get search results based on category
    final SearchProductModels = ref.watch(getVendorProfileDataProvider(
      widget.vendorName.replaceAll(" ", ''),
      category: category,
    ));

    return SearchProductModels.when(
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
            //  physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            padding: const EdgeInsets.only(left: 10, right: 5, top: 1),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
              childAspectRatio: 0.7,
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
                          margin: const EdgeInsets.only(right: 2, top: 4),
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
                          Text(
                            "${post.visits!}views",
                            style: TextStyle(
                              fontSize: 9.sp,
                            ),
                          ),
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
                            style: TextStyle(
                              fontSize: 9.sp,
                            ),
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

  Widget _buildDottedContainer() {
    return SizedBox(
      height: 210,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(5, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: DottedBorder(
              color: Colors.black,
              strokeWidth: 2,
              borderType: BorderType.RRect,
              radius: const Radius.circular(12),
              dashPattern: const [6, 5],
              child: SizedBox(
                width: 120,
                height: 200,
                //  padding: const EdgeInsets.all(10),
                child: Image.asset(
                  'assets/images/vendorDealImage.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

class VendorFirstTabBarSection extends StatelessWidget {
  final TabController tabController;
  const VendorFirstTabBarSection({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: tabController,
          tabs: const [
            Tab(text: 'Home'),
            Tab(
              text: 'About',
            ),
          ],
        ),
        SizedBox(
          height: 540.h,
          child: TabBarView(controller: tabController, children: [
            // const BigContainer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.black,
                )),
                child: Padding(
                  padding: EdgeInsets.only(left: 24.w, top: 32.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Opening hours : Sunday - Friday (10am - 8pm)",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12.sp,
                          )),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          Icon(Icons.phone,
                              color: const Color(0xFF8B6C6C), size: 14.h),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text("9845654512",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12.sp,
                              )),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          Icon(Icons.location_on,
                              color: const Color(0xFF8B6C6C), size: 14.h),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text("Durbargmarg,Kathmandu",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12.sp,
                              )),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          Icon(Icons.email,
                              color: const Color(0xFF8B6C6C), size: 14.h),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text("mypower@gmail.com",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12.sp,
                              )),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Text("Bio",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                          )),
                      SizedBox(height: 10.h),
                      Text(
                          "Welcome to [Store Name], your ultimate destination for premium-quality earphones and audio gear. Established in [Year], we are passionate about delivering the best sound experience to music lovers, gamers, and audiophiles alike. Whether you're looking for crystal-clear audio, noise cancellation, or stylish designs, we have the perfect pair of earphones for you.",
                          style: TextStyle(fontSize: 12.sp)),
                    ],
                  ),
                ),
              ),
            )
          ]),
        ),
      ],
    );
  }
}

class BigContainer extends StatelessWidget {
  final String title;
  final String logo;
  final String contact;
  final String storyCount;
  final String membershipTitle;
  final bool hasSpo;
  final String deals_circle,total_prize_worth,total_connections,location,Cnumber;
  

  // Constructor
  const BigContainer({
    super.key,
    required this.title,
    required this.logo,
    required this.contact,
    required this.storyCount,
    required this.membershipTitle,
    this.hasSpo = false, // Default value
    required this.deals_circle,
     required this.total_connections,
      required this.total_prize_worth,
            required this.location,
                        required this.Cnumber,



  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: DottedBorder(
        color: const Color(0xFF6D1A49),
        strokeWidth: 1,
        borderType: BorderType.RRect,
        radius: const Radius.circular(12),
        dashPattern: const [7, 5],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.file_download_outlined,
                    color: Color(0xFF6D1A49),
                  ),
                  Icon(
                    Icons.more_vert_rounded,
                    color: Color(0xFF6D1A49),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      "Connect",
                      style: TextStyle(fontSize: 9.sp),
                    ),
                    Text(
                      "Pass",
                      style: TextStyle(fontSize: 9.sp),
                    )
                  ],
                ),
                DottedBorder(
                  color: Colors.black,
                  strokeWidth: 2,
                  borderType: BorderType.Circle,
                  child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 40,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(logo),
                          radius: 60,
                          backgroundColor: Colors.white,
                        ),
                      )),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/nepalFlag.png",
                      width: 50,
                      height: 50,
                      color: Colors.grey,
                    ),
                    Text(
                      "Domestic",
                      style: TextStyle(fontSize: 9.sp),
                    ),
                    Text(
                      "Exclusive",
                      style: TextStyle(fontSize: 9.sp),
                    ),
                    Text(
                      "Brand",
                      style: TextStyle(fontSize: 9.sp),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 10.sp),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    title,
                    style: TextStyle(
                        fontSize: 24.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: const Color(0xFF370C6B),
                          size: 15.w,
                        ),
                        Text(
                          "Open",
                          style: TextStyle(
                            fontSize: 9.sp,
                            color: const Color(0xFF370C6B),
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Icon(
                          Icons.directions,
                          color: const Color(0xFF370C6B),
                          size: 15.w,
                        ),
                        Text(
                          "Directions",
                          style: TextStyle(
                            fontSize: 9.sp,
                            color: const Color(0xFF370C6B),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      location,
                      style: TextStyle(
                        fontSize: 9.sp,
                        color: const Color(0xFF370C6B),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.phone,
                          color: const Color(0xFF370C6B),
                          size: 15.w,
                        ),
                        Text(
                          "Customer Service",
                          style: TextStyle(
                            fontSize: 9.sp,
                            color: const Color(0xFF370C6B),
                          ),
                        ),
                        SizedBox(width: 5.w),
                      ],
                    ),
                    Text(
                      Cnumber,
                      style: TextStyle(
                        fontSize: 9.sp,
                        color: const Color(0xFF370C6B),
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
                margin: EdgeInsets.only(top: 5.h),
                width: MediaQuery.sizeOf(context).width,
                color: const Color(0xFF4B004B),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            total_connections,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 13.sp,
                                color: Colors.white),
                          ),
                          Text(
                            "Connections",
                            style:
                                TextStyle(fontSize: 10.sp, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(width: 15.w),
                      Column(
                        children: [
                          Text(
                            deals_circle,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 13.sp,
                                color: Colors.white),
                          ),
                          Text(
                            "DealzCircle",
                            style:
                                TextStyle(fontSize: 10.sp, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(width: 15.w),
                      Column(
                        children: [
                          Text(
                            "Rs.${total_prize_worth}",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 13.sp,
                                color: Colors.white),
                          ),
                          Text(
                            "Prize Worth",
                            style:
                                TextStyle(fontSize: 10.sp, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  color: const Color(0xFF4B004B),
                  width: MediaQuery.sizeOf(context).width,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 18.0),
                    child: Text(
                      "smartbazaar.com.np/${title}",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Positioned(
                  bottom:
                      -40, // Adjust based on how much the CircleAvatar should overlap
                  left: MediaQuery.sizeOf(context).width / 2 -
                      50, // Center the avatar
                  child: ClipOval(
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Image.asset(
                        'assets/images/zoomlogo.png',
                        fit: BoxFit.cover,
                        width: 140,
                        height: 140,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            SizedBox(height: 40.h),
            Padding(
              padding: EdgeInsets.only(left: 4.h, bottom: 5.h),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Connect",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                          color: const Color(0xff370C6B),
                        ),
                        textAlign: TextAlign.center),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Shop",
                      style: TextStyle(
                          color: const Color(0xFF4B004B),
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    VerticalDivider(
                      thickness: 2.w,
                      color: const Color(0xFF4B004B),
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(
                          color: const Color(0xFF4B004B),
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    VerticalDivider(
                      thickness: 2.w,
                      color: const Color(0xFF4B004B),
                    ),
                    Text(
                      "Feed",
                      style: TextStyle(
                          color: const Color(0xFF4B004B),
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    VerticalDivider(
                      thickness: 2.w,
                      color: const Color(0xFF4B004B),
                    ),
                    Text(
                      "FreePrizes",
                      style: TextStyle(
                          color: const Color(0xFF4B004B),
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    VerticalDivider(
                      thickness: 2.w,
                      color: const Color(0xFF4B004B),
                    ),
                    Text(
                      "Brands",
                      style: TextStyle(
                          color: const Color(0xFF4B004B),
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    Image.asset('assets/images/arrow_down.png')
                  ]),
            ),
            SizedBox(
              height: 5.h,
            )
          ],
        ),
      ),
    );
  }
}

class VendorSearchContainer extends StatelessWidget {
  const VendorSearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
        gradient: LinearGradient(colors: [
          Color(0xFF85237C),
          Color(0xFF5C1E56),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              const SizedBox(
                width: 30,
              ),
              SizedBox(
                  height: 50,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 120.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 5.w, vertical: 5.h),
                          decoration: BoxDecoration(
                            color: const Color(0xFF46236a),
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.r),
                              bottomLeft: Radius.circular(15.r),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2.0,
                                  ),
                                ),
                                child: ClipOval(
                                  child: Image.asset(
                                    "assets/images/vendorDealImage.png",
                                    width: 35,
                                    height: 30,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 200.w,
                          height: 180.h,
                          padding: EdgeInsets.only(top: 10.h),
                          decoration: const BoxDecoration(color: Colors.white),
                          child: TextField(
                            //  controller: searchController,
                            decoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 0.2, color: Colors.white),
                              ),
                              hintText: "Search MyPower BizSpace",
                              hintStyle: TextStyle(fontSize: 10.sp),
                              isCollapsed: true,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.h, horizontal: 10.w),
                              disabledBorder: InputBorder.none,
                              isDense: true,
                              enabled: true,
                            ),
                          ),
                        ),
                        Container(
                          height: 180.h,
                          padding: EdgeInsets.symmetric(horizontal: 15.w),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            color: const Color(0xFF46236a),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15.r),
                              bottomRight: Radius.circular(15.r),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(2.0.r),
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 20.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
        ],
      ),
    );
  }
}
