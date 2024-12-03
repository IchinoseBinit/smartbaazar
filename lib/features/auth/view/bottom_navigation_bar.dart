import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/auth/view/scan_screen.dart';
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

  final List<Widget> _pages = [
    const HomeScreen(),
    const MessageViewScreen(),
    const ScanScreen(),
    const FeedScreen(),
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
        body: _pages.elementAt(_selectedTab),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 70.w, vertical: 10.h),
          child: Card(
            elevation: 5,
            shape:const StadiumBorder(),
            color: const Color(0xfff5f2f6),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                type: BottomNavigationBarType.fixed,
                selectedItemColor: const Color(0xff362677),
                selectedIconTheme:
                    const IconThemeData(color: Color(0xff362677)),
                selectedLabelStyle: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff36383C),
                ),
                unselectedLabelStyle: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff36383C),
                ),
                backgroundColor: const Color(0xfff5f2f6),
                currentIndex: _selectedTab,
                onTap: _changeTab,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    label: '',
                    icon: Container(
                      margin: const EdgeInsets.only(top: 2),
                      height: 40.h,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black),
                      ),
                      child: Image.asset('assets/icon/home.png'),
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: '',
                    icon: Container(
                      margin: const EdgeInsets.only(top: 2),
                      height: 40.h,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black),
                      ),
                      child: Image.asset('assets/icon/news.png'),
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: '',
                    icon: Container(
                      margin: const EdgeInsets.only(top: 2),
                      height: 40.h,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black),
                      ),
                      child: Image.asset('assets/icon/message.png'),
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: '',
                    icon: Container(
                      margin: const EdgeInsets.only(top: 2),
                      height: 40.h,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black),
                      ),
                      child: Image.asset('assets/icon/wifi.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
