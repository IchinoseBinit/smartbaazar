import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AlertScreen extends StatelessWidget {
  final String alertTitle;
  final String alertBody;
  final String? alertImage;
  final String alertDateTime;

  const AlertScreen({
    super.key,
    required this.alertTitle,
    required this.alertBody,
    required this.alertImage,
    required this.alertDateTime,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Alert Icon and Title
            Row(
              children: [
                Icon(
                  Icons.notifications,
                  color: Colors.green.withOpacity(0.9),
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: Text(
                    alertTitle,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),

            // Alert Body Text
            Text(
              alertBody,
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.black.withOpacity(0.8),
              ),
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
            ),
            SizedBox(height: 20.h),

            // Promotional Image
            if (alertImage != null)
              Center(
                child: Image.network(
                  alertImage!,
                  fit: BoxFit.cover,
                  height: 100.h,
                  width: 180.h,
                ),
              ),
            SizedBox(height: 20.h),

            // Date and Time Row
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  alertDateTime,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
