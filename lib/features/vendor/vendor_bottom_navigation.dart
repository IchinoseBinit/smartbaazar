import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/message/view/message_view_screen.dart';
import 'package:smartbazar/features/vendor/view/disputes_screen.dart';
import 'package:smartbazar/features/vendor/view/my_subscribe_and_win_page.dart';
import 'package:smartbazar/features/vendor_details/view/vendor_details_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class VendorBottomNavigation extends StatefulWidget {
  const VendorBottomNavigation({super.key});

  @override
  State<VendorBottomNavigation> createState() => _VendorBottomNavigationState();
}

class _VendorBottomNavigationState extends State<VendorBottomNavigation> {
  final List _pages = [
    const MySubscribeAndWinPage(),
    // if vendor login show vendor home screen
    const MessageViewScreen(),
    const Center(
      child: Text("pppp"),
    ),
    const DisputesScreen(),
    const VendroDetailsScreen(),
  ];
  int _selectedTab = 0;

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F1F1),
        resizeToAvoidBottomInset: false,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: EdgeInsets.only(top: 10.h),
          // child: Container(
          //   // height: 60.h,
          //   // padding: EdgeInsets.all(20.h),
          //   // padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.h),
          //   padding: const EdgeInsets.all(4),

          //   decoration: BoxDecoration(
          //       shape: BoxShape.circle,
          //       border: Border.all(width: 4.w, color: Colors.white),
          //       color: const Color.fromARGB(255, 238, 234, 234)),
          //   child: Container(
          //     height: 80,
          //     decoration: BoxDecoration(
          //         color: Color(0xff362677), shape: BoxShape.circle),
          //     child: SvgPicture.asset(qrIcon),
          //   ),
          //   // elevation: 3.0,
          // ),
          child: SizedBox(
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  width: 1.w,
                  color: const Color(0xfffff8f8f8),
                ),
              ),
              child: Container(
                height: 80,
                padding: EdgeInsets.all(12.h),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xff362677).withOpacity(0.9),
                ),
                child: SvgPicture.asset(qrIcon),
              ),
            ),
          ),
        ),
        body: _pages.elementAt(_selectedTab),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35.r),
              topRight: Radius.circular(35.r),
            ),
            child: SizedBox(
              height: 65.h,
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                selectedItemColor: const Color(0xff362677),
                selectedIconTheme: const IconThemeData(color: Color(0xff362677)),
                selectedLabelStyle: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff36383C)),
                unselectedLabelStyle: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff36383C)),
                backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                currentIndex: _selectedTab,
                onTap: (index) => _changeTab(index),
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      homeIcon,
                      colorFilter:
                          const ColorFilter.mode(Color(0xff36383C), BlendMode.srcIn),
                    ),
                    label: 'Home',
                  ),
                  const BottomNavigationBarItem(
                    icon: Icon(Icons.mail),
                    label: 'Message',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(listIcon),
                    label: 'Feed',
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(width: 1.w, color: Colors.black)),
                        child: Image.asset(ImageConstant.personImage)),
                    label: 'Account',
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
