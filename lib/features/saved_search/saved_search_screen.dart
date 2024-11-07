import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/saved_search/api/saved_search_api.dart';
import 'package:smartbazar/features/saved_search/api/search_from_saved_search_api.dart';
import 'package:smartbazar/features/saved_search/model/saved_search_response_model.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

// class SavedSearchScreen extends ConsumerStatefulWidget {
//   const SavedSearchScreen({super.key});

//   @override
//   ConsumerState<SavedSearchScreen> createState() => _SavedSearchScreenState();
// }

// class _SavedSearchScreenState extends ConsumerState<SavedSearchScreen> {
//   List<SavedSearchesResponseModel> searchResults = [];
//   bool isShowingSearchResults = false;
//   String currentQuery = '';

//   @override
//   void initState() {
//     super.initState();
//     // Use ref.listen in initState if you need to perform actions on state changes
//   }

//   void _onSavedSearchTapped(String keyword) {
//     setState(() {
//       currentQuery = keyword;
//       isShowingSearchResults = false;
//     });

//     ref.listen(
//       searchFromSavedSearchProvider(currentQuery),
//       (previous, next) {
//         next.when(
//           data: (searchResultsData) {
//             setState(() {
//               isShowingSearchResults = true;
//               searchResults = searchResultsData as List<SavedSearchesResponseModel>? ?? [];
//             });
//             print('Updated Search Results: $searchResults');
//           },
//           loading: () {
//             setState(() {
//               isShowingSearchResults = false;
//               searchResults = [];
//             });
//           },
//           error: (error, stackTrace) {
//             setState(() {
//               isShowingSearchResults = false;
//               searchResults = [];
//             });
//             print('Error during search: $error');
//           },
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final savedSearchesAsync = ref.watch(getSavedSearchesProvider);

//     return GenericSafeArea(
//       child: Scaffold(
//         backgroundColor: const Color(0xFFF6F1F1),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.symmetric(vertical: 20.h),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 const Divider(thickness: 2, color: Color(0xffD9D9D9)),
//                 Text(
//                   "Please select a saved search to show the result.",
//                   style: TextStyle(
//                       color: const Color(0xFFADADAD), fontSize: 12.sp),
//                 ),
//                 SizedBox(height: 8.h),
//                 savedSearchesAsync.when(
//                   data: (savedSearchData) {
//                     final savedSearchList =
//                         savedSearchData.result?.savedSearches?.data ?? [];

//                     if (savedSearchList.isEmpty) {
//                       return Padding(
//                         padding: EdgeInsets.only(top: 20.h),
//                         child: Text(
//                           "No saved searches found.",
//                           style:
//                               TextStyle(fontSize: 14.sp, color: Colors.black),
//                         ),
//                       );
//                     }

//                     return Column(
//                       children: [
//                         ListView.separated(
//                           shrinkWrap: true,
//                           physics: const NeverScrollableScrollPhysics(),
//                           itemBuilder: (context, index) {
//                             final savedSearch = savedSearchList[index];
//                             return GestureDetector(
//                               onTap: () {
//                                 _onSavedSearchTapped(savedSearch.keyword!);
//                               },
//                               child: Card(
//                                 color: Colors.white.withOpacity(0.9),
//                                 child: ListTile(
//                                   title:
//                                       Text(savedSearch.keyword ?? 'No keyword'),
//                                   trailing: Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: InkWell(
//                                       child: SvgPicture.asset(deleteIcon),
//                                       onTap: () {
//                                         // Handle delete action here
//                                       },
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             );
//                           },
//                           separatorBuilder: (context, index) =>
//                               SizedBox(height: 1.h),
//                           itemCount: savedSearchList.length,
//                         ),
//                         SizedBox(height: 20.h),
//                         if (isShowingSearchResults)
//                           Column(
//                             children: [
//                               Text(
//                                 'Search results for "$currentQuery":',
//                                 style: TextStyle(
//                                     fontSize: 16.sp,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                               SizedBox(height: 10.h),
//                               if (searchResults.isEmpty)
//                                 const Text("No matching results found.",
//                                     style: TextStyle(color: Colors.grey))
//                               else
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     if (searchResults.first.data.brandNew!.isNotEmpty)
//                                       _buildCategorySection(
//                                           'Brand New', searchResults.first.data.brandNew!),
//                                     if (searchResults.first.data.used!.isNotEmpty)
//                                       _buildCategorySection(
//                                           'Used', searchResults.first.data.used!),
//                                     if (searchResults.first.data.services!.isNotEmpty)
//                                       _buildCategorySection(
//                                           'Services', searchResults.first.data.services!),
//                                     if (searchResults.first.data.jobs.isNotEmpty)
//                                       _buildCategorySection(
//                                           'Jobs', searchResults.first.data.jobs),
//                                     if (searchResults.first.data.events.isNotEmpty)
//                                       _buildCategorySection(
//                                           'Events', searchResults.first.data.events),
//                                     if (searchResults.first.data.grocery.isNotEmpty)
//                                       _buildCategorySection(
//                                           'Grocery', searchResults.first.data.grocery),
//                                     _buildPostsSection(searchResults.first.data.posts),
//                                   ],
//                                 ),
//                             ],
//                           ),
//                       ],
//                     );
//                   },
//                   loading: () =>
//                       const Center(child: CircularProgressIndicator()),
//                   error: (error, stackTrace) => Padding(
//                     padding: EdgeInsets.only(top: 20.h),
//                     child: Text(
//                       "Error loading saved searches: $error",
//                       style: TextStyle(fontSize: 14.sp, color: Colors.red),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildCategorySection(String title, List<dynamic> items) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: EdgeInsets.symmetric(vertical: 10.h),
//           child: Text(
//             title,
//             style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
//           ),
//         ),
//         ListView.builder(
//           shrinkWrap: true,
//           physics: const NeverScrollableScrollPhysics(),
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             final item = items[index];
//             return Card(
//               margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
//               child: ListTile(
//                 title: Text(item.title ?? 'No Title'),
//                 subtitle: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('Price: ${item.price ?? 'N/A'}'),
//                     const SizedBox(height: 4),
//                   ],
//                 ),
//                 leading: Image.network(
//                   item.image ?? 'https://via.placeholder.com/150',
//                   width: 50.w,
//                   height: 50.h,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             );
//           },
//         ),
//       ],
//     );
//   }

//   Widget _buildPostsSection(Posts posts) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: EdgeInsets.symmetric(vertical: 10.h),
//           child: Text(
//             'Posts',
//             style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
//           ),
//         ),
//         ListTile(
//           title: Text(posts.data.first.title ?? 'No Title'),
//           subtitle: Text('Description: ${posts.data.first.price ?? 'No description'}'),
//         ),
//       ],
//     );
//   }
// }
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

// Your ConsumerStatefulWidget
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
                const Divider(thickness: 2, color: Color(0xffD9D9D9)),
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
                                      onTap: () {
                                        // Handle delete action here
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
                                      searchResults.first.data.brandNew!;
                                  // final usedList =
                                  //     searchResults.first.data.used!;
                                  // final servicesList =
                                  //     searchResults.first.data.services!;

                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      if (brandNewList.isNotEmpty)
                                        _buildCategorySection(
                                            'Brand New', brandNewList),
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
        Text(
          title,
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10.h),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return ListTile(
              title: Text(item.toString()), // Replace with your item property
            );
          },
        ),
        SizedBox(height: 20.h),
      ],
    );
  }
}
