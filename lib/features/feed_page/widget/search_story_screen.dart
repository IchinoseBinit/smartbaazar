import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_plus/share_plus.dart';
import 'package:smartbazar/features/button_nav_bar/cusom_btn_bar/custom_bottom_nav.dart';
import 'package:smartbazar/features/feed_page/api/post_story_wow_api.dart';
import 'package:smartbazar/features/feed_page/model/story_search_model.dart';
import 'package:smartbazar/features/feed_page/view/feed_page_screen.dart';
import 'package:smartbazar/features/feed_page/widget/feed_container.dart';
import 'package:smartbazar/features/feed_page/widget/feed_story_screen.dart';
import 'package:smartbazar/features/feed_page/widget/story_search_screen.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class SearchStoryScreen extends ConsumerStatefulWidget {
  final String author;
  final int storyCount;
  final Story? feedStory;
  final int initialIndex;
  final String productid;

  const SearchStoryScreen({
    super.key,
    required this.author,
    required this.storyCount,
    required this.initialIndex,
    required this.productid,
    this.feedStory,
  });

  @override
  ConsumerState<SearchStoryScreen> createState() => _SearchStoryScreenState();
}

class _SearchStoryScreenState extends ConsumerState<SearchStoryScreen>
    with TickerProviderStateMixin {
  List<String> images = [];
  List<String> title = [];
  List<String> prices = [];
  List<String> discountedPrices = [];
  List<String> wowCounts = [];
  List<String> vendorImage = [];
  List<int> commentCounts = [];
  List<int> similarProductCounts = [];
  List<double> avgRatingCounts = [];
  List<bool?> isLiked = [];
  List<String> storyId = [];

  PageController _pageController = PageController();
  late AnimationController _animationController;
  int _currentStoryIndex = 0;
  bool _isPaused = false;
  bool _isLoading = false;
  bool _initialized = false;
  bool _showdialog = false;
  bool _isInModal = false;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (!_initialized) {
      _initializeData();
    }
  }

  void _initializeData() {
    if (widget.feedStory?.posts?.isNotEmpty ?? false) {
      final posts = widget.feedStory!.posts!;
      images = posts.map((post) => post.image ?? '').toList();
      title = posts.map((post) => post.title ?? '').toList();
      // descriptions = posts.map((post) => post.description ?? '').toList();
      // prices = posts.map((post) => post.price ?? '').toList();
      // discountedPrices = posts.map((post) => post.discountedPrice ?? '').toList();
      storyId = posts.map((post) => post.id ?? '').toList();
      wowCounts = posts.map((post) => post.wow ?? '0').toList();
      vendorImage = posts
          .map((post) =>
              'https://smartbazaar.jianjun-rnd.com.np/storage/' +
              (post.vendorImage ?? ''))
          .toList();
      // vendorImage = posts.map((post) => post.vendorImage ?? '').toList();
      commentCounts = posts.map((post) => post.commentCount ?? 0).toList();
      similarProductCounts =
          posts.map((post) => post.similarProductCount ?? 0).toList();
      avgRatingCounts = posts.map((post) => post.averageRating ?? 0).toList();
      // isLiked = posts.map((post) => post.wowStatus == 0 ? true : false).toList();
    }

    _pageController = PageController(initialPage: widget.initialIndex);
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );

    _animationController.addStatusListener((status) {
      if (_showdialog) {
        _animationController.stop();
        return;
      }
      if (status == AnimationStatus.completed && !_isPaused) {
        _moveToNextStory();
      }
    });

    _startAutoScroll();
    _initialized = true;
  }

  void _startAutoScroll() {
    if (!_isPaused && !_isInModal && !_showdialog) {
      _animationController.reset();
      _animationController.forward();
    }
  }

  void _shareImage(String imageUrl, String bio) {
    if (imageUrl.isNotEmpty) {
      setState(() {
        _isInModal = true;
        _animationController.stop();
      });

      Share.share("It's about $bio\n : $imageUrl", subject: bio).then((_) {
        if (mounted) {
          setState(() {
            _isInModal = false;
            _startAutoScroll();
          });
        }
      });
    } else {
      print("No image URL provided.");
    }
  }

  void _showCommentSection(BuildContext context, String feedproductid) {
    setState(() {
      _isInModal = true;
      _animationController.stop();
    });

    showModalBottomSheet(
        useRootNavigator: true,
        useSafeArea: true,
        context: context,
        isScrollControlled: true, // Allows full-screen modal
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        builder: (_) {
          return WillPopScope(
            onWillPop: () async {
              setState(() {
                _isInModal = false;
                _startAutoScroll();
              });
              return true;
            },
            child: LayoutBuilder(
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
            ),
          );
        }).then((_) {
      if (mounted) {
        setState(() {
          _isInModal = false;
          _startAutoScroll();
        });
      }
    });
  }

  void _moveToNextStory() {
    if (images.isEmpty) return; // Prevent division by zero

    setState(() {
      _currentStoryIndex = (_currentStoryIndex + 1) % images.length;
    });

    if (_currentStoryIndex == 0) {
      // If we're back at the start, exit the story viewer
      Navigator.pop(context);
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => FeedScreen()),
      // );
      // return;
    }

    _pageController.animateToPage(
      _currentStoryIndex,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );

    _animationController.reset();
    _startAutoScroll();
  }

  void _previousStory() {
    if (images.isEmpty) return; // Prevent division by zero

    setState(() {
      _currentStoryIndex =
          (_currentStoryIndex - 1 + images.length) % images.length;
    });

    _pageController.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );

    _animationController.reset();
    _startAutoScroll();
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

  Widget _buildStoryImage(String imageUrl) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: imageUrl.isNotEmpty
          ? Image.network(
              imageUrl,
              fit: BoxFit.contain,
              alignment: Alignment.center,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                );
              },
              errorBuilder: (context, object, stackTrace) {
                return Center(
                  child: Icon(
                    Icons.image_not_supported,
                    color: Colors.grey,
                    size: 48,
                  ),
                );
              },
            )
          : Center(
              child: Icon(
                Icons.image_not_supported,
                color: Colors.grey,
                size: 48,
              ),
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: GestureDetector(
          onTapUp: (details) {
            final tapPosition = details.localPosition.dx;
            final halfWidth = MediaQuery.of(context).size.width / 2;
            // if (tapPosition < halfWidth) {
            //   _previousStory();
            // } else {
            //   _moveToNextStory();
            // }
          },
          onLongPressStart: (_) => _onLongPress(true),
          onLongPressEnd: (_) => _onLongPress(false),
          child: Stack(
            children: [
              PageView.builder(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      // Image
                      _buildStoryImage(images[index]),
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
                                    _currentStoryIndex < vendorImage.length
                                        ? NetworkImage(
                                            vendorImage[_currentStoryIndex])
                                        : null,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              widget.author,
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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FeedScreen()),
                                );
                                // Navigator.pop(context);
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
              // Progress Indicator
              Positioned(
                top: 30,
                left: 10,
                right: 10,
                child: Row(
                  children: List.generate(
                    images.length,
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
                                Container(
                                  height: 4.0,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
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
              // Action Buttons
              Positioned(
                top: MediaQuery.of(context).size.height * 0.2,
                right: 3,
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StorySearchScreen()),
                        );
                      },
                      icon: Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 22.h,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    // Like button
                    GestureDetector(
                      onTap: () async {
                        if (!mounted) return;

                        final currentStoryIndex = _currentStoryIndex;

                        // Ensure lists have enough elements
                        while (isLiked.length <= currentStoryIndex) {
                          isLiked.add(false);
                        }
                        while (wowCounts.length <= currentStoryIndex) {
                          wowCounts.add("0");
                        }

                        final wasLiked = isLiked[currentStoryIndex] ?? false;
                        final currentWowCount =
                            int.tryParse(wowCounts[currentStoryIndex]) ?? 0;

                        setState(() {
                          isLiked[currentStoryIndex] = !wasLiked;
                          wowCounts[currentStoryIndex] = (wasLiked
                                  ? currentWowCount - 1
                                  : currentWowCount + 1)
                              .clamp(0, double.infinity)
                              .toString();
                        });

                        try {
                          final currentPostId =
                              storyId?[currentStoryIndex] ?? '';

                          await ref
                              .read(postStoryWowProvider(currentPostId).future);
                          ref.invalidate(postStoryWowProvider);
                        } catch (e) {
                          print('Error: $e');

                          if (mounted) {
                            setState(() {
                              isLiked[currentStoryIndex] = wasLiked;
                              wowCounts[currentStoryIndex] =
                                  currentWowCount.toString();
                            });

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
                        color: _currentStoryIndex < isLiked.length
                            ? (isLiked[_currentStoryIndex] == true
                                ? Colors.grey
                                : Colors.pink)
                            : Colors.grey,
                      ),
                    ),
                    Text(
                      _currentStoryIndex < wowCounts.length
                          ? wowCounts[_currentStoryIndex]
                          : '0',
                      style: TextStyle(fontSize: 7.sp, color: Colors.grey),
                    ),
                    SizedBox(height: 10.h),
                    // Comment button
                    GestureDetector(
                      onTap: () =>
                          _showCommentSection(context, widget.productid),
                      child: Image.asset("assets/icon/Rectangle.png",
                          color: Colors.grey),
                    ),
                    Text(
                      _currentStoryIndex < commentCounts.length
                          ? commentCounts[_currentStoryIndex].toString()
                          : '0',
                      style: TextStyle(fontSize: 7.sp, color: Colors.grey),
                    ),
                    SizedBox(height: 10.h),
                    // Share button
                    GestureDetector(
                      onTap: () {
                        if (_currentStoryIndex < images.length) {
                          _shareImage(images[_currentStoryIndex],
                              title[_currentStoryIndex]);
                        }
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
                                      if (_showdialog) {
                                        _animationController
                                            .stop(); // Pause animation when dialog is shown
                                      } else {
                                        _startAutoScroll(); // Resume animation when dialog is dismissed
                                      }
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
                    child: WillPopScope(
                      onWillPop: () async {
                        setState(() {
                          _showdialog = false;
                          _isInModal = false;
                          _startAutoScroll();
                        });
                        return true;
                      },
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
                                    widget
                                        .author, // Use widget.author instead of undefined title
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15.sp,
                                      color: Colors.black,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(width: 10.w),
                                  const Icon(Icons.arrow_outward),
                                ],
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                _currentStoryIndex < title.length
                                    ? title[_currentStoryIndex]
                                    : '', // Use descriptions array instead of undefined description
                                style: TextStyle(
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
                                    _currentStoryIndex < prices.length
                                        ? prices[_currentStoryIndex]
                                        : '', // Use prices array instead of undefined price
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    _currentStoryIndex < discountedPrices.length
                                        ? discountedPrices[_currentStoryIndex]
                                        : '', // Use discountedPrices array instead of undefined discountprice
                                    style: TextStyle(
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

  @override
  void dispose() {
    _pageController.dispose();
    _animationController.dispose();
    super.dispose();
  }
}
