import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/saved_search/api/saved_search_api.dart';
import 'package:smartbazar/features/saved_search/api/search_from_saved_search_api.dart';
import 'package:smartbazar/features/saved_search/model/saved_search_response_model.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class SavedSearchScreen extends ConsumerStatefulWidget {
  const SavedSearchScreen({super.key});

  @override
  ConsumerState<SavedSearchScreen> createState() => _SavedSearchScreenState();
}

class _SavedSearchScreenState extends ConsumerState<SavedSearchScreen> {
  List<BrandNew> searchResults = [];
  bool isShowingSearchResults = false;
  String currentQuery = '';

  @override
  Widget build(BuildContext context) {
    final savedSearchesAsync = ref.watch(getSavedSearchesProvider);

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
                    color: const Color(0xFFADADAD),
                    fontSize: 12.sp,
                  ),
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
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black,
                          ),
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
                              onTap: () async {
                                currentQuery = savedSearch.query!;
                                print('Current Query: $currentQuery');
                                final searchAsync = ref.read(
                                    searchFromSavedSearchProvider(
                                        currentQuery));

                                searchAsync.when(
                                  data: (searchResultsData) {
                                    setState(() {
                                      isShowingSearchResults = true;
                                      searchResults = searchResultsData ?? [];
                                    });
                                    print(
                                        'Updated Search Results: $searchResults');
                                  },
                                  loading: () {
                                    setState(() {
                                      isShowingSearchResults = false;
                                      searchResults = [];
                                    });
                                  },
                                  error: (error, stackTrace) {
                                    setState(() {
                                      isShowingSearchResults = false;
                                      searchResults = [];
                                    });
                                    print('Error during search: $error');
                                  },
                                );
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
                              if (searchResults.isEmpty)
                                const Text("No matching results found.",
                                    style: TextStyle(color: Colors.grey))
                              else
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: searchResults.length,
                                  itemBuilder: (context, index) {
                                    final result = searchResults[index];
                                    return Card(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 8.w, vertical: 4.h),
                                      child: ListTile(
                                        title: Text(result.title ?? 'No Title'),
                                        subtitle: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                'Price: ${result.price ?? 'N/A'}'),
                                            const SizedBox(height: 4),
                                            // Text('Description: ${result.description?.substring(0, 100)}...', overflow: TextOverflow.ellipsis),
                                          ],
                                        ),
                                        leading: Image.network(
                                          result.image ??
                                              'https://via.placeholder.com/150',
                                          width: 50.w,
                                          height: 50.h,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                            ],
                          ),
                      ],
                    );
                  },
                  loading: () => const Center(child: CircularProgressIndicator()),
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
}
