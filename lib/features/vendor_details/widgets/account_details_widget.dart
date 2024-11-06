import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartbazar/features/auth/widgets/general_text_field_widget.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/vendor_details/api/update_user_details_api.dart';

class AccountDetailsWidget extends ConsumerStatefulWidget {
  const AccountDetailsWidget({super.key});

  @override
  ConsumerState<AccountDetailsWidget> createState() =>
      _AccountDetailsWidgetState();
}

class _AccountDetailsWidgetState extends ConsumerState<AccountDetailsWidget> {
  final _formKey = GlobalKey<FormState>();

  String? fullName, phoneNumber, email, userName, genderID;
  String? userId; // Updated to nullable type since we are loading it
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadUserId(); // Load userId when widget initializes
  }

  // Load userId from SharedPreferences
  Future<void> _loadUserId() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      userId =
          prefs.getString('userId'); // Fetch userId from shared preferences
    });
  }

  void _submitUpdate() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      if (userId != null) {
        _updateUserDetails(); // Call update method if userId is available
      } else {
        // Handle error: userId not available
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('User ID not available.')),
        );
      }
    }
  }

  Future<void> _updateUserDetails() async {
    setState(() {
      isLoading = true;
    });
    try {
      final updateUserDetail = await ref.read(updateUserDetailsProvider(
        fullName!,
        phoneNumber!,
        userName!,
        email!,
        userId!,
        genderID!,
      ).future);

      // Display success message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('User details updated successfully!')),
      );
      setState(() {
        fullName = '';
        phoneNumber = '';
        email = '';
        userName = '';
        genderID = null; // Reset gender selection
      });
      _formKey.currentState?.reset();
    } catch (error) {
      // Display error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $error')),
      );
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  // Method to update genderID based on user selection
  void _updateGender(String? value) {
    setState(() {
      genderID = value; // value will be '1' for Male and '2' for Female
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
                'Account Details',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            const Divider(color: Color(0xffADADAD)),
            Padding(
              padding: EdgeInsets.only(left: 10.w, right: 45.w, top: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Gender Selection Radio Buttons
                  Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Gender',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Radio<String>(
                          value: '1', // Male
                          groupValue: genderID,
                          onChanged: _updateGender,
                          fillColor:
                              WidgetStateProperty.all(const Color(0xff362677)),
                        ),
                        const Text('Male'),
                        Radio<String>(
                          value: '2', // Female
                          groupValue: genderID,
                          onChanged: _updateGender,
                          fillColor:
                              WidgetStateProperty.all(const Color(0xff362677)),
                        ),
                        const Text('Female'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  CustomTextFieldWidget(
                    fill: true,
                    fillColor: const Color(0xffF3F3F3),
                    icon: Icons.person,
                    hintText: "Name",
                    onChanged: (value) => fullName = value,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your name';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10.2.h),
                  CustomTextFieldWidget(
                    fill: true,
                    fillColor: const Color(0xffF3F3F3),
                    icon: Icons.call,
                    hintText: "Phone Number",
                    onChanged: (value) => phoneNumber = value,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your phone number';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10.2.h),
                  CustomTextFieldWidget(
                    fill: true,
                    fillColor: const Color(0xffF3F3F3),
                    icon: Icons.mail,
                    hintText: "Email",
                    onChanged: (value) => email = value,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10.2.h),
                  CustomTextFieldWidget(
                    fill: true,
                    fillColor: const Color(0xffF3F3F3),
                    icon: Icons.person_outline,
                    hintText: "User Name",
                    onChanged: (value) => userName = value,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your username';
                      }
                      return null;
                    },
                  ),

                  SizedBox(height: 10.h),
                  GeneralTextButton(
                    marginH: 0,
                    height: 25.h,
                    width: 100.w,
                    title: 'Update',
                    fgColor: Colors.white,
                    bgColor: const Color(0xff362677),
                    isSmallText: true,
                    onPressed: isLoading ? null : _submitUpdate,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
