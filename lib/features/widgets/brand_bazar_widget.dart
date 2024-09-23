import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BrandBazarWidget extends StatelessWidget {
  const BrandBazarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.r),
            border: Border.all(width: 2.w, color: const Color(0xffADADAD))),
        child: Column(
          children: [
            Text(
              'Brand Bazar',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              'Shop for genuine productss and grab the branded deals',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 32.h,
              child: ListView.separated(
                padding: EdgeInsets.only(
                  left: 20.w,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 32.h,
                    width: 32.h,
                    color: const Color(0xffD9D9D9),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 16.h,
                  );
                },
              ),
            ),
            SizedBox(
              height: 11.h,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 27.h, left: 15.w, bottom: 11.h),
              decoration: BoxDecoration(
                  color: const Color(0xff0338C0),
                  borderRadius: BorderRadius.circular(4.r)),
              child: Text(
                'AD Banner 382*56',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
    );
  }
}
