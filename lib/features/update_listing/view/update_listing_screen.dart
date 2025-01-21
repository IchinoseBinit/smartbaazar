import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/custom_check_box_widgt.dart';
import 'package:smartbazar/features/auth/widgets/custom_drop_down_widget.dart';
import 'package:smartbazar/features/auth/widgets/general_elevated_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/create_listing/api/get_dropdown_value_api.dart';
import 'package:smartbazar/features/create_listing/api/get_location_provider.dart';
import 'package:smartbazar/features/create_listing/model/dropdown_value_model.dart';
import 'package:smartbazar/features/create_listing/model/places_model.dart';
import 'package:smartbazar/features/create_listing/view/SellerInformationWidget.dart';
import 'package:smartbazar/features/create_listing/widget/create_listing_card_widget.dart';
import 'package:smartbazar/features/order_details/api/street_address_api.dart';
import 'package:smartbazar/features/order_details/model/shipping_cities_model.dart';
import 'package:smartbazar/features/update_listing/api/update_listing_provider.dart';
import 'package:smartbazar/features/vendor/view/model/my_listing_model.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class UpdateListing extends StatefulWidget {
  final MyListingProduct? prod;
  const UpdateListing({super.key, required this.prod});

  @override
  State<UpdateListing> createState() => _UpdateListingState();
}

class _UpdateListingState extends State<UpdateListing> {
  TypeList? dropdownvalue; // Updated to hold the selected TypeList object

  final bool _isChecked = false;
  final TextEditingController _pickupcontroller = TextEditingController();
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  Place? selectedpickup;

  TextEditingController heightcontroller = TextEditingController();
  TextEditingController experiencecontroller = TextEditingController();
  TextEditingController comapnycontroller = TextEditingController();

  TextEditingController phonecontroller = TextEditingController();
  TextEditingController pricecontroller = TextEditingController();
  TextEditingController modelcontroller = TextEditingController();
  String accept = '0';

  TextEditingController streetsizecontroller = TextEditingController();
  TextEditingController storagecontroller = TextEditingController();
  TextEditingController sizecontroller = TextEditingController();
  TextEditingController Gbcontroller = TextEditingController();

  bool? _acceptterms;

  TextEditingController auomobilecontroller = TextEditingController();
  CityList? selectedCity;

  TextEditingController milagecontroller = TextEditingController();
  TextEditingController whatsintheboxcontroller = TextEditingController();

  TextEditingController yearofregistrationcontroller = TextEditingController();
  TextEditingController kilometerscontroller = TextEditingController();
  TextEditingController stockcontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  NewListingRepository repository = NewListingRepository();

  TextEditingController discountcontroller = TextEditingController();
  TextEditingController tagController = TextEditingController();
  TextEditingController weightcontroller = TextEditingController();
  TextEditingController widthcontroller = TextEditingController();
  TextEditingController lengthcontroller = TextEditingController();
  TextEditingController youtubecontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController screensizecontroller = TextEditingController();

  int? selectedStoryDisplayDays;

  List<TypeList> typeListItems =
      []; // This will store the list of types fetched from API
  List<Offer>? getoffer;

  List<MyCategory> categoryListItems = [];
  Offer? selectedoffer;
  bool _sellerDeliveryAvailable = false;
  bool _upayaDelivery = false;
  bool _hyperDeliveryAvailable = false;
  List<CityList>? citylistsitems = [];
  final List<String> _tags = [];
  void _addTag(String tag) {
    if (tag.isNotEmpty && !_tags.contains(tag)) {
      setState(() {
        _tags.add(tag);
      });
      tagController.clear();
    }
  }

  void _removeTag(String tag) {
    setState(() {
      _tags.remove(tag);
    });
  }

  String _inputText = "";
  bool _showSearchProductModels = false;
  int? _selectedpackage = 0;

  @override
  void initState() {
    super.initState();
    _fetchOffers();
    _fetchCities();
    _fetchCategoryList('1');
    _acceptterms = widget.prod!.acceptTerms == '1' ? true : false;
    accept = widget.prod!.acceptTerms!;

    selectedStoryDisplayDays = int.tryParse(widget.prod!.storyDisplayDays!)!;
    _fetchTypeList(); // Fetch the types when the widget is initialized
    if (widget.prod?.hyperDel == '1') {
      _hyperDeliveryAvailable = true;
    } else if (widget.prod?.sellerDel == "1") {
      _sellerDeliveryAvailable = true;
    }
    getSellerData();
  }

  void getSellerData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    namecontroller.text = prefs.getString("name")!;
    emailcontroller.text = prefs.getString("email")!;
    phonecontroller.text = prefs.getString("phone")!;
  }

  Future<void> _fetchTypeList() async {
    try {
      NewListingRepository repository = NewListingRepository();
      List<TypeList> fetchedTypes = await repository.fetchTypeList();

      // Initialize dropdownvalue to null before fetching
      TypeList? selectedType;

      // Compare and set dropdownvalue when typeId matches
      for (TypeList fetchedType in fetchedTypes) {
        if (widget.prod?.postTypeId == fetchedType.typeId.toString()) {
          selectedType = fetchedType; // Set the selected type here
          break; // No need to loop further once a match is found
        }
      }

      // Update state with fetched data and selected type
      setState(() {
        typeListItems = fetchedTypes;
        dropdownvalue = selectedType; // Set the dropdown value
      });
    } catch (e) {
      // Handle error, maybe show a message to the user
      print('Failed to load types: $e');
    }
  }

  Future<void> _fetchCities() async {
    try {
      List<CityList> fetchCities = await repository.fetchCities(1);

      // Initialize dropdownvalue to null before fetching
      CityList? selectedType;

      print("Fetched cities: $fetchCities");

      for (int i = 0; i < fetchCities.length; i++) {
        if (widget.prod?.cityId.toString() == fetchCities[i].id.toString()) {
          // When a match is found, update the selectedCity
          selectedType = fetchCities[i];
          print("Matched city: ${fetchCities[i].name}");
        }
      }

      // Update state with fetched data and selected city
      setState(() {
        citylistsitems = fetchCities;
        selectedCity = selectedType; // Set the dropdown value
      });
    } catch (e) {
      // Handle error, maybe show a message to the user
      print('Failed to load cities: $e');
    }
  }

  bool isloading = false;
  List<File?> selectedImages = [];

  Future<void> _fetchOffers() async {
    try {
      OffersResponse fetchedTypes = await repository.fetchOffers();

      // Check if the fetched data is not null
      for (var e in fetchedTypes.data!) {
        // Normalize both strings by trimming, lowering case, and handling extra spaces
        String offer =
            e.offers?.toLowerCase().trim().replaceAll(RegExp(r'\s+'), ' ') ??
                '';
        String widgetOffer = widget.prod?.offers
                ?.toLowerCase()
                .trim()
                .replaceAll(RegExp(r'\s+'), ' ') ??
            '';

        // Normalize plural forms (strip 's' at the end of the string)
        offer = offer.endsWith('s')
            ? offer.substring(0, offer.length - 1)
            : offer;
        widgetOffer = widgetOffer.endsWith('s')
            ? widgetOffer.substring(0, widgetOffer.length - 1)
            : widgetOffer;

        // Compare the normalized strings
        if (offer == widgetOffer) {
          print("popo");
          selectedoffer = e; // Set the selected offer
          break; // Exit once the matching offer is found
        }
      }
    
      // Update the state with the fetched offers
      setState(() {
        getoffer = fetchedTypes.data;
      });
    } catch (e) {
      print('Error fetching offers: $e');
      // Handle error, maybe show a message to the user
    }
  }

  List<Place>? _places; // Replace with your actual type for _places.

  Future<void> _fetchCategoryList(String typeId) async {
    try {
      NewListingRepository repository = NewListingRepository();
      print("maka $repository");
      final categories = await repository.fetchCategoryList(parentId: typeId);
      setState(() {
        categoryListItems = categories;
      });
    } catch (e) {
      print('Failed to load categories: $e');
    }
  }

  Timer? _debounce;

  void _onSearchChanged(String searchTerm) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();

    _debounce = Timer(const Duration(milliseconds: 300), () {
      if (searchTerm.isNotEmpty) {
        _getStreet(searchTerm);
      }
    });
  }

  Future<void> _getStreet(String name) async {
    try {
      final value = await getpickaddress(name);
      setState(() {
        _places = value.places!;
      });
    } catch (e) {
      // Handle errors if needed
      print('Error fetching street data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    print('taka ${widget.prod}');
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
                            controller: titlecontroller,
                            decoration: InputDecoration.collapsed(
                              hintText: widget.prod?.title ?? 'Listing Tile',
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: widget.prod?.title == null
                                    ? const Color(0xffADADAD)
                                    : Colors.black,
                              ),
                            ),
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
                          controller: descriptionController,
                          decoration: InputDecoration.collapsed(
                            hintText: widget.prod?.description ?? 'Describe what makes your listing unique',
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                              color: const Color(0xffADADAD),
                            ),
                          ),
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
                    // SizedBox(
                    //   height: 10.h,
                    // ),
                    // const ReturnPolicyCardWidget(),
                    // SizedBox(
                    //   height: 10.h,
                    // ),
                    // CreateListingCardWidget(
                    //     child: Row(
                    //   children: [
                    //     Row(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         Text(
                    //           'Trending',
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
                    //     Checkbox(
                    //       value: false,
                    //       onChanged: (value) {},
                    //     ),
                    //   ],
                    // ),),
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
                            controller: stockcontroller,
                            decoration: InputDecoration.collapsed(
                                hintText: widget.prod?.stock ?? 'Available Qty',
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
                            controller: pricecontroller,
                            decoration: InputDecoration.collapsed(
                                hintText: widget.prod?.price ?? 'RS xxxxx',
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
                            controller: discountcontroller,
                            decoration: InputDecoration.collapsed(
                                hintText: widget.prod?.discountedPrice ?? 'Enter discount',
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
                    Row(
                      children: [
                        CustomCheckbox(
                          value: _acceptterms!,
                          onChanged: (bool newValue) {
                            setState(() {
                              _acceptterms = newValue;
                            });
                            accept = (_acceptterms!) ? '1' : '0';
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
                            child: CustomDropdownButton<Offer>(
                              items: getoffer ?? [],
                              dropdownValue: selectedoffer,
                              onChanged: (Offer? newValue) {
                                setState(() {
                                  selectedoffer = newValue;
                                });
                              },
                              getItemLabel: (Offer item) => item.offers,
                            ),
                          ),
                        ],
                      ),
                    ),

                    CreateListingCardWidget(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
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
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          DropdownButton<int>(
                            isExpanded:
                                true, // Ensures dropdown spans full width
                            value:
                                selectedStoryDisplayDays, // The currently selected value
                            hint: Text(
                              'Select Story Display Days',
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.grey,
                              ),
                            ),
                            items: List.generate(10, (index) {
                              int day =
                                  index + 1; // Generates values from 1 to 10
                              return DropdownMenuItem<int>(
                                value: day,
                                child: Text(
                                  '$day Days',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              );
                            }),
                            onChanged: (newValue) {
                              setState(() {
                                selectedStoryDisplayDays = newValue;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),

                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 2.w),
                        const Text(
                          "Seller Delivery Available",
                          style: TextStyle(fontSize: 13),
                        ),
                        SizedBox(
                          height: 5,
                          child: Checkbox(
                            value: _sellerDeliveryAvailable,
                            onChanged: (value) {
                              if (value == true) {
                                setState(() {
                                  _sellerDeliveryAvailable = true;
                                  _upayaDelivery = false;
                                  _hyperDeliveryAvailable = false;
                                });
                              } else {
                                setState(() {
                                  _sellerDeliveryAvailable = false;
                                });
                              }
                            },
                          ),
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        const Text(
                          "Upaya Delivery",
                          style: TextStyle(fontSize: 13),
                        ),
                        SizedBox(
                          height: 5,
                          child: Checkbox(
                            value: _upayaDelivery,
                            onChanged: (value) {
                              if (value == true) {
                                setState(() {
                                  _upayaDelivery = true;
                                  _sellerDeliveryAvailable = false;
                                  _hyperDeliveryAvailable = false;
                                });
                              } else {
                                setState(() {
                                  _upayaDelivery = false;
                                });
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Hyper Delivery Available",
                          style: TextStyle(fontSize: 13),
                        ),
                        SizedBox(
                          height: 5,
                          child: Checkbox(
                            value: _hyperDeliveryAvailable,
                            onChanged: (value) {
                              if (value == true) {
                                setState(() {
                                  _hyperDeliveryAvailable = true;
                                  _sellerDeliveryAvailable = false;
                                  _upayaDelivery = false;
                                });
                              } else {
                                setState(() {
                                  _hyperDeliveryAvailable = false;
                                });
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(
                    //   height: 15.h,
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
                            controller: lengthcontroller,
                            decoration: InputDecoration.collapsed(
                              hintText: widget.prod?.length ?? 'Lenght in cm',
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: const Color(0xffADADAD),
                              ),
                            ),
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
                            controller: widthcontroller,
                            decoration: InputDecoration.collapsed(
                                hintText: widget.prod?.width ?? 'Width in cm',
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
                            controller: heightcontroller,
                            decoration: InputDecoration.collapsed(
                                hintText: widget.prod?.height ?? 'Height in cm',
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
                                hintText: widget.prod?.weight ?? 'Weight in KG',
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

                    // CreateListingCardWidget(
                    //   child: Row(
                    //     mainAxisSize: MainAxisSize.max,
                    //     children: [
                    //       Row(
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           Text(
                    //             'Min orders',
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
                    //       SizedBox(
                    //         width: 10.w,
                    //       ),
                    //       Expanded(
                    //         // Wrap the dropdown in Expanded to constrain its width
                    //         child: CustomDropdownButton<CityList>(
                    //           items: const [],
                    //           dropdownValue: null,
                    //           onChanged: (newValue) {
                    //             setState(() {
                    //               // selectedCity = newValue;
                    //             });
                    //           },
                    //           getItemLabel: (CityList item) => item.name,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    SizedBox(
                      height: 15.h,
                    ),
                    // Container(
                    //   width: double.infinity,
                    //   padding: const EdgeInsets.symmetric(
                    //       horizontal: 10, vertical: 20),
                    //   decoration: BoxDecoration(
                    //       color: ColorConstant.whiteColor,
                    //       borderRadius: BorderRadius.circular(20),
                    //       border: Border.all(
                    //           color: ColorConstant.grayColor, width: 2)),
                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.start,
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       Text(
                    //         "Discount on Bulk Order !",
                    //         style: headerstyle.copyWith(
                    //             color: ColorConstant.blackColor,
                    //             fontWeight: FontWeight.w600,
                    //             fontSize: 14),
                    //       ),
                    //       SizedBox(
                    //         height: 15.h,
                    //       ),
                    //       // const bulk_discount_widget()
                    //     ],
                    //   ),
                    // ),
                    // CreateListingCardWidget(
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.start,
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       Column(
                    //         mainAxisAlignment: MainAxisAlignment.start,
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           Text(
                    //             'Payment options',
                    //             style: TextStyle(
                    //                 fontSize: 14.sp,
                    //                 fontWeight: FontWeight.bold,
                    //                 color: Colors.black),
                    //           ),
                    //         ],
                    //       ),
                    //       SizedBox(width: 140.w),
                    //       Expanded(
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.start,
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           children: [
                    //             Row(
                    //               children: [
                    //                 CustomCheckbox(
                    //                     value: false,
                    //                     onChanged: (value) {
                    //                       setState(() {
                    //                         // _isDamge = value;
                    //                       });
                    //                     }),
                    //                 SizedBox(
                    //                   width: 5.w,
                    //                 ),
                    //                 Expanded(
                    //                   child: Text(
                    //                     'Cash',
                    //                     style: TextStyle(
                    //                         fontSize: 14.sp,
                    //                         fontWeight: FontWeight.w500,
                    //                         color: Colors.black),
                    //                     maxLines: 2,
                    //                     overflow: TextOverflow.ellipsis,
                    //                   ),
                    //                 )
                    //               ],
                    //             ),
                    //             SizedBox(
                    //               height: 8.h,
                    //             ),
                    //             Row(
                    //               children: [
                    //                 CustomCheckbox(
                    //                     value: false,
                    //                     onChanged: (value) {
                    //                       setState(() {
                    //                         // _isDamge = value;
                    //                       });
                    //                     }),
                    //                 SizedBox(
                    //                   width: 5.w,
                    //                 ),
                    //                 Expanded(
                    //                   child: Text(
                    //                     'Cheque',
                    //                     style: TextStyle(
                    //                         fontSize: 14.sp,
                    //                         fontWeight: FontWeight.w500,
                    //                         color: Colors.black),
                    //                     maxLines: 2,
                    //                     overflow: TextOverflow.ellipsis,
                    //                   ),
                    //                 )
                    //               ],
                    //             ),
                    //             SizedBox(
                    //               height: 8.h,
                    //             ),
                    //             Row(
                    //               children: [
                    //                 CustomCheckbox(
                    //                     value: false,
                    //                     onChanged: (value) {
                    //                       setState(() {
                    //                         // _isDamge = value;
                    //                       });
                    //                     }),
                    //                 SizedBox(
                    //                   width: 5.w,
                    //                 ),
                    //                 Expanded(
                    //                   child: Text(
                    //                     'QR',
                    //                     style: TextStyle(
                    //                         fontSize: 14.sp,
                    //                         fontWeight: FontWeight.w500,
                    //                         color: Colors.black),
                    //                     maxLines: 2,
                    //                     overflow: TextOverflow.ellipsis,
                    //                   ),
                    //                 )
                    //               ],
                    //             ),
                    //             SizedBox(
                    //               height: 8.h,
                    //             ),
                    //             Row(
                    //               children: [
                    //                 CustomCheckbox(
                    //                     value: false,
                    //                     onChanged: (value) {
                    //                       setState(() {
                    //                         // _isDamge = value;
                    //                       });
                    //                     }),
                    //                 SizedBox(
                    //                   width: 5.w,
                    //                 ),
                    //                 Expanded(
                    //                   child: Text(
                    //                     'Bank',
                    //                     style: TextStyle(
                    //                         fontSize: 14.sp,
                    //                         fontWeight: FontWeight.w500,
                    //                         color: Colors.black),
                    //                     maxLines: 2,
                    //                     overflow: TextOverflow.ellipsis,
                    //                   ),
                    //                 )
                    //               ],
                    //             ),
                    //             SizedBox(
                    //               height: 8.h,
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // CreateListingCardWidget(
                    //     child: Row(
                    //   children: [
                    //     Text(
                    //       'payment Info',
                    //       style: TextStyle(
                    //           fontWeight: FontWeight.w500,
                    //           fontSize: 16.sp,
                    //           color: Colors.black),
                    //     ),
                    //     SizedBox(
                    //       width: 40.w,
                    //     ),
                    //     Expanded(
                    //       child: TextField(
                    //         decoration: InputDecoration.collapsed(
                    //             hintText: 'payment info/Policy',
                    //             hintStyle: TextStyle(
                    //                 fontWeight: FontWeight.w500,
                    //                 fontSize: 16.sp,
                    //                 color: const Color(0xffADADAD))),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    // ),
                    // CreateListingCardWidget(
                    //     child: Row(
                    //   children: [
                    //     Text(
                    //       'Policy',
                    //       style: TextStyle(
                    //           fontWeight: FontWeight.w500,
                    //           fontSize: 16.sp,
                    //           color: Colors.black),
                    //     ),
                    //     SizedBox(
                    //       width: 40.w,
                    //     ),
                    //     Expanded(
                    //       child: TextField(
                    //         decoration: InputDecoration.collapsed(
                    //             hintText: 'Enter your policy',
                    //             hintStyle: TextStyle(
                    //                 fontWeight: FontWeight.w500,
                    //                 fontSize: 16.sp,
                    //                 color: const Color(0xffADADAD))),
                    //       ),
                    //     ),
                    //   ],
                    // )),
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
                              controller: emailcontroller,
                              decoration: InputDecoration.collapsed(
                                  hintText: widget.prod?.email ?? 'XXX@gmail.com',
                                  hintStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 200.h,
                      child: Stack(
                        children: [
                          Positioned(
                              child: CreateListingCardWidget(
                            child: Row(
                              children: [
                                SizedBox(width: 5.w),
                                Text(
                                  'Select Pickup',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(width: 5.w),
                                Text(
                                  '*',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color: Colors.red,
                                  ),
                                ),
                                SizedBox(width: 20.w),
                                Expanded(
                                  child: TextField(
                                    controller: _pickupcontroller,
                                    onChanged: _onSearchChanged,
                                    decoration: InputDecoration.collapsed(
                                      hintText: selectedpickup?.place_id ??
                                          'Select pickup',
                                      hintStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.sp,
                                        color: const Color(0xffADADAD),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                          Positioned(
                            top: 90.h,
                            child: CreateListingCardWidget(
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
                                    controller: phonecontroller,
                                    decoration: InputDecoration.collapsed(
                                      hintText: widget.prod?.phone ?? '98XXXXXX',
                                      hintStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.sp,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20.w, vertical: 12.h),
                                  decoration: BoxDecoration(
                                      color: const Color(0xffEDECEC),
                                      borderRadius:
                                          BorderRadius.circular(10.r)),
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
                          ),
                          Positioned(
                            height: 100,
                            top: 60.h, // Adjust as per your layout
                            right: 0,
                            child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 300),
                              opacity: _places == null || _places!.isEmpty
                                  ? 0
                                  : 1, // Fade in/out based on _places
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                height: _places == null || _places!.isEmpty
                                    ? 0
                                    : 100, // Smooth height transition
                                width: 200.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      offset: const Offset(0, 4),
                                      blurRadius: 10,
                                    ),
                                  ],
                                ),
                                child: _places == null || _places!.isEmpty
                                    ? Container()
                                    : ListView.separated(
                                        padding: const EdgeInsets.all(8.0),
                                        shrinkWrap: true,
                                        primary: false,
                                        itemCount: _places!.length,
                                        itemBuilder: (context, index) {
                                          final product = _places![index];
                                          return InkWell(
                                            onTap: () {
                                              setState(() {
                                                _showSearchProductModels =
                                                    false; // Optional if used elsewhere
                                                FocusScope.of(context)
                                                    .unfocus(); // Hide the keyboard
                                                selectedpickup =
                                                    product; // Set the selected item
                                                _places =
                                                    []; // Clear the dropdown items
                                              });
                                            },
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade100,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  const Icon(
                                                    Icons.location_on,
                                                    color: Colors.redAccent,
                                                    size: 16,
                                                  ),
                                                  const SizedBox(width: 8),
                                                  Expanded(
                                                    child: Text(
                                                      product.description ??
                                                          "Unknown Place",
                                                      softWrap: true,
                                                      style:
                                                          headerstyle.copyWith(
                                                        color: ColorConstant
                                                            .blackColor,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        separatorBuilder: (context, index) =>
                                            const Divider(
                                          height: 8,
                                          color: Colors.grey,
                                        ),
                                      ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedpackage = 0;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 20.h,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: _selectedpackage == 0
                              ? const Color(0xff362677)
                              : Colors.white,
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Regular(Free)',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: _selectedpackage != 0
                                    ? const Color(0xff362677)
                                    : Colors.white,
                              ),
                            ),
                            Text(
                              'Rs. 00',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: _selectedpackage != 0
                                    ? const Color(0xff362677)
                                    : Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    const Text(
                      "keep online ofr 60 days",
                      style: TextStyle(fontSize: 10),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedpackage = 1;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 20.h,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: _selectedpackage == 1
                              ? const Color(0xff362677)
                              : Colors.white,
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Smart Boost',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: _selectedpackage != 1
                                    ? const Color(0xff362677)
                                    : Colors.white,
                              ),
                            ),
                            Text(
                              'Rs. 50',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: _selectedpackage != 1
                                    ? const Color(0xff362677)
                                    : Colors.white,
                              ),
                            )
                          ],
                        ),
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

                    SizedBox(
                      height: 30.h,
                    ),
                    Center(
                      child: isloading
                          ? const Center(child: CircularProgressIndicator())
                          : GeneralEelevatedButton(
                              text: isloading ? 'Submitting...' : 'Submit',
                              onPresssed: () async {
                                setState(() {
                                  isloading = true; // Start loading
                                });
                                try {
                                  String responseMessage = await updatelisting(
                                    null,
                                    widget.prod!.id!,

                                    category: widget.prod!.categoryId!,

                                    package: _selectedpackage,
                                    // pieces: widget.pieces,
                                    // ref
                                    // cf: widget.cfvalue,
                                    tags: _tags,
                                    // category: widget.category!.trim(),
                                    stock: stockcontroller.text ?? widget.prod!.stock!,
                                    // mileage: widget.mileage?.trim(),
                                    // warrenty: widget.warrenty?.value,
                                    title: titlecontroller.text.isEmpty
                                        ? widget.prod!.title!
                                        : titlecontroller.text,

                                    city: selectedCity!.name,
                                    price: pricecontroller.text ?? widget.prod!.price!,
                                    description:
                                        descriptionController.text ?? widget.prod!.description!,
                                    length: lengthcontroller.text ?? widget.prod!.length!,
                                    width: widthcontroller.text ?? widget.prod!.width!,
                                    height: heightcontroller.text ?? widget.prod!.height!,
                                    weight: weightcontroller.text ?? widget.prod!.weight!,
                                    disprice: discountcontroller.text ?? widget.prod!.discountedPrice!,
                                    posttype: dropdownvalue == null
                                        ? widget.prod!.postTypeId!
                                        : dropdownvalue!.typeId.toString(),
                                    email: emailcontroller.text ?? widget.prod!.email!,
                                    phone: phonecontroller.text ?? widget.prod!.phone!,
                                    username: namecontroller.text ?? widget.prod!.contactName!,
                                    pickup: selectedpickup == null
                                        ? widget.prod!.pickup!
                                        : selectedpickup!.description!,
                                    images: selectedImages,
                                    accept: _acceptterms == false
                                        ? widget.prod?.acceptTerms == true
                                            ? '1'
                                            : '0'
                                        : _acceptterms == true
                                            ? '1'
                                            : '0',
                                    address: addresscontroller.text ?? widget.prod!.address!,
                                    // mapcontrolleer?.text.trim() ?? '',
                                    offer: selectedoffer == null
                                        ? widget.prod?.offers!
                                        : selectedoffer?.offers,
                                    story: storagecontroller.text == null
                                        ? widget.prod?.storyDisplayDays!
                                        : stockcontroller.text,
                                    // youtube: widget.youtube?.trim(),
                                    lat: selectedpickup!.latitude,
                                    long: selectedpickup!.longitude,
                                  );
                                } catch (e) {}
                              },
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
