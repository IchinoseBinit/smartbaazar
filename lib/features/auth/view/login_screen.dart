import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/common/controller/generic_state.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/controller/login_controller.dart';
import 'package:smartbazar/features/auth/view/forget_password_screen.dart';
import 'package:smartbazar/features/auth/view/signup_screen.dart';
import 'package:smartbazar/features/auth/widgets/general_elevated_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/general_text_field_widget.dart';
import 'package:smartbazar/features/auth/widgets/rich_text_widget.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartbazar/utils/custom_loading_indicatior.dart';
import 'package:smartbazar/utils/custom_toast.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLoading = false;
  String? errMessage;
  bool hidePassword = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final loginProvider = ref.watch(loginController.notifier);

    ref.listen<GenericState>(loginController, (previous, state) {
      if (state is LoadedState) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const HomeScreen()),
        );
        showCustomToast(state.response.toString());
      } else if (state is ErrorState) {
        setState(() {
          errMessage = state.exception.message;
        });
      } else if (state is LoadingState) {
        // onLoading(context);
      }
    });
    return GenericSafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 80.h,
                ),
                Center(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Image.asset(ImageConstant.appLogo),
                        SizedBox(
                          height: 50.h,
                        ),
                        Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff000000)),
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        if (errMessage != null && errMessage!.isNotEmpty)
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 12,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.red.shade100,
                              border: Border.all(
                                width: 1,
                                color: Colors.red.shade500,
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(7),
                              ),
                            ),
                            child: Text(
                              errMessage!,
                              style: TextStyle(
                                color: Colors.red.shade900,
                              ),
                            ),
                          ),
                        SizedBox(
                          height: 10.h,
                        ),
                        CustomTextFieldWidget(
                          controller: emailController,
                          icon: Icons.mail,
                          hintText: 'Email',
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 22.h,
                        ),
                        CustomTextFieldWidget(
                          controller: passwordController,
                          icon: Icons.lock,
                          hintText: 'Password',
                          obscureText: hidePassword,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                hidePassword = !hidePassword;
                              });
                            },
                            icon: Icon(hidePassword
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        InkWell(
                          splashFactory: NoSplash.splashFactory,
                          splashColor: Colors.white,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ForgetPasswordScreen(),
                              ),
                            );
                          },
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Forget Password?',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                GeneralEelevatedButton(
                  text: 'Log In',
                  onPresssed: () async {
                    if (_formKey.currentState!.validate()) {
                      await loginProvider.login(
                        context,
                        ref: ref,
                        email: emailController.text,
                        password: passwordController.text,
                      );
                    }
                  },
                ),
                SizedBox(
                  height: 120.h,
                ),
                RichTextWidget(
                  title: 'Don\'t have an account? ',
                  subtitle: 'Sign Up',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const SignUpScreen(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
