import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class Story {
  final String imageUrl;
  final String text;
  final String author;

  Story({
    required this.imageUrl,
    required this.text,
    required this.author,
  });
}

class StoryScreen extends StatefulWidget {
  final String author;

  const StoryScreen({super.key, required this.author});

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen>
    with SingleTickerProviderStateMixin {
  final List<Story> stories = [
    Story(
      imageUrl: 'assets/images/FB_IMG_1627017277487.jpg',
      text: 'Story 1: This is the first story.',
      author: 'Author 1',
    ),
    Story(
      imageUrl: 'assets/images/FB_IMG_1628575470946.jpg',
      text: 'Story 2: This is the second story.',
      author: 'Author 1',
    ),
    Story(
      imageUrl: 'assets/images/FB_IMG_1635522712307.jpg',
      text: 'Story 3: This is the third story.',
      author: 'Author 2',
    ),
    Story(
      imageUrl: 'assets/images/storyImage.jpg',
      text: 'Story 4: This is the fourth story.',
      author: 'Author 2',
    ),
  ];

  late List<String> authors; // Keep track of author order
  late List<Story> authorStories;
  late PageController _pageController;
  late AnimationController _animationController;

  final duration = const Duration(seconds: 4);
  bool _isPaused = false;
  int _currentStoryIndex = 0;

  @override
  void initState() {
    super.initState();
    authors = stories.map((story) => story.author).toSet().toList();
    authorStories =
        stories.where((story) => story.author == widget.author).toList();

    _pageController = PageController(initialPage: _currentStoryIndex);
    _animationController = AnimationController(vsync: this, duration: duration);
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed && !_isPaused) {
        _nextStory();
      }
    });
    _startAutoScroll();
  }

  void _startAutoScroll() {
    if (!_isPaused) {
      _animationController.reset();
      _animationController.forward();
    }
  }

  void _nextStory() {
    if (_currentStoryIndex < authorStories.length - 1) {
      setState(() {
        _currentStoryIndex++;
      });
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
      _animationController.reset();
      _startAutoScroll();
    } else {
      // Transition to the next author
      final nextAuthor = _getNextAuthor();
      if (nextAuthor != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => StoryScreen(author: nextAuthor),
          ),
        );
      } else {
        Navigator.pop(
            context); // Exit the screen after the last author's stories
      }
    }
  }

  void _previousStory() {
    if (_currentStoryIndex > 0) {
      setState(() {
        _currentStoryIndex--;
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
    final currentIndex = authors.indexOf(widget.author);
    if (currentIndex < authors.length - 1) {
      return authors[currentIndex + 1];
    }
    return null; // No next author
  }

  void _onTap(bool forward) {
    if (forward) {
      _nextStory();
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
        backgroundColor: Colors.black,
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
                itemCount: authorStories.length,
                itemBuilder: (context, index) {
                  final story = authorStories[index];
                  return Stack(
                    children: [
                      // Image
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Image.asset(
                          story.imageUrl,
                          fit: BoxFit.contain,
                          alignment: Alignment.center,
                        ),
                      ),

                      // Author's name
                      Positioned(
                        top: 38,
                        left: 20,
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.white,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              story.author,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Story text
                      Positioned(
                        bottom: 60,
                        left: 16,
                        right: 16,
                        child: Text(
                          story.text,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                blurRadius: 10.0,
                                color: Colors.black54,
                                offset: Offset(2.0, 2.0),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
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
                    authorStories.length,
                    (index) => Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: AnimatedBuilder(
                          animation: _animationController,
                          builder: (context, child) {
                            double progressValue = 0.0;
                            if (index < _currentStoryIndex) {
                              progressValue = 1.0; // Completed stories
                            } else if (index == _currentStoryIndex) {
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
                              Icon(
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
                              Row(
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
