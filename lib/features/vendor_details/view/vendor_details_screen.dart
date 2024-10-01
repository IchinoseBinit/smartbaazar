import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/general_text_field_widget.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/vendor_details/view/my_subscription_screen.dart';
import 'package:smartbazar/features/vendor_details/widgets/account_details_widget.dart';
import 'package:smartbazar/features/vendor_details/widgets/background_image_description_widgt.dart';
import 'package:smartbazar/features/vendor_details/widgets/bank_details_widget.dart';
import 'package:smartbazar/features/vendor_details/widgets/photo_avatar_container_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class VendroDetailsScreen extends StatelessWidget {
  const VendroDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: Colors.black)),
                      child: Image.asset(ImageConstant.personImage),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Text(
                      'Vendor Name',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff000000),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(9),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 2, color: Colors.black)),
                      child: SvgPicture.asset(
                        openCart,
                        colorFilter: const ColorFilter.mode(
                            Color(0xff362677), BlendMode.srcIn),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                const PhotoAvatarContainerWidget(),
                SizedBox(
                  height: 16.h,
                ),
                const BackgroundImageDescriptionWidget(),
                SizedBox(
                  height: 16.h,
                ),
                const AccountDetailsWidget(),
                SizedBox(
                  height: 16.h,
                ),
                const BankDetailsWidget(),
                SizedBox(
                  height: 16.h,
                ),
                const VerifyAccountWidget(),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(bottom: 18.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      border:
                          Border.all(width: 1, color: const Color(0xffADADAD))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 17.h,
                          left: 12.w,
                        ),
                        child: Text(
                          'Change Password',
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
                        padding:
                            EdgeInsets.only(left: 10.w, right: 45.w, top: 20.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextFieldWidget(
                              suffixIcon: const Icon(
                                Icons.visibility,
                                color: Color(0xffADADAD),
                              ),
                              fill: true,
                              fillColor: const Color(0xffF3F3F3),
                              icon: Icons.person,
                              hintText: "New Password",
                              validator: (String) {
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 10.2.h,
                            ),
                            CustomTextFieldWidget(
                              suffixIcon: const Icon(
                                Icons.visibility,
                                color: Color(0xffADADAD),
                              ),
                              fill: true,
                              fillColor: const Color(0xffF3F3F3),
                              icon: Icons.person,
                              hintText: "Confirm Password",
                              validator: (String) {
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Checkbox(
                                          value: true,
                                          activeColor: const Color(0xff362677),
                                          onChanged: (newValue) {
                                            // setState(() {
                                            //   checkBoxValue = newValue;
                                            // });
                                          }),
                                      const Expanded(
                                        child: Text(
                                            'I have read and agree to the  Terms & Condition'),
                                      )
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Checkbox(
                                          value: false,
                                          activeColor: const Color(0xff362677),
                                          onChanged: (newValue) {
                                            // setState(() {
                                            //   checkBoxValue = newValue;
                                            // });
                                          }),
                                      const Expanded(
                                        child: Text(
                                            'I accept to recive marketing emails, sms, notification'),
                                      )
                                    ],
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
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) =>
                                                  const MySubscriptionScreen()));
                                    },
                                  )
                                ],
                              ),
                            )
                            // GeneralEelevatedButton(
                            //     text: 'Update', onPresssed: () {})
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class VerifyAccountWidget extends StatelessWidget {
  const VerifyAccountWidget({
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
              'Verify your Account',
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    VerifyAccountPhotoContainer(),
                    VerifyAccountPhotoContainer(),
                    VerifyAccountPhotoContainer(),
                  ],
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

class VerifyAccountPhotoContainer extends StatelessWidget {
  const VerifyAccountPhotoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 75.h,
          width: 95.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(width: 1.w, color: const Color(0xffADADAD))),
          child: Center(
            child: Text(
              'Add Photo',
              style: TextStyle(
                  fontSize: 10.sp,
                  color: const Color(0xff888888),
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          'PAN',
          style: TextStyle(
              color: const Color(0xff888888),
              fontSize: 10.sp,
              fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}
