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
                  SizedBox(
                    height: 350.h,
                    child: const OpeningHoursWidget(),
                  ),
                  // CustomTextFieldWidget(
                  //   fill: true,
                  //   fillColor: const Color(0xFFF6F2F2),
                  //   // fillColor: const Color(0xFFF3F3F3),
                  //   icon: Icons.watch_later_outlined,
                  //   textInputType: TextInputAction.next,
                  //   hintText: "Opening Hours",
                  //   onChanged: (value) => openingHours = value,
                  //   validator: (value) {
                  //     if (value == null || value.isEmpty) {
                  //       return 'Enter your opening hours';
                  //     }
                  //     return null;
                  //   },
                  // ),

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

class OpeningHoursWidget extends StatefulWidget {
  const OpeningHoursWidget({super.key});
  @override
  State<OpeningHoursWidget> createState() => _OpeningHoursWidgetState();
}

class _OpeningHoursWidgetState extends State<OpeningHoursWidget> {
  final List<String> timeSlots = List.generate(
      96,
      (index) =>
          '${(index ~/ 4).toString().padLeft(2, '0')}:${(index % 4) * 15} ${index < 48 ? 'AM' : 'PM'}');

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
  Widget build(BuildContext context) {
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
            itemCount: openingHours.keys.length,
            itemBuilder: (context, index) {
              String day = openingHours.keys.elementAt(index);
              return Row(
                children: [
                  Expanded(
                      child: Text(
                    day,
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                  )),
                  if (!openingHours[day]!['closed'])
                    Expanded(
                      child: Container(
                        height: 20.h,
                        padding: const EdgeInsets.symmetric(horizontal: 1.0),
                        margin: const EdgeInsets.symmetric(horizontal: 1.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border:
                                Border.all(width: 1, color: Colors.black12)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            isExpanded: false,
                            alignment: AlignmentDirectional.centerEnd,
                            value: openingHours[day]!['from'],
                            // hint: Text(
                            //   'From',
                            //   style: TextStyle(fontSize: 12.sp),
                            // ),
                            onChanged: (value) {
                              setState(() {
                                openingHours[day]!['from'] = value;
                              });
                            },
                            items: timeSlots
                                .map((time) => DropdownMenuItem(
                                      alignment: Alignment.center,
                                      value: time,
                                      child: Padding(
                                        padding: EdgeInsets.zero,
                                        child: Text(
                                          time,
                                          style: TextStyle(fontSize: 10.sp),
                                        ),
                                      ),
                                    ))
                                .toList(),
                            menuMaxHeight: 300.h,
                          ),
                        ),
                      ),
                    ),
                  if (!openingHours[day]!['closed'])
                    SizedBox(
                      width: 10.w,
                    ),
                  if (!openingHours[day]!['closed'])
                    Expanded(
                      child: Container(
                        height: 20.h,
                        padding: const EdgeInsets.symmetric(horizontal: 1.0),
                        margin: const EdgeInsets.symmetric(horizontal: 1.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border:
                                Border.all(width: 1, color: Colors.black12)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: openingHours[day]!['to'],
                            // hint: Text(
                            //   'To',
                            //   style: TextStyle(fontSize: 12.sp),
                            // ),
                            onChanged: (value) {
                              setState(() {
                                openingHours[day]!['to'] = value;
                              });
                            },
                            items: timeSlots
                                .map((time) => DropdownMenuItem(
                                      alignment: Alignment.center,
                                      value: time,
                                      child: Padding(
                                        padding: EdgeInsets.zero,
                                        child: Text(
                                          time,
                                          style: TextStyle(fontSize: 10.sp),
                                        ),
                                      ),
                                    ))
                                .toList(),
                            menuMaxHeight: 300.h,
                          ),
                        ),
                      ),
                    ),
                  Checkbox(
                    value: openingHours[day]!['closed'],
                    onChanged: (value) {
                      setState(() {
                        openingHours[day]!['closed'] = value!;
                        if (value) {
                          openingHours[day]!['from'] = null;
                          openingHours[day]!['to'] = null;
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
