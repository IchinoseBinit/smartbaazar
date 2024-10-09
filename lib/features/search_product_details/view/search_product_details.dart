import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:smartbazar/common/appbar_widget.dart';
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
    // Use ref.watch to get search results
    final searchResults = ref.watch(GetSearchDetailsProvider(_query));

    return GenericSafeArea(
      child: DefaultTabController(
        length: 4, // Updated the length to match the number of tabs
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
                padding: EdgeInsets.zero,
                tabs: [
                  Tab(text: "All Listing ${searchResults.value?.length ?? ''}"),
                  const Tab(text: "Brand New }"),
                  const Tab(text: "Used"),
                  const Tab(text: "Services"),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    searchResults.when(
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      error: (err, stack) => Center(child: Text('Error: $err')),
                      data: (List<Post> data) {
                        if (data.isEmpty) {
                          return const Center(child: Text('No results found.'));
                        }
                        return GridView.builder(
                          padding: EdgeInsets.only(left: 10),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount:
                                2, // You can adjust this to control column count
                            crossAxisSpacing: 19.0,
                            mainAxisSpacing: 19.0,
                            childAspectRatio:
                                0.90, // Adjust this for item aspect ratio
                          ),
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            final post = data[index];
                            return Container(
                              margin: EdgeInsets.only(top: 2),
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 0.2,
                                  )),
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
                                      Spacer(),
                                      Text(post.pickup ?? "kathmandu"),
                                      const SizedBox(
                                        width: 1,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                    const Center(child: Text("Brand New Content")),
                    const Center(child: Text("Used Content")),
                    const Center(child: Text("Services Content")),
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
