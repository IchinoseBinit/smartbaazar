import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GeneralEelevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPresssed;
  final bool isSmallText;
  final Color? bgColor;
  final Color? fgColor;
  TextStyle? textStyle;
  final double? width;

  GeneralEelevatedButton(
      {super.key,
      required this.text,
      required this.onPresssed,
      this.isSmallText = false,
      this.textStyle,
      this.bgColor,
      this.width,
      this.fgColor});

  @override
  Widget build(BuildContext context) {
    if (textStyle == null) {
      if (isSmallText) {
        textStyle = Theme.of(context).textTheme.titleSmall!.copyWith(
              color: fgColor ?? Colors.white,
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
            );
      } else {
        textStyle = Theme.of(context).textTheme.titleMedium!.copyWith(
              fontSize: 16.sp,
              color: fgColor ?? Colors.white,
              fontWeight: FontWeight.w400,
            );
      }
    }
    return SizedBox(
      // height: 55,
      width: width ?? 200.w,
      child: ElevatedButton(
        onPressed: () {
          onPresssed();
        },
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(
            const Color(0xff362677),
          ),
          padding:
              WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 12.h)),
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.only(
          //     topLeft: Radius.circular(30.r),
          //     bottomLeft: Radius.circular(30.r),
          //     topRight: Radius.circular(30.r),
          //     bottomRight: Radius.circular(30.r),
          //   ),
          //   side: BorderSide(
          //     color: Color(0xff362677), // Border color
          //     width: 1.0, // Border width
          //   ),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: textStyle,
        ),
      ),
    );
  }
}
