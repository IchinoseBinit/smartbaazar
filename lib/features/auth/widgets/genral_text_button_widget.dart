import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class GeneralTextButton extends StatelessWidget {
  final String title;
  final Color? bgColor;
  final Color? fgColor;
  final Color? prefixColor;
  final Color? borderColor;
  final double? borderSize;
  final double? imageH;
  final bool isSmallText;
  final bool isSvg;
  final IconData? prefixIcon;
  final EdgeInsets? textPadding;
  final VoidCallback? onPressed;
  final String? prefixImage;
  final double? borderRadius;
  final double? height;
  final double? width;

  final double? marginH;

  const GeneralTextButton({
    Key? key,
    this.isSmallText = false,
    this.isSvg = false,
    required this.title,
    this.borderSize,
    this.borderColor,
    this.bgColor,
    this.fgColor,
    this.onPressed,
    this.borderRadius,
    this.textPadding,
    this.height,
    this.marginH,
    this.prefixImage,
    this.prefixColor,
    this.imageH,
    this.prefixIcon,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: marginH ?? 16.h),
      height: height ?? 45.h,
      // width: width ?? MediaQuery.of(context).size.width,
      width: width ?? 160.w,
      child: OutlinedButton(
        style: ButtonStyle(
          splashFactory: NoSplash.splashFactory,
          padding: WidgetStateProperty.all(textPadding),
          backgroundColor:
              WidgetStateProperty.all(bgColor ?? Colors.transparent),
          side: WidgetStateProperty.all<BorderSide>(
            BorderSide(
              color: borderColor ?? const Color(0xff362677),
              width: borderSize ?? 1,
            ),
          ),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
            ),
          ),
        ),
        onPressed: () {
          FocusManager.instance.primaryFocus?.unfocus();
          if (onPressed != null) onPressed!();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (prefixIcon != null)
              Expanded(
                child: Icon(
                  prefixIcon,
                  color: prefixColor,
                  size: imageH ?? 24,
                ),
              ),
            if (prefixImage != null)
              if (isSvg)
                Expanded(
                  child: SvgPicture.asset(
                    prefixImage!,
                    height: imageH ?? 24,
                    // color: prefixColor,
                  ),
                )
              else
                Expanded(
                  child: Image.asset(
                    prefixImage!,
                    height: imageH ?? 24,
                    color: prefixColor,
                  ),
                ),
            if (prefixImage != null || prefixIcon != null)
              const SizedBox(
                width: 5,
              ),
            Expanded(
              child: Text(
                title,
                style: isSmallText
                    ? Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: fgColor ?? const Color(0xff362677),
                        fontWeight: FontWeight.w700,fontSize: 12.sp)
                    : Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: fgColor ?? const Color(0xff362677),
                        fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
