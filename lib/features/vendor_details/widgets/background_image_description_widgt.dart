import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';

class BackgroundImageDescriptionWidget extends StatelessWidget {
  const BackgroundImageDescriptionWidget({
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
              'Profile Background Images & Description',
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
          SizedBox(
            height: 16.h,
          ),
          Center(
            child: Container(
              width: 320.w,
              height: 94.h,
              color: const Color(0xffD9D9D9),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.w, right: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Recommended Size 728* 90',
                  style: TextStyle(color: Color(0xffFF282F)),
                ),
                SizedBox(
                  height: 14.h,
                ),
                Container(
                  padding: EdgeInsets.only(top: 6.h, left: 12.w, bottom: 7.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: const Color(0xffEDECEC)),
                  child: Row(
                    children: [
                      Text(
                        'Choose File',
                        style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff36383C)),
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      Text(
                        "|",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xffADADAD)),
                      ),
                      SizedBox(
                        width: 11.w,
                      ),
                      Text(
                        'No File Chosen',
                        style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff36383C)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 11.h,
                ),
                Text(
                  'Description',
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff36383C)),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(top: 6.h, left: 12.w, bottom: 7.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(width: 1, color: const Color(0xffADADAD)),
                    ),
                    child: const Text('this is a text')),
                SizedBox(
                  height: 8.h,
                ),
                GeneralTextButton(
                  marginH: 0,
                  height: 25.h,
                  width: 90.w,
                  title: 'Add',
                  fgColor: Colors.white,
                  bgColor: const Color(0xff362677),
                  isSmallText: true,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
