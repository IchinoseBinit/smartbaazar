
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
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: DropdownButtonFormField<T>(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0.w),
          border: InputBorder.none,
        ),
        value: widget.items.contains(widget.dropdownValue)
            ? widget.dropdownValue
            : null, // Ensure value is in items or reset to null
        hint: Text(
          'Select option',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: widget.color ?? Colors.black,
          ),
        ),
        icon: Padding(
          padding: EdgeInsets.only(left: 8.0.w),
          child: SvgPicture.asset(dropDownIcon),
        ),
        isExpanded: true,
        items: widget.items.map<DropdownMenuItem<T>>((T item) {
          return DropdownMenuItem<T>(
            value: item,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.8,
              ),
              child: Text(
                widget.getItemLabel(item),
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: widget.color ?? Colors.black,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
          );
        }).toList(),
        onChanged: (newValue) {
          if (widget.onChanged != null) {
            setState(() {
              widget.onChanged(newValue);
            });
          }
        },
      ),
    );
  }
}
