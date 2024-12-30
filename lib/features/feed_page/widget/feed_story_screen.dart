import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/feed_page/model/get_feed_stories_model.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class FeedStoryScreen extends StatefulWidget {
  final String author;
  final int storyCount;
  final FeedStory? feedStory;
  final int initialIndex;
  final int selectedVendorIndex;

  const FeedStoryScreen(
      {super.key,
      required this.author,
      required this.storyCount,
      required this.initialIndex,
      required this.selectedVendorIndex,
      this.feedStory});

  @override
  State<FeedStoryScreen> createState() => _FeedStoryScreenState();
}

class _FeedStoryScreenState extends State<FeedStoryScreen>
    with TickerProviderStateMixin {
  late List<Post> stories;
  late List<String> vendors;
  late List<String> vendorImage;
  late List<List<String?>> vendorStories;
  late PageController _pageController;
  late AnimationController _animationController;

  final duration = const Duration(seconds: 4);
  bool _isPaused = false;
  int _currentVendorIndex = 0;
  late int _currentStoryIndex;
  late Map<String, List<Post>> groupedStories;

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
      if (_currentStoryIndex < vendorStories[_currentVendorIndex].length - 1) {
        _currentStoryIndex++;
      } else if (_currentVendorIndex < vendorStories.length - 1) {
        _currentVendorIndex++;
        _currentStoryIndex = 0;
      } else {
        Navigator.pop(context); // Exit if it's the last story
        return;
      }
    });

    int totalStoriesBeforeCurrent = 0;
    for (int i = 0; i < _currentVendorIndex; i++) {
      totalStoriesBeforeCurrent += vendorStories[i].length;
    }

    final newPage = totalStoriesBeforeCurrent + _currentStoryIndex;
    _pageController.animateToPage(
      newPage,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
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

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        extendBody: true,
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
                itemCount: vendorStories[_currentVendorIndex].length,
                itemBuilder: (context, index) {
                  int vendorIndex = 0;
                  int storyIndex = index;
                  while (storyIndex >= vendorStories[vendorIndex].length) {
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
                          vendorStories[_currentVendorIndex]
                                  [_currentStoryIndex] ??
                              '',
                          // vendorStories[vendorIndex][storyIndex] ?? '',
                          fit: BoxFit.contain,
                          alignment: Alignment.center,
                          errorBuilder: (context, object, stackTrace) {
                            return const Center(
                                child: Text('Failed to load image'));
                          },
                        ),
                      ),

                      // Author's name
                      Positioned(
                        top: 38,
                        left: 20,
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
                                backgroundImage: NetworkImage(
                                    vendorImage[_currentVendorIndex]),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              vendors[_currentVendorIndex],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Story text
                      // Positioned(
                      //   bottom: 60,
                      //   left: 16,
                      //   right: 16,
                      //   child: Text(
                      //     post.title ?? '',
                      //     style: const TextStyle(
                      //       color: Colors.white,
                      //       fontSize: 24,
                      //       fontWeight: FontWeight.bold,
                      //       shadows: [
                      //         Shadow(
                      //           blurRadius: 10.0,
                      //           color: Colors.black54,
                      //           offset: Offset(2.0, 2.0),
                      //         ),
                      //       ],
                      //     ),
                      //     textAlign: TextAlign.center,
                      //   ),
                      // ),
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
                    vendorStories[_currentVendorIndex].length,
                    (index) => Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: AnimatedBuilder(
                          animation: _animationController,
                          builder: (context, child) {
                            double progressValue = 0.0;
                            // Fully progress bars for completed stories
                            if (index < _currentStoryIndex) {
                              progressValue = 1.0;
                            }
                            // Animate the current story's progress
                            else if (index == _currentStoryIndex) {
                              progressValue = _animationController.value;
                            }
                            // No progress for future stories
                            else {
                              progressValue = 0.0;
                            }
                            return Stack(
                              children: [
                                // Background bar
                                Container(
                                  height: 4.0,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                // Progress bar
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
                      "345",
                      style: TextStyle(fontSize: 7.sp, color: Colors.grey),
                    ),
                    SizedBox(height: 30.h),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "assets/icon/Vector.png",
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "10.4k",
                      style: TextStyle(fontSize: 7.sp, color: Colors.grey),
                    ),
                    SizedBox(height: 10.h),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset("assets/icon/Rectangle.png",
                          color: Colors.grey),
                    ),
                    Text(
                      "1.4k",
                      style: TextStyle(fontSize: 7.sp, color: Colors.grey),
                    ),
                    SizedBox(height: 10.h),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset("assets/icon/starIcon.png",
                          color: Colors.grey),
                    ),
                    Text(
                      "1.4k",
                      style: TextStyle(fontSize: 7.sp, color: Colors.grey),
                    ),
                    SizedBox(height: 10.h),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset("assets/images/share_icon.png",
                          color: Colors.grey),
                    ),
                    SizedBox(height: 110.h),
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
                              const Icon(Icons.error),
                              SizedBox(width: 10.w),
                              Transform.rotate(
                                angle: 5.6,
                                child: Icon(
                                  Icons.send,
                                  size: 18.sp,
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
              Positioned(
                  bottom: 100,
                  child: Container(
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.8,
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
                                      seconds: 12)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.2,
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
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.check_box_outlined,
                                      color: Colors.black,
                                    ),
                                    Text("Buy"),
                                  ],
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
