import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/view/scan_screen.dart';
import 'package:smartbazar/features/feed_page/view/feed_page_screen.dart';
import 'package:smartbazar/features/message/view/message_view_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_profile_screen.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedTab = 0;
  int? _userid;

  final List _pages = [
    const HomeScreen(),
    // VendorHomeScreen(),  if vendor login show vendor home screen
    const MessageViewScreen(),
    const ScanScreen(),
    // const Center(
    //   child: Text("Middle Tab"),
    // ),
    const FeedScreen(),
    // const MyOrderScreen(),
    //if  vendor login show disputes screen
    // DisputesScreen(),
    //
    const VendorProfileScreen(),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // resizeToAvoidBottomInset: false,
        // floatingActionButton: Padding(
        //   padding: EdgeInsets.only(top: 10.h),
        
        // ),
        body: _pages.elementAt(_selectedTab),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35.r),
            topRight: Radius.circular(35.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.w),
            child: Container(
              color: Colors.transparent,
              height: 65.h,
              child: BottomNavigationBar(
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
                //i want the  container that is wrapping this white container to be transparent
                backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                currentIndex: _selectedTab,
                // onTap: (index) {
                //   if (index != 2) {
                //     _changeTab(index);
                //   }
                // },
                onTap: (index) => _changeTab(index),
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      label: '',
                      icon: Container(
                        margin: EdgeInsets.only(top: 2),
                        height: 40.h,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),
                        ),
                        child: Image.asset('assets/icon/home.png'),
                      )),
                  BottomNavigationBarItem(
                      label: '',
                      icon: Container(
                        margin: EdgeInsets.only(top: 2),
                        height: 40.h,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),
                        ),
                        child: Image.asset('assets/icon/news.png'),
                      )),
                  BottomNavigationBarItem(
                      label: '',
                      icon: Container(
                        margin: EdgeInsets.only(top: 2),
                        height: 40.h,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),
                        ),
                        child: Image.asset('assets/icon/message.png'),
                      )),
                  BottomNavigationBarItem(
                      label: '',
                      icon: Container(
                        margin: EdgeInsets.only(top: 2),
                        height: 40.h,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),
                        ),
                        child: Image.asset('assets/icon/wifi.png'),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
