import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/custom_check_box_widgt.dart';
import 'package:smartbazar/features/auth/widgets/custom_drop_down_widget.dart';
import 'package:smartbazar/features/auth/widgets/general_elevated_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/create_listing/api/get_dropdown_value_api.dart';
import 'package:smartbazar/features/create_listing/model/dropdown_value_model.dart';
import 'package:smartbazar/features/create_listing/view/SellerInformationWidget.dart';
import 'package:smartbazar/features/create_listing/widget/create_listing_card_widget.dart';
import 'package:smartbazar/features/order_details/model/shipping_cities_model.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';
import 'package:smartbazar/features/vendor/view/model/my_listing_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UpdateListing extends StatefulWidget {
  final Product? prod;
  const UpdateListing({super.key, required this.prod});

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
    if (kDebugMode) {
      print("kalu ${widget.prod}");
    }
    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F1F1),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Row(
                  children: [
                    const Icon(Icons.edit_square),
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
                      title: 'Update Photos',
                      isSmallText: true,
                    ),
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
                      title: 'Update Photos',
                      isSmallText: true,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 7.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                          Expanded(
                            child: CustomDropdownButton(
                              items: typeListItems,
                              dropdownValue: dropdownvalue,
                              onChanged: (TypeList? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              },
                              getItemLabel: (TypeList item) => item.typeName,
                            ),
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
                          Expanded(
                            child: CustomDropdownButton(
                              items: typeListItems,
                              dropdownValue: dropdownvalue,
                              onChanged: (TypeList? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              },
                              getItemLabel: (TypeList item) => item.typeName,
                            ),
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
                              hintText:
                                  'Describe what makes your listing unique',
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
                    // SizedBox(
                    //   height: 10.h,
                    // ),
                    // SizedBox(
                    //   height: 10.h,
                    // ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const ReturnPolicyCardWidget(),
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
                              'Trending',
                              style: TextStyle(
                                  fontSize: 14.sp,
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
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                        ),
                      ],
                    )),
                    CreateListingCardWidget(
                        child: Row(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Available Stock',
                              style: TextStyle(
                                  fontSize: 14.sp,
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
                            controller: null,
                            decoration: InputDecoration.collapsed(
                                hintText: 'Available Qty',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color: const Color(0xffADADAD))),
                          ),
                        ),
                      ],
                    )),
                    CreateListingCardWidget(
                        child: Row(
                      children: [
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          'Price',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              color: Colors.black),
                        ),
                        Text(
                          '*',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 40.w,
                        ),
                        Expanded(
                          child: TextField(
                            controller: null,
                            decoration: InputDecoration.collapsed(
                                hintText: 'RS xxxxx',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color: const Color(0xffADADAD))),
                          ),
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 12.h),
                          decoration: BoxDecoration(
                              color: const Color(0xffEDECEC),
                              borderRadius: BorderRadius.circular(10.r)),
                          child: Column(
                            children: [
                              CustomCheckbox(
                                  value: false, onChanged: (value) {}),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                'Negotiable',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff888888),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                    CreateListingCardWidget(
                        child: Row(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Old price',
                              style: TextStyle(
                                  fontSize: 14.sp,
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
                            controller: null,
                            decoration: InputDecoration.collapsed(
                                hintText: 'Enter discount',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color: const Color(0xffADADAD))),
                          ),
                        ),
                      ],
                    )),
                    CreateListingCardWidget(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Offer',
                                style: TextStyle(
                                    fontSize: 14.sp,
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
                            width: 10.w,
                          ),
                          Expanded(
                            // Wrap the dropdown in Expanded to constrain its width
                            child: CustomDropdownButton<CityList>(
                              items: const [],
                              dropdownValue: null,
                              onChanged: (newValue) {
                                setState(() {
                                  // selectedCity = newValue;
                                });
                              },
                              getItemLabel: (CityList item) => item.name,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CreateListingCardWidget(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Story Display Days',
                                style: TextStyle(
                                    fontSize: 14.sp,
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
                            width: 10.w,
                          ),
                          Expanded(
                            // Wrap the dropdown in Expanded to constrain its width
                            child: CustomDropdownButton<CityList>(
                              items: const [],
                              dropdownValue: null,
                              onChanged: (newValue) {
                                setState(() {
                                  // selectedCity = newValue;
                                });
                              },
                              getItemLabel: (CityList item) => item.name,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CreateListingCardWidget(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Delivery Options',
                                style: TextStyle(
                                    fontSize: 14.sp,
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
                            width: 10.w,
                          ),
                          Expanded(
                            // Wrap the dropdown in Expanded to constrain its width
                            child: CustomDropdownButton<CityList>(
                              items: const [],
                              dropdownValue: null,
                              onChanged: (newValue) {
                                setState(() {
                                  // selectedCity = newValue;
                                });
                              },
                              getItemLabel: (CityList item) => item.name,
                            ),
                          ),
                        ],
                      ),
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 5.w, vertical: 3.h),
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 5.w, vertical: 3.h),
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 5.w, vertical: 3.h),
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
                    CreateListingCardWidget(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Min orders',
                                style: TextStyle(
                                    fontSize: 14.sp,
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
                            width: 10.w,
                          ),
                          Expanded(
                            // Wrap the dropdown in Expanded to constrain its width
                            child: CustomDropdownButton<CityList>(
                              items: const [],
                              dropdownValue: null,
                              onChanged: (newValue) {
                                setState(() {
                                  // selectedCity = newValue;
                                });
                              },
                              getItemLabel: (CityList item) => item.name,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      decoration: BoxDecoration(
                          color: ColorConstant.whiteColor,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: ColorConstant.grayColor, width: 2)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Discount on Bulk Order !",
                            style: headerstyle.copyWith(
                                color: ColorConstant.blackColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          // const bulk_discount_widget()
                        ],
                      ),
                    ),
                    CreateListingCardWidget(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Payment options',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(width: 140.w),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CustomCheckbox(
                                        value: false,
                                        onChanged: (value) {
                                          setState(() {
                                            // _isDamge = value;
                                          });
                                        }),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Cash',
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                Row(
                                  children: [
                                    CustomCheckbox(
                                        value: false,
                                        onChanged: (value) {
                                          setState(() {
                                            // _isDamge = value;
                                          });
                                        }),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Cheque',
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                Row(
                                  children: [
                                    CustomCheckbox(
                                        value: false,
                                        onChanged: (value) {
                                          setState(() {
                                            // _isDamge = value;
                                          });
                                        }),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'QR',
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                Row(
                                  children: [
                                    CustomCheckbox(
                                        value: false,
                                        onChanged: (value) {
                                          setState(() {
                                            // _isDamge = value;
                                          });
                                        }),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Bank',
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    CreateListingCardWidget(
                        child: Row(
                      children: [
                        Text(
                          'payment Info',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 40.w,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration.collapsed(
                                hintText: 'payment info/Policy',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp,
                                    color: const Color(0xffADADAD))),
                          ),
                        ),
                      ],
                    )),
                    CreateListingCardWidget(
                        child: Row(
                      children: [
                        Text(
                          'Policy',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 40.w,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration.collapsed(
                                hintText: 'Enter your policy',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp,
                                    color: const Color(0xffADADAD))),
                          ),
                        ),
                      ],
                    )),
                    CreateListingCardWidget(
                        child: Row(
                      children: [
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          'Email',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          '*',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              color: Colors.black),
                        ),
                        const Spacer(),
                        Expanded(
                          child: TextField(
                            controller: null,
                            decoration: InputDecoration.collapsed(
                                hintText: 'XXX@gmail.com',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color: const Color(0xffADADAD))),
                          ),
                        ),
                      ],
                    )),
                    CreateListingCardWidget(
                        child: Row(
                      children: [
                        Text(
                          'Pickup Location',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              color: Colors.black),
                        ),
                        Expanded(
                          // Wrap the dropdown in Expanded to constrain its width
                          child: CustomDropdownButton<ShippingCitiesModel>(
                            items: const [],
                            dropdownValue: null,
                            onChanged: (newValue) {
                              setState(() {
                                // selectedpickup = newValue;
                              });
                            },
                            getItemLabel: (ShippingCitiesModel item) =>
                                item.name,
                          ),
                        ),
                      ],
                    )),
                    CreateListingCardWidget(
                        child: Row(
                      children: [
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          'Phone Number',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              color: Colors.black),
                        ),
                        Text(
                          '*',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Expanded(
                          child: TextField(
                            controller: null,
                            decoration: InputDecoration.collapsed(
                                hintText: '98XXXXXX',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color: const Color(0xffADADAD))),
                          ),
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 12.h),
                          decoration: BoxDecoration(
                              color: const Color(0xffEDECEC),
                              borderRadius: BorderRadius.circular(10.r)),
                          child: Column(
                            children: [
                              CustomCheckbox(
                                  value: false, onChanged: (value) {}),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                'Hide',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff888888),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                    Row(
                      children: [
                        const Icon(Icons.camera_alt),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'Photos',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    SelectPhotFromFilesContainer(
                      onImagesSelected: (image) {
                        setState(() {
                          // selectedImages = image;
                        });
                      },
                    ),
                    Center(
                      child: Text(
                        'Add up to 6 pictures. Use real pictures of your products, not cataloges.',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 10.sp,
                            color: const Color(0xffADADAD)),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(tagIcon),
                        SizedBox(
                          width: 7.w,
                        ),
                        Text(
                          'Pricing',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'Permium Listing',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff888888)),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      'The premium package help seller to promote their products or service by giving more visibility to their listings to attract more buyers and sell faster',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10.sp,
                          color: const Color(0xffADADAD)),
                    ),
                    Text(
                      'Keep online for 60 days',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10.sp,
                          color: const Color(0xffADADAD)),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 20.h,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: const Color(0xff362677)),
                      child: Row(
                        children: [
                          Text(
                            'Regular Fee',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            ' Rs. 00',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Text(
                      "Keep online for 60 days",
                      style: headerstyle.copyWith(
                          color: ColorConstant.blackColor,
                          fontSize: 11,
                          fontWeight: FontWeight.w500),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 20.h,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: ColorConstant.whiteColor),
                      child: Row(
                        children: [
                          Text(
                            'Smart Boost',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: ColorConstant.blackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "90 days of promotion | Facebook Ads (4 days) | Up to 10 images allowed. Facebook boost fir 4 days (5 per day) + 2 discount | Pay only 18 with free designing! Call 9840714218 for details | Displayed at the top of the page in search result page | Featured on the home page | Featured in the category | Keep online for 90 days.",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10.sp,
                          color: const Color(0xffADADAD)),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Center(
                      child: GeneralEelevatedButton(
                        text: "Submit",
                        onPresssed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
