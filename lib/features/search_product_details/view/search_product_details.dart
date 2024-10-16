import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:smartbazar/common/appbar_widget.dart';
import 'package:smartbazar/features/ads_screen/api/ad_api.dart';
import 'package:smartbazar/features/search_product_details/api/search_detail_api.dart';
import 'package:smartbazar/features/search_product_details/model/search_details.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/widgets/custom_drawer_widget.dart';
import 'package:smartbazar/features/widgets/product_card.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class SearchScreen extends ConsumerStatefulWidget {
  final String query;

  const SearchScreen({Key? key, required this.query}) : super(key: key);

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

List<String> items = [
  'price: Low to High',
  'price: High to Low',
  'Relevance',
  'Date',
];

class _SearchScreenState extends ConsumerState<SearchScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final TextEditingController _searchController = TextEditingController();

  late String _query;

  @override
  void initState() {
    super.initState();
    _query = widget.query;
  }

  String dropdownValue = 'sort-type';

  @override
  Widget build(BuildContext context) {
    int _selectedTabIndex = 0;

    return GenericSafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          drawer: const CustomDrawer(),
          key: _key,
          appBar: AppbarWidget(
            scaffoldKey: _key,
            searchController: _searchController,
            onCartTap: () {},
            onSearchFocusChanged: (p0) {},
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Spacer(),
                  DropdownButton<String>(
                    value: dropdownValue == 'sort-type' ? null : dropdownValue,
                    items: items.map((String item) {
                      return DropdownMenuItem(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      }
                    },
                    hint: const Text("Sort by"),
                    isExpanded: false,
                    padding: EdgeInsets.zero,
                  ),
                ],
              ),
              TabBar(
                onTap: (index) {
                  setState(() {
                    _selectedTabIndex = index; // Update selected index
                  });
                },
                padding: EdgeInsets.zero,
                tabs: const [
                  Tab(text: "All Listing"),
                  Tab(text: "Brand New"),
                  Tab(text: "Used"),
                  Tab(text: "Services"),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    buildTabContent('brand_new'), // Use specific category
                    buildTabContent('brand_new'),
                    buildTabContent('used'),
                    buildTabContent('services'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

Widget buildTabContent(String category) {
  final adsList = ref.watch(getAdsProvider);

  // Use ref.watch to get search results based on category
  final searchResults = ref.watch(GetSearchDetailsProvider(
    _query,
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
              errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
            ),
            // Display ad ID safely
          ],
        );
      }
      return const Center(child: Text('No ads available.'));
    },
    // Handle errors in the search results
    error: (err, stack) => Center(child: Text('Error: $err')),
    data: (SearchDetails data) {
      if (data.posts.isEmpty) {
        return const Center(child: Text('No results found.'));
      }
      // Display search results in a grid
      return buildGridView(data);
    },
  );
}

}

Widget buildGridView(SearchDetails data) {
  return GridView.builder(
    padding: const EdgeInsets.only(left: 10),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 19.0,
      mainAxisSpacing: 19.0,
      childAspectRatio: 0.90,
    ),
    itemCount: data.posts.length,
    itemBuilder: (context, index) {
      final post = data.posts[index];
      return InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(productId: post.id),
          ),
        ),
        child: Container(
          margin: const EdgeInsets.only(top: 2),
          padding: const EdgeInsets.all(2),
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
              Skeleton.replace(
                width: productCardWidth,
                child: Container(
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
              Row(
                children: [
                  Text(
                    "RS ${post.price}",
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ],
              ),
              SizedBox(height: 2.h),
              Skeleton.replace(
                width: productCardWidth,
                child: SizedBox(
                  width: productCardWidth,
                  child: Text(
                    post.contact_name!,
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
                            .map((s) =>
                                s.trim()) // Split by comma and trim spaces
                            .toList() // Convert to a list
                            .reversed // Reverse the list to get the second last item easily
                            .elementAt(1) // Get the second item
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
  );
}
