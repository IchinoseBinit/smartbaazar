import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:smartbazar/common/controller/generic_state.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/controller/signup_controller.dart';
import 'package:smartbazar/features/auth/view/login_screen.dart';
import 'package:smartbazar/features/auth/widgets/custom_check_box_widgt.dart';
import 'package:smartbazar/features/auth/widgets/general_elevated_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/general_text_field_widget.dart';
import 'package:smartbazar/features/auth/widgets/rich_text_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';
import 'package:smartbazar/utils/custom_loading_indicatior.dart';
import 'package:smartbazar/utils/custom_toast.dart';

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
  DateTime selectedDate = DateTime.now();
  final dateTimeController = TextEditingController();
  final genderController = TextEditingController();

  bool _acceptterms = false;
  String accept = '0';

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
      dateTimeController.text = selectedDate.toString();
      dateTimeController.text = DateFormat('yyyy-MM-dd').format(selectedDate);
    }
  }

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
        print(state.errorMessage);
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
                    suffixIcon: InkWell(
                        onTap: () => _selectDate(context),
                        child: const Icon(Icons.date_range_outlined)),
                    icon: Icons.lock,
                    hintText: 'Enter date',
                    controller: dateTimeController,
                    validator: (String) {
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextFieldWidget(
                    controller: genderController,
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
                  Row(
                    children: [
                      SizedBox(
                        height: 22.h,
                        child: CustomCheckbox(
                          value: _acceptterms,
                          onChanged: (bool newValue) {
                            setState(() {
                              _acceptterms = newValue;
                            });

                            accept = (_acceptterms) ? '1' : '0';
                          },
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'Do you accept all the terms and conditions',
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(
                              (0xff888888),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  accept == '0'
                      ? const SizedBox()
                      : GeneralEelevatedButton(
                          text: 'Sign Up',
                          onPresssed: () async {
                            if (_formKey.currentState!.validate()) {
                              final val = await signUpProvider
                                  .signUp(
                                      ugender: genderController.text,
                                      context,
                                      name: nameController.text,
                                      dateofb: dateTimeController.text,
                                      phone: phoneController.text,
                                      email: emailController.text,
                                      passsword: passwordController.text,
                                      password_confirmation:
                                          confirmPasswordController.text,
                                      country_code: 'NP',
                                      username: usernameController.text,
                                      accept_terms: int.tryParse(accept)!,
                                      accept_marketing_offers: 1)
                                  .whenComplete(() async {
                                showAlertDialog(context);
                              }).onError(
                                (error, stackTrace) {
                                  return Text('Fill up the ');
                                },
                              );
                            }
                          },
                        ),
                  SizedBox(
                    height: 40.h,
                  ),
                  RichTextWidget(
                    title: 'Already have an account? ',
                    subtitle: 'Log In',
                    onPressed: () {
                      Navigator.pop(context);
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
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ));
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Congeatulation"),
    content: Text("Your account has been created"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
