import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartbazar/constant/image_constant.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget{  final GlobalKey<ScaffoldState> scaffoldKey;
  final TextEditingController searchController;
  final VoidCallback onCartTap;
  final Function(bool) onSearchFocusChanged;
  final Function(String)? onsubmit;

  const AppbarWidget({
    Key? key,
    required this.scaffoldKey,
    required this.searchController,
    required this.onCartTap,
    required this.onSearchFocusChanged,
    required this.onsubmit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      elevation: 0,
      toolbarHeight: 85.h,
      leadingWidth: 30.h,
      titleSpacing: 5,
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: SvgPicture.asset(drawerIcon),
        onPressed: () {
          scaffoldKey.currentState?.openDrawer();
        },
      ),
      title: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: SizedBox(
              height: 33.h,
              child: TextFormField(
                onFieldSubmitted:onsubmit,
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIconConstraints: BoxConstraints(minWidth: 40.w),
                  hintStyle: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xffBFBFBF),
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(top: 5.h, left: 8.w),
                    child: Icon(
                      Icons.search,
                      size: 20.sp,
                    ),
                  ),
                  suffixIcon: Container(
                    width: 70.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(25.r),
                        topRight: Radius.circular(25.r),
                      ),
                      color: const Color(0xff362677),
                    ),
                    child: Icon(
                      Icons.search,
                      size: 30.sp,
                      color: Colors.white,
                    ),
                  ),
                  contentPadding: EdgeInsets.zero,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                ),
                onTap: () {
                  onSearchFocusChanged(searchController.text.isNotEmpty);
                },
              ),
            ),
          ),
          SizedBox(width: 10.w),
          GestureDetector(
            onTap: onCartTap,
            child: Container(
              height: 30.h,
              width: 30.h,
              padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 1.w),
              ),
              child: SvgPicture.asset(openCart),
            ),
          ),
        ],
      ),
    );
  }
   @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
