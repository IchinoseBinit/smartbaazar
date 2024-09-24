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
    return Container(
      constraints: const BoxConstraints(
        maxWidth: double.infinity,
      ),
      child: DropdownButtonFormField<T>(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0.w),
          border: InputBorder.none, // No underline/border
        ),
        value: widget.dropdownValue != null && widget.items.isNotEmpty
            ? widget.dropdownValue
            : null,
        hint: Text(
          'Please select an option',
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
        isExpanded: true, // Ensures the dropdown takes full width
        items: widget.items.isNotEmpty
            ? widget.items.map<DropdownMenuItem<T>>((T item) {
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
              }).toList()
            : [],

        // Customize the selected item display (on the screen after selection)
        selectedItemBuilder: (BuildContext context) {
          return widget.items.map<Widget>((T item) {
            return Align(
              alignment: Alignment
                  .centerRight, // Right-align only the displayed selected item
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
            );
          }).toList();
        },

        onChanged: widget.items.isNotEmpty ? widget.onChanged : null,
      ),
    );
  }
}
