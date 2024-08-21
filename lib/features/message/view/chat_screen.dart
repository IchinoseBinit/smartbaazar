import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 30.h,
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            children: [
              const ChatUserDetailWidget(),
              SizedBox(
                height: 30.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40.h,
                    width: 40.w,
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 7.h),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffD9D9D9)),
                    child: const Icon(
                      Icons.person_outline,
                      // color: Colors.white,
                      // size: 25.h,
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.r),
                        color:  const Color(0xffD9D9D9)),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Hi! How can i\nhelp you?',
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 150.h,
              ),
              Container(
                color: const Color(0xff781740),
                padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 17.h),
                child: TextFormField(
                  decoration: InputDecoration(
                      fillColor: const Color(0xffFFFFFF),
                      helperText: 'Type Here',
                      suffixIcon: Container(
                        height: 32.h,
                        width: 32.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: const Color(0xff362677)),
                      )),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatUserDetailWidget extends StatelessWidget {
  const ChatUserDetailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 9.h),
      decoration: BoxDecoration(
          color: const Color(0xff362677),
          borderRadius: BorderRadius.circular(
            14.r,
          )),
      child: Row(
        children: [
          Container(
            height: 60.h,
            width: 60.w,
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 7.h),
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            child: Icon(
              Icons.person_outline,
              // color: Colors.white,
              size: 25.h,
            ),
          ),
          SizedBox(
            width: 14.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5.h,
              ),
              Text(
                'User Name',
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  const Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  const Icon(
                    Icons.mail_outline,
                    color: Colors.white,
                  )
                ],
              ),
            ],
          ),
          const Spacer(),
          Text(
            'Go back to\n Message',
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
                color: Colors.white),
          )
        ],
      ),
    );
  }
}
