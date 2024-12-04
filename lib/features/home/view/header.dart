import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/features/product_details/constant/product_detail_widget.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/product_item_widget.dart';

class NewSearchWidget extends StatefulWidget {
  const NewSearchWidget({super.key});

  @override
  State<NewSearchWidget> createState() => _NewSearchWidgetState();
}

class _NewSearchWidgetState extends State<NewSearchWidget> {
  final List<Map<String, String>> items = [
    {
      'icon': 'assets/icon/loadings.svg',
      'label': 'Everything',
    },
    {
      'icon': 'assets/icon/openCartIcon.svg',
      'label': 'Products',
    },
    {
      'icon': 'assets/icon/usedIcon.svg',
      'label': 'Used',
    },
    {
      'icon': 'assets/icon/b2bIcon.svg',
      'label': 'Services',
    },
    {
      'icon': 'assets/icon/eventIcon.svg',
      'label': 'Events',
    },
    {
      'icon': 'assets/icon/b2bIcon.svg',
      'label': 'B2B',
    },
    {
      'icon': 'assets/icon/Vector.svg',
      'label': 'Jobs',
    },
    {
      'icon': 'assets/icon/box.svg',
      'label': 'Grocery',
    }
  ];

  Map<String, dynamic>? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Dropdown Button Container
          _buildDropdownButton(),

          // Search TextField Container
          Container(
            width: 200.w,
            height: 45.h,
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(color: Colors.white),
            child: TextField(
              decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search,
              size: 25,
              color: Color(0xffD9D9D9),
              ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 0.2, color: Colors.white),
                ),
                hintText: "Search Services",
                hintStyle: TextStyle(fontSize: 13.sp,
                color: const Color(0xffD9D9D9)
                ),
                isCollapsed: true,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                disabledBorder: InputBorder.none,
                isDense: true,
              ),
            ),
          ),

          // Search Icon Container
          Container(
            height: 45.h,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              color: const Color(0xFF46236a),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(19.r),
                bottomRight: Radius.circular(19.r),
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

  Widget _buildDropdownButton() {
    return Container(
      height: 45.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
        color: const Color(0xFF46236a),
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(19.r),
          bottomLeft: Radius.circular(19.r),
        ),
      ),
      child: DropdownButton<Map<String, dynamic>>(
       
        value: dropdownValue ?? items[0],
        onChanged: (newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: items.map((item) {
          return DropdownMenuItem(
            value: item,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(item['icon']!, height: 10.h),
                SizedBox(width: 8.w),
                Text(
                  item['label']!,
                  style: headerstyle.copyWith(
                      fontSize: 10.sp, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          );
        }).toList(),
        dropdownColor: const Color(0xff665B6B).withOpacity(0.5),
        underline: const SizedBox(),
        icon: const SizedBox(),
      ),
    );
  }
}
