import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_plus/share_plus.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/features/button_nav_bar/cusom_btn_bar/custom_bottom_nav.dart';

import 'package:smartbazar/features/feed_page/api/post_story_wow_api.dart';
import 'package:smartbazar/features/feed_page/model/get_feed_stories_model.dart';
import 'package:smartbazar/features/feed_page/widget/feed_container.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';

import 'package:smartbazar/general_widget/general_safe_area.dart';

class FeedStoryScreen extends ConsumerStatefulWidget {
  final String author;
  final int storyCount;
  final FeedStory? feedStory;
  final int initialIndex;
  final int selectedVendorIndex;
  final String productid;
  const FeedStoryScreen(
      {super.key,
      required this.author,
      required this.storyCount,
      required this.initialIndex,
      required this.selectedVendorIndex,
      required this.productid,
      this.feedStory});

  @override
  ConsumerState<FeedStoryScreen> createState() => _FeedStoryScreenState();
}

class _FeedStoryScreenState extends ConsumerState<FeedStoryScreen>
    with TickerProviderStateMixin {
  late List<Post> stories;
  late List<String> vendors;
  late List<String> vendorImage;
  late List<List<String?>> vendorStories;
  late PageController _pageController;
  late AnimationController _animationController;
  late List<List<String>>? description;
  late List<List<String>>? title;
  late List<List<String>> price;
  late List<List<String>>? discountprice;
  late List<List<String>>? wowcount;
  late List<List<int>>? commentcount;
  late List<List<int>>? similarProductCount;
  late List<List<String>>? storyId;

  late List<List<int>>? avgratingcount;

  late List<double>? discountpercentagelist;
  late List<List<bool?>> _isLiked;

  final duration = const Duration(seconds: 4);
  bool _isPaused = false;
  int _currentVendorIndex = 0;
  late int _currentStoryIndex;
  late Map<String, List<Post>> groupedStories;
  // bool? _isLiked;
  bool _isLoading = false;

  int _likeCount = 0;

  Map<String, List<Post>> groupBy(
      List<Post> posts, Function(Post) keyExtractor) {
    return posts.fold(
      <String, List<Post>>{},
      (Map<String, List<Post>> map, Post post) {
        String key = keyExtractor(post);
        map.update(key, (value) => [...(value ?? []), post],
            ifAbsent: () => [post]);
        return map;
      },
    );
  }

  bool _initialized = false;
  bool _showdialog = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_initialized) {
      _initialized = true;
      _initializeData();
    }
  }

  void _initializeData() {
    groupedStories =
        groupBy(widget.feedStory?.posts! ?? [], (post) => post.vendorId!);
    stories = widget.feedStory?.posts! ?? [];
    vendors = stories.map((story) => story.vendorName!).toSet().toList();
    vendorImage = stories.map((story) => story.vendorImage!).toSet().toList();
    vendorStories = groupedStories.entries.map((entry) {
      return entry.value.map((post) => post.image!).toList();
    }).toList();
    price = groupedStories.entries
        .map(
          (e) => e.value.map((post) => post.price ?? '').toList(),
        )
        .toList();
    discountprice = groupedStories.entries
        .map(
          (e) => e.value.map((post) => post.discountedPrice ?? '').toList(),
        )
        .toList();
    discountpercentagelist = groupedStories.entries
        .map(
          (e) => e.value.first.discountPercentage ?? 0,
        )
        .toList();
    wowcount = groupedStories.entries
        .map(
          (e) => e.value.map((post) => post.wow ?? '0').toList(),
        )
        .toList();

    description = groupedStories.entries
        .map(
          (e) => e.value.map((post) => post.description ?? '').toList(),
        )
        .toList();
    title = groupedStories.entries
        .map(
          (e) => e.value.map((post) => post.title ?? '').toList(),
        )
        .toList();
    storyId = groupedStories.entries
        .map(
          (e) => e.value.map((post) => post.id ?? '').toList(),
        )
        .toList();
    commentcount = groupedStories.entries
        .map(
          (e) => e.value.map((post) => post.commentCount ?? 0).toList(),
        )
        .toList();
    avgratingcount = groupedStories.entries
        .map(
          (e) => e.value.map((post) => post.averageRating ?? 0).toList(),
        )
        .toList();
    similarProductCount = groupedStories.entries
        .map(
          (e) => e.value.map((post) => post.similarProductCount ?? 0).toList(),
        )
        .toList();
    _isLiked = groupedStories.entries
        .map((e) =>
            e.value.map((post) => post.wowStatus == 0 ? true : false).toList())
        .toList()
        .map((innerList) => innerList.map((value) => value as bool?).toList())
        .toList();
    _currentVendorIndex = widget.selectedVendorIndex;
    _currentStoryIndex = 0;

    int initialPage =
        _calculatePageForVendor(_currentVendorIndex, _currentStoryIndex);

    _pageController = PageController(initialPage: initialPage);
    _animationController = AnimationController(vsync: this, duration: duration);

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed && !_isPaused) {
        _moveToNextVendor();
      }
    });

    _startAutoScroll();
  }

  int _calculatePageForVendor(int vendorIndex, int storyIndex) {
    int storyOffset = 0;
    for (int i = 0; i < vendorIndex; i++) {
      storyOffset += vendorStories[i].length;
    }
    return storyOffset + storyIndex;
  }

  void _setupPageController() {
    _pageController.addListener(_handlePageChange);
  }

  void _jumpToInitialPage() {
    if (_pageController.hasClients) {
      _pageController.jumpToPage(_pageController.initialPage);
    }
  }

  void _handlePageChange() {
    final currentPage = _pageController.page!.round();

    int storyOffset = 0;
    for (int i = 0; i < vendorStories.length; i++) {
      final vendorStoryCount = vendorStories[i].length;
      if (currentPage < storyOffset + vendorStoryCount) {
        setState(() {
          _currentVendorIndex = i;
          _currentStoryIndex = currentPage - storyOffset;
        });
        // debugPrint('Current Vendor: $_currentVendorIndex');
        // debugPrint('Current Story: $_currentStoryIndex');
        return;
      }
      storyOffset += vendorStoryCount;
    }
  }

  void _updateCurrentVendorIndex() {
    int currentPage = _pageController.page?.round() ?? 0;
    int totalStories = 0;

    for (int i = 0; i < vendorStories.length; i++) {
      totalStories += vendorStories[i].length;
      if (currentPage < totalStories) {
        setState(() {
          _currentVendorIndex = i;
          _currentStoryIndex =
              currentPage - (totalStories - vendorStories[i].length);
        });
        return;
      }
    }
  }

  void _startAutoScroll() {
    if (!_isPaused) {
      _animationController.reset();
      _animationController.forward();
    }
  }

  void _moveToNextVendor() {
    setState(() {
      if (_showdialog) _showdialog = !_showdialog;

      // Ensure _currentVendorIndex is within bounds
      if (_currentVendorIndex >= vendorStories.length) {
        print("Error: _currentVendorIndex out of range");
        _currentVendorIndex = vendorStories.length - 1;
        return;
      }

      // Ensure _currentStoryIndex is within bounds
      if (_currentStoryIndex >= vendorStories[_currentVendorIndex].length) {
        print("Error: _currentStoryIndex out of range");
        _currentStoryIndex = 0;
        return;
      }

      // Check if there are more stories in the current vendor
      if (_currentStoryIndex < vendorStories[_currentVendorIndex].length - 1) {
        _currentStoryIndex++;
      }
      // Move to the next vendor if there are no more stories
      else if (_currentVendorIndex < vendorStories.length - 1) {
        _currentVendorIndex++;

        // If the new vendor has no stories, find the next valid one
        while (_currentVendorIndex < vendorStories.length &&
            vendorStories[_currentVendorIndex].isEmpty) {
          _currentVendorIndex++;
        }

        _currentStoryIndex = 0;
      } else {
        Navigator.pop(context); // Exit if it's the last story
        return;
      }
    });

    // Recalculate the new page index
    int totalStoriesBeforeCurrent = 0;
    for (int i = 0; i < _currentVendorIndex; i++) {
      totalStoriesBeforeCurrent += vendorStories[i].length;
    }

    final newPage = totalStoriesBeforeCurrent + _currentStoryIndex;

    if (_pageController.hasClients) {
      _pageController.animateToPage(
        newPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }

    _animationController.reset();
    _startAutoScroll();
  }

  void _selectVendor(int vendorIndex) {
    setState(() {
      _currentVendorIndex = vendorIndex;
      _currentStoryIndex = 0;
      _displayedStoryIndices.clear();
    });

    int totalStoriesBeforeSelected = vendorIndex > 0 ? vendorIndex - 1 : 0;

    _pageController.jumpToPage(totalStoriesBeforeSelected);
    _animationController.reset();
    _startAutoScroll();
  }

  final Set<int> _displayedStoryIndices = {};

  void _onTap(bool forward) {
    if (forward) {
      _moveToNextVendor();
    } else {
      _previousStory();
    }
  }

  void _onLongPress(bool isPressed) {
    setState(() {
      _isPaused = isPressed;
    });
    if (isPressed) {
      _animationController.stop();
    } else {
      _animationController.forward();
    }
  }

  void _previousStory() {
    if (_currentVendorIndex > 0 || _currentStoryIndex > 0) {
      setState(() {
        if (_currentStoryIndex > 0) {
          _currentStoryIndex--;
        } else if (_currentVendorIndex > 0) {
          _currentVendorIndex--;
          _currentStoryIndex = vendorStories[_currentVendorIndex].length - 1;
        }
      });
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
      _animationController.reset();
      _startAutoScroll();
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  void _shareImage(String imageUrl, String bio) {
    if (imageUrl.isNotEmpty) {
      Share.share("It's about $bio\n : $imageUrl", subject: bio);
    } else {
      print("No image URL provided.");
    }
  }

  void _showCommentSection(BuildContext context, String feedproductid) {
    showModalBottomSheet(
        useRootNavigator: true,
        useSafeArea: true,
        context: context,
        isScrollControlled: true, // Allows full-screen modal
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        builder: (_) {
          return LayoutBuilder(
            builder: (context, _) {
              return AnimatedContainer(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                duration: const Duration(milliseconds: 150),
                height:
                    MediaQuery.of(context).size.height, // Full screen height
                child: CommentSection(id: feedproductid),
              );
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        //   extendBody: true,
        backgroundColor: Colors.transparent,
        body: GestureDetector(
          onTapUp: (details) {
            final tapPosition = details.localPosition.dx;
            final halfWidth = MediaQuery.of(context).size.width / 2;
            if (tapPosition < halfWidth) {
              _onTap(false); // Navigate to the previous story
            } else {
              _onTap(true); // Navigate to the next story
            }
          },
          onLongPressStart: (_) => _onLongPress(true),
          onLongPressEnd: (_) => _onLongPress(false),
          child: Stack(
            children: [
              // PageView
              PageView.builder(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: (vendorStories.isNotEmpty &&
                        _currentVendorIndex < vendorStories.length)
                    ? vendorStories[_currentVendorIndex].length
                    : 0,
                itemBuilder: (context, index) {
                  int vendorIndex = 0;
                  int storyIndex = index;

                  while (vendorIndex < vendorStories.length &&
                      storyIndex >= vendorStories[vendorIndex].length) {
                    storyIndex -= vendorStories[vendorIndex].length;
                    vendorIndex++;
                  }

                  return Stack(
                    children: [
                      // Image
                      SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: Image.network(
                          (_currentVendorIndex < vendorStories.length &&
                                  _currentStoryIndex <
                                      vendorStories[_currentVendorIndex].length)
                              ? vendorStories[_currentVendorIndex]
                                      [_currentStoryIndex] ??
                                  ''
                              : '',
                          fit: BoxFit.contain,
                          alignment: Alignment.center,
                          errorBuilder: (context, object, stackTrace) {
                            return const Center(
                                child: Text('Failed to load image'));
                          },
                        ),
                      ),
                      // Positioned(
                      //   top: 38,
                      //   right: 16,
                      //   child: Container(
                      //     width: 36.w,
                      //     height: 32.h,
                      //     decoration: BoxDecoration(
                      //       shape: BoxShape.circle,
                      //       color: Colors.grey.withOpacity(0.5),
                      //     ),
                      //     // decoration: BoxDecoration(
                      //     //   color: Colors.grey.withOpacity(0.5),
                      //     //   borderRadius: BorderRadius.circular(200),
                      //     // ),
                      //     child: IconButton(
                      //       icon: const Icon(Icons.close,
                      //           color: Colors.white, size: 20),
                      //       onPressed: () => Navigator.pop(context),
                      //     ),
                      //   ),
                      // ),
                      // Author's name
                      Positioned(
                        top: 38,
                        left: 12,
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                shape: BoxShape.circle,
                              ),
                              child: CircleAvatar(
                                radius: 28.r,
                                backgroundColor: Colors.black,
                                backgroundImage:
                                    (_currentVendorIndex < vendorImage.length)
                                        ? NetworkImage(
                                            vendorImage[_currentVendorIndex])
                                        : null,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              (_currentVendorIndex < vendors.length)
                                  ? vendors[_currentVendorIndex]
                                  : '',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 170.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                width: 40.w,
                                height: 40.h,
                                decoration: BoxDecoration(
                                  color: Colors
                                      .grey, // Background color of the close button
                                  shape: BoxShape.circle, // Makes it a circle
                                ),
                                child: Icon(
                                  Icons.close, // Close icon
                                  color: Colors.white, // Icon color
                                  size: 25, // Icon size
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),

              // Flowing Progress Indicator
              Positioned(
                top: 30,
                left: 10,
                right: 10,
                child: Row(
                  children: List.generate(
                    (vendorStories.isNotEmpty &&
                            _currentVendorIndex < vendorStories.length)
                        ? vendorStories[_currentVendorIndex].length
                        : 0, // Safe Fallback
                    (index) => Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: AnimatedBuilder(
                          animation: _animationController,
                          builder: (context, child) {
                            double progressValue = 0.0;
                            if (index < _currentStoryIndex) {
                              progressValue = 1.0;
                            } else if (index == _currentStoryIndex) {
                              progressValue = _animationController.value;
                            }
                            return Stack(
                              children: [
                                // Background Bar
                                Container(
                                  height: 4.0,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                // Progress Bar
                                FractionallySizedBox(
                                  widthFactor: progressValue,
                                  child: Container(
                                    height: 4.0,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.2,
                right: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        // Add comment action
                      },
                      icon: Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 22.h,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "assets/icon/solar.png",
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      (_currentVendorIndex < vendorStories.length &&
                              _currentStoryIndex <
                                  vendorStories[_currentVendorIndex].length &&
                              similarProductCount != null &&
                              similarProductCount!.isNotEmpty)
                          ? similarProductCount![_currentVendorIndex]
                                  [_currentStoryIndex]
                              .toString()
                          : '0',
                      // (similarProductCount != null &&
                      //         similarProductCount!.isNotEmpty &&
                      //         _currentStoryIndex < similarProductCount!.length)
                      //     ? similarProductCount![_currentStoryIndex].toString()
                      //     : '0',
                      style: TextStyle(fontSize: 7.sp, color: Colors.grey),
                    ),
                    SizedBox(height: 30.h),
                    GestureDetector(
                      onTap: () async {
                        print("Liked!");
                        if (!mounted)
                          return; // Ensure the widget is still mounted

                        // Save the current state of _isLiked and wowcount
                        final wasLiked = _isLiked[_currentVendorIndex]
                                [_currentStoryIndex] ??
                            false;
                        final currentWowCount = int.parse(
                            wowcount![_currentVendorIndex][_currentStoryIndex]);

                        // Update the UI immediately
                        setState(() {
                          _isLoading = true;
                          _isLiked[_currentVendorIndex][_currentStoryIndex] =
                              !wasLiked;
                          wowcount![_currentVendorIndex][_currentStoryIndex] =
                              (wasLiked
                                      ? currentWowCount - 1
                                      : currentWowCount + 1)
                                  .clamp(0, double.infinity)
                                  .toString();
                        });

                        try {
                          final currentPostId = storyId?[_currentVendorIndex]
                                  [_currentStoryIndex] ??
                              '';

                          // Await the API response
                          await ref
                              .read(postStoryWowProvider(currentPostId).future);

                          // Force the provider to refresh
                          ref.invalidate(postStoryWowProvider);
                        } catch (e) {
                          print('Error: $e');

                          // Revert the like status and wowcount if the API call fails
                          if (mounted) {
                            setState(() {
                              _isLiked[_currentVendorIndex]
                                  [_currentStoryIndex] = wasLiked;
                              wowcount![_currentVendorIndex]
                                      [_currentStoryIndex] =
                                  currentWowCount.toString();
                            });
                          }

                          if (mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Error liking post: $e')),
                            );
                          }
                        } finally {
                          if (mounted) {
                            setState(() {
                              _isLoading = false;
                            });
                          }
                        }
                      },
                      child: Image.asset(
                        "assets/icon/Vector.png",
                        color: _isLiked[_currentVendorIndex]
                                    [_currentStoryIndex] ==
                                true
                            ? Colors.grey
                            : Colors.pink,
                      ),
                    ),
                    Text(
                      (_currentVendorIndex < vendorStories.length &&
                              _currentStoryIndex <
                                  vendorStories[_currentVendorIndex].length &&
                              wowcount != null &&
                              wowcount!.isNotEmpty)
                          ? wowcount![_currentVendorIndex][_currentStoryIndex]
                          : '0',
                      style: TextStyle(fontSize: 7.sp, color: Colors.grey),
                    ),
                    SizedBox(height: 10.h),
                    GestureDetector(
                      onTap: () => _showCommentSection(context,
                          storyId![_currentVendorIndex][_currentStoryIndex]),
                      child: Image.asset("assets/icon/Rectangle.png",
                          color: Colors.grey),
                    ),
                    Text(
                      (_currentVendorIndex < vendorStories.length &&
                              _currentStoryIndex <
                                  vendorStories[_currentVendorIndex].length &&
                              commentcount != null &&
                              commentcount!.isNotEmpty)
                          ? commentcount![_currentVendorIndex]
                                  [_currentStoryIndex]
                              .toString()
                          : '0',
                      style: TextStyle(fontSize: 7.sp, color: Colors.grey),
                    ),
                    SizedBox(height: 10.h),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset("assets/icon/starIcon.png",
                          color: Colors.grey),
                    ),
                    Text(
                      (_currentVendorIndex < vendorStories.length &&
                              _currentStoryIndex <
                                  vendorStories[_currentVendorIndex].length &&
                              avgratingcount != null &&
                              avgratingcount!.isNotEmpty)
                          ? avgratingcount![_currentVendorIndex]
                                  [_currentStoryIndex]
                              .toString()
                          : '0',
                      style: TextStyle(fontSize: 7.sp, color: Colors.grey),
                    ),
                    SizedBox(height: 10.h),
                    GestureDetector(
                      onTap: () {
                        _shareImage(
                            vendorStories[_currentVendorIndex]
                                    [_currentStoryIndex] ??
                                '',
                            (description?[_currentVendorIndex]
                                        [_currentStoryIndex])
                                    ?.replaceAll(RegExp(r'<[^>]*>'), '') ??
                                'info');
                      },
                      child: Image.asset("assets/images/share_icon.png",
                          color: Colors.grey),
                    ),
                    SizedBox(height: 40.h),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              SizedBox(width: 10.w),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      _showdialog = !_showdialog;
                                    });
                                  },
                                  child: const Icon(Icons.error)),
                              SizedBox(width: 10.w),
                              InkWell(
                                onTap: () {},
                                child: Transform.rotate(
                                  angle: 5.6,
                                  child: Icon(
                                    Icons.send,
                                    size: 18.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              if (_showdialog)
                Positioned(
                  right: 30,
                  bottom: 120,
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 2),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 2,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 10.h,
                        ),
                        width: 300.w,
                        height: 110.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  (_currentVendorIndex < vendorStories.length &&
                                          _currentStoryIndex <
                                              vendorStories[_currentVendorIndex]
                                                  .length &&
                                          title != null &&
                                          title!.isNotEmpty)
                                      ? (title![_currentVendorIndex]
                                                      [_currentStoryIndex]
                                                  .length >
                                              15
                                          ? '${title![_currentVendorIndex][_currentStoryIndex].substring(0, 15)}...'
                                          : title![_currentVendorIndex]
                                              [_currentStoryIndex])
                                      : '',
                                  style: headerstyle.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                const Icon(Icons.arrow_outward),
                              ],
                            ),
                            SizedBox(height: 15.h),
                            Text(
                              (description![_currentVendorIndex]
                                      [_currentStoryIndex])
                                  .replaceAll(RegExp(r'<[^>]*>'), ''),
                              style: headerstyle.copyWith(
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              children: [
                                Text(
                                  price[_currentVendorIndex][_currentStoryIndex]
                                      .toString(),
                                  style: headerstyle.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Text(
                                  discountprice?[_currentVendorIndex]
                                          [_currentStoryIndex] ??
                                      '0',
                                  style: headerstyle.copyWith(
                                    decoration: TextDecoration.lineThrough,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              Positioned(
                  bottom: 10,
                  child: Container(
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.8,
                          height: 89.h,
                          color: Colors.black.withOpacity(0.3),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.whatshot,
                                  size: 50,
                                  color: Colors.orange,
                                ),
                                CountdownTimer(
                                  targetDate: DateTime.now().add(const Duration(
                                      days: 3,
                                      hours: 12,
                                      minutes: 12,
                                      seconds: 5)), //change this
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.2,
                          height: 88.h,
                          color: Colors.orange,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  "Ending Soon",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10.sp),
                                ),
                                SizedBox(height: 10.h),
                                InkWell(
                                  onTap: () {
                                    navigateToPage(
                                      ref: ref,
                                      context: context,
                                      page: ProductDetailScreen(
                                          productId: widget.productid),
                                      //  ref: ref,
                                      showNavBar:
                                          false, // Hide the navbar when moving to this screen
                                    );
                                  },
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.check_box_outlined,
                                        color: Colors.black,
                                      ),
                                      Text("Buy"),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class CountdownTimer extends StatefulWidget {
  final DateTime targetDate;

  const CountdownTimer({super.key, required this.targetDate});

  @override
  State<CountdownTimer> createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  late Duration remainingTime;
  late Timer timer;

  @override
  void initState() {
    super.initState();

    remainingTime = widget.targetDate.difference(DateTime.now());
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        remainingTime = widget.targetDate.difference(DateTime.now());
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int days = remainingTime.inDays;
    int hours = remainingTime.inHours % 24;
    int minutes = remainingTime.inMinutes % 60;
    int seconds = remainingTime.inSeconds % 60;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildCircularIndicator(days, 'Days', Colors.orange),
        const SizedBox(width: 8),
        _buildCircularIndicator(hours, 'Hours', Colors.green),
        const SizedBox(width: 8),
        _buildCircularIndicator(minutes, 'Minutes', Colors.yellow),
        const SizedBox(width: 8),
        _buildCircularIndicator(seconds, 'Seconds', Colors.red),
      ],
    );
  }

  Widget _buildCircularIndicator(int value, String label, Color color) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                value: value /
                    (label == 'Days'
                        ? 30
                        : 60), // Adjust range (30 for days, 60 for others)
                strokeWidth: 4,
                color: color,
              ),
            ),
            Text(
              value.toString().padLeft(2, '0'),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
