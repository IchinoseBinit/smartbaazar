import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartbazar/features/auth/widgets/general_text_field_widget.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/vendor_details/api/update_user_details_api.dart';
import 'package:smartbazar/features/vendor_details/api/user_data_api.dart';
import 'package:smartbazar/features/vendor_details/model/user_data_model.dart';

class AccountDetailsWidget extends ConsumerStatefulWidget {
  const AccountDetailsWidget({super.key});

  @override
  ConsumerState<AccountDetailsWidget> createState() =>
      _AccountDetailsWidgetState();
}

class _AccountDetailsWidgetState extends ConsumerState<AccountDetailsWidget> {
  final _formKey = GlobalKey<FormState>();

  UserData? userData;
  late TextEditingController _fullNameController;
  late TextEditingController _phoneNumberController;
  late TextEditingController _emailController;
  late TextEditingController _userNameController;
  late TextEditingController _genderController;
  String? description;
  String? userId;
  bool isLoading = false;
  bool _isInitialized = false;
  late List<TextEditingController> branchControllers;
  final Map<String, Map<String, dynamic>> openingHours = {
    'Sun': {'from': null, 'to': null, 'closed': false},
    'Mon': {'from': null, 'to': null, 'closed': false},
    'Tues': {'from': null, 'to': null, 'closed': false},
    'Wed': {'from': null, 'to': null, 'closed': false},
    'Thurs': {'from': null, 'to': null, 'closed': false},
    'Fri': {'from': null, 'to': null, 'closed': false},
    'Sat': {'from': null, 'to': null, 'closed': false},
  };
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
    branchControllers = [TextEditingController()];
    // _branchController = TextEditingController(text: '');
  }

  // Load userId from SharedPreferences
  Future<void> _loadUserId() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      userId = prefs.getString('userId');
    });
  }

  void _setInitialValues(UserData? userData) {
    if (userData != null && !_isInitialized) {
      setState(() {
        _fullNameController.text = userData.name ?? '';
        _phoneNumberController.text = userData.phone ?? '';
        _emailController.text = userData.email ?? '';
        _userNameController.text = userData.username ?? '';
        _genderController.text = userData.genderId ?? '';
        description = userData.about ?? '';
        _isInitialized = true;
        // Parse branch locations
        List<Map<String, dynamic>>? branchLocations;
        if (userData.branchLocation != null) {
          try {
            final decodedData = json.decode(userData.branchLocation!);
            if (decodedData is List) {
              branchLocations = decodedData.cast<Map<String, dynamic>>();
            } else {
              print(
                  'Error: Expected a List but got ${decodedData.runtimeType}');
            }
          } catch (e) {
            print('Error parsing branch locations: $e');
          }
        } else {
          branchLocations = [];
        }
        // Clear existing controllers
        setState(() {
          branchControllers.clear();

          // Add new controllers
          for (var i = 0; i < branchLocations!.length; i++) {
            TextEditingController controller =
                TextEditingController(text: branchLocations[i]['location']);
            branchControllers.add(controller);
          }
        });
        List<String> branchLocationsText = branchLocations!.map((location) {
          return location['location'] as String;
        }).toList();

        // Parse opening hours
        if (userData.openingHours != null) {
          List<dynamic> openingHoursData =
              jsonDecode(userData.openingHours ?? '');
          for (var hour in openingHoursData) {
            String day = hour['day'];
            openingHours[day]!['from'] = hour['from'];
            openingHours[day]!['to'] = hour['to'];
            openingHours[day]!['closed'] = hour['closed'];
          }
        }
      });
    }
  }

  void _fetchInitialData() async {
    final userDataAsync = ref.watch(getUserDetailsProvider);

    userDataAsync.when(
      data: (data) {
        setState(() {
          userData = data.data?.first;
          _setInitialValues(userData!);
        });
      },
      error: (error, stackTrace) {
        print('Error loading user details: $error');
      },
      loading: () {
        print('Loading user details...');
      },
    );
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
      final updatedData = UserData(
        name: _fullNameController.text,
        phone: _phoneNumberController.text,
        email: _emailController.text,
        username: _userNameController.text,
        genderId: _genderController.text,
        // usersLocation: jsonEncode({'location': _branchController.text}),
      );
      if (userId != null) {
        _updateUserDetails(updatedData);
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
      List<String> branchLocations =
          branchControllers.map((controller) => controller.text).toList();

      List<String> dayNames = openingHours.keys.toList();
      List<String> from = [];
      List<String> to = [];
      List<bool> closed = [];

      for (int i = 0; i < dayNames.length; i++) {
        from.add(openingHours[dayNames[i]]!['from'] ?? '');
        to.add(openingHours[dayNames[i]]!['to'] ?? '');
        closed.add(openingHours[dayNames[i]]!['closed']);
      }

      final updateUserDetail = await ref.read(updateUserDetailsProvider(
        data.name ?? '',
        data.phone ?? '',
        data.username ?? '',
        data.email ?? '',
        userId ?? '',
        data.genderId ?? '',
        branchLocations,
        description!,

        openingHours.keys.toList(),
        openingHours.values.map((v) => v['from']).toList().cast<String>(),
        openingHours.values.map((v) => v['to']).toList().cast<String>(),
        openingHours.values.map((v) => v['closed']).toList().cast<bool>(),

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
        branchControllers.clear();
        description = '';
        // dayNames = [];
        // from = [];
        // to = [];
        // closed = [];
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
      _genderController.text = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(getUserDetailsProvider).when(
          data: (data) {
            if (data.data == null || data.data!.isEmpty) {
              return const Center(child: CircularProgressIndicator());
            }
            final userData = data.data!.first;
            _setInitialValues(userData);

            List<dynamic> branchLocations =
                jsonDecode(data.data!.first.branchLocation!);
            List<String> branchLocationsText = branchLocations.map((location) {
              return location['location']
                  as String; // Assuming each location is a Map with a 'location' key
            }).toList();
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
                            hintTextColor: Colors.black,
                            textInputType: TextInputAction.next,
                            onChanged: (newValue) {
                              setState(() {
                                _phoneNumberController.text = newValue;
                              });
                            },
                            validator: (value) {
                              // if (value == null || value.isEmpty) {
                              //   return 'Enter your phone number';
                              // }
                              return null;
                            },
                          ),
                          SizedBox(height: 10.2.h),
                          CustomTextFieldWidget(
                            controller: _emailController,
                            fill: true,
                            fillColor: const Color(0xFFF6F2F2),
                            icon: Icons.mail,
                            textInputType: TextInputAction.next,
                            hintText: "Email",
                            hintTextColor: Colors.black,
                            onChanged: (newValue) {
                              setState(() {
                                _emailController.text = newValue;
                              });
                            },
                            validator: (value) {
                              // if (value == null || value.isEmpty) {
                              //   return 'Enter your email';
                              // }
                              return null;
                            },
                          ),

                          SizedBox(height: 10.2.h),
                          CustomTextFieldWidget(
                            controller: _userNameController,
                            fill: true,
                            fillColor: const Color(0xFFF6F2F2),
                            icon: Icons.person_outline,
                            textInputType: TextInputAction.next,
                            hintText: "User Name",
                            hintTextColor: Colors.black,
                            onChanged: (newValue) {
                              setState(() {
                                _userNameController.text = newValue;
                              });
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter your username';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 10.2.h),

                          // ...List.generate(
                          //   branchControllers.length,
                          //   (index) => Column(
                          //     children: [
                          //       Row(
                          //         children: [
                          //           Expanded(
                          //             child: CustomTextFieldWidget(
                          //               fill: true,
                          //               fillColor: const Color(0xFFF6F2F2),
                          //               icon: Icons.location_on,
                          //               iconColor: Colors.red,
                          //               textInputType: TextInputAction.next,
                          //               hintText: index == 0
                          //                   ? data.data!.first.branchLocation ??
                          //                       "Primary Branch Location"
                          //                   : "Additional Branch Location",
                          //               controller: branchControllers[index],
                          //               validator: (value) {
                          //                 if (value == null || value.isEmpty) {
                          //                   return 'Enter branch location';
                          //                 }
                          //                 return null;
                          //               },
                          //             ),
                          //           ),
                          //           SizedBox(width: 10.w),
                          //           if (index == 0)
                          //             Container(
                          //               decoration: BoxDecoration(
                          //                 border: Border.all(
                          //                     color: const Color(0xFFADADAD)),
                          //               ),
                          //               child: GestureDetector(
                          //                 onTap: _addBranchField,
                          //                 child: const Padding(
                          //                   padding: EdgeInsets.all(
                          //                       4.0), // Adjust padding to control the gap
                          //                   child: Icon(Icons.add_circle,
                          //                       color: Color(0xFF362677)),
                          //                 ),
                          //               ),
                          //             )
                          //           else ...[
                          //             Container(
                          //               decoration: BoxDecoration(
                          //                 border: Border.all(
                          //                     color: const Color(0xFFADADAD)),
                          //               ),
                          //               child: GestureDetector(
                          //                 onTap: _addBranchField,
                          //                 child: const Padding(
                          //                   padding: EdgeInsets.all(
                          //                       4.0), // Adjust padding to control the gap
                          //                   child: Icon(Icons.add_circle,
                          //                       color: Color(0xFF362677)),
                          //                 ),
                          //               ),
                          //             ),
                          //             SizedBox(width: 10.w),
                          //             Container(
                          //               decoration: BoxDecoration(
                          //                 border: Border.all(
                          //                     color: const Color(0xFFADADAD)),
                          //               ),
                          //               child: GestureDetector(
                          //                 onTap: () => _removeBranchField(index),
                          //                 child: const Padding(
                          //                   padding: EdgeInsets.all(4.0),
                          //                   child: Icon(Icons.delete,
                          //                       color: Colors.black),
                          //                 ),
                          //               ),
                          //             ),
                          //           ],
                          //         ],
                          //       ),
                          //       SizedBox(height: 10.2.h),
                          //     ],
                          //   ),
                          // ),
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
                                        hintText: 'Your Location',
                                        // hintText: branchLocationsText.isNotEmpty
                                        //     ? branchLocationsText[index]
                                        //     : 'Your Location',
                                        hintTextColor: Colors.black,
                                        controller: branchControllers[index],
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Enter branch location';
                                          }
                                          print(branchLocationsText[index]);

                                          return null;
                                        },
                                      ),
                                    ),
                                    SizedBox(width: 10.w),
                                    if (index == branchControllers.length - 1)
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xFFADADAD)),
                                        ),
                                        child: GestureDetector(
                                          onTap: _addBranchField,
                                          child: const Padding(
                                            padding: EdgeInsets.all(4.0),
                                            child: Icon(Icons.add_circle,
                                                color: Color(0xFF362677)),
                                          ),
                                        ),
                                      )
                                    else if (index > 0) ...[
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xFFADADAD)),
                                        ),
                                        child: GestureDetector(
                                          onTap: _addBranchField,
                                          child: const Padding(
                                            padding: EdgeInsets.all(4.0),
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
                                          onTap: () =>
                                              _removeBranchField(index),
                                          child: const Padding(
                                            padding: EdgeInsets.all(4.0),
                                            child: Icon(Icons.delete,
                                                color: Colors.black),
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

                          SizedBox(height: 10.2.h),
                          SizedBox(
                            height: 350.h,
                            child:
                                OpeningHoursWidget(openingHours: openingHours),
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
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stackTrace) => Text('Error: $error'),
        );
  }
}

class OpeningHoursWidget extends StatefulWidget {
  const OpeningHoursWidget({super.key, required this.openingHours});
  final Map<String, Map<String, dynamic>> openingHours;
  @override
  State<OpeningHoursWidget> createState() => _OpeningHoursWidgetState();
}

class _OpeningHoursWidgetState extends State<OpeningHoursWidget> {
  final List<String> timeSlots = List.generate(
      96,
      (index) =>
          '${(index ~/ 4).toString().padLeft(2, '0')}:${(index % 4) * 15} ${index < 48 ? 'AM' : 'PM'}');

  @override
  Widget build(BuildContext context) {
    // print(openingHours.keys);
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 10.w,
            ),
            Icon(
              Icons.watch_later_outlined,
              size: 28.sp,
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              "Opening Hours",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Spacer(
                flex: 1,
              ),
              Text(
                "From",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 60.w,
              ),
              Text(
                "To",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ),

        // ListView Section
        Expanded(
          child: ListView.builder(
            itemCount: widget.openingHours.keys.length,
            itemBuilder: (context, index) {
              String day = widget.openingHours.keys.elementAt(index);
              bool closed = widget.openingHours[day]!['closed'];
              return Row(
                children: [
                  Expanded(
                      child: Text(
                    day,
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                  )),
                  if (!closed)
                    Expanded(
                      child: Container(
                        height: 20.h,
                        padding: EdgeInsets.symmetric(horizontal: 1.w),
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(width: 1, color: Colors.black12),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            isExpanded: false,
                            alignment: AlignmentDirectional.centerEnd,
                            value: widget.openingHours[day]!['from'],
                            onChanged: (value) {
                              setState(() {
                                widget.openingHours[day]!['from'] = value;
                              });
                            },
                            items: timeSlots
                                .map((time) => DropdownMenuItem(
                                      alignment: Alignment.center,
                                      value: time,
                                      child: Padding(
                                        padding: EdgeInsets.zero,
                                        child: Text(time,
                                            style: TextStyle(fontSize: 10.sp)),
                                      ),
                                    ))
                                .toList(),
                            menuMaxHeight: 300.h,
                          ),
                        ),
                      ),
                    ),
                  if (!closed) SizedBox(width: 10.w),
                  if (!closed)
                    Expanded(
                      child: Container(
                        height: 20.h,
                        padding: EdgeInsets.symmetric(horizontal: 1.w),
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(width: 1, color: Colors.black12),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: widget.openingHours[day]!['to'],
                            onChanged: (value) {
                              setState(() {
                                widget.openingHours[day]!['to'] = value;
                              });
                            },
                            items: timeSlots
                                .map((time) => DropdownMenuItem(
                                      alignment: Alignment.center,
                                      value: time,
                                      child: Padding(
                                        padding: EdgeInsets.zero,
                                        child: Text(time,
                                            style: TextStyle(fontSize: 10.sp)),
                                      ),
                                    ))
                                .toList(),
                            menuMaxHeight: 300.h,
                          ),
                        ),
                      ),
                    ),
                  Checkbox(
                    value: closed,
                    onChanged: (value) {
                      setState(() {
                        widget.openingHours[day]!['closed'] = value!;
                        if (value) {
                          widget.openingHours[day]!['from'] = null;
                          widget.openingHours[day]!['to'] = null;
                        }
                      });
                    },
                  ),
                  Text(
                    "Closed",
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
