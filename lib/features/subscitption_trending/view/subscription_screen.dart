import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class SubscriptionTrendingScreen extends StatefulWidget {
  const SubscriptionTrendingScreen({Key? key}) : super(key: key);

  @override
  State<SubscriptionTrendingScreen> createState() =>
      _SubscriptionTrendingScreenState();
}

class _SubscriptionTrendingScreenState extends State<SubscriptionTrendingScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  double offsetX = 0.0; // Horizontal swipe offset
  int currentIndex = 0; // Current card index
  List<Widget> cards = [
    // const BigContainer(),
    // const big_container(),
    // const big_container(),
  ];

  void handleSwipe() {
    if (offsetX < -150) {
      // Left swipe: Card is disliked
      setState(() {
        // Show SnackBar
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Card deleted"),
            duration: Duration(seconds: 2),
          ),
        );
        // Remove the top card and reset the swipe offset
        cards.removeAt(currentIndex);
        offsetX = 0.0;
      });
    } else {
      // Reset card position if not swiped far enough
      setState(() {
        offsetX = 0.0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // Top Row Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/subscribe.png",
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    'Subscription',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () => Navigator.pop(context),
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
            const Divider(thickness: 2, color: Color(0xffD9D9D9)),

            // TabBar Section
            TabBar(
              controller: _tabController,
              isScrollable: true,
              indicatorPadding:
                  const EdgeInsets.symmetric(horizontal: 16), // Aligns indicator
              tabs: [
                Tab(
                  icon: Image.asset(
                    "assets/images/news.png",
                    height: 30,
                    width: 30,
                  ),
                  text: "My Subscription",
                ),
                Tab(
                  icon: Image.asset(
                    "assets/images/grow.png",
                    height: 30,
                    width: 30,
                  ),
                  text: "Trending",
                ),
              ],
            ),

            // TabBarView Content
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // My Subscription Tab
                  Center(
                    child: Text(
                      "My Subscription Content",
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w600),
                    ),
                  ),

                  // Trending Tab
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ListView(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Business or Brand Name",
                            suffixIcon: const Icon(Icons.search),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffD9D9D9),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        if (cards.isNotEmpty)
                          GestureDetector(
                            onPanEnd: (details) {
                              handleSwipe();
                            },
                            onPanUpdate: (details) {
                              setState(() {
                                offsetX = details.localPosition.dx;
                              });
                            },
                            child: AnimatedSwitcher(
                              duration: const Duration(milliseconds: 300),
                              child: Transform.translate(
                                offset: Offset(offsetX, 0),
                                child: cards.isNotEmpty
                                    ? cards[0]
                                    : Container(), // Show empty if no cards
                              ),
                            ),
                          ),
                        // Display second card if available
                        if (cards.length > 1)
                          AnimatedSwitcher(
                            duration: const Duration(milliseconds: 300),
                            child: cards[1],
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
