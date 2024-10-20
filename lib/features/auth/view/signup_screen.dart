import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/common/controller/generic_state.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/controller/signup_controller.dart';
import 'package:smartbazar/features/auth/view/login_screen.dart';
import 'package:smartbazar/features/auth/widgets/general_elevated_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/general_text_field_widget.dart';
import 'package:smartbazar/features/auth/widgets/rich_text_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';
import 'package:smartbazar/utils/custom_loading_indicatior.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final countryCodeController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final signUpProvider = ref.watch(signUpController.notifier);

    ref.listen<GenericState>(signUpController, (previous, state) {
      if (state is LoadedState) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const LoginScreen()),
        );
      } else if (state is ErrorState) {
        print(state.exception.message);
      } else if (State is LoadingState) {
        onLoading(context);
      }
    });
    return GenericSafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
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
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff000000)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  CustomTextFieldWidget(
                    icon: Icons.person_2_outlined,
                    hintText: 'Name',
                    controller: nameController,
                    validator: (value) {
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  CustomTextFieldWidget(
                    icon: Icons.call,
                    hintText: 'Phone Number',
                    controller: phoneController,
                    validator: (String) {
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  CustomTextFieldWidget(
                    icon: Icons.mail,
                    hintText: 'Email',
                    controller: emailController,
                    validator: (String) {
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  CustomTextFieldWidget(
                    icon: Icons.person_2_outlined,
                    hintText: 'User Name',
                    controller: usernameController,
                    validator: (String) {
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  CustomTextFieldWidget(
                    icon: Icons.local_activity,
                    hintText: 'Age',
                    validator: (String) {
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  CustomTextFieldWidget(
                    icon: Icons.person_2_rounded,
                    hintText: 'Sex',
                    validator: (_) {
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  CustomTextFieldWidget(
                    icon: Icons.lock,
                    hintText: 'Password',
                    controller: passwordController,
                    validator: (String) {
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  CustomTextFieldWidget(
                    icon: Icons.lock,
                    hintText: 'Confirm Passowrd',
                    controller: confirmPasswordController,
                    validator: (String) {
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  GeneralEelevatedButton(
                    text: 'Sign Up',
                    onPresssed: () async {
                      if (_formKey.currentState!.validate()) {
                        await signUpProvider.signUp(context,
                            name: nameController.text,
                            phone: phoneController.text,
                            email: emailController.text,
                            passsword: passwordController.text,
                            password_confirmation:
                                confirmPasswordController.text,
                            country_code: 'NP',
                            username: usernameController.text,
                            accept_terms: 1,
                            accept_marketing_offers: 1);
                      }
                    },
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  RichTextWidget(
                    title: 'Already have an account? ',
                    subtitle: 'Log In',
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 20.h,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
