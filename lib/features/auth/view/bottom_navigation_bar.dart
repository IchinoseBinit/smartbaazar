import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/message/view/message_view_screen.dart';
import 'package:smartbazar/features/my_order/view/my_order_screen.dart';
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

  final List _pages = [
    const HomeScreen(),
    // VendorHomeScreen(),  if vendor login show vendor home screen
    const MessageViewScreen(),
    Container(),
    // const Center(
    //   child: Text("Middle Tab"),
    // ),
    const MyOrderScreen(),
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
        backgroundColor: const Color(0xffF6F1F1),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        resizeToAvoidBottomInset: false,
        floatingActionButton: Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: SizedBox(
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  width: 1.w,
                  color: const Color(0xffffF8F8F8),
                ),
              ),
              child: Container(
                height: 80,
                padding: EdgeInsets.all(12.h),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xff362677).withOpacity(0.9),
                ),
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedTab =
                            2; // Set the selected tab to the middle placeholder
                      });
                    },
                    child: SvgPicture.asset(qrIcon)),
              ),
            ),
          ),
        ),
        body: _pages.elementAt(_selectedTab),
        bottomNavigationBar: ClipRRect(
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
                color: const Color(0xff36383C),
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w700,
                color: const Color(0xff36383C),
              ),
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
                  icon: SvgPicture.asset(
                    homeIcon,
                    colorFilter: const ColorFilter.mode(
                      Color(0xff36383C),
                      BlendMode.srcIn,
                    ),
                  ),
                  label: 'Home',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.mail),
                  label: 'Message',
                ),
                const BottomNavigationBarItem(
                  icon: SizedBox.shrink(), // Empty placeholder for FAB
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(listIcon),
                  label: 'Feed',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 1.w, color: Colors.black),
                    ),
                    child: Image.asset(ImageConstant.personImage),
                  ),
                  label: 'Account',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
