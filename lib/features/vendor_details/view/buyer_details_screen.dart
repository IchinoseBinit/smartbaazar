import 'dart:async';
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
import 'package:smartbazar/features/order_details/api/street_address_api.dart';
import 'package:smartbazar/features/vendor_details/api/update_user_details_api.dart';
import 'package:smartbazar/features/vendor_details/api/user_data_api.dart';
import 'package:smartbazar/features/vendor_details/model/user_data_model.dart';
import 'package:smartbazar/features/vendor_details/view/vendor_details_screen.dart';
import 'package:smartbazar/features/vendor_details/widgets/background_image_description_widgt.dart';

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
    getuser(); // Load user name from SharedPreferences
  }


 Future<void> getuser() async {
  SharedPreferences prfs = await SharedPreferences.getInstance();
  setState(() {
    vendorName = prfs.getString("name");
  });
  print("ramu $vendorName");
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
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
  UserData? userData;
  String? userId;
  bool isLoading = false;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _initControllers();
    _loadUserId();
  }

  void _initControllers() {
    _fullNameController = TextEditingController(text: '');
    _phoneNumberController = TextEditingController(text: '');
    _emailController = TextEditingController(text: '');
    _userNameController = TextEditingController(text: '');
    _genderController = TextEditingController(text: '');
    _branchController = TextEditingController(text: '');
  }

  void _setInitialValues(UserData? userData) {
    if (userData != null && !_isInitialized) {
      setState(() {
        _fullNameController.text = userData.name ?? '';
        _phoneNumberController.text = userData.phone ?? '';
        _emailController.text = userData.email ?? '';
        _userNameController.text = userData.username ?? '';
        _genderController.text = userData.genderId ?? '';
        _branchController.text = userData.usersLocation != null
            ? jsonDecode(userData.usersLocation!)['location'] ?? ''
            : '';
        _isInitialized = true;
      });
    }
  }

  // Load userId from SharedPreferences
  Future<void> _loadUserId() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      userId = prefs.getString('userId');
    });
  }

  @override
  void dispose() {
    _fullNameController.dispose();
    _phoneNumberController.dispose();
    _emailController.dispose();
    _userNameController.dispose();
    _genderController.dispose();
    _branchController.dispose();
    super.dispose();
  }

  void _submitUpdate(UserData data) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final updatedData = UserData(
        name: _fullNameController.text,
        phone: _phoneNumberController.text,
        email: _emailController.text,
        username: _userNameController.text,
        genderId: _genderController.text,
        usersLocation: jsonEncode({'location': _branchController.text}),
      );
      if (userId != null) {
        _updateUserDetails(
            updatedData); // Call update method if userId is available
      } else {
        // Handle error: userId not available
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('User ID not available.')),
        );
      }
    }
  }

  void updateStreet(String street) {
    setState(() {
      _branchController.text = street;
    });
  }

  Future<void> _updateUserDetails(UserData data) async {
    setState(() {
      isLoading = true;
    });
    try {
      final updateBuyerUserDetail =
          await ref.read(updateBuyerUserDetailsProvider(
            
        data.name ?? '',
        data.phone ?? '',
        data.username ?? '',
        data.email ?? '',
        userId ?? '',
        data.genderId ?? '',
        jsonDecode(data.usersLocation ?? '{}')['location'] ?? '',
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
        _isInitialized = false;
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
    //  final asyncUserDetails = ref.watch(getUserDetailsProvider);

    return ref.watch(getUserDetailsProvider).when(
          data: (data) {
            if (data.data == null || data.data!.isEmpty) {
              return const Center(child: CircularProgressIndicator());
            }
            final userData = data.data!.first;
            _setInitialValues(userData);
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
                      padding:
                          EdgeInsets.only(left: 10.w, right: 10.w, top: 20.h),
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
                            onChanged: (newValue) {
                              setState(() {
                                _fullNameController.text = newValue;
                              });
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
                            onChanged: (newValue) {
                              setState(() {
                                _phoneNumberController.text = newValue;
                              });
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
                            onChanged: (newValue) {
                              setState(() {
                                _emailController.text = newValue;
                              });
                            },
                          ),
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
                            onChanged: (newValue) {
                              setState(() {
                                _userNameController.text = newValue;
                              });
                            },
                          ),
                          SizedBox(height: 10.2.h),

                          // CustomTextFieldWidget(
                          //   controller: _branchController,
                          //   fill: true,
                          //   fillColor: const Color(0xFFF6F2F2),
                          //   icon: Icons.location_on,
                          //   hintText: "Your Location",
                          //   iconColor: Colors.red,
                          //   validator: (value) {
                          //     if (value == null || value.isEmpty) {
                          //       return 'Enter your location';
                          //     }
                          //     return null;
                          //   },
                          //   onChanged: (newValue) {
                          //     setState(() {
                          //       _branchController.text = newValue;
                          //     });
                          //   },
                          // ),
                          LocationFieldWidget(
                            onSelected: updateStreet,
                            streetController: _branchController,
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
              ),
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stackTrace) => const Text('Please login again'),
        );
  }
}

class LocationFieldWidget extends ConsumerStatefulWidget {
  const LocationFieldWidget({
    super.key,
    this.onSelected,
    required this.streetController,
  });
  final Function(String)? onSelected;
  final TextEditingController streetController;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _LocationFieldWidgetState();
}

class _LocationFieldWidgetState extends ConsumerState<LocationFieldWidget> {
  String query = '';

  @override
  Widget build(BuildContext context) {
    final streetSuggestionsAsync = ref.watch(getStreetAddressProvider(query));
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          textInputAction: TextInputAction.next,
          controller: widget.streetController,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 10),
            hintText: "Your Location",
            hintStyle: TextStyle(
              color: const Color(0xffADADAD),
              fontSize: 14.sp,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.r),
            ),
            filled: true,
            fillColor: const Color.fromARGB(255, 241, 234, 234),
            prefixIcon: Padding(
              padding: EdgeInsets.only(
                  right: 11.w, left: 10.w, top: 5.h, bottom: 5.h),
              child: Container(
                height: 50,
                width: 52,
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 11.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color(0xffAEC5FF),
                ),
                child: const Icon(
                  Icons.location_on,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          onChanged: (value) {
            setState(() {
              query = value; // Update query when text changes
            });
          },
        ),
        const SizedBox(height: 10),
        if (query.isNotEmpty)
          streetSuggestionsAsync.when(
            data: (addresses) {
              if (addresses.isEmpty) {
                return const Text('No street address found.');
              }

              return Flexible(
                fit: FlexFit.loose,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: addresses.length,
                  itemBuilder: (context, index) {
                    final address = addresses[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                      child: ListTile(
                        title: Text(
                          address.description,
                          style: TextStyle(fontSize: 12.sp),
                        ),
                        onTap: () {
                          widget.streetController.text = address.description;
                          setState(() {
                            query = ''; // Clear the query to hide suggestions

                            widget.onSelected!(address.description);
                          });
                        },
                      ),
                    );
                  },
                ),
              );
            },
            loading: () => const CircularProgressIndicator(),
            error: (error, stackTrace) => const Text('Please login again'),
          ),
      ],
    );
  }
}
