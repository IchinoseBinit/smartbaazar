import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/button_nav_bar/cusom_btn_bar/custom_bottom_nav.dart';
import 'package:smartbazar/features/feed_page/api/story_search_api.dart';
import 'package:smartbazar/features/feed_page/widget/search_story_screen.dart';

class StorySearchScreen extends ConsumerStatefulWidget {
  const StorySearchScreen({super.key});

  @override
  ConsumerState<StorySearchScreen> createState() => _StorySearchScreenState();
}

class _StorySearchScreenState extends ConsumerState<StorySearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _query = "";
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.requestFocus();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onSearch() {
    setState(() {
      _query = _searchController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    final storySearchResult = ref.watch(storySearchApiProvider(_query));
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff651c50),
              Color(0xff54225f),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            // Search Bar Container
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top +
                    16, // Status bar spacing
                left: 16,
                right: 16,
                bottom: 8,
              ),
              child: Container(
                height: 45,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search, color: Colors.black54),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        focusNode: _focusNode,
                        controller: _searchController,
                        decoration: InputDecoration(
                          hintText: "Search Story...",
                          border: InputBorder.none,
                          suffixIcon: _searchController.text.isNotEmpty
                              ? IconButton(
                                  icon: const Icon(Icons.clear,
                                      color: Colors.black54),
                                  onPressed: () {
                                    _searchController.clear();
                                    setState(() {
                                      _query = "";
                                    });
                                  },
                                )
                              : null,
                        ),
                        onChanged: (value) {
                          setState(() {
                            _query = value;
                          });
                        },
                        onSubmitted: (_) => _onSearch(),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Search Results
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                child: storySearchResult.when(
                  data: (data) {
                    final posts = data.data?.homeStory?.story?.posts ?? [];

                    if (posts.isEmpty) {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.search_off,
                                size: 64, color: Colors.grey[400]),
                            const SizedBox(height: 16),
                            Text(
                              "No results found",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      );
                    }

                    return ListView.builder(
                      itemCount: posts.length,
                      itemBuilder: (context, index) {
                        final post = posts[index];

                        return Card(
                          margin: EdgeInsetsDirectional.symmetric(
                              horizontal: 0, vertical: 8.h),
                          elevation: 4,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 6.w, vertical: 5.h),
                            width: MediaQuery.of(context).size.width,

                            // margin: const EdgeInsets.only(bottom: 16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: const Color(0xffFFFFFF),
                              border: Border.all(
                                color: const Color.fromARGB(255, 197, 196, 196),
                                width: 1,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.1),
                                  spreadRadius: 10,
                                  blurRadius: 10,
                                  offset: const Offset(2, 1),
                                ),
                              ],
                            ),
                            child: ListTile(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 12),
                              leading: Container(
                                padding: EdgeInsets.only(
                                    top: 2.h,
                                    left: 2.w,
                                    right: 2.w,
                                    bottom: 2.h),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: const Color(0xffF6F1F1),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(2),
                                  child: Image.network(
                                    post.image ?? "",
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        color: Colors.grey[200],
                                        child: const Icon(
                                            Icons.image_not_supported,
                                            color: Colors.grey),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              title: Text(
                                post.title ?? "No Title",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              subtitle: Text(
                                post.vendorName ?? "Unknown Vendor",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: const Color(0xff36383C),
                                ),
                              ),
                              onTap: () {
                                navigateToPage(
                                  context: context,
                                  page: SearchStoryScreen(
                                    productid: post.id ?? '',
                                    initialIndex: 0,
                                    author: post.vendorName ?? '',
                                    storyCount: 1,
                                    feedStory: data.data?.homeStory?.story,
                                  ),
                                  ref: ref,
                                  showNavBar: false,
                                );
                              },
                            ),
                          ),
                        );
                      },
                    );
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (error, _) => Center(child: Text("Error: $error")),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
