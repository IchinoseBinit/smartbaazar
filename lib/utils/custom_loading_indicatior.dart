import 'package:flutter/material.dart';

void onLoading(
  BuildContext context,
) {
  const alert = AlertDialog(
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
