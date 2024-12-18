import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/color_constant.dart';

class NewSearchWidget extends StatefulWidget {
  NewSearchWidget({super.key, required this.onchnage, required this.ontapped,required this.searchController,required this.onSearchFocusChanged});
  Function(String)? onchnage;
  GestureTapCallback ontapped;
  TextEditingController searchController;
   final Function(bool) onSearchFocusChanged;

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
      'key': '1',
    },
    {
      'icon': 'assets/icon/usedIcon.svg',
      'label': 'Used',
      'key': '2',
    },
    {
      'icon': 'assets/icon/b2bIcon.svg',
      'label': 'Services',
      'key': '3',
    },
    {
      'icon': 'assets/icon/eventIcon.svg',
      'label': 'Events',
      'key': '5',
    },
    {
      'icon': 'assets/icon/b2bIcon.svg',
      'label': 'B2B',
      'key': '7',
    },
    {
      'icon': 'assets/icon/Vector.svg',
      'label': 'Jobs',
      'key': '4',
    },
    {
      'icon': 'assets/icon/box.svg',
      'label': 'Grocery',
      'key': '8',
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
              controller: widget.searchController,
              onTap: () {
               widget.onSearchFocusChanged(widget.searchController.text.isNotEmpty);
              },
              onChanged: widget.onchnage,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                prefixIcon: const Icon(
                  Icons.search,
                  size: 25,
                  color: Color(0xffD9D9D9),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 0.2, color: Colors.white),
                ),
                hintText: "Search Services",
                hintStyle:
                    TextStyle(fontSize: 13.sp, color: const Color(0xffD9D9D9)),
                isCollapsed: true,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                disabledBorder: InputBorder.none,
                isDense: true,
              ),
            ),
          ),

          // Search Icon Container
          InkWell(
            onTap: widget.ontapped,
            child: Container(
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
                SvgPicture.asset(
                  alignment: Alignment.topLeft,
                  item['icon']!,
                  height: 10.h,
                  color: ColorConstant.whiteColor,
                ),
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
