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

  String? fullName,
      phoneNumber,
      email,
      userName,
      genderID,
      //  dob,
      openingHours,
      bio,
      description;
  String? userId; // Updated to nullable type since we are loading it
  bool isLoading = false;

  List<TextEditingController> branchControllers = [TextEditingController()];

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

  void _addBranchField() {
    setState(() {
      branchControllers.add(TextEditingController());
    });
  }

  void _removeBranchField(int index) {
    setState(() {
      branchControllers.removeAt(index);
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
      //  bio,
        // branchControllers,
        // openingHours,
        // description,
        //  dob!,
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
        //  dob = '';
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
              padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Gender Selection Radio Buttons
                  Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.min,
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
                        Text(
                          'Male',
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Radio<String>(
                          value: '2', // Female
                          groupValue: genderID,
                          onChanged: _updateGender,
                          fillColor:
                              WidgetStateProperty.all(const Color(0xff362677)),
                        ),
                        Text(
                          'Female',
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Radio<String>(
                          value: '3', // Others
                          groupValue: genderID,
                          onChanged: _updateGender,
                          fillColor:
                              WidgetStateProperty.all(const Color(0xff362677)),
                        ),
                        Text(
                          'Others',
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  CustomTextFieldWidget(
                    fill: true,
                    fillColor: const Color(0xFFF6F2F2),
                    icon: Icons.person,
                    textInputType: TextInputAction.next,
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
                    fillColor: const Color(0xFFF6F2F2),
                    icon: Icons.call,
                    hintText: "Phone Number",
                    textInputType: TextInputAction.next,
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
                    fillColor: const Color(0xFFF6F2F2),
                    icon: Icons.mail,
                    textInputType: TextInputAction.next,
                    hintText: "Email",
                    onChanged: (value) => email = value,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your email';
                      }
                      return null;
                    },
                  ),
                  // SizedBox(height: 10.2.h),
                  // CustomTextFieldWidget(
                  //   fill: true,
                  //   fillColor: const Color(0xffF3F3F3),
                  //   icon: Icons.calendar_today,
                  //   hintText: "Date of Birth",
                  //   onChanged: (value) => dob = value,
                  //   validator: (value) {
                  //     if (value == null || value.isEmpty) {
                  //       return 'Enter your date of birth';
                  //     }
                  //     return null;
                  //   },
                  // ),
                  SizedBox(height: 10.2.h),
                  CustomTextFieldWidget(
                    fill: true,
                    fillColor: const Color(0xFFF6F2F2),
                    icon: Icons.person_outline,
                    textInputType: TextInputAction.next,
                    hintText: "User Name",
                    onChanged: (value) => userName = value,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your username';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10.2.h),

                  ...List.generate(
                    branchControllers.length,
                    (index) => Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: CustomTextFieldWidget(
                                fill: true,
                                fillColor: const Color(0xFFF6F2F2),
                                icon: Icons.location_on,
                                iconColor: Colors.red,
                                textInputType: TextInputAction.next,
                                hintText: "Branch Location ",
                                controller: branchControllers[index],
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Enter branch location';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            SizedBox(width: 10.w),
                            // if (index == branchControllers.length - 1)
                            //   IconButton(
                            //     onPressed: _addBranchField,
                            //     icon: const Icon(Icons.add_circle,
                            //         color: Colors.green),
                            //   ),
                            // IconButton(
                            //   onPressed: () {
                            //     _removeBranchField(index);
                            //   },
                            //   icon: const Icon(Icons.remove_circle,
                            //       color: Colors.red),
                            // ),
                            if (index == 0)
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xFFADADAD)),
                                ),
                                child: GestureDetector(
                                  onTap: _addBranchField,
                                  child: const Padding(
                                    padding: EdgeInsets.all(
                                        4.0), // Adjust padding to control the gap
                                    child: Icon(Icons.add_circle,
                                        color: Color(0xFF362677)),
                                  ),
                                ),
                              )
                            else ...[
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xFFADADAD)),
                                ),
                                child: GestureDetector(
                                  onTap: _addBranchField,
                                  child: const Padding(
                                    padding: EdgeInsets.all(
                                        4.0), // Adjust padding to control the gap
                                    child: Icon(Icons.add_circle,
                                        color: Color(0xFF362677)),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xFFADADAD)),
                                ),
                                child: GestureDetector(
                                  onTap: () => _removeBranchField(index),
                                  child: const Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child:
                                        Icon(Icons.delete, color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ],
                        ),
                        SizedBox(height: 10.2.h),
                      ],
                    ),
                  ),
                  // SizedBox(width: 10.w),
                  // Container(
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(8.r),
                  //       border: Border.all(
                  //         width: 1,
                  //         color: const Color(0xFFADADAD),
                  //       ),
                  //     ),
                  //     child: IconButton(
                  //         onPressed: () {},
                  //         icon: const Icon(Icons.add_circle))),
                  SizedBox(height: 10.2.h),
                  CustomTextFieldWidget(
                    fill: true,
                    fillColor: const Color(0xFFF6F2F2),
                    // fillColor: const Color(0xFFF3F3F3),
                    icon: Icons.watch_later_outlined,
                    textInputType: TextInputAction.next,
                    hintText: "Opening Hours",
                    onChanged: (value) => openingHours = value,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your opening hours';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10.2.h),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Write in your bio...',
                      hintStyle: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFFADADAD)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    maxLines: 5,
                    keyboardType: TextInputType.multiline,
                    textInputAction: TextInputAction.done,
                    onChanged: (value) {
                      description = value;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a description';
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
