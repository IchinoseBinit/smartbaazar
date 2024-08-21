import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartbazar/constant/image_constant.dart';

class CustomDropdownButton<T> extends StatefulWidget {
  final List<T> items;
  final T? dropdownValue;
  final ValueChanged<T?> onChanged;
  final String Function(T) getItemLabel;

  final Color? color;

  const CustomDropdownButton({
    Key? key,
    required this.items,
    required this.dropdownValue,
    required this.onChanged,
    required this.getItemLabel,
    this.color,
  }) : super(key: key);

  @override
  _CustomDropdownButtonState<T> createState() =>
      _CustomDropdownButtonState<T>();
}

class _CustomDropdownButtonState<T> extends State<CustomDropdownButton<T>> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<T>(
      elevation: 0,
      underline: Container(
        height: 0,
      ),
      value: widget.dropdownValue,
      icon: Padding(
        padding: EdgeInsets.only(left: 8.0.w),
        child: SvgPicture.asset(dropDownIcon),
      ),
      items: widget.items.map((T item) {
        return DropdownMenuItem<T>(
          value: item,
          child: Row(
            children: [
              Text(
                widget.getItemLabel(item),
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: widget.color ?? Colors.black,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        );
      }).toList(),
      onChanged: widget.onChanged,
    );
  }
}
