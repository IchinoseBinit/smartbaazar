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
      imageUrl: 'assets/images/FB_IMG_1627017277487.jpg',
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
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(story.imageUrl),
                            fit: BoxFit.contain,
                          ),
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
            ],
          ),
        ),
      ),
    );
  }
}
