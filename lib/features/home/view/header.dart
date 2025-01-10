import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
  final List<Map<String, String>> headeritems = [
    {'icon': 'assets/icon/loadings.svg', 'label': 'Everything'},
    {'icon': 'assets/icon/openCartIcon.svg', 'label': 'Products'},
    {'icon': 'assets/icon/usedIcon.svg', 'label': 'Used'},
    {'icon': 'assets/icon/b2bIcon.svg', 'label': 'Services'},
    {'icon': 'assets/icon/eventIcon.svg', 'label': 'Events'},
    {'icon': 'assets/icon/b2bIcon.svg', 'label': 'B2B'},
    {'icon': 'assets/icon/Vector.svg', 'label': 'Jobs'},
    {'icon': 'assets/icon/box.svg', 'label': 'Grocery'},
  ];
class NewSearchWidget extends StatefulWidget {
  const NewSearchWidget({
    super.key,
    required this.onchnage,
    required this.ontapped,
    this.index = 0,
    required this.searchController,
    required this.onSearchFocusChanged,
  });

  final Function(String)? onchnage;
  final GestureTapCallback ontapped;
  final TextEditingController searchController;
  final int index;
  final Function(bool) onSearchFocusChanged;

  @override
  State<NewSearchWidget> createState() => _NewSearchWidgetState();
}

class _NewSearchWidgetState extends State<NewSearchWidget> {


  Map<String, String>? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildDropdownButton(widget.index),
          _buildSearchTextField(),
          _buildSearchIcon(),
        ],
      ),
    );
  }

  Widget _buildDropdownButton(int index) {
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
      child: DropdownButton<Map<String, String>>(
        value: dropdownValue ?? headeritems[index],
        onChanged: (newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: headeritems.map((item) {
          return DropdownMenuItem(
            value: item,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  alignment: Alignment.center,
                  item['icon']!,
                  height: 10.h,
                  color: Colors.white,
                ),
                SizedBox(width: 8.w),
                Text(
                  item['label']!,
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
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

  Widget _buildSearchTextField() {
    return Container(
      width: 180.w,
      height: 45.h,
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(color: Colors.white),
      child: TextField(
        controller: widget.searchController,
        onTap: () {
          widget.onSearchFocusChanged(
            widget.searchController.text.isNotEmpty,
          );
        },
        onChanged: widget.onchnage,
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          prefixIcon: const Icon(
            Icons.search,
            size: 25,
            color: Color(0xffD9D9D9),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 0.2, color: Colors.white),
          ),
          hintText: "Search Everything",
          hintStyle: TextStyle(fontSize: 13.sp, color: const Color(0xffD9D9D9)),
          isCollapsed: true,
          contentPadding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
          disabledBorder: InputBorder.none,
          isDense: true,
        ),
      ),
    );
  }

  Widget _buildSearchIcon() {
    return InkWell(
      onTap: widget.ontapped,
      child: Container(
        height: 45.h,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          color: Colors.transparent,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(19.r),
            bottomRight: Radius.circular(19.r),
          ),
        ),
        child: Icon(
          Icons.search,
          color: Colors.white,
          size: 20.sp,
        ),
      ),
    );
  }
}
