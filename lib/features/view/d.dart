import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartbazar/features/home/api/search_product.dart';
import 'package:smartbazar/features/home/model/search_product_model.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class SearchScreen extends ConsumerStatefulWidget {
  final String query; // Corrected spelling for `query`

  SearchScreen({Key? key, required this.query}) : super(key: key);

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  late TextEditingController _searchController; // Controller for the search input
  late String _query; // Internal state for the query

  @override
  void initState() {
    super.initState();
    _query = widget.query; // Initialize the query with the passed value
    _searchController = TextEditingController(text: _query); // Set the controller value
  }

  @override
  Widget build(BuildContext context) {
    final searchResults = ref.watch(searchProvider(_query)); // Use the updated query
    print("searchResults.value is ${searchResults.value}");

    return GenericSafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: searchResults.when(
                data: (products) {
                  if (products.isEmpty) {
                    return const Center(child: Text('No products found'));
                  }

                  return GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // You can adjust this count as per your design
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Column(
                          children: [
                            Text(products[index].title),
                            // Add any other product details here (e.g., image, price)
                          ],
                        ),
                      );
                    },
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stackTrace) => Center(
                  child: Text('Error: $error'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
