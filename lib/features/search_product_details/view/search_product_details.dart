import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rxdart/rxdart.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:smartbazar/common/appbar_widget.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/ads_screen/api/ad_api.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/search_product_details/api/search_detail_api.dart';
import 'package:smartbazar/features/search_product_details/model/search_details.dart';
import 'package:smartbazar/features/widgets/custom_drawer_widget.dart';
import 'package:smartbazar/features/widgets/product_card.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class SearchScreen extends ConsumerStatefulWidget {
  final String query;

  const SearchScreen({Key? key, required this.query}) : super(key: key);

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final TextEditingController _searchController = TextEditingController();
  late String _query;
  Map<String, String> sortOptions = {
    'price: Low to High': 'price-low-to-high',
    'price: High to Low': 'price-high-to-low',
    'Relevance': 'relevance',
    'Date': 'date',
  };
  String dropdownValue = 'sort-type';
  bool _showSearchResults = false;
    final _debouncer = BehaviorSubject<String>();


  @override
  void initState() {
    super.initState();
    _query = widget.query;
    _searchController.text= _searchController.text.isEmpty? _query:_searchController.text;
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

    int selectedTabIndex = 0;
  @override
  Widget build(BuildContext context) {
      final searchResults = ref.watch(searchProvider(_searchController.text));
    debugPrint('Search Results: ${searchResults.asData?.value}');
    return GenericSafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          drawer: const CustomDrawer(),
          key: _key,
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
            onSearchFocusChanged: (p0) {
            },
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                                          query:_searchController.text,
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
                        return const Center(child: CircularProgressIndicator());
                      },
                      error: (error, stack) =>
                          const Center(child: CircularProgressIndicator()),
                    ),
                  ),
                ),
              Row(
                children: [
                  const Spacer(),
                  DropdownButton<String>(
                    value: dropdownValue == 'sort-type' ? null : dropdownValue,
                    items: sortOptions.keys.map((String item) {
                      return DropdownMenuItem(
                        value: sortOptions[item],
                        child: Text(item),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        ref.watch(GetSearchDetailsProvider(_query,
                            orderby: newValue));
                        setState(() {
                          dropdownValue = newValue;
                          // Update the UI by watching the provider again
                        });
                      }
                    },
                    hint: const Text("Sort by"),
                    isExpanded: false,
                    padding: EdgeInsets.zero,
                  )
                ],
              ),
              TabBar(
                onTap: (index) {
                  setState(() {
                    selectedTabIndex = index;
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
                    buildTabContent('brand_new', dropdownValue),
                    buildTabContent('brand_new', dropdownValue),
                    buildTabContent('used', dropdownValue),
                    buildTabContent('services', dropdownValue),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTabContent(String category, String order) {
    final adsList = ref.watch(getAdsProvider);

    // Use ref.watch to get search results based on category
    final searchResults = ref.watch(
        GetSearchDetailsProvider(_query, category: category, orderby: order));

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
