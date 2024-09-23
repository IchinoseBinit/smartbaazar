import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void onLoading(
  BuildContext context,
) {
  final alert = const AlertDialog(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircularProgressIndicator(
            color: Colors.blue,
            backgroundColor: Colors.transparent,
          ),
        ],
      ));
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (_) => WillPopScope(
      onWillPop: () async => false,
      child: alert,
    ),
  );
}

void disableLoading(BuildContext context) {
  Navigator.pop(context);
}
