import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/common/controller/generic_state.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/controller/forget_password_controller.dart';
import 'package:smartbazar/features/auth/view/login_screen.dart';
import 'package:smartbazar/features/auth/widgets/general_elevated_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/general_text_field_widget.dart';
import 'package:smartbazar/features/auth/widgets/rich_text_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';
import 'package:smartbazar/utils/custom_exception.dart';
import 'package:smartbazar/utils/custom_loading_indicatior.dart';

class ForgetPasswordScreen extends ConsumerStatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  ConsumerState<ForgetPasswordScreen> createState() =>
      _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends ConsumerState<ForgetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final forgetPasswordProvider = ref.watch(forgetPasswordController.notifier);
    ref.listen(forgetPasswordController, (pervious, state) {
      if (state is LoadingState) {
        onLoading(context);
      } else if (state is LoadedState) {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const LoginScreen()));
      } else if (state is ErrorState) {
        Exception(getCustomException(state.exception.message));
      }
    });
    return GenericSafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Center(
                    child: Column(
                  children: [
                    Image.asset(ImageConstant.appLogo),
                    SizedBox(
                      height: 40.h,
                    ),
                    Text(
                      'Forget Password?',
                      style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff000000)),
                    ),
                    SizedBox(
                      height: 13.h,
                    ),
                    Text(
                      'Enter your email or phone number to\n get an OTP to reset your Password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xffADADAD)),
                    )
                  ],
                )),
                SizedBox(
                  height: 40.h,
                ),
                CustomTextFieldWidget(
                  icon: Icons.mail,
                  hintText: 'user email',
                  controller: emailController,
                  validator: (String) {},
                ),
                SizedBox(
                  height: 22.h,
                ),
                CustomTextFieldWidget(
                  icon: Icons.mail,
                  hintText: 'Phone number',
                  controller: emailController,
                  validator: (_) {},
                ),
                SizedBox(
                  height: 60.h,
                ),
                GeneralEelevatedButton(
                  text: 'Send',
                  onPresssed: () {},
                ),
                SizedBox(
                  height: 120.h,
                ),
                RichTextWidget(
                  title: 'Want to reach home screen? ',
                  subtitle: 'Go back',
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      await forgetPasswordProvider.forgetPassword(context,
                          phone: phoneNumberController.text,
                          phone_country: "NP",
                          login: emailController.text);
                    }
                  },
                ),
                SizedBox(
                  height: 20.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
