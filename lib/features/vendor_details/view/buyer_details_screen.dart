import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/auth/widgets/general_text_field_widget.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/vendor_details/api/update_user_details_api.dart';
import 'package:smartbazar/features/vendor_details/api/user_data_api.dart';
import 'package:smartbazar/features/vendor_details/model/user_data_model.dart';
import 'package:smartbazar/features/vendor_details/view/vendor_details_screen.dart';
import 'package:smartbazar/features/vendor_details/widgets/background_image_description_widgt.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class BuyerDetailsScreen extends ConsumerStatefulWidget {
  const BuyerDetailsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BuyerDetailsScreenState();
}

class _BuyerDetailsScreenState extends ConsumerState<BuyerDetailsScreen> {
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
                const BuyerAccountDetailsWidget(),
                // SizedBox(
                //   height: 16.h,
                // ),

                // const VerifyAccountWidget(),
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

class BuyerAccountDetailsWidget extends ConsumerStatefulWidget {
  const BuyerAccountDetailsWidget({super.key});

  @override
  ConsumerState<BuyerAccountDetailsWidget> createState() =>
      _BuyerAccountDetailsWidgetState();
}

class _BuyerAccountDetailsWidgetState
    extends ConsumerState<BuyerAccountDetailsWidget> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _fullNameController;
  late TextEditingController _phoneNumberController;
  late TextEditingController _emailController;
  late TextEditingController _userNameController;
  late TextEditingController _genderController;
  late TextEditingController _branchController;
  // String? fullName, phoneNumber, email, userName, genderID;

  String? userId; // Updated to nullable type since we are loading it
  bool isLoading = false;
  Map<String, bool> fieldEdited = {};

  @override
void initState() {
  super.initState();
  
  WidgetsBinding.instance.addPostFrameCallback((_) {
    WidgetsBinding.instance.ensureVisualUpdate();
    _initializeControllers();
    
    // Initialize controllers here
    _fullNameController = TextEditingController();
    _phoneNumberController = TextEditingController();
    _emailController = TextEditingController();
    _userNameController = TextEditingController();
    _genderController = TextEditingController();
    _branchController = TextEditingController();
  });
}


  // Load userId from SharedPreferences
  Future<void> _loadUserId() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      userId =
          prefs.getString('userId'); // Fetch userId from shared preferences
    });
  }

  Future<void> _initializeControllers() async {
    final userData = ref.watch(getUserDetailsProvider);
    userData.when(
      data: (data) {
        setState(() {
          final usersLocation =
              jsonDecode(data.data!.first.usersLocation ?? '{}');
          final location = usersLocation['location'];
          _fullNameController.text = data.data!.first.name ?? '';
          _phoneNumberController.text = data.data!.first.phone ?? '';
          _emailController.text = data.data!.first.email ?? '';
          _userNameController.text = data.data!.first.username ?? '';
          _genderController.text = data.data!.first.genderId ?? '';
          _branchController.text = location ?? '';
        });
        print('Controllers Initialized:');
        print('Name: ${_fullNameController.text}');
        print('Phone: ${_phoneNumberController.text}');
        print('Username: ${_userNameController.text}');
      },
      loading: () => print('Loading user details...'),
      error: (error, stackTrace) => print('Error loading user details: $error'),
    );
  }

  void _submitUpdate(UserData data) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      if (userId != null) {
        _updateUserDetails(data); // Call update method if userId is available
      } else {
        // Handle error: userId not available
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('User ID not available.')),
        );
      }
    }
  }

  Future<void> _updateUserDetails(UserData data) async {
    setState(() {
      isLoading = true;
    });
    try {
      final branchLocation = jsonDecode(data.usersLocation ?? '');
      final location = branchLocation['location'];
      final updateBuyerUserDetail =
          await ref.read(updateBuyerUserDetailsProvider(
        _fullNameController.text,
        _phoneNumberController.text,
        _userNameController.text,
        _emailController.text,
        userId ?? '',
        _genderController.text,
        _branchController.text,
        // openingHours,
        // description,
        //  dob!,
      ).future);

      // Display success message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('User details updated successfully!')),
      );
      setState(() {
        _fullNameController.clear();
        _phoneNumberController.clear();
        _emailController.clear();
        _userNameController.clear();
        _genderController.clear();
        _branchController.clear();
        userId = null;
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
      _genderController.text =
          value ?? ''; // value will be '1' for Male and '2' for Female
    });
  }

  @override
  Widget build(BuildContext context) {
    final asyncUserDetails = ref.watch(getUserDetailsProvider);

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(bottom: 18.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(width: 1, color: const Color(0xffADADAD)),
      ),
      child: asyncUserDetails.when(
        data: (data) {
          return Form(
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
                              groupValue: _genderController.text ?? '',
                              onChanged: _updateGender,
                              fillColor: WidgetStateProperty.all(
                                  const Color(0xff362677)),
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
                              groupValue: _genderController.text ?? '',
                              onChanged: _updateGender,
                              fillColor: WidgetStateProperty.all(
                                  const Color(0xff362677)),
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
                              groupValue: _genderController.text ?? '',
                              onChanged: _updateGender,
                              fillColor: WidgetStateProperty.all(
                                  const Color(0xff362677)),
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
                        controller: _fullNameController,
                        fill: true,
                        fillColor: const Color(0xFFF6F2F2),
                        icon: Icons.person,
                        textInputType: TextInputAction.next,
                        hintText: '',
                        // hintText: 'Name',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter your name';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10.2.h),
                      CustomTextFieldWidget(
                        controller: _phoneNumberController,
                        fill: true,
                        fillColor: const Color(0xFFF6F2F2),
                        icon: Icons.call,
                        hintText: "Phone Number",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter your phone number';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10.2.h),
                      CustomTextFieldWidget(
                        controller: _emailController,
                        fill: true,
                        fillColor: const Color(0xFFF6F2F2),
                        icon: Icons.mail,
                        hintText: "Email",
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
                        controller: _userNameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter your username';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10.2.h),

                      // CustomTextFieldWidget(
                      //   fill: true,
                      //   fillColor: const Color(0xFFF6F2F2),
                      //   // fillColor: const Color(0xFFF3F3F3),
                      //   icon: Icons.location_on,
                      //   textInputType: TextInputAction.next,
                      //   hintText: (() {
                      //     try {
                      //       // Decode the usersLocation JSON string
                      //       final usersLocation = jsonDecode(
                      //           data.data!.first.usersLocation ?? '');
                      //       return usersLocation['location'] ?? "Your Location";
                      //     } catch (e) {
                      //       return "Your Location"; // Fallback in case of an error
                      //     }
                      //   })(),

                      //   iconColor: Colors.red,
                      //   validator: (value) {
                      //     // if (value == null || value.isEmpty) {
                      //     //   return 'Enter your  Location",';
                      //     // }
                      //     return null;
                      //   },
                      // ),
                      CustomTextFieldWidget(
                        controller: _branchController,
                        fill: true,
                        fillColor: const Color(0xFFF6F2F2),
                        icon: Icons.location_on,
                        hintText: "Your Location",
                        iconColor: Colors.red,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter your location';
                          }
                          return null;
                        },
                      ),

                      SizedBox(height: 10.2.h),

                      SizedBox(height: 10.h),
                      GeneralTextButton(
                        marginH: 0,
                        height: 25.h,
                        width: 100.w,
                        title: 'Update',
                        fgColor: Colors.white,
                        bgColor: const Color(0xff362677),
                        isSmallText: true,
                        onPressed: () => _submitUpdate(data.data!.first),
                        // onPressed: isLoading ? null : _submitUpdate(asyncUserDetails),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(
          child: Text('Error loading checkout details: $error'),
        ),
      ),
    );
  }
}
