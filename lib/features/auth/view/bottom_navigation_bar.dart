
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/feed_page/view/feed_page_screen.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/message/view/message_view_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_profile_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedTab = 0;

  // List of pages to display
  final List<Widget> _pages = [
    const HomeScreen(),
    const FeedScreen(),
    const MessageViewScreen(),
    const VendorProfileScreen(),
  ];

  void _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.transparent,
        body: _pages[_selectedTab], // Display selected page
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: AnimatedBottomBar(
          selectedIndex: _selectedTab,
          onTabChanged: _changeTab,
        ),
      ),
    );
  }
}

class AnimatedBottomBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabChanged;

  const AnimatedBottomBar({
    required this.selectedIndex,
    required this.onTabChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 70.w),
      child: Card(
        elevation: 5,
        shape: const StadiumBorder(),
        color: const Color(0xfff5f2f6),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(4, (index) {
              final isSelected = index == selectedIndex;
              final iconPaths = [
                'assets/icon/home.png',
                'assets/icon/news.png',
                'assets/icon/message.png',
                'assets/icon/wifi.png',
              ];
              return GestureDetector(
                onTap: () => onTabChanged(index),
                child: Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: isSelected
                        ? const Color(0xff362677)
                        : const Color(0xfff5f2f6),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color:
                          isSelected ? const Color(0xff362677) : Colors.black,
                    ),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    iconPaths[index],
                    color: isSelected ? Colors.white : Colors.black,
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}