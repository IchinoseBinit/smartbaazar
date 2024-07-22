import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFieldWidget extends StatefulWidget {
  final IconData icon;
  final String hintText;
  final Widget? suffixIcon;
  final Color? fillColor;
  final bool? fill;
  final bool? readOnly;
  final Function? onChanged;
  final String? Function(String?) validator;
  final TextEditingController? controller;
  final bool obscureText;

  const CustomTextFieldWidget({
    super.key,
    required this.icon,
    required this.hintText,
    this.suffixIcon,
    this.fill,
    this.fillColor,
    this.readOnly,
    this.onChanged,
    this.controller,
    required this.validator,
    this.obscureText = false,
  });

  @override
  State<CustomTextFieldWidget> createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: widget.readOnly ?? false,
      controller: widget.controller,
      onChanged: (newValue) {
        widget.onChanged?.call(newValue);
      },
      obscureText: widget.obscureText,
      validator: (value) => widget.validator(value),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 10),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10.r)),
        filled: widget.fill,
        fillColor: widget.fillColor,
        prefixIcon: Padding(
          padding:
              EdgeInsets.only(right: 11.w, left: 10.w, top: 5.h, bottom: 5.h),
          child: Container(
            height: 50,
            width: 52,
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 11.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Color(
                  0xffAEC5FF,
                )),
            child: Icon(
              widget.icon,
              color: Color(0xff362677),
            ),
          ),
        ),
        suffixIcon: widget.suffixIcon,
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: Color(0xffADADAD),
        ),
      ),
    );
  }
}

//  Container(
//           padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 11.h),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10.r),
//               color: Color(
//                 0xffAEC5FF,
//               )),
//           child: Icon(
//             icon,
//             color: Color(0xff362677),
//           ),
//         ),