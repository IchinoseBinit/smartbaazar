import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/feed_page/model/get_feed_of_following_model.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class FeedStoryScreen extends StatefulWidget {
  final String author;
  final int storyCount;
  final List<Post> posts;
  final List<FeedPost> feedPost;
  final List<FeedStory> feedStory;
  const FeedStoryScreen(
      {super.key,
      required this.author,
      required this.posts,
      required this.storyCount,
      required this.feedPost,
      required this.feedStory});

  @override
  State<FeedStoryScreen> createState() => _FeedStoryScreenState();
}

class _FeedStoryScreenState extends State<FeedStoryScreen>
    with TickerProviderStateMixin {
  late List<FeedPost> stories;
  late List<String> vendors;
  late List<List<String?>> vendorStories;
  // late List<String> storyImage;
  late PageController _pageController;
  late AnimationController _animationController;

  final duration = const Duration(seconds: 4);
  bool _isPaused = false;
  int _currentVendorIndex = 0;
  late int _currentStoryIndex;

  @override
  void initState() {
    super.initState();
    stories = widget.feedPost;
    // vendorStories = widget.feedStory;
    vendors =
        stories.map((story) => story.userDetail!.vendorName!).toSet().toList();
    // storyImage = vendorStories
    //     .expand((story) => story.posts!.map((post) => post.image!))
    //     .toSet()
    //     .toList();
    vendorStories = vendors.map((vendor) {
      // Filter stories for each vendor and ensure posts are not null
      return widget.feedStory
          .where((story) => story.vendorName == vendor && story.posts != null)
          .expand((story) {
        // Expand each story's posts to fetch images
        return story.posts!
            .where((post) => post.image != null) // Ensure images are not null
            .map((post) => post.image!); // Map to post images only
      }).toList();
    }).toList();

    // vendorStories = vendors.map((vendor) {
    //   return widget.feedStory
    //       .where((story) => story.vendorName == vendor && story.posts != null)
    //       .map((story) => story.posts!)
    //       .expand((post) => post.map((p) => p.image)) // Only map images
    //       .toList();
    // }).toList();

    _pageController = PageController(initialPage: 0);
    _animationController = AnimationController(vsync: this, duration: duration);
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed && !_isPaused) {
        //  _nextStory();
        _moveToNextVendor();
      }
    });
    _currentVendorIndex = 0;
    _currentStoryIndex = 0;
    _startAutoScroll();
  }

  void _startAutoScroll() {
    if (!_isPaused) {
      _animationController.reset();
      _animationController.forward();
    }
  }

  void _moveToNextVendor() {
    setState(() {
      // Move to the next story within the current vendor
      if (_currentStoryIndex < vendorStories[_currentVendorIndex].length - 1) {
        _currentStoryIndex++;
      } else {
        // Move to the next vendor
        if (_currentVendorIndex < vendors.length - 1) {
          _currentVendorIndex++;
          _currentStoryIndex = 0; // Reset story index for new vendor
        } else {
          // End of all stories
          final nextAuthor = _getNextAuthor();
          if (nextAuthor != null) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => FeedStoryScreen(
                  author: nextAuthor,
                  posts: widget.posts,
                  storyCount: widget.storyCount,
                  feedPost: widget.feedPost,
                  feedStory: widget.feedStory,
                ),
              ),
            );
          } else {
            Navigator.pop(context); // End of stories
          }
          return; // Exit early
        }
      }
    });

    // Update UI
    _pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
    _animationController.reset();
    _startAutoScroll();
  }

  // void _moveToNextAuthor() {
  //   final currentIndex = authors.indexOf(_currentAuthor);
  //   if (currentIndex < authorStories.length - 1) {
  //     setState(() {
  //       _currentAuthor = authors[currentIndex + 1];
  //       authorStories = stories.where((story) => story.image != null).toList();
  //       _currentStoryIndex++;
  //     });
  //     _pageController.nextPage(
  //       duration: const Duration(milliseconds: 300),
  //       curve: Curves.easeIn,
  //     );
  //     _animationController.reset();
  //     _startAutoScroll();
  //   } else {
  //     final nextAuthor = _getNextAuthor();
  //     if (nextAuthor != null) {
  //       Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(
  //           builder: (_) => FeedStoryScreen(
  //             author: nextAuthor,
  //             posts: widget.posts,
  //           ),
  //         ),
  //       );
  //     } else {
  //       Navigator.pop(
  //           context); // Exit the screen after the last author's stories
  //     }
  //   }
  // }

  void _previousStory() {
    if (_currentVendorIndex > 0) {
      setState(() {
        _currentVendorIndex--;
      });
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
      _animationController.reset();
      _startAutoScroll();
    }
  }

  String? _getNextAuthor() {
    final currentIndex = vendors.indexOf(widget.author);
    if (currentIndex < vendors.length - 1) {
      return vendors[currentIndex + 1];
    }
    return null; // No next author
  }

  void _onTap(bool forward) {
    if (forward) {
      _moveToNextVendor();
      // _nextStory();
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
                itemCount: widget.feedStory.length,
                itemBuilder: (context, index) {
                  final post = widget.feedStory[index];
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
                            const CircleAvatar(
                              radius: 28,
                              backgroundColor: Colors.black,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              widget.author ?? '',
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
                    widget.feedStory.length,
                    (index) => Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: AnimatedBuilder(
                          animation: _animationController,
                          builder: (context, child) {
                            double progressValue = 0.0;
                            if (index < _currentVendorIndex) {
                              progressValue = 1.0; // Completed stories
                            } else if (index == _currentVendorIndex) {
                              progressValue =
                                  _animationController.value; // Flowing story
                            } else {
                              progressValue = 0.0; // Upcoming stories
                            }
                            return Stack(
                              children: [
                                // Background bar
                                Container(
                                  height: 4.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                // Progress bar
                                FractionallySizedBox(
                                  widthFactor: progressValue,
                                  child: Container(
                                    height: 4.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
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
                right: 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        // Add comment action
                      },
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 22.h,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "assets/icon/solar.png",
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "345",
                      style: TextStyle(fontSize: 7.sp, color: Colors.white),
                    ),
                    SizedBox(height: 30.h),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "assets/icon/Vector.png",
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "10.4k",
                      style: TextStyle(fontSize: 7.sp, color: Colors.white),
                    ),
                    SizedBox(height: 10.h),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset("assets/icon/Rectangle.png",
                          color: Colors.white),
                    ),
                    Text(
                      "1.4k",
                      style: TextStyle(fontSize: 7.sp, color: Colors.white),
                    ),
                    SizedBox(height: 10.h),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset("assets/icon/starIcon.png",
                          color: Colors.white),
                    ),
                    Text(
                      "1.4k",
                      style: TextStyle(fontSize: 7.sp, color: Colors.white),
                    ),
                    SizedBox(height: 10.h),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset("assets/images/share_icon.png",
                          color: Colors.white),
                    ),
                    SizedBox(height: 110.h),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
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
