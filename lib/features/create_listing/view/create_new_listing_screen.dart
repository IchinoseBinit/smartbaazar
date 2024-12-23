import 'dart:convert';
import 'dart:core';
import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/custom_check_box_widgt.dart';
import 'package:smartbazar/features/auth/widgets/custom_drop_down_widget.dart';
import 'package:smartbazar/features/auth/widgets/general_elevated_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/rich_text_widget.dart';
import 'package:smartbazar/features/create_listing/api/create_new_listing_providers.dart';
import 'package:smartbazar/features/create_listing/api/get_dropdown_value_api.dart';
import 'package:smartbazar/features/create_listing/model/dropdown_value_model.dart';
import 'package:smartbazar/features/create_listing/widget/category_widget.dart';
import 'package:smartbazar/features/create_listing/widget/create_listing_card_widget.dart';
import 'package:smartbazar/features/create_listing/widget/pick_image_from_gallery.dart';
import 'package:smartbazar/features/order_details/api/shipping_cities_api.dart';
import 'package:smartbazar/features/order_details/model/shipping_cities_model.dart';
import 'package:smartbazar/features/vendor/vendor_profile/api/check_user_verified_api.dart';
import 'package:smartbazar/features/vendor_details/view/vendor_details_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';
import 'package:textfield_tags/textfield_tags.dart';

class CreateNewListinScreen extends ConsumerStatefulWidget {
  const CreateNewListinScreen({super.key});

  @override
  ConsumerState<CreateNewListinScreen> createState() =>
      _CreateNewListinScreenState();
}

class _CreateNewListinScreenState extends ConsumerState<CreateNewListinScreen> {
  TypeList? selectedType;
  ProductType? selectedProductType;
  List<ShippingCitiesModel> shippingcities = [];
  ShippingCitiesModel? selectedpickup;
  // bool _isChecked = false;
  bool _acceptterms = false;
  bool _trending = false;
  final List<String> _tags = [];
  String _inputText = "";

  Category? selectedcategory;
  List<TypeList> typeListItems = [];
  List<Category> subcategoryList = [];
  Category? subcatagory;
  CityList? selectedCity;
  List<String>? selectedColors;
  String? selectedProductTYpe;
  int? warrentyselected;
    String? selectedmodel;

    // String? sel;e;

  List<CityList>? citylistsitems = [];
  List<Offer>? offerresponse = [];
  Offer? selectedOffer;

  List<ProductType> productTypeListItems = [];
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController heightcontroller = TextEditingController();

  TextEditingController phonecontroller = TextEditingController();
  TextEditingController pricecontroller = TextEditingController();
  TextEditingController discountcontroller = TextEditingController();
  TextEditingController tagController = TextEditingController();
  TextEditingController weightcontroller = TextEditingController();
  TextEditingController widthcontroller = TextEditingController();
  TextEditingController lengthcontroller = TextEditingController();
  String accept = '0';
  String? isUserVerified;
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  NewListingRepository repository = NewListingRepository();
  int? categoryId;
  @override
  void initState() {
    getSellerData();
    checkuserverified().then(
      (value) {
        isUserVerified = value;
      },
    );
    super.initState();
    _fetchTypeList();
    _fetchcities();
    _fetchOffers();
    _fetchProductTypeList();
  }

  void getSellerData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    namecontroller.text = prefs.getString("name")!;
    emailcontroller.text = prefs.getString("email")!;
    phonecontroller.text = prefs.getString("phone")!;
  }

  Future<void> _fetchcities() async {
    try {
      List<CityList> fetchedTypes = await repository.fetchCities(1);
      setState(() {
        citylistsitems = fetchedTypes;
      });
    } catch (e) {
      // Handle error, maybe show a message to the user
      print('Failed to load types: $e');
    }
  }

  void _addTag(String tag) {
    if (tag.isNotEmpty && !_tags.contains(tag)) {
      setState(() {
        _tags.add(tag);
      });
      tagController.clear();
    }
  }

  // Remove a tag from the list
  void _removeTag(String tag) {
    setState(() {
      _tags.remove(tag);
    });
  }

  Future<void> _fetchOffers() async {
    try {
      OffersResponse fetchedTypes = await repository.fetchOffers();
      print("binod ${fetchedTypes.data.first.offers}");
      setState(() {
        offerresponse = fetchedTypes.data;
      });
    } catch (e) {
      // Handle error, maybe show a message to the user
      print('Failed to load types: $e');
    }
  }

  Future<void> _fetchTypeList() async {
    try {
      var allItems = await repository.fetchTypeList();
      setState(() {
        typeListItems = allItems;
      });

      // var subcategory = await repository.fetchCategoryList(parentId: typeListItems.);
    } catch (e) {
      print('Failed to load types: $e');
    }
  }

  Future<void> _fetchProductTypeList() async {
    try {
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

  final _stringTagController = StringTagController();

  @override
  Widget build(BuildContext context) {
    final citySuggestionsAsync = ref.watch(getShippingCitiesProvider);
    citySuggestionsAsync.when(
      data: (data) {
        shippingcities = data;
      },
      error: (error, stackTrace) {},
      loading: () {},
    );
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
                isUserVerified == null
                    ? const SizedBox()
                    : isUserVerified == '1'
                        ? Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 11.h, horizontal: 14.w),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: const Color(0xff362677)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const VendroDetailsScreen(),
                                        ));
                                  },
                                  child: RichTextWidget(
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
                                ),
                                Text(
                                  'product & Business to Business (B2B) products & Services. its FREE & takes only few minutes!',
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const VendroDetailsScreen(),
                                        ));
                                  },
                                  child: Text(
                                    'Verify your account',
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.white,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : const SizedBox(),
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
                          onChanged: (TypeList? newValue) async {
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
                CategoryField(
                  onCategorySelected: (Category? category) async {
                    setState(() {
                      selectedcategory = category;
                    });
                    categoryId = selectedcategory!.id;
                  },
                  onSubCategorySelected: (Category? value) {
                    categoryId = selectedcategory!.id;
                    print("bibash ${categoryId}");
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
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 10.h,
                ),
                if (categoryId != 1)
                  CreateListingCardWidget(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Whats in the box',
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
                            hintText: "Mention what's included",
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
                          'Brand',
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
                            hintText: 'Enter brand',
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
                            'Product Type',
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
                        child: CustomDropdownButton<String>(
                          items: ['Non-Branded', 'Original/Branded'],
                          dropdownValue: selectedProductTYpe,
                          onChanged: (newValue) {
                            setState(() {
                              selectedProductTYpe = newValue;
                            });
                          },
                          getItemLabel: (String item) => item,
                        ),
                      ),
                    ],
                  ),
                ),

                CreateListingCardWidget(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Return Policy',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                          // Wrap the dropdown in Expanded to constrain its width
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "7 days Exchange & Return",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: true,
                                onChanged: (value) {},
                              ),
                              Text(
                                "valid for change of mind",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: false,
                                onChanged: (value) {},
                              ),
                              const Text(
                                  "valid for defective,\nmissing or demaged items")
                            ],
                          ),
                        ],
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
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
                            'Available colors',
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
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            isExpanded: true,
                            hint: Text(
                              selectedColors == null || selectedColors!.isEmpty
                                  ? "Select Colors"
                                  : selectedColors!.join(", "),
                              overflow: TextOverflow.ellipsis,
                            ),
                            items: [
                              'Black',
                              'Red',
                              'Green',
                              'Blue',
                              'Pink',
                              'Grey'
                            ].map((color) {
                              return DropdownMenuItem<String>(
                                value: color,
                                child: Row(
                                  children: [
                                    // Checkbox to show whether the color is selected
                                    StatefulBuilder(
                                      builder: (context, setState) {
                                        return Checkbox(
                                          value: selectedColors != null &&
                                              selectedColors!.contains(color),
                                          onChanged: (bool? isChecked) {
                                            setState(() {
                                              if (selectedColors == null) {
                                                selectedColors =
                                                    []; // Initialize if null
                                              }
                                              if (isChecked == true) {
                                                selectedColors!.add(
                                                    color); // Add to selectedColors if checked
                                              } else {
                                                selectedColors!.remove(
                                                    color); // Remove from selectedColors if unchecked
                                              }
                                            });
                                          },
                                        );
                                      },
                                    ),
                                    Text(color),
                                  ],
                                ),
                              );
                            }).toList(),
                            onChanged: (_) {}, // Keeps the dropdown open
                            icon:
                                Icon(Icons.arrow_drop_down, color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                CreateListingCardWidget(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Automobile Model',
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
                        child: CustomDropdownButton<String>(
                          items: [
                            'Zil',
                            'Geely',
                            'Toyota',
                            'Honda',
                            'BMW',
                            'Ford'
                          ],
                          dropdownValue: selectedmodel,
                          onChanged: (newValue) {
                            setState(() {
                              selectedmodel = newValue;
                            });
                          },
                          getItemLabel: (String item) => item.toString(),
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
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Warranty',
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
                        child: CustomDropdownButton<int>(
                          items: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
                          dropdownValue: warrentyselected,
                          onChanged: (newValue) {
                            setState(() {
                              warrentyselected = newValue;
                            });
                          },
                          getItemLabel: (int item) => item.toString(),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                CreateListingCardWidget(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Seller Type',
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
                          items: citylistsitems!,
                          dropdownValue: selectedCity,
                          onChanged: (newValue) {
                            setState(() {
                              selectedCity = newValue;
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
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Model',
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
                          'RAM in GB',
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
                            hintText: 'in GB',
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
                      value: _trending,
                      onChanged: (value) {
                        setState(() {
                          _trending = value!;
                        });
                      },
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
                        controller: pricecontroller,
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
                SizedBox(
                  height: 10.h,
                ),
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
                          CustomCheckbox(value: false, onChanged: (value) {}),
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
                  height: 5.h,
                ),
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
                        child: CustomDropdownButton<Offer>(
                          items: offerresponse!,
                          dropdownValue: selectedOffer,
                          onChanged: (newValue) {
                            setState(() {
                              selectedOffer = newValue;
                            });
                          },
                          getItemLabel: (Offer item) => item.offers,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.h,
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
                          items: citylistsitems!,
                          dropdownValue: selectedCity,
                          onChanged: (newValue) {
                            setState(() {
                              selectedCity = newValue;
                            });
                          },
                          getItemLabel: (CityList item) => item.name,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.h,
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
                          items: citylistsitems!,
                          dropdownValue: selectedCity,
                          onChanged: (newValue) {
                            setState(() {
                              selectedCity = newValue;
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
                    const Text("Packaged Product Dimensions"),
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                        ),
                        const Text("Hyper Delivery")
                      ],
                    )
                  ],
                ),
                // CreateListingCardWidget(
                //     child: Row(
                //   children: [
                //     Row(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Text(
                //           'Discount',
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
                //         controller: discountcontroller,
                //         decoration: InputDecoration.collapsed(
                //             hintText: 'Enter discount',
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
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                        // Wrap the dropdown in Expanded to constrain its width
                        child: CustomDropdownButton<CityList>(
                          items: citylistsitems!,
                          dropdownValue: selectedCity,
                          onChanged: (newValue) {
                            setState(() {
                              selectedCity = newValue;
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
                            'Tags',
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
                        child: Stack(
                          children: [
                            // TextField with the placeholder for typing
                            TextField(
                              controller: tagController,
                              onChanged: (text) {
                                setState(() {
                                  _inputText = text;
                                  tagController.text = _inputText;
                                });
                              },
                              onSubmitted: (value) {
                                if (value.isNotEmpty) {
                                  _addTag(value);
                                }
                              },
                              decoration: InputDecoration(
                                  hintText: tagController.text.isEmpty
                                      ? ''
                                      : "Enter tags",
                                  border: InputBorder.none
                                  // border: OutlineInputBorder(),
                                  // contentPadding: const EdgeInsets.all(8.0),
                                  ),
                            ),
                            // Positioned tags that appear inside the TextField
                            Positioned(
                              left: 8.0,
                              top: 1.0,
                              bottom: 0,
                              child: Wrap(
                                spacing: 1,
                                runSpacing: 2,
                                children: _tags.map((tag) {
                                  return Chip(
                                    label: Text(tag),
                                    deleteIcon: const Icon(Icons.clear),
                                    onDeleted: () => _removeTag(tag),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  decoration: BoxDecoration(
                      color: ColorConstant.whiteColor,
                      borderRadius: BorderRadius.circular(20),
                      border:
                          Border.all(color: ColorConstant.grayColor, width: 2)),
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
                      const BulkDiscountWidget()
                    ],
                  ),
                )
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
                ,
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
                  shippingList: shippingcities,
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
                  city: selectedCity?.id.toString() ??
                      '', // Provide a default value or handle null safely
                  weight: weightcontroller.text.isNotEmpty
                      ? weightcontroller.text
                      : '0', // Fallback to '0' if empty
                  width: widthcontroller.text.isNotEmpty
                      ? widthcontroller.text
                      : '0', // Fallback to '0' if empty
                  terms: accept,
                  discount: discountcontroller.text,
                  emailcontroller: emailcontroller,
                  nameconroller: namecontroller,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BulkDiscountWidget extends StatefulWidget {
  const BulkDiscountWidget({super.key});

  @override
  _BulkDiscountWidgetState createState() => _BulkDiscountWidgetState();
}

class _BulkDiscountWidgetState extends State<BulkDiscountWidget> {
  List<Map<String, dynamic>> discountRanges = [
    {"from": 2, "to": 5, "rate": "Rs 50"}, // Initial discount range
  ];

  // Function to add a new range
  void _addDiscountRange() {
    setState(() {
      // Add the next range to the list, for simplicity using incremental ranges
      int nextFrom = discountRanges.length * 5 + 6;
      int nextTo = nextFrom + 4;
      discountRanges.add({
        "from": nextFrom,
        "to": nextTo,
        "rate": "Rs ${50 - (discountRanges.length * 5)}"
      });
    });
  }

  // Function to delete a range
  void _deleteDiscountRange(int index) {
    setState(() {
      discountRanges.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        color: const Color(0xffFDFDFE),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: Column(
        children: [
          // For each discount range in the list
          for (int i = 0; i < discountRanges.length; i++)
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pieces",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Colors.black),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        _buildDiscountBox(discountRanges[i]["from"]),
                        SizedBox(width: 6),
                        Text('to',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                        SizedBox(width: 6),
                        _buildDiscountBox(discountRanges[i]["to"]),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 40.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rate/piece",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Colors.black),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        _buildDiscountBox(discountRanges[i]["rate"]),
                        // SizedBox(width: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Plus button to add a new row
                            GestureDetector(
                              onTap: _addDiscountRange,
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 10.w),
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: const CircleAvatar(
                                  backgroundColor: Color(0xff362677),
                                  radius: 12,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            // SizedBox(height: 10),
                            // Delete button to remove a row
                            if (i >
                                0) // Don't show the delete button on the first row
                              GestureDetector(
                                onTap: () => _deleteDiscountRange(i),
                                child: Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.grey),
                                  ),
                                  child: const CircleAvatar(
                                    backgroundColor: Color(0xff362677),
                                    radius: 12,
                                    child: Icon(
                                      Icons.delete,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
        ],
      ),
    );
  }

  // Widget to build discount boxes (pieces and rate)
  Widget _buildDiscountBox(dynamic value) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(6),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: const Color(0xffFDFDFE),
        ),
        child: Text(
          value.toString(),
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w600, color: Colors.grey),
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
      this.discount = '0',
      this.emailcontroller,
      this.nameconroller,
      required this.shippingList});

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
  TextEditingController? emailcontroller;

  TextEditingController? nameconroller;
  List<ShippingCitiesModel> shippingList;

  @override
  State<SellerInformationWidget> createState() =>
      _SellerInformationWidgetState();
}

class _SellerInformationWidgetState extends State<SellerInformationWidget> {
  TextEditingController? pickupcontroller = TextEditingController();
  ShippingCitiesModel? selectedpickup;
  List<File?> selectedImages = [];
  bool isloading = false;

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
                controller: widget.emailcontroller,
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
                items: widget.shippingList,
                dropdownValue: selectedpickup,
                onChanged: (newValue) {
                  setState(() {
                    selectedpickup = newValue;
                  });
                },
                getItemLabel: (ShippingCitiesModel item) => item.name,
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
        //   CreateListingCardWidget(
        //     child: Row(
        //   children: [
        //     Text(
        //       'Enter tag',
        //       style: TextStyle(
        //           fontWeight: FontWeight.w500,
        //           fontSize: 14.sp,
        //           color: Colors.black),
        //     ),
        //     const Spacer(),
        //     Expanded(
        //       child: TextField(
        //         controller: widget.nameconroller,
        //         decoration: InputDecoration.collapsed(
        //             hintText: widget.nameconroller?.text ?? 'name',
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
        //     child: Row(
        //   children: [
        //     Text(
        //       'Enter name',
        //       style: TextStyle(
        //           fontWeight: FontWeight.w500,
        //           fontSize: 14.sp,
        //           color: Colors.black),
        //     ),
        //     const Spacer(),
        //     Expanded(
        //       child: TextField(
        //         controller: widget.nameconroller,
        //         decoration: InputDecoration.collapsed(
        //             hintText: widget.nameconroller?.text ?? 'name',
        //             hintStyle: TextStyle(
        //                 fontWeight: FontWeight.w500,
        //                 fontSize: 14.sp,
        //                 color: const Color(0xffADADAD))),
        //       ),
        //     ),
        //   ],
        // )),

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

        isloading
            ? const Center(child: CircularProgressIndicator())
            : Center(
                child: GeneralEelevatedButton(
                    text: 'Submit',
                    onPresssed: () async {
                      setState(() {
                        isloading = true;
                      });
                      if (widget.category != null &&
                          widget.title != null &&
                          widget.city != null &&
                          widget.price != null &&
                          widget.description != null &&
                          widget.type != null &&
                          widget.phonecoontroller?.text.isNotEmpty == true &&
                          selectedpickup!.name.isNotEmpty &&
                          selectedImages.isNotEmpty &&
                          widget.terms != null) {
                        try {
                          // Dummy data
                          await createlisting(
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
                                  widget.emailcontroller!.text, // email
                                  widget.phonecoontroller!.text, // phone
                                  widget.nameconroller!.text, // username
                                  selectedpickup!.name, // pickup
                                  selectedImages, // images
                                  widget.terms?.trim() ??
                                      '0', // accept (e.g., "1" for yes, or whatever value is expected)
                                  pickupcontroller!
                                      .text // address (use the appropriate address here)
                                  )
                              .then(
                            (value) async {
                              setState(() {
                                isloading = false;
                              });
                              return await showDialog(
                                context: context,
                                builder: (context) {
                                  return SizedBox(
                                    child: AlertDialog(
                                      shape: BeveledRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      content: Builder(
                                        builder: (context) {
                                          return SizedBox(
                                            height: 300.h,
                                            width: 900.w,
                                            child: Column(
                                              children: [
                                                Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        const Text(
                                                          "Message",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 19),
                                                        ),
                                                        IconButton(
                                                            onPressed: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            icon: const Icon(
                                                                Icons.close)),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 30.h,
                                                    ),
                                                    Text(
                                                      value,
                                                      style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 19),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          );
                        } catch (e) {}
                      } else {
                        await showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("Missing Fields"),
                              content: const Text(
                                  "Please fill in all required fields to create a listing."),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text("OK"),
                                ),
                              ],
                            );
                          },
                        );
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
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sell to',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Who do you want\nto sell',
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
                      'Dealer',
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
                      'Distributer',
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
                      'Importer',
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
                      'Retailer',
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
                      'Wholeseller',
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
