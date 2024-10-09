import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rxdart/rxdart.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:smartbazar/common/appbar_widget.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/favourite_list/model/favourite_product_list.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/api/vendor_profile_api.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_name.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';
import 'package:smartbazar/features/widgets/custom_drawer_widget.dart';
import 'package:smartbazar/features/widgets/product_card.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class DummyVendorHomeScreen extends ConsumerStatefulWidget {
  final String vendorName;
  const DummyVendorHomeScreen({super.key, required this.vendorName});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DummyVendorHomeScreenState();
}

class _DummyVendorHomeScreenState extends ConsumerState<DummyVendorHomeScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final TextEditingController _searchController = TextEditingController();
  final _debouncer = BehaviorSubject<String>();
  bool _showSearchResults = false;
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

    _searchController.addListener(() {
      _debouncer.add(_searchController.text);
    });

    _debouncer.debounceTime(const Duration(milliseconds: 300)).listen((query) {
      debugPrint("Search query: $query");
      // ignore: unused_result
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
    final vendorProfileModelDataAsyncValue = ref.watch(
        getVendorProfileDataProvider(widget.vendorName.replaceAll(" ", '')));
    return vendorProfileModelDataAsyncValue.when(
      data: (vendorProfile) {
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
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                // Add SingleChildScrollView here
                child: Column(
                  children: [
                    Container(
                        color: Colors.blue, // Example banner color
                        child: Image.network(
                            vendorProfile.advertisements![0].image!)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(height: 2.h),
                          Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            elevation: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.network(
                                    vendorProfile.vendor!.photo!,
                                    height: 50.h,
                                    width: 50.h,
                                    fit: BoxFit.cover,
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
                                        vendorProfile.vendor!.name!,
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
                          const SearchInStore(),
                        ],
                      ),
                    ),

                    // TabBar placed inside the body
                    TabBar(
                      isScrollable: true,
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
                        physics: const NeverScrollableScrollPhysics(),
                        controller: _tabController,
                        children: [
                          _buildHomeTab(vendorProfile.posts!.data!.length,
                              vendorProfile.posts!.data!, "Hot Deals"),
                          _buildHomeTab(vendorProfile.posts!.data!.length,
                              vendorProfile.posts!.data!, "Brand new"),
                          _buildHomeTab(vendorProfile.posts!.data!.length,
                              vendorProfile.posts!.data!, "Used"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }

  Widget _buildHomeTab(int count, List<Post> products, String text) {
    return SingleChildScrollView(
      child: Column(
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
                  color: Colors.black),
            ),
          ),
          SizedBox(height: 16.h),
          // Use a SizedBox with height set to null to let GridView size itself
          GridView.builder(
            itemCount: count,
            shrinkWrap: true, // Ensure GridView uses only the space it needs
            physics:
                const NeverScrollableScrollPhysics(), // Prevent scrolling inside the GridView
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 25.0,
              childAspectRatio: 0.9,
            
            ),
            itemBuilder: (context, index) {
              Post data = products[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ProductDetailScreen(productId: data.id!),
                      ));
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
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
                              image: NetworkImage(data.image!),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 9.h),
                      Skeleton.replace(
                        height: 15.h,
                        child: SizedBox(
                          height: 30.h,
                          child: Text(
                            data.title!,
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
                      Row(
                        children: [
                          Text(
                            'Rs.${data.price}',
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        ],
                      ),
                      SizedBox(height: 4.h),
                      Skeleton.replace(
                        height: 10.h,
                        width: productCardWidth,
                        child: SizedBox(
                          width: productCardWidth,
                          child: Text(
                            data.username!,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(width: 4.w),
                          Text(
                            data.pickup!,
                            style: TextStyle(
                              fontSize: 9.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff888888),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.h),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.visibility,
                            size: 20,
                            color: Color(0xff888888),
                          ),
                          Text(data.visits!),
                          SizedBox(width: 3.w),
                          const Spacer(),
                          Text(data.city!),
                          SizedBox(width: 7.w),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
