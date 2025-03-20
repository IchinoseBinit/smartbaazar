import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartbazar/features/auth/widgets/general_text_field_widget.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/order_details/model/street_address_model.dart';
import 'package:smartbazar/features/vendor_details/api/update_user_details_api.dart';
import 'package:smartbazar/features/vendor_details/api/user_data_api.dart';
import 'package:smartbazar/features/vendor_details/model/user_data_model.dart';
import 'package:smartbazar/features/order_details/api/street_address_api.dart';

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
  late TextEditingController _bioController;
  String? description;
  String? userId;
  bool isLoading = false;
  bool _isInitialized = false;
  List<StreetAddressModel> selectedbranchLocations = [];
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
    _bioController = TextEditingController(text: '');
  }

  void _onBranchLocationsUpdated(List<StreetAddressModel> locations) {
    setState(() {
      selectedbranchLocations = locations;
      selectedbranchLocations = locations.map((location) {
        return StreetAddressModel(
          description: location.description,
          latitude: location.latitude,
          longitude: location.longitude,
          placeId: location.placeId,
        );
      }).toList();

      // branchLocationsData = locationMaps;

      // Update controllers with descriptions
      branchControllers = locations.map((location) {
        return TextEditingController(text: location.description);
      }).toList();
      print('Updated Branch Controllers: $branchControllers');
      print('Updated Selected Branch Locations: $selectedbranchLocations');
      // Print coordinates for verification
      // print('Updated Locations:');
      // locations.asMap().forEach((index, location) {
      //   print('Index $index: ${location.latitude}, ${location.longitude}');
      // });
    });
  }

  // Load userId from SharedPreferences
  Future<void> _loadUserId() async {
    final prefs = await SharedPreferences.getInstance();
    userId = prefs.getString('userId');
  }

  void _setInitialValues(UserData? userData) {
    if (userData != null && !_isInitialized) {
      setState(() {
        _fullNameController.text = userData.name ?? '';
        _phoneNumberController.text = userData.phone ?? '';
        _emailController.text = userData.email ?? '';
        _userNameController.text = userData.username ?? '';
        _genderController.text = userData.genderId ?? '';
        _bioController.text = userData.bio ?? '';
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
          selectedbranchLocations.clear();

          // Add new controllers
          if (branchLocations != null) {
            for (var location in branchLocations) {
              TextEditingController controller =
                  TextEditingController(text: location['location']);
              branchControllers.add(controller);

              // Initialize with actual latitude and longitude values
              selectedbranchLocations.add(StreetAddressModel(
                description: location['location'] ?? '',
                latitude: double.parse(location['latitude']) ?? 0.0,
                longitude: double.parse(location['longitude']) ?? 0.0,
                placeId: location['placeId'] ?? '',
              ));
            }
          }
        });
        if (branchLocations != null) {
          List<String> branchLocationsText = branchLocations.map((location) {
            return location['location'] as String;
          }).toList();
        }
        // branchControllers.clear();

        // // Parse branch locations
        // if (userData.branchLocation != null) {
        //   List<dynamic> branchLocations =
        //       jsonDecode(userData.branchLocation ?? '');
        //   for (var location in branchLocations) {
        //     TextEditingController controller = TextEditingController(
        //       text: location['location'] ?? '',
        //     );
        //     branchControllers.add(controller);
        //   }
        // } else {
        //   // If no branch locations, add at least one empty controller
        //   branchControllers.add(TextEditingController());
        // }

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

  void _addBranchField() {
    setState(() {
      branchControllers.add(TextEditingController());
      selectedbranchLocations.add(const StreetAddressModel(
        description: '',
        latitude: 0.0,
        longitude: 0.0,
        placeId: '',
      ));
    });
  }

  void _removeBranchField(int index) {
    setState(() {
      branchControllers.removeAt(index);
      selectedbranchLocations.removeAt(index);
    });
  }

  void _submitUpdate() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print('Selected Branch Locations: $selectedbranchLocations');

      final updatedData = UserData(
        name: _fullNameController.text,
        phone: _phoneNumberController.text,
        email: _emailController.text,
        username: _userNameController.text,
        genderId: _genderController.text,
        bio: _bioController.text,

        //  usersLocation: jsonEncode({'location': _branchController.text}),
      );
      if (userId != null) {
        List<Map<String, dynamic>> branchLocationsData = selectedbranchLocations
            .map((location) => {
                  'location': location.description,
                  'latitude': location.latitude.toString(),
                  'longitude': location.longitude.toString(),
                })
            .toList();
        print('Selected Branch Locations: $selectedbranchLocations');

// Then in your updateUserDetailsProvider call:

        // List<String> branchLocations = branchControllers
        //     .map((controller) => controller.text)
        //     .toList()
        //     .where((location) => location.isNotEmpty)
        //     .toList();

        List<String> dayNames = openingHours.keys.toList();
        List<String> from = [];
        List<String> to = [];
        List<bool> closed = [];

        for (int i = 0; i < dayNames.length; i++) {
          from.add(openingHours[dayNames[i]]!['from'] ?? '');
          to.add(openingHours[dayNames[i]]!['to'] ?? '');
          closed.add(openingHours[dayNames[i]]!['closed']);
        }

        _updateUserDetails(
          updatedData,
          branchLocationsData,
          dayNames,
          from,
          to,
          closed,
        );
      } else {
        // Handle error: userId not available
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('User ID not available.')),
        );
      }
    }
  }

  Future<void> _updateUserDetails(
    UserData data,
    List<Map<String, dynamic>> branchLocations,
    List<String> day,
    List<String> fromList,
    List<String> toList,
    List<bool> closed,
  ) async {
    setState(() {
      isLoading = true;
    });
    try {
      final updateUserDetail = await ref.read(updateUserDetailsProvider(
        data.name ?? '',
        data.phone ?? '',
        data.username ?? '',
        data.email ?? '',
        userId ?? '',
        data.genderId ?? '',
        branchLocations,
        // branchControllers.isEmpty || branchControllers == null
        //     ? branchLocations
        //     : branchControllers.map((controller) => controller.text).toList(),

        data.bio ?? '',
        day,
        fromList,
        toList,
        closed,
        // openingHours.keys.toList(),
        // openingHours.values.map((v) => v['from']).toList().cast<String>(),
        // openingHours.values.map((v) => v['to']).toList().cast<String>(),
        // openingHours.values.map((v) => v['closed']).toList().cast<bool>(),

        // description,
        //  dob!,
      ).future);
      print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>$updateUserDetail");

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
        // branchControllers.clear();
        //branchControllers = [TextEditingController()];
        _bioController.clear();
        description = '';
        // dayNames = [];
        // from = [];
        // to = [];
        // closed = [];
      });
      if (branchLocations.isNotEmpty) {
        setState(() {
          branchControllers.clear();
          for (var location in branchLocations) {
            String locationDescription = location['location'] ?? '';
            branchControllers
                .add(TextEditingController(text: locationDescription));
          }
        });
      } else {
        setState(() {
          branchControllers.clear();
          branchControllers.add(TextEditingController());
        });
      }

      _formKey.currentState?.reset();
    } catch (error) {
      // Display error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
          error.toString(),
        )),
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

            // String branchLocations = data.data!.first.branchLocation!;
            // List<String> branchLocationsText = branchLocations.map((location) {
            //   return location['location']
            //       as String; // Assuming each location is a Map with a 'location' key
            // }).toList();
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
                                Padding(
                                  padding: const EdgeInsets.only(left: 3),
                                  child: Text(
                                    'Gender',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
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

                          BranchWidget(
                            branchControllers: branchControllers,
                            addBranchField: _addBranchField,
                            removeBranchField: _removeBranchField,
                            onBranchLocationsUpdated: (value) {
                              _onBranchLocationsUpdated(value);
                            },
                            initialBranchLocations: selectedbranchLocations,
                          ),

                          SizedBox(height: 10.2.h),
                          SizedBox(
                            height: 350.h,
                            child:
                                OpeningHoursWidget(openingHours: openingHours),
                          ),

                          SizedBox(height: 10.2.h),
                          TextFormField(
                            style: TextStyle(
                              fontSize: 12.sp,
                            ),
                            controller: _bioController,
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
                              _bioController.text = value;
                            },
                            validator: (value) {
                              // if (value == null || value.isEmpty) {
                              //   return 'Please enter a description';
                              // }
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
                            // onPressed: () {
                            //   // print('pinky ${branchControllers}');
                            // },
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
          error: (error, stackTrace) => const Text('Please login again'),
        );
  }
}

class BranchWidget extends StatefulWidget {
  final List<TextEditingController> branchControllers;
  final Function(int) removeBranchField;
  final Function() addBranchField;
  final Function(List<StreetAddressModel>)? onBranchLocationsUpdated;
  final List<StreetAddressModel> initialBranchLocations;
  const BranchWidget({
    Key? key,
    required this.branchControllers,
    required this.removeBranchField,
    required this.addBranchField,
    required this.onBranchLocationsUpdated,
    required this.initialBranchLocations,
  }) : super(key: key);

  @override
  State<BranchWidget> createState() => _BranchWidgetState();
}

class _BranchWidgetState extends State<BranchWidget> {
  List<SellerLocationFieldWidget> locationWidgets = [];
  List<StreetAddressModel> branchLocations = [];
  @override
  void initState() {
    super.initState();
    if (widget.branchControllers.isEmpty) {
      widget.branchControllers.add(TextEditingController()); // Ensure one field
    }
    initializeLocationWidgets();
  }

  void initializeLocationWidgets() {
    branchLocations = widget.initialBranchLocations;

    locationWidgets = widget.branchControllers.asMap().entries.map((entry) {
      int index = entry.key;
      TextEditingController controller = entry.value;
      return SellerLocationFieldWidget(
        streetController: controller,
        initialLocation:
            branchLocations.length > index ? branchLocations[index] : null,
        onSelected: (selectedLocation) {
          setState(() {
            if (index < branchLocations.length) {
              branchLocations[index] = selectedLocation;
            } else {
              branchLocations.add(selectedLocation);
            }
          });
          widget.onBranchLocationsUpdated!(branchLocations);
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        widget.branchControllers.length,
        (index) => Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: locationWidgets.length > index
                      ? locationWidgets[index]
                      : SellerLocationFieldWidget(
                          streetController: widget.branchControllers[index],
                          onSelected: (selectedLocation) {
                            int currentIndex = widget.branchControllers
                                .indexOf(widget.branchControllers[index]);
                            if (currentIndex >= 0 &&
                                currentIndex < branchLocations.length) {
                              setState(() {
                                branchLocations[currentIndex] =
                                    selectedLocation;
                              });
                              widget.onBranchLocationsUpdated!(branchLocations);
                            }
                          },
                        ),
                ),
                SizedBox(width: 10.w),
                if (index == 0)
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFADADAD)),
                    ),
                    child: GestureDetector(
                      onTap: widget.addBranchField,
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(Icons.add_circle, color: Color(0xFF362677)),
                      ),
                    ),
                  )
                else if (index == widget.branchControllers.length)
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFADADAD)),
                    ),
                    child: GestureDetector(
                      onTap: widget.addBranchField,
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(Icons.add_circle, color: Color(0xFF362677)),
                      ),
                    ),
                  )
                else if (index > 0) ...[
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFADADAD)),
                    ),
                    child: GestureDetector(
                      onTap: widget.addBranchField,
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(Icons.add_circle, color: Color(0xFF362677)),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFADADAD)),
                    ),
                    child: GestureDetector(
                      onTap: () => widget.removeBranchField(index),
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(Icons.delete, color: Colors.black),
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
    );
  }
}

class SellerLocationFieldWidget extends ConsumerStatefulWidget {
  const SellerLocationFieldWidget({
    super.key,
    this.onSelected,
    required this.streetController,
    this.initialLocation,
  });
  final Function(StreetAddressModel)? onSelected;
  final TextEditingController streetController;
  final StreetAddressModel? initialLocation;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SellerLocationFieldWidgetState();
}

class _SellerLocationFieldWidgetState
    extends ConsumerState<SellerLocationFieldWidget> {
  String query = '';
  bool showSuggestions = false;
  StreetAddressModel? selectedLocation;
  @override
  void initState() {
    super.initState();
    selectedLocation = widget.initialLocation;
    if (selectedLocation != null) {
      widget.streetController.text = selectedLocation!.description;
    }
  }

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
          onTap: () {
            setState(() {
              showSuggestions = true;
              query = widget.streetController.text;
            });
          },
          onChanged: (value) {
            if (showSuggestions) {
              setState(() {
                query = value;
              });
            }
          },
        ),
        const SizedBox(height: 10),
        if (showSuggestions && query.isNotEmpty)
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
                          //   print("kala ${widget.streetController.text}");
                          setState(() {
                            widget.streetController.text = address.description;
                            selectedLocation = address;
                            query = ''; // Clear the query to hide suggestions
                            showSuggestions = false;
                            print('>>>>>>>>>>>>>>>>address$address');
                            widget.onSelected!(address);
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
