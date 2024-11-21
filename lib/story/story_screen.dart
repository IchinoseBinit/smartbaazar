import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class FeedScreen extends ConsumerWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GenericSafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 150,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  gradient: LinearGradient(colors: [
                    Color(0xFF392574),
                    Color(0xFF681b4e),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    const Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        //  SizedBox(height: 30, child: NewSearchWidget()),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              openCart,
                              colorFilter: const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                            Text(
                              "Shopping",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 25.w,
                        ),
                        Column(
                          children: [
                            SvgPicture.asset(
                              servicesIcon,
                              //  color: Colors.white,
                            ),
                            Text(
                              "Services",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 25.w,
                        ),
                        Column(
                          children: [
                            SvgPicture.asset(
                              jobIcon,
                              colorFilter: const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                            Text(
                              "TradeHub",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              SizedBox(
                  height: 100,
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Positioned(
                              child: Image.asset(
                                  fit: BoxFit.cover,
                                  height: 120,
                                  "assets/images/subscribe.png")),
                          Positioned(
                              bottom: 12,
                              right: 1,
                              left: 1,
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    // borderRadius: BorderRadius.circular(1)
                                  ),
                                  child: Icon(Icons.add)))
                        ],
                      ),
                      Expanded(
                        child: ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return StoryAddWidget(index: index);
                            }),
                      )
                    ],
                  )),
              SizedBox(
                height: 20.h,
              ),
              FeedContainer()
            ],
          ),
        ),
      ),
    );
  }
}

class FeedContainer extends StatelessWidget {
  const FeedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width, // Set your desired width
          height: 99.h, // Set your desired height
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFFFFFFF), // White
                Color(0xFFDDDDDD), // Light Gray
                Color(0xFF888888), // Dark Gray
              ],
              stops: [0.19, 0.554, 1.0], // Define the gradient stops
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor:
                          const Color(0x7F7F7F73).withOpacity(0.45),
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/reebok.png",
                          fit: BoxFit.cover,
                          width: 60,
                          height: 60,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Adidas",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14.sp),
                            ),
                            SizedBox(width: 5.w),
                            ShaderMask(
                              shaderCallback: (Rect bounds) {
                                return const LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color(0xFF41246e), // Dark purple
                                    Color(0xFF721844), // Dark red
                                  ],
                                ).createShader(bounds);
                              },
                              blendMode: BlendMode.srcIn,
                              child: const Icon(
                                Icons.login,
                                size: 32,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "4.5k",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 11.sp),
                                ),
                                Text(
                                  "SUBSCRIBERS",
                                  style: TextStyle(fontSize: 10.sp),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Column(
                              children: [
                                Text(
                                  "1.5k",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 11.sp),
                                ),
                                Text(
                                  "PRODUCTS",
                                  style: TextStyle(fontSize: 10.sp),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 10.w),
                    Column(
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.public),
                            Text(
                              "GLOBAL BRAND",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10.sp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "8",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 11.sp),
                                ),
                                Text(
                                  "LIVE PRIZES",
                                  style: TextStyle(fontSize: 10.sp),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 12.h,
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  "2.4 KM",
                                  style: TextStyle(fontSize: 10.sp),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 300.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
          ),
          child: Stack(
            children: [
              // Image Section
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  "assets/images/rerbok_shoes.jpg",
                  width: double.infinity,
                  height: double.infinity, // Make the image take full height
                  fit: BoxFit.cover,
                ),
              ),

              // Icons Section (Like, Comment, Share) positioned above the image
              Positioned(
                bottom: 50.0, // Positioned higher so it's above the image
                right: 20.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Like Icon
                    GestureDetector(
                      onTap: () {
                        print("Liked!");
                      },
                      child: Row(
                        children: [
                          Icon(Icons.thumb_up_alt_outlined,
                              color: Colors.white, size: 20.h),
                          SizedBox(width: 4.w),
                          Text("1.2k",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12.sp)),
                        ],
                      ),
                    ),
                    SizedBox(width: 15.w),
                    // Comment Icon
                    GestureDetector(
                      onTap: () {
                        print("Commented!");
                      },
                      child: Row(
                        children: [
                          Icon(Icons.chat_bubble_outline,
                              color: Colors.white, size: 20.h),
                          SizedBox(width: 4.w),
                          Text("345",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12.sp)),
                        ],
                      ),
                    ),
                    SizedBox(width: 15.w),
                    // Share Icon
                    GestureDetector(
                      onTap: () {
                        print("Shared!");
                      },
                      child: Icon(Icons.share_outlined,
                          color: Colors.white, size: 20.h),
                    ),
                  ],
                ),
              ),

              // Interested, Engagement, and Views Section (above the image)
              Positioned(
                bottom: 10.0, // Adjust position as needed
                left: 0,
                right: 0,
                child: Container(
                  height: 30.h,
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  decoration: BoxDecoration(
                    color: Colors.white
                        .withOpacity(0.7), // Slight opacity to blend with image
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(5.0),
                      bottomRight: Radius.circular(5.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Interested
                      GestureDetector(
                        onTap: () {
                          print("Interested!");
                        },
                        child: Row(
                          children: [
                            Text(
                              "1.2k Interested",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const VerticalDivider(
                        thickness: 2,
                        color: Colors.black,
                      ),
                      // Engagement
                      GestureDetector(
                        onTap: () {
                          print("Engagement!");
                        },
                        child: Row(
                          children: [
                            Text(
                              "345 Engagement",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const VerticalDivider(
                        thickness: 2,
                        color: Colors.black,
                      ),
                      // Views
                      GestureDetector(
                        onTap: () {
                          print("Views!");
                        },
                        child: Row(
                          children: [
                            Text(
                              "2.3k views",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class StoryAddWidget extends StatelessWidget {
  final int index;
  const StoryAddWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Author 1 Button

        Stack(
          clipBehavior: Clip.none, // This prevents clipping of child widgets
          children: [
            Positioned(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          StoryScreen(author: 'Author ${index + 1}'),
                    ),
                  );
                },
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: const Color(0x7F7F7F73).withOpacity(0.45),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/images/reebok.png",
                      fit: BoxFit.cover,
                      width: 60,
                      height: 60,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top:
                  41, // Adjust the position for the icon so it doesn't overlap with the CircleAvatar
              right: 0, // Position the icon to the right
              left: 0, // Optional: You can center it horizontally if needed
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(2),
                child: Icon(
                  Icons.card_giftcard,
                  color: Colors.amber,
                  size: 24, // Set the size of the icon
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 15.w,
        )
      ],
    );
  }
}

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
