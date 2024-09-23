import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/auth/widgets/general_text_field_widget.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';

class AccountDetailsWidget extends StatelessWidget {
  const AccountDetailsWidget({
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
              'Account Details',
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
            padding: EdgeInsets.only(left: 10.w, right: 45.w, top: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextFieldWidget(
                  fill: true,
                  fillColor: const Color(0xffF3F3F3),
                  icon: Icons.person,
                  hintText: "Name",
                  validator: (_) {
                    return null;
                  },
                ),
                SizedBox(
                  height: 10.2.h,
                ),
                CustomTextFieldWidget(
                  fill: true,
                  fillColor: const Color(0xffF3F3F3),
                  icon: Icons.call,
                  hintText: "Phone Number",
                  validator: (String) {
                    return null;
                  },
                ),
                SizedBox(
                  height: 10.2.h,
                ),
                CustomTextFieldWidget(
                  fill: true,
                  fillColor: const Color(0xffF3F3F3),
                  icon: Icons.mail,
                  hintText: "Email",
                  validator: (String) {
                    return null;
                  },
                ),
                SizedBox(
                  height: 10.2.h,
                ),
                CustomTextFieldWidget(
                  fill: true,
                  fillColor: const Color(0xffF3F3F3),
                  icon: Icons.person_outline,
                  hintText: "User Name",
                  validator: (String) {
                    return null;
                  },
                ),
                SizedBox(
                  height: 10.h,
                ),
                GeneralTextButton(
                  marginH: 0,
                  height: 25.h,
                  width: 100.w,
                  title: 'Update',
                  fgColor: Colors.white,
                  bgColor: const Color(0xff362677),
                  isSmallText: true,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
