import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderWithSearch extends ConsumerStatefulWidget {
  const HeaderWithSearch({super.key});

  @override
  ConsumerState<HeaderWithSearch> createState() => _HeaderWithSearchState();
}

class _HeaderWithSearchState extends ConsumerState<HeaderWithSearch> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30.h),
          Expanded(child: NewSearchWidget()),
        ],
      ),
    );
  }
}

class NewSearchWidget extends StatelessWidget {
  // final TextEditingController searchController;

  const NewSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 180.h,
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
            decoration: BoxDecoration(
              color: const Color(0xFF46236a),
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.r),
                bottomLeft: Radius.circular(15.r),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.group,
                  size: 12.sp,
                  color: Colors.white,
                ),
                
                Text(
                  "Services",
                  style: TextStyle(fontSize: 8.sp, color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            width: 200.w,
            height: 180.h,
            padding: EdgeInsets.only(top: 10.h),
            decoration: const BoxDecoration(color: Colors.white),
            child: TextField(
              //  controller: searchController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.2, color: Colors.white),
                ),
                hintText: "Search Services",
                hintStyle: TextStyle(fontSize: 10.sp),
                isCollapsed: true,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                disabledBorder: InputBorder.none,
                isDense: true,
                enabled: true,
              ),
            ),
          ),
          Container(
            height: 180.h,
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              color: const Color(0xFF46236a),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15.r),
                bottomRight: Radius.circular(15.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(2.0.r),
              child: Icon(
                Icons.search,
                color: Colors.white,
                size: 20.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
