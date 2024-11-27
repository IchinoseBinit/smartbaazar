
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/main.dart';

FToast fToast = FToast();

void showCustomToast(
  String text, {
  bool unFocusKeyboard = true,
}) async {
  final context = MyApp.navKey.currentState!.context;

  await _waitTillKeyboardDisappear(context);
  if (context.mounted) {
    final toast = Container(
      margin: _getMargin(context),
      padding: const EdgeInsets.all(16.0 / 1.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: ColorConstant.toastBackgroundColor,
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: ColorConstant.toastTextColor,
        ),
      ),
    );
    fToast.init(context);
    fToast.showToast(
      child: toast,
      toastDuration: const Duration(
        milliseconds: 2500,
      ),
      gravity: ToastGravity.BOTTOM,
    );
  }
}

EdgeInsets _getMargin(BuildContext context) {
  if (MediaQuery.of(context).viewInsets.bottom == 0) return EdgeInsets.zero;
  return EdgeInsets.only(top: 150.h);
}

Future<void> _waitTillKeyboardDisappear(BuildContext context) async {
  bool haveKeyboard = MediaQuery.of(context).viewInsets.bottom > 0;
  if (!haveKeyboard) return;
  const milliseconds = 20;
  for (int i = 0; i < 500; i = i + milliseconds) {
    await Future.delayed(const Duration(milliseconds: milliseconds));
    if (context.mounted) {
      bool haveKeyboard = MediaQuery.of(context).viewInsets.bottom > 0;
      if (!haveKeyboard) break;
    } else {
      break;
    }
  }
}
