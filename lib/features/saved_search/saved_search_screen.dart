import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/saved_search/api/delete_saved_search_api.dart';
import 'package:smartbazar/features/saved_search/api/saved_search_api.dart';
import 'package:smartbazar/features/saved_search/api/search_from_saved_search_api.dart';
import 'package:smartbazar/features/saved_search/model/saved_search_response_model.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

// Define a provider that handles the search results logic
final searchResultsProvider = StateNotifierProvider<SearchResultsNotifier,
    AsyncValue<List<SavedSearchesResponseModel>>>(
  (ref) => SearchResultsNotifier(ref),
);

class SearchResultsNotifier
    extends StateNotifier<AsyncValue<List<SavedSearchesResponseModel>>> {
  SearchResultsNotifier(this.ref) : super(const AsyncValue.data([]));

  final Ref ref;

  Future<void> fetchSearchResults(String query) async {
    state = const AsyncValue.loading();
    try {
      final result =
          await ref.read(searchFromSavedSearchProvider(query).future);

      // Specify the type explicitly when creating the list
      final List<SavedSearchesResponseModel> results =
          result != null ? [result] : [];
      state = AsyncValue.data(results);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}

class SavedSearchScreen extends ConsumerStatefulWidget {
  const SavedSearchScreen({super.key});

  @override
  ConsumerState<SavedSearchScreen> createState() => _SavedSearchScreenState();
}

class _SavedSearchScreenState extends ConsumerState<SavedSearchScreen> {
  bool isShowingSearchResults = false;
  String currentQuery = '';

  void _onSavedSearchTapped(String keyword) {
    setState(() {
      currentQuery = keyword;
      isShowingSearchResults = true;
    });
    ref.read(searchResultsProvider.notifier).fetchSearchResults(currentQuery);
  }

  @override
  Widget build(BuildContext context) {
    final savedSearchesAsync = ref.watch(getSavedSearchesProvider);
    final searchResultsAsync = ref.watch(searchResultsProvider);

    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF6F1F1),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.notifications,
                        size: 25,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'Saved Searches',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        size: 15,
                        Icons.arrow_back_ios,
                        color: Color(0xffADADAD),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Go back',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff888888),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 2,
                  color: Color(0xffD9D9D9),
                ),
                Text(
                  "Please select a saved search to show the result.",
                  style: TextStyle(
                      color: const Color(0xFFADADAD), fontSize: 12.sp),
                ),
                SizedBox(height: 8.h),
                savedSearchesAsync.when(
                  data: (savedSearchData) {
                    final savedSearchList =
                        savedSearchData.result?.savedSearches?.data ?? [];

                    if (savedSearchList.isEmpty) {
                      return Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: Text(
                          "No saved searches found.",
                          style:
                              TextStyle(fontSize: 14.sp, color: Colors.black),
                        ),
                      );
                    }

                    return Column(
                      children: [
                        ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            final savedSearch = savedSearchList[index];
                            return GestureDetector(
                              onTap: () {
                                _onSavedSearchTapped(savedSearch.keyword!);
                              },
                              child: Card(
                                color: Colors.white.withOpacity(0.9),
                                child: ListTile(
                                  title:
                                      Text(savedSearch.keyword ?? 'No keyword'),
                                  trailing: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      child: SvgPicture.asset(deleteIcon),
                                      onTap: () async {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                              content: Text('Deleting item...'),
                                              backgroundColor: Colors.grey),
                                        );
                                        try {
                                          // Call the delete function
                                          await ref.read(
                                              deleteSavedSearchProvider(
                                                      savedSearch.id!
                                                          .toString())
                                                  .future);

                                          // Show success message and invalidate the provider to refresh the list
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                                content: Text(
                                                    'Search deleted successfully'),
                                                backgroundColor: Colors.grey),
                                          );

                                          ref.invalidate(
                                              getSavedSearchesProvider);
                                        } catch (e) {
                                          // Show error message
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                                content: Text(
                                                    'Failed to delete search: $e'),
                                                backgroundColor: Colors.grey),
                                          );
                                        }
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) =>
                              SizedBox(height: 1.h),
                          itemCount: savedSearchList.length,
                        ),
                        SizedBox(height: 20.h),
                        if (isShowingSearchResults)
                          Column(
                            children: [
                              Text(
                                'Search results for "$currentQuery":',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10.h),
                              searchResultsAsync.when(
                                data: (searchResults) {
                                  if (searchResults.isEmpty) {
                                    return const Text(
                                        "No matching results found.",
                                        style: TextStyle(color: Colors.grey));
                                  }

                                  // Extract the lists from search results
                                  final brandNewList =
                                      searchResults.first.data?.brandNew!;
                                  // final usedList =
                                  //     searchResults.first.data.used!;
                                  // final servicesList =
                                  //     searchResults.first.data.services!;

                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // if (brandNewList!.isNotEmpty)
                                      _buildCategorySection(
                                          'Brand New', brandNewList ?? []),
                                      // if (usedList.isNotEmpty)
                                      //   _buildCategorySection('Used', usedList),
                                      // if (servicesList.isNotEmpty)
                                      //   _buildCategorySection(
                                      //       'Services', servicesList),
                                    ],
                                  );
                                },
                                loading: () =>
                                    const CircularProgressIndicator(),
                                error: (error, stackTrace) =>
                                    Text('Error: $error'),
                              ),
                            ],
                          ),
                      ],
                    );
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (error, stackTrace) => Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: Text(
                      "Error loading saved searches: $error",
                      style: TextStyle(fontSize: 14.sp, color: Colors.red),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper method to build the category section
  Widget _buildCategorySection(String title, List<dynamic> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.w),
              child: Card(
                elevation: 6,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ProductDetailScreen(productId: item.id),
                      ),
                    );
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 6.w, vertical: 10.h),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: const Color(0xffFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.2),
                          spreadRadius: 10,
                          blurRadius: 10,
                          offset: const Offset(1, 0),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Checkbox(
                            //   value: true,
                            //   onChanged: (value) {},
                            // ),
                            // InkWell(
                            //   onTap: () {
                            //     setState(() {
                            //       _isChecked = !_isChecked;
                            //     });
                            //   },
                            //   child: Container(
                            //     width: 15,
                            //     height: 15,
                            //     decoration: BoxDecoration(
                            //       color: _isChecked
                            //           ? const Color(0xff362677)
                            //           : null,
                            //       shape: BoxShape.circle,
                            //       border: Border.all(
                            //           color: _isChecked
                            //               ? const Color(0xff362677)
                            //               : const Color(0xffD9D9D9),
                            //           width: 1.0),
                            //     ),
                            //     child: _isChecked
                            //         ? const Icon(
                            //             Icons.check,
                            //             size: 12.0,
                            //             color: Colors.white,
                            //           )
                            //         : null,
                            //   ),
                            // ),
                            SizedBox(
                              width: 7.w,
                            ),
                            Container(
                                padding: EdgeInsets.only(
                                    top: 15.h,
                                    left: 8.w,
                                    right: 8.w,
                                    bottom: 20.h),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: const Color(0xffF6F1F1),
                                ),
                                child: Image.network(
                                  item.image!,
                                  height: 70.h,
                                )),
                            SizedBox(
                              width: 20.w,
                            ),
                            Expanded(
                                child: Column(
                              children: [
                                Text(
                                  item.title!,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 40.h,
                                ),
                                Column(
                                  children: [
                                    // if (item.discountedPrice != null &&
                                    //     item.discountedPrice!.isNotEmpty) ...[
                                    //   SizedBox(width: 10.w),
                                    //   Text(
                                    //     'Rs${item.price ?? ''}',
                                    //     style: TextStyle(
                                    //         color: const Color(0xffB5B5B5),
                                    //         fontSize: 14.sp,
                                    //         fontWeight: FontWeight.w400,
                                    //         decoration:
                                    //             TextDecoration.lineThrough),
                                    //   ),
                                    // ],
                                    // if (item.discountedPrice != null &&
                                    //     item.discountedPrice!.isNotEmpty)
                                    //   Text(
                                    //     'Rs${item.discountedPrice!}',
                                    //     style: TextStyle(
                                    //         color: const Color(0xff36383C),
                                    //         fontSize: 16.sp,
                                    //         fontWeight: FontWeight.w700),
                                    //   )
                                    // else
                                    Text(
                                      'Rs${item.price ?? ''}',
                                      style: TextStyle(
                                          color: const Color(0xff36383C),
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                )
                              ],
                            )),
                            //  const Spacer(),
                            SizedBox(
                              width: 10.w,
                            ),
                            // GestureDetector(
                            //   onTap: () async {
                            //     // Show deleting message
                            //     ScaffoldMessenger.of(context).showSnackBar(
                            //       const SnackBar(
                            //           content: Text('Deleting item...'),
                            //           backgroundColor: Colors.grey),
                            //     );

                            //     try {
                            //       // Call the delete function
                            //       await ref.read(deleteFavouriteProductProvider(
                            //               widget.item.id!)
                            //           .future);

                            //       // Show success message and invalidate the provider to refresh the list
                            //       ScaffoldMessenger.of(context).showSnackBar(
                            //         const SnackBar(
                            //             content:
                            //                 Text('Item deleted successfully'),
                            //             backgroundColor: Colors.grey),
                            //       );

                            //       ref.invalidate(getFavouriteListProvider);
                            //     } catch (e) {
                            //       // Show error message
                            //       ScaffoldMessenger.of(context).showSnackBar(
                            //         SnackBar(
                            //             content:
                            //                 Text('Failed to delete item: $e'),
                            //             backgroundColor: Colors.grey),
                            //       );
                            //     }
                            //   },
                            //   child: SvgPicture.asset(deleteIcon),
                            // ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
            // return ListTile(
            //   title: Text(item.title), // Replace with your item property
            // );
          },
        ),
        SizedBox(height: 20.h),
      ],
    );
  }
}
