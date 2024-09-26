import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartbazar/common/appbar_widget.dart';
import 'package:smartbazar/features/search_product_details/api/search_detail_api.dart';
import 'package:smartbazar/features/search_product_details/model/search_details.dart';
import 'package:smartbazar/features/widgets/custom_drawer_widget.dart';
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
    print("bibash is ${searchResults.value!.first!.title!}");

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
                        print("Selected sort option: $newValue");
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
                  Tab(text: "Brand New }"),
                  Tab(text: "Used"),
                  Tab(text: "Services"),
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
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount:
                                2, // You can adjust this to control column count
                            crossAxisSpacing: 13.0,
                            mainAxisSpacing: 13.0,
                            childAspectRatio:
                                0.65, // Adjust this for item aspect ratio
                          ),
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            final post = data[index];
                            return InkWell(
                              onTap: () {
                                // Navigate to detail screen or perform actions on tap
                              },
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey, width: 0.1),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 118, 112, 112)),
                                      child: Image.network(
                                        post.image ?? '',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Text(
                                      post.title ?? 'No title',
                                      style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 54, 51, 51),
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "RS ${post.price}",
                                      style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 54, 51, 51),
                                          fontWeight: FontWeight.w700),
                                    ),
                                    post.discounted_price != null
                                        ? Text(post.discounted_price!)
                                        : Text("RS ${post.contact_name}"),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("👁️${post.visits}K views"),
                                        const Text("Kathmandu"),
                                      ],
                                    )
                                  ],
                                ),
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
