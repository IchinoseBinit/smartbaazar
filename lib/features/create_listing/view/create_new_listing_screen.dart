import 'dart:convert';
import 'dart:core';
import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/custom_check_box_widgt.dart';
import 'package:smartbazar/features/auth/widgets/custom_drop_down_widget.dart';
import 'package:smartbazar/features/auth/widgets/general_elevated_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/rich_text_widget.dart';
import 'package:smartbazar/features/create_listing/api/create_new_listing_providers.dart';
import 'package:smartbazar/features/create_listing/api/get_dropdown_value_api.dart';
import 'package:smartbazar/features/create_listing/model/dropdown_value_model.dart';
import 'package:smartbazar/features/create_listing/view/category_feild.dart';
import 'package:smartbazar/features/create_listing/widget/create_listing_card_widget.dart';
import 'package:smartbazar/features/create_listing/widget/pick_image_from_gallery.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class CreateNewListinScreen extends ConsumerStatefulWidget {
  const CreateNewListinScreen({super.key});

  @override
  ConsumerState<CreateNewListinScreen> createState() =>
      _CreateNewListinScreenState();
}

class _CreateNewListinScreenState extends ConsumerState<CreateNewListinScreen> {
  TypeList? selectedType;
  CityList? slectedcity;
  ProductType? selectedProductType;
  // bool _isChecked = false;
  bool _acceptterms = false;
  Category? selectedcategory;
  List<TypeList> typeListItems = [];
  List<CityList>? citylistsitems = [];
  List<ProductType> productTypeListItems = [];
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController heightcontroller = TextEditingController();

  TextEditingController phonecontroller = TextEditingController();
  TextEditingController pricecontroller = TextEditingController();
  TextEditingController discountcontroller = TextEditingController();

  TextEditingController weightcontroller = TextEditingController();
  TextEditingController widthcontroller = TextEditingController();
  TextEditingController lengthcontroller = TextEditingController();
  String accept = '0';

  @override
  void initState() {
    super.initState();
    _fetchTypeList();
    _fetchcities();
    _fetchProductTypeList();
  }

  Future<void> _fetchcities() async {
    try {
      NewListingRepository repository = NewListingRepository();
      List<CityList> fetchedTypes = await repository.fetchCities(1);
      setState(() {
        citylistsitems = fetchedTypes;
      });
    } catch (e) {
      // Handle error, maybe show a message to the user
      print('Failed to load types: $e');
    }
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

  Future<void> _fetchProductTypeList() async {
    try {
      NewListingRepository repository = NewListingRepository();
      // Assume we have a repository method to fetch product types
      List<ProductType> fetchedProductTypes =
          await repository.fetchProductType();
      setState(() {
        productTypeListItems = fetchedProductTypes;
      });
    } catch (e) {
      // Handle error, maybe show a message to the user
      print('Failed to load product types: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F1F1),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.5.w, vertical: 16.h),
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(createListingIcon),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Create New Listing',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    CircleAvatar(
                      radius: 12.r,
                      backgroundColor: const Color(0xffADADAD),
                      child: const Text(
                        'i',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Go Back',
                        style: TextStyle(
                            color: const Color(0xff888888),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18.h,
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 11.h, horizontal: 14.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: const Color(0xff362677)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichTextWidget(
                          title: 'Verfiy your account ',
                          titleStyle: TextStyle(
                              // decoration: TextDecoration.underline,
                              decoration: TextDecoration.underline,
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500),
                          subtitle: ' to post Brand New',
                          subtitleStyle: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500),
                          onPressed: () {}),
                      Text(
                        'product & Business to Business (B2B) products & Services. its FREE & takes only few minutes!',
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Verify your account',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CreateListingCardWidget(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Type',
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
                      Expanded(
                        // Wrap the dropdown in Expanded to constrain its width
                        child: CustomDropdownButton<TypeList>(
                          items: typeListItems,
                          dropdownValue: selectedType,
                          onChanged: (TypeList? newValue) {
                            setState(() {
                              selectedType = newValue!;
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
                CategoryFeild(
                  onCategorySelected: (Category? category) {
                    setState(() {
                      selectedcategory = category;
                    });
                    print("Selected category: ${category?.name}");
                  },
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
                        controller: titlecontroller,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Enter title',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
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
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'City',
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
                      Expanded(
                        // Wrap the dropdown in Expanded to constrain its width
                        child: CustomDropdownButton<CityList>(
                          items: citylistsitems!,
                          dropdownValue: slectedcity,
                          onChanged: (CityList? newValue) {
                            setState(() {
                              slectedcity = newValue!;
                            });
                            print("ram $slectedcity");
                          },
                          getItemLabel: (CityList item) => item.name,
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
                          'Price',
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
                        controller: pricecontroller,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Enter price',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Discount',
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
                        controller: discountcontroller,
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
                      height: 15.h,
                    ),
                    TextField(
                      controller: descriptionController,
                      decoration: InputDecoration.collapsed(
                          hintText: 'Describe what makes your listing unique',
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              color: const Color(0xffADADAD))),
                    ),
                    // SizedBox(
                    //   height: 10.h,
                    // ),
                  ],
                )),
                // SizedBox(
                //   height: 10.h,
                // ),
                // CreateListingCardWidget(
                //     child: Row(
                //   children: [
                //     Text(
                //       "What's  in the box?",
                //       style: TextStyle(
                //           fontWeight: FontWeight.w500,
                //           fontSize: 14.sp,
                //           color: Colors.black),
                //     ),
                //     SizedBox(
                //       width: 30.w,
                //     ),
                //     Expanded(
                //       child: TextField(
                //         decoration: InputDecoration.collapsed(
                //             hintText: "Mention what's included",
                //             hintStyle: TextStyle(
                //                 fontWeight: FontWeight.w500,
                //                 fontSize: 14.sp,
                //                 color: const Color(0xffADADAD))),
                //       ),
                //     ),
                //   ],
                // )),

                // CreateListingCardWidget(
                //     child: Row(
                //   children: [
                //     Row(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Text(
                //           'Brand',
                //           style: TextStyle(
                //               fontSize: 14.sp,
                //               fontWeight: FontWeight.w500,
                //               color: Colors.black),
                //         ),
                //         Text(
                //           ' *',
                //           style: TextStyle(
                //               color: const Color(0xffD33636),
                //               fontWeight: FontWeight.w500,
                //               fontSize: 14.sp),
                //         )
                //       ],
                //     ),
                //     const Spacer(),
                //     Expanded(
                //       child: TextField(
                //         decoration: InputDecoration.collapsed(
                //             hintText: 'Brand name',
                //             hintStyle: TextStyle(
                //                 fontWeight: FontWeight.w500,
                //                 fontSize: 14.sp,
                //                 color: const Color(0xffADADAD))),
                //       ),
                //     ),
                //   ],
                // )),
                // SizedBox(
                //   height: 10.h,
                // ),
                // CreateListingCardWidget(
                //   child: Row(
                //     mainAxisSize: MainAxisSize.min,
                //     children: [
                //       Row(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           Text(
                //             'Product Type',
                //             style: TextStyle(
                //                 fontSize: 14.sp,
                //                 fontWeight: FontWeight.w500,
                //                 color: Colors.black),
                //           ),
                //           Text(
                //             ' *',
                //             style: TextStyle(
                //                 color: const Color(0xffD33636),
                //                 fontWeight: FontWeight.w500,
                //                 fontSize: 14.sp),
                //           )
                //         ],
                //       ),
                //       const Spacer(),
                //       // CustomDropdownButton<ProductType>(
                //       //   items: productTypeListItems,
                //       //   dropdownValue: selectedProductType,
                //       //   onChanged: (ProductType? newValue) {
                //       //     setState(() {
                //       //       selectedProductType = newValue!;
                //       //     });
                //       //   },
                //       //   getItemLabel: (ProductType item) => item.name,
                //       // ),
                //     ],
                //   ),
                // ),
                // const ReturnPolicyCardWidget(),
                // SizedBox(
                //   height: 10.h,
                // ),
                // Row(
                //   children: [
                //     Text(
                //       'Packaged Product Dimension',
                //       style: TextStyle(
                //           fontSize: 14.sp,
                //           fontWeight: FontWeight.w600,
                //           color: Colors.black),
                //     ),
                //     const Spacer(),
                //     CustomCheckbox(
                //       value: _isChecked,
                //       onChanged: (bool newValue) {
                //         setState(() {
                //           _isChecked = newValue;
                //         });
                //       },
                //     ),
                //     SizedBox(
                //       width: 10.w,
                //     ),
                //     Text(
                //       'Hyper Delivery',
                //       style: TextStyle(
                //           fontSize: 12.sp,
                //           fontWeight: FontWeight.w500,
                //           color: const Color(
                //             (0xff888888),
                //           )),
                //     )
                //   ],
                // ),
                // SizedBox(
                //   height: 10.h,
                // ),
                CreateListingCardWidget(
                    child: Row(
                  children: [
                    // Text(
                    //   'Length(cm)',
                    //   style: TextStyle(
                    //       fontWeight: FontWeight.w500,
                    //       fontSize: 14.sp,
                    //       color: Colors.black),
                    // ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Length(cm)',
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
                        controller: lengthcontroller,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Lenght in cm',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
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
                    //       fontSize: 14.sp,
                    //       color: Colors.black),
                    // ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Width (cm)',
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
                        controller: widthcontroller,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Width in cm',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
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
                          fontSize: 14.sp,
                          color: Colors.black),
                    ),
                    const Spacer(),
                    Expanded(
                      child: TextField(
                        controller: heightcontroller,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Height in cm',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
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
                      'Weight (Km)',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: Colors.black),
                    ),
                    const Spacer(),
                    Expanded(
                      child: TextField(
                        controller: weightcontroller,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Weight in KG',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: const Color(0xffADADAD))),
                      ),
                    ),
                  ],
                )),

                // const CityField(),
                SizedBox(
                  height: 10.h,
                ),
                // CreateListingCardWidget(
                //     child: Row(
                //   mainAxisSize: MainAxisSize.max,
                //   children: [
                //     Text(
                //       "Tags",
                //       style: TextStyle(
                //           fontWeight: FontWeight.w500,
                //           fontSize: 14.sp,
                //           color: Colors.black),
                //     ),
                //     const Spacer(),
                //     Container(
                //       padding:
                //           EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
                //       decoration: BoxDecoration(
                //           color: const Color(0xffEDECEC),
                //           borderRadius: BorderRadius.circular(10.r),
                //           border: Border.all(
                //               width: 1.w, color: const Color(0xff888888))),
                //       child: const Row(
                //         children: [
                //           Icon(
                //             Icons.close,
                //             color: Color(0xff888888),
                //           ),
                //           Text('Acer')
                //         ],
                //       ),
                //     ),
                //     SizedBox(
                //       width: 8.w,
                //     ),
                //     Container(
                //       padding:
                //           EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
                //       decoration: BoxDecoration(
                //           color: const Color(0xffEDECEC),
                //           borderRadius: BorderRadius.circular(10.r),
                //           border: Border.all(
                //               width: 1.w, color: const Color(0xff888888))),
                //       child: const Row(
                //         children: [
                //           Icon(
                //             Icons.close,
                //             color: Color(0xff888888),
                //           ),
                //           Text('Black')
                //         ],
                //       ),
                //     ),
                //     SizedBox(
                //       width: 8.w,
                //     ),
                //     Container(
                //       padding:
                //           EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
                //       decoration: BoxDecoration(
                //           color: const Color(0xffEDECEC),
                //           borderRadius: BorderRadius.circular(10.r),
                //           border: Border.all(
                //               width: 1.w, color: const Color(0xff888888))),
                //       child: const Row(
                //         children: [
                //           Icon(
                //             Icons.close,
                //             color: Color(0xff888888),
                //           ),
                //           Text('Laptop')
                //         ],
                //       ),
                //     ),
                //     SizedBox(
                //       width: 8.w,
                //     ),
                //   ],
                // )),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    CustomCheckbox(
                      value: _acceptterms,
                      onChanged: (bool newValue) {
                        setState(() {
                          _acceptterms = newValue;
                        });
                        accept = (_acceptterms) ? '1' : '0';
                      },
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Do you accept all the terms and conditions',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(
                            (0xff888888),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),

                SellerInformationWidget(
                  category: selectedcategory?.id.toString() ?? '',
                  type: selectedType?.typeId.toString() ??
                      '', // Provide a default value or handle null safely
                  description: descriptionController.text,
                  height: heightcontroller.text.isNotEmpty
                      ? heightcontroller.text
                      : '0', // Fallback to '0' if empty
                  length: lengthcontroller.text.isNotEmpty
                      ? lengthcontroller.text
                      : '0', // Fallback to '0' if empty
                  phonecoontroller: phonecontroller,
                  price: pricecontroller.text,
                  title: titlecontroller.text,
                  city: slectedcity?.id.toString() ??
                      '', // Provide a default value or handle null safely
                  weight: weightcontroller.text.isNotEmpty
                      ? weightcontroller.text
                      : '0', // Fallback to '0' if empty
                  width: widthcontroller.text.isNotEmpty
                      ? widthcontroller.text
                      : '0', // Fallback to '0' if empty
                  terms: accept,
                  discount: discountcontroller.text,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SellerInformationWidget extends StatefulWidget {
  SellerInformationWidget(
      {super.key,
      this.category,
      this.title,
      this.city,
      this.price,
      this.description,
      this.length = '0',
      this.width = '0',
      this.type,
      this.height = '0',
      this.weight = '0',
      this.phonecoontroller,
      this.terms = '0',
      this.discount = '0'});

  String? type;
  String? category;
  String? title;
  String? city;
  String? price;
  String? description;
  String? length;
  String? width;
  String? height;
  String? weight;
  TextEditingController? phonecoontroller;
  String? terms;
  String discount;

  @override
  State<SellerInformationWidget> createState() =>
      _SellerInformationWidgetState();
}

class _SellerInformationWidgetState extends State<SellerInformationWidget> {
  TextEditingController emailcontroller = TextEditingController();

  TextEditingController pickupcontroller = TextEditingController();
  TextEditingController nameconroller = TextEditingController();

  List<File?> selectedImages = [];
  void onImagesSelected(List<File?> images) {
    setState(() {
      selectedImages = images;
    });
  }

  Future<String> convertFileToBase64(File file) async {
    // Read the file as bytes
    final bytes = await file.readAsBytes();
    // Convert bytes to base64
    return base64Encode(bytes);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset(userIcon),
            SizedBox(
              width: 10.w,
            ),
            Text(
              'Seller Information',
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
        CreateListingCardWidget(
            child: Row(
          children: [
            Text(
              'Email',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  color: Colors.black),
            ),
            const Spacer(),
            Expanded(
              child: TextField(
                controller: emailcontroller,
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
        // SizedBox(
        //   height: 10.h,
        // ),
        CreateListingCardWidget(
            child: Row(
          children: [
            Text(
              'Enter name',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  color: Colors.black),
            ),
            const Spacer(),
            Expanded(
              child: TextField(
                controller: nameconroller,
                decoration: InputDecoration.collapsed(
                    hintText: 'John Doe',
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
            const Spacer(),
            Expanded(
              child: TextField(
                controller: pickupcontroller,
                decoration: InputDecoration.collapsed(
                    hintText: 'Select location',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
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
              'Phone Number',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  color: Colors.black),
            ),
            const Spacer(),
            Expanded(
              child: TextField(
                controller: widget.phonecoontroller,
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
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
              decoration: BoxDecoration(
                  color: const Color(0xffEDECEC),
                  borderRadius: BorderRadius.circular(10.r)),
              child: Column(
                children: [
                  CustomCheckbox(value: false, onChanged: (value) {}),
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
        SizedBox(
          height: 15.h,
        ),
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
              selectedImages = image;
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
            )
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
        // SizedBox(
        //   height: 15.h,
        // ),
        // CreateListingCardWidget(
        //     child: Row(
        //   children: [
        //     Text(
        //       'Regular (Free)',
        //       style: TextStyle(
        //           fontWeight: FontWeight.w500,
        //           fontSize: 14.sp,
        //           color: Colors.black),
        //     ),
        //     const Spacer(),
        //     Expanded(
        //       child: TextField(
        //         decoration: InputDecoration.collapsed(
        //             hintText: 'Rs. 0.00',
        //             hintStyle: TextStyle(
        //                 fontWeight: FontWeight.w500,
        //                 fontSize: 14.sp,
        //                 color: const Color(0xffADADAD))),
        //       ),
        //     ),
        //   ],
        // )),
        // SizedBox(
        //   height: 4.h,
        // ),
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
                'Smart Boost',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              Text(
                'Rs. 50',
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
                text: 'Submit',
                onPresssed: () async {
                  try {
                    // Dummy data
                    String responseMessage = await createlisting(
                        null, // ref
                        widget.category!.trim(), // category
                        widget.title!.trim(), // title
                        widget.city!.trim(), // city
                        widget.price!.trim(), // price
                        widget.description!.trim(), // description
                        widget.length?.trim() ?? '0', // length
                        widget.weight?.trim() ?? '0', // width
                        widget.height?.trim() ?? '0', // height
                        widget.weight?.trim() ?? '0', // weight
                        widget.discount.trim(), // discounted price
                        widget.type?.trim() ?? '0', // type
                        emailcontroller.text, // email
                        widget.phonecoontroller!.text, // phone
                        nameconroller.text, // username
                        pickupcontroller.text, // pickup
                        selectedImages, // images
                        widget.terms?.trim() ??
                            '0', // accept (e.g., "1" for yes, or whatever value is expected)
                        pickupcontroller
                            .text // address (use the appropriate address here)
                        );
                  } catch (e) {
                    showAboutDialog(
                    
                      
                      // ignore: use_build_context_synchronously
                      context: context, children: [
                        const AlertDialog(
                          actions: [],

                          contentPadding: EdgeInsets.zero,
                          
                      title: Text("Successful !"),
                      content: Column(
                        children: [
                          Divider(),
                          Text("Yourlisting has been created wait for some time before it is being verified")

                        ],
                      ),
                    )
                    ]);
                    // ScaffoldMes
                    // senger.of(context).showSnackBar(SnackBar(
                    //     content: Text(
                    //         "Yourlisting has been created wait for some time before it is being verified")));
                    print("API call failed: $e");
                  }
                })),
        SizedBox(
          height: 20.h,
        )
      ],
    );
  }
}

class SelectPhotFromFilesContainer extends StatefulWidget {
  const SelectPhotFromFilesContainer({
    super.key,
    required this.onImagesSelected,
  });
  final Function(List<File?>) onImagesSelected;

  @override
  State<SelectPhotFromFilesContainer> createState() =>
      _SelectPhotFromFilesContainerState();
}

class _SelectPhotFromFilesContainerState
    extends State<SelectPhotFromFilesContainer> {
  List<File?> images = [];
  final ImagePickerService _imagePickerService = ImagePickerService();

  void selectImages() async {
    if (images.length < 6) {
      List<File?> selectedImages =
          await _imagePickerService.pickMultipleImages(context);
      if (selectedImages.isNotEmpty) {
        setState(() {
          images.addAll(selectedImages);
        });
        // Pass the selected images to the parent using the callback
        widget.onImagesSelected(images);
      }
    } else {
      _imagePickerService.showSnackBar(
        context: context,
        content: 'You can upload up to 6 photos only.',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 13.5.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(width: 1.w, color: const Color(0xffADADAD))),
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: Radius.circular(10.r),
        dashPattern: const [2, 3],
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          child: GestureDetector(
            onTap: selectImages,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: images.isNotEmpty
                  ? LayoutBuilder(
                      builder: (context, constraints) {
                        return ConstrainedBox(
                          constraints: BoxConstraints(
                            maxHeight: constraints.maxHeight,
                          ),
                          child: GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, // Display 2 images per row
                              crossAxisSpacing: 8.w,
                              mainAxisSpacing: 8.h,
                              childAspectRatio: 1, // Square images
                            ),
                            itemCount: images.length,
                            itemBuilder: (context, index) {
                              return Stack(
                                children: [
                                  Image.file(
                                    images[index]!,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
                                  ),
                                  Positioned(
                                    top: 5,
                                    right: 5,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          images.removeAt(index);
                                        });
                                      },
                                      child: const Icon(
                                        Icons.close,
                                        color: Colors.red,
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        );
                      },
                    )
                  : Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Click to select files',
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: const Color(0xffADADAD),
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Container(
                            width: 120.w,
                            padding: EdgeInsets.symmetric(
                                horizontal: 13.w, vertical: 9.h),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(
                                    width: 1.w,
                                    color: const Color(0xffADADAD))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.open_in_browser_outlined),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text(
                                  'Browse..',
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}

class ReturnPolicyCardWidget extends StatefulWidget {
  const ReturnPolicyCardWidget({
    super.key,
  });

  @override
  State<ReturnPolicyCardWidget> createState() => _ReturnPolicyCardWidgetState();
}

class _ReturnPolicyCardWidgetState extends State<ReturnPolicyCardWidget> {
  final bool _isvalid = false;
  bool _isDamge = false;
  @override
  Widget build(BuildContext context) {
    return CreateListingCardWidget(
        child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              'Return Policy',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ],
        ),
        SizedBox(width: 20.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '7 days Exchange& Return',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  CustomCheckbox(
                      value: _isvalid,
                      onChanged: (value) {
                        setState(() {
                          _isDamge = value;
                        });
                      }),
                  SizedBox(
                    width: 5.w,
                  ),
                  Expanded(
                    child: Text(
                      'Valid for change of mind',
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
                height: 5.h,
              ),
              Row(
                children: [
                  CustomCheckbox(
                      value: _isvalid,
                      onChanged: (value) {
                        setState(() {
                          _isDamge = value;
                        });
                      }),
                  SizedBox(
                    width: 5.w,
                  ),
                  Expanded(
                    child: Text(
                      'Valid for defective, missing',
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
            ],
          ),
        )
      ],
    ));
  }
}
