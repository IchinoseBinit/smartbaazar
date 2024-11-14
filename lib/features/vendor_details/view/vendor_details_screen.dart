import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/auth/widgets/general_text_field_widget.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/vendor_details/api/change_password_api.dart';
import 'package:smartbazar/features/vendor_details/api/verify_vendor_account_api.dart';
import 'package:smartbazar/features/vendor_details/widgets/account_details_widget.dart';
import 'package:smartbazar/features/vendor_details/widgets/background_image_description_widgt.dart';
import 'package:smartbazar/features/vendor_details/widgets/bank_details_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class VendroDetailsScreen extends ConsumerStatefulWidget {
  const VendroDetailsScreen({super.key});

  @override
  ConsumerState<VendroDetailsScreen> createState() =>
      _VendroDetailsScreenState();
}

class _VendroDetailsScreenState extends ConsumerState<VendroDetailsScreen> {
  String? vendorName;
  @override
  void initState() {
    super.initState();
    _loadUserName(); // Load user name from SharedPreferences
  }

  Future<void> _loadUserName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      vendorName = prefs.getString('userName');
    });
  }

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
                      '$vendorName',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff000000),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const AddToCartScreen()));
                      },
                      child: Container(
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
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                // const PhotoAvatarContainerWidget(),
                // SizedBox(
                //   height: 16.h,
                // ),
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
                const ChangePasswordWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class VerifyAccountWidget extends ConsumerStatefulWidget {
  const VerifyAccountWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<VerifyAccountWidget> createState() => _VerifyAccountWidgetState();
}

class _VerifyAccountWidgetState extends ConsumerState<VerifyAccountWidget> {
  File? panVatFile;
  File? taxCertificateFile;
  File? registerCertificateFile;
  bool _isLoading = false;

  final ImagePicker _picker = ImagePicker();

  Future<void> _pickFile(String docType) async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        switch (docType) {
          case 'PAN':
            panVatFile = File(pickedFile.path);
            break;
          case 'Tax':
            taxCertificateFile = File(pickedFile.path);
            break;
          case 'Register':
            registerCertificateFile = File(pickedFile.path);
            break;
        }
      });
    }
  }

  Future<void> _verifyAccount() async {
    if (panVatFile == null ||
        taxCertificateFile == null ||
        registerCertificateFile == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please add all required documents')),
      );
      return;
    }

    setState(() => _isLoading = true);

    // Expecting a String? as the success message
    final message = await ref.read(verifyVendorAccountProvider(
      panVatFile!,
      taxCertificateFile!,
      registerCertificateFile!,
    ).future);

    setState(() => _isLoading = false);

    if (message != null) {
      // Clear the files to reset image containers upon success
      setState(() {
        panVatFile = null;
        taxCertificateFile = null;
        registerCertificateFile = null;
      });

      // Show the success message from API response
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to submit verification.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(bottom: 18.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(width: 1, color: const Color(0xffADADAD)),
      ),
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
          const Divider(color: Color(0xffADADAD)),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 45.w, top: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    VerifyAccountPhotoContainer(
                      title: 'PAN',
                      onTap: () => _pickFile('PAN'),
                      selectedFile: panVatFile,
                    ),
                    VerifyAccountPhotoContainer(
                      title: 'Tax Certificate',
                      onTap: () => _pickFile('Tax'),
                      selectedFile: taxCertificateFile,
                    ),
                    VerifyAccountPhotoContainer(
                      title: 'Register Certificate',
                      onTap: () => _pickFile('Register'),
                      selectedFile: registerCertificateFile,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 12.w),
            child: GeneralTextButton(
              marginH: 0,
              height: 25.h,
              width: 100.w,
              fgColor: Colors.white,
              isSmallText: true,
              title: 'Update',
              onPressed: _isLoading ? null : _verifyAccount,
              bgColor: const Color(0xff362677),
            ),
          ),
        ],
      ),
    );
  }
}

class VerifyAccountPhotoContainer extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final File? selectedFile;

  const VerifyAccountPhotoContainer({
    Key? key,
    required this.title,
    required this.onTap,
    this.selectedFile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 75.h,
            width: 95.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(width: 1, color: const Color(0xffADADAD)),
            ),
            child: Center(
              child: selectedFile != null
                  ? Image.file(selectedFile!, fit: BoxFit.cover)
                  : Text(
                      'Add Photo',
                      style: TextStyle(
                          fontSize: 10.sp,
                          color: const Color(0xff888888),
                          fontWeight: FontWeight.w700),
                    ),
            ),
          ),
          const SizedBox(height: 5),
          Text(title,
              style: const TextStyle(
                  color: Color(0xff888888),
                  fontSize: 10,
                  fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }
}
// Import the generated API file

class ChangePasswordWidget extends ConsumerStatefulWidget {
  const ChangePasswordWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<ChangePasswordWidget> createState() => _ChangePasswordWidgetState();
}

class _ChangePasswordWidgetState extends ConsumerState<ChangePasswordWidget> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool termsAccepted = false;
  bool marketingAccepted = false;
  String? userId, email, userName;

  @override
  void initState() {
    super.initState();
    _loadUserId();
  }

  Future<void> _loadUserId() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      userId = prefs.getString('userId');
      email = prefs.getString('userEmail');
      userName = prefs.getString('userName');
    });
  }

  Future<void> _changePassword() async {
    if (_formKey.currentState!.validate()) {
      final password = _passwordController.text;
      final confirmPassword = _confirmPasswordController.text;
print(">>>>>>>>>>>>>>>>>>>>$userId: ,$email,$userName",);
      if (userId != null) {
        try {
          final result = await ref.read(changePasswordProvider(
                  password, confirmPassword, userId!, email!, userName!)
              .future);
              // print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>$result");
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Password updated successfully!')),
          );
          _clearFields();
        } catch (e) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error: $e')),
          );
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('User ID not available.')),
        );
      }
    }
  }

  void _clearFields() {
    _passwordController.clear();
    _confirmPasswordController.clear();
    setState(() {
      termsAccepted = false;
      marketingAccepted = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(bottom: 18.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(width: 1, color: const Color(0xffADADAD)),
      ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 17.h, left: 12.w),
              child: Text(
                'Change Password',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
            SizedBox(height: 10.h),
            const Divider(color: Color(0xffADADAD)),
            Padding(
              padding: EdgeInsets.only(left: 10.w, right: 45.w, top: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextFieldWidget(
                    controller: _passwordController,
                    obscureText: true,
                    fill: true,
                    fillColor: const Color(0xffF3F3F3),
                    icon: Icons.person,
                    suffixIcon:
                        const Icon(Icons.visibility, color: Color(0xffADADAD)),
                    hintText: 'New Password',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your new password';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10.2.h,
                  ),
                  CustomTextFieldWidget(
                    controller: _confirmPasswordController,
                    obscureText: true,
                    icon: Icons.person,
                    // decoration: const InputDecoration(
                    hintText: 'Confirm Password',
                    fillColor: const Color(0xffF3F3F3),
                    fill: true,

                    suffixIcon:
                        const Icon(Icons.visibility, color: Color(0xffADADAD)),
                    // ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Confirm your password';
                      }
                      if (value != _passwordController.text) {
                        return 'Passwords do not match';
                      }
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
                        CheckboxListTile(
                          title: Text(
                            'I have read and agree to the Terms & Conditions',
                            style: TextStyle(fontSize: 14.sp),
                          ),
                          value: termsAccepted,
                          activeColor: const Color(0xff362677),
                          onChanged: (bool? newValue) {
                            setState(() {
                              termsAccepted = newValue ?? false;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: Text(
                            'I accept to receive marketing emails, SMS, and notifications',
                            style: TextStyle(fontSize: 14.sp),
                          ),
                          value: marketingAccepted,
                          activeColor: const Color(0xff362677),
                          onChanged: (bool? newValue) {
                            setState(() {
                              marketingAccepted = newValue ?? false;
                            });
                          },
                        ),
                      ],
                    ),
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
                    onPressed: _changePassword,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
