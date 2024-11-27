import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhotoAvatarContainerWidget extends StatelessWidget {
  const PhotoAvatarContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(bottom: 18.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(width: 1, color: const Color(0xffADADAD))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 17.h,
              left: 12.w,
            ),
            child: Text(
              'Photo or Avatar',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          const Divider(
            color: Color(0xffADADAD),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.w),
            child: const Text(
              'Recommended 1:1 Size',
              style: TextStyle(color: Color(0xffFF282F)),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Center(
            child: DottedBorder(
                borderType: BorderType.RRect,
                color: const Color(0xffADADAD),
                padding: EdgeInsets.zero,
                radius: Radius.circular(8.r),
                strokeWidth: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Container(
                    width: 118.w,
                    height: 95.h,
                    decoration: const BoxDecoration(
                      color: Color(0xffD9D9D9),
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
