import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/auth/widgets/custom_check_box_widgt.dart';
import 'package:smartbazar/features/auth/widgets/custom_drop_down_widget.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/create_listing/api/get_dropdown_value_api.dart';
import 'package:smartbazar/features/create_listing/model/dropdown_value_model.dart';
import 'package:smartbazar/features/create_listing/view/create_new_listing_screen.dart';
import 'package:smartbazar/features/create_listing/widget/create_listing_card_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class UpdateListing extends StatefulWidget {
  const UpdateListing({super.key});

  @override
  State<UpdateListing> createState() => _UpdateListingState();
}

class _UpdateListingState extends State<UpdateListing> {
  TypeList? dropdownvalue; // Updated to hold the selected TypeList object
  bool _isChecked = false;

  List<TypeList> typeListItems =
      []; // This will store the list of types fetched from API

  @override
  void initState() {
    super.initState();
    _fetchTypeList(); // Fetch the types when the widget is initialized
  }

  Future<void> _fetchTypeList() async {
    try {
      NewListingRepository repository = NewListingRepository();
      List<TypeList> fetchedTypes = await repository.fetchTypeList();
      setState(() {
        typeListItems = fetchedTypes;
      });
    } catch (e) {
      // Handle error, maybe show a message to the user
      print('Failed to load types: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F1F1),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.mic),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        'Update My Listing',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Text('Go back',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff888888))),
                      )
                    ],
                  ),
                ),
                const Divider(
                  thickness: 2,
                  color: Color(0xffD9D9D9),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      GeneralTextButton(
                          marginH: 0,
                          width: MediaQuery.of(context).size.width / 2.2,
                          prefixIcon: Icons.camera,
                          prefixColor: Colors.white,
                          bgColor: const Color(0xffADADAD),
                          borderColor: const Color(0xffADADAD),
                          fgColor: Colors.white,
                          title: 'Update Photos'),
                      SizedBox(
                        width: 10.w,
                      ),
                      GeneralTextButton(
                          marginH: 0,
                          width: MediaQuery.of(context).size.width / 2.2,
                          prefixIcon: Icons.check_circle,
                          prefixColor: Colors.white,
                          bgColor: const Color(0xff2ECC71),
                          borderColor: const Color(0xff2ECC71),
                          fgColor: Colors.white,
                          title: 'Update Photos'),
                    ],
                  ),
                ),
                CreateListingCardWidget(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Type',
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Text(
                            ' *',
                            style: TextStyle(
                                color: const Color(0xffD33636),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp),
                          )
                        ],
                      ),
                      const Spacer(),
                      CustomDropdownButton(
                        items: typeListItems,
                        dropdownValue: dropdownvalue,
                        onChanged: (TypeList? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                        getItemLabel: (TypeList item) => item.typeName,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CreateListingCardWidget(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Category',
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Text(
                            ' *',
                            style: TextStyle(
                                color: const Color(0xffD33636),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp),
                          )
                        ],
                      ),
                      const Spacer(),
                      CustomDropdownButton(
                        items: typeListItems,
                        dropdownValue: dropdownvalue,
                        onChanged: (TypeList? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                        getItemLabel: (TypeList item) => item.typeName,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CreateListingCardWidget(
                    child: Row(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Title',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Text(
                          ' *',
                          style: TextStyle(
                              color: const Color(0xffD33636),
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp),
                        )
                      ],
                    ),
                    const Spacer(),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'Listing Tile',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: const Color(0xffADADAD))),
                      ),
                    ),
                  ],
                )),
                SizedBox(
                  height: 10.h,
                ),
                CreateListingCardWidget(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Text(
                          ' *',
                          style: TextStyle(
                              color: const Color(0xffD33636),
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    TextField(
                      decoration: InputDecoration.collapsed(
                          hintText: 'Describe what makes your listing unique',
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                              color: const Color(0xffADADAD))),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                )),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 10.h,
                ),
                const ReturnPolicyCardWidget(),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Text(
                      'Packaged Product Dimension',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    const Spacer(),
                    CustomCheckbox(
                      value: _isChecked,
                      onChanged: (bool newValue) {
                        setState(() {
                          _isChecked = newValue;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Hyper Delivery',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(
                            (0xff888888),
                          )),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                CreateListingCardWidget(
                    child: Row(
                  children: [
                    // Text(
                    //   'Length(cm)',
                    //   style: TextStyle(
                    //       fontWeight: FontWeight.w500,
                    //       fontSize: 16.sp,
                    //       color: Colors.black),
                    // ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Length(cm)',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Text(
                          ' *',
                          style: TextStyle(
                              color: const Color(0xffD33636),
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp),
                        )
                      ],
                    ),
                    const Spacer(),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'Lenght in cm',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: const Color(0xffADADAD))),
                      ),
                    ),
                  ],
                )),
                SizedBox(
                  height: 10.h,
                ),
                CreateListingCardWidget(
                    child: Row(
                  children: [
                    // Text(
                    //   'Width (cm)',
                    //   style: TextStyle(
                    //       fontWeight: FontWeight.w500,
                    //       fontSize: 16.sp,
                    //       color: Colors.black),
                    // ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Width (cm)',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Text(
                          ' *',
                          style: TextStyle(
                              color: const Color(0xffD33636),
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp),
                        )
                      ],
                    ),

                    const Spacer(),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'Width in cm',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: const Color(0xffADADAD))),
                      ),
                    ),
                  ],
                )),
                SizedBox(
                  height: 10.h,
                ),
                CreateListingCardWidget(
                    child: Row(
                  children: [
                    Text(
                      'Height (cm)',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: Colors.black),
                    ),
                    const Spacer(),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'Height in cm',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: const Color(0xffADADAD))),
                      ),
                    ),
                  ],
                )),
                SizedBox(
                  height: 10.h,
                ),
                CreateListingCardWidget(
                    child: Row(
                  children: [
                    Text(
                      'Weight (cm)',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: Colors.black),
                    ),
                    const Spacer(),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'Weight in KG',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: const Color(0xffADADAD))),
                      ),
                    ),
                  ],
                )),
                SizedBox(
                  height: 10.w,
                ),
                CreateListingCardWidget(
                    child: Row(
                  children: [
                    Text(
                      'City',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: Colors.black),
                    ),
                    const Spacer(),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'Select  a city',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: const Color(0xffADADAD))),
                      ),
                    ),
                  ],
                )),
                SizedBox(
                  height: 10.h,
                ),
                CreateListingCardWidget(
                    child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "Tags",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: Colors.black),
                    ),
                    const Spacer(),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
                      decoration: BoxDecoration(
                          color: const Color(0xffEDECEC),
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                              width: 1.w, color: const Color(0xff888888))),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.close,
                            color: Color(0xff888888),
                          ),
                          Text('Acer')
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
                      decoration: BoxDecoration(
                          color: const Color(0xffEDECEC),
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                              width: 1.w, color: const Color(0xff888888))),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.close,
                            color: Color(0xff888888),
                          ),
                          Text('Black')
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
                      decoration: BoxDecoration(
                          color: const Color(0xffEDECEC),
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                              width: 1.w, color: const Color(0xff888888))),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.close,
                            color: Color(0xff888888),
                          ),
                          Text('Laptop')
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                  ],
                )),
                SizedBox(
                  height: 15.h,
                ),
                const SellerInformationWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
