import 'dart:core';

import 'package:adoptive_calendar/adoptive_calendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/api/refresh_token_api.dart';
import 'package:smartbazar/features/auth/widgets/custom_check_box_widgt.dart';
import 'package:smartbazar/features/auth/widgets/custom_drop_down_widget.dart';
import 'package:smartbazar/features/auth/widgets/rich_text_widget.dart';
import 'package:smartbazar/features/create_listing/api/get_categories_provider.dart';
import 'package:smartbazar/features/create_listing/api/get_dropdown_value_api.dart';
import 'package:smartbazar/features/create_listing/model/dropdown_value_model.dart';
import 'package:smartbazar/features/create_listing/model/fields_model.dart';
import 'package:smartbazar/features/create_listing/view/SellerInformationWidget.dart';
import 'package:smartbazar/features/create_listing/widget/category_widget.dart';
import 'package:smartbazar/features/create_listing/widget/create_listing_card_widget.dart';
import 'package:smartbazar/features/order_details/api/shipping_cities_api.dart';
import 'package:smartbazar/features/order_details/model/shipping_cities_model.dart';
import 'package:smartbazar/features/vendor/vendor_profile/api/check_user_verified_api.dart';
import 'package:smartbazar/features/vendor_details/view/vendor_details_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

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
  // ShippingCitiesModel? selectedpickup;
  // bool _isChecked = false;
  bool _acceptterms = false;
  bool trending = false;
  final List<String> _tags = [];
  String _inputText = "";
  DateTime? timeAndMonth;
  List<List<dynamic>>? cf = [];
  Option? selecteclothsize;
  void _onDateSelected(DateTime? date) {
    if (date != null) {
      setState(() {
        timeAndMonth = date;
      });
    }
  }

  String? typeid;
  Category? selectedcategory;
  List<TypeList> typeListItems = [];
  List<Category> subcategoryList = [];
  Category? subcatagory;
  CityList? selectedCity;
  Option? selectedElecModel;
  List<Option>? selectedColors;
  List<Option>? selectedFeatures;

  DateTime? selectedStartDate;
  DateTime? selectmanufacturingdate;
  DateTime? grocceryexpiraydate;

  DateTime? deadlineDate;

  Option? selectedProductTYpe;
  Option? fuelType;
  Option? trasnmsissiontype;

  int? warrentyselected;
  Option? selectedmodel;
  Option? selecetedWarrenty;
  Option? selectedbuildingtype;

  Option? selectedRoom;
  Option? jobtype;

  Option? selectedmobilebrand;
  // String? sel;e;

  List<CityList>? citylistsitems = [];
  List<Offer>? offerresponse = [];
  Offer? selectedOffer;
  Option? selectedFurnished;
  Option? selecctedProductTYpe;
  List<Map<String, String>> rows = [{}];

  List<ProductType> productTypeListItems = [];
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController heightcontroller = TextEditingController();
  TextEditingController experiencecontroller = TextEditingController();
  TextEditingController comapnycontroller = TextEditingController();

  TextEditingController phonecontroller = TextEditingController();
  TextEditingController pricecontroller = TextEditingController();
  TextEditingController modelcontroller = TextEditingController();

  TextEditingController streetsizecontroller = TextEditingController();
  TextEditingController storagecontroller = TextEditingController();
  TextEditingController sizecontroller = TextEditingController();
  TextEditingController Gbcontroller = TextEditingController();

  TextEditingController auomobilecontroller = TextEditingController();

  TextEditingController milagecontroller = TextEditingController();
  TextEditingController whatsintheboxcontroller = TextEditingController();

  TextEditingController yearofregistrationcontroller = TextEditingController();
  TextEditingController kilometerscontroller = TextEditingController();
  TextEditingController stockcontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();

  TextEditingController discountcontroller = TextEditingController();
  TextEditingController tagController = TextEditingController();
  TextEditingController weightcontroller = TextEditingController();
  TextEditingController widthcontroller = TextEditingController();
  TextEditingController lengthcontroller = TextEditingController();
  TextEditingController youtubecontroller = TextEditingController();

  String accept = '0';
  String? isUserVerified;
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController screensizecontroller = TextEditingController();

  NewListingRepository repository = NewListingRepository();
  int? categoryId;
  int? categoryId1;
  int? selectedStoryDisplayDays; // Holds the selected value

  int? categoryId2;
  FieldsResponse? response;
  FieldsResponse? grocerryresp;

  FieldsResponse? phoneresp;
  FieldsResponse? jobsresp;
  List<Offer>? getoffer;
  Offer? selectedoffer;
  bool? _isselected;
  FieldsResponse? furnitureresresp;
  FieldsResponse? laptoprep;
  FieldsResponse? clothresp;

  FieldsResponse? getRoad;
  FieldsResponse? getcloth;
  Category? childcategory;
  FieldsResponse? getsize;

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
      getoffer = fetchedTypes.data;
    } catch (e) {
      // Handle error, maybe show a message to the user
    }
  }

  Future<void> _fetchTypeList() async {
    try {
      var allItems = await repository.fetchTypeList();
      setState(() {
        typeListItems = allItems;
      });

      // var subcategory = await repository.fetchCategoryList(parentId: typeListItems.);
    } catch (e) {}
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
    }
  }

  // final _stringTagController = StringTagController();
  void _handleCategorySelection(
      Category? selectedCategory, String type, WidgetRef ref) {
    // print("bibash ${selectedCategory?.id}");
    if (selectedCategory != null) {
      final categoryId = selectedCategory.id;

      // Notify provider
      ref.read(GetCategoryResponseProvider(categoryId));

      // Watch provider and fetch data
      final getCategories = ref.watch(GetCategoryResponseProvider(categoryId));
      ref.watch(GetCategoryResponseProvider(171)).whenData(
        (value) {
          grocerryresp = value;
        },
      );
      final event = ref.watch(GetCategoryResponseProvider(217));
      event.when(
        data: (data) {},
        error: (error, stackTrace) {},
        loading: () => const CircularProgressIndicator(),
      );
      getCategories.whenData((value) {
        response = value;
      });
    } else {}
  }

  List<Category>? categoryListItems;
  Future<void> _fetchCategoryList(String typeId) async {
    try {
      NewListingRepository repository = NewListingRepository();
      final categories = await repository.fetchCategoryList(parentId: typeId);
      setState(() {
        categoryListItems = categories;
      });
    } catch (e) {
      print('Failed to load categories: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final citySuggestionsAsync = ref.watch(getShippingCitiesProvider);
    final getCategories =
        ref.watch(GetCategoryResponseProvider(categoryId ?? 1)); //car
    ref.watch(GetCategoryResponseProvider(73)).whenData(
      (value) {
        jobsresp = value;
      },
    );
    ref.watch(GetCategoryResponseProvider(9)).whenData(
      (value) {
        phoneresp = value;
      },
    ); //phone
    // ref.watch(GetCategoryResponseProvider(56)).whenData(
    //   (value) {
    //      = value;
    //   },
    // );
    final laptop = ref.watch(GetCategoryResponseProvider(14)).whenData(
      (value) {
        laptoprep = value;
      },
    ); //car
    final furniture = ref.watch(GetCategoryResponseProvider(30)).whenData(
      (value) {
        furnitureresresp = value;
      },
    ); //car
    final road = ref.watch(GetCategoryResponseProvider(37)).whenData(
      (value) {
        getRoad = getRoad;
      },
    ); //car
    final clothfirst = ref.watch(GetCategoryResponseProvider(54)).whenData(
      (value) {
        getcloth = value;
      },
    );
    final selltofields = ref.watch(GetCategoryResponseProvider(217));

    getCategories.whenData(
      (value) {
        getRoad = value; //car
        // print('bibashl ${getRoad?.result['8']?.id}');
      },
    );
    selltofields.when(
      data: (data) {},
      error: (error, stackTrace) => null,
      loading: () => null,
    );

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

                CategoryField(
                  onCategorySelected: (category, typeId) {
                    if (category != null) {
                      // Update categoryId and typeId
                      setState(() {
                        selectedcategory = category;
                        categoryId = category.id; // Update categoryId safely
                        // You can also store the typeId if needed
                        typeid =
                            typeId; // Optionally use typeId for other purposes
                      });

                      // Print the selected category ID and typeId for debugging
                      print(
                          "Selected Category: ${category.name}, Category ID: ${category.id}, Type ID: $typeid");
                    }
                  },
                  onSubCategorySelected: (Category? subCategory) {
                    // Update categoryId based on subcategory selection
                    setState(() {
                      categoryId = subCategory?.id;
                    });

                    // Print the subcategory ID and typeId for debugging
                    print(
                        "Selected Subcategory: ${subCategory?.name}, Subcategory ID: ${subCategory?.id}");
                  },
                  onSubCategorySelected1: (Category? sub1) {
                    // Update categoryId for subcategory 1
                    setState(() {
                      categoryId = sub1?.id;
                    });

                    // Print the subcategory 1 ID
                    print(
                        "Selected Sub-subcategory 1: ${sub1?.name}, Sub-subcategory 1 ID: ${sub1?.id}");
                  },
                  onSubCategorySelected2: (Category? sub2) {
                    // Update categoryId for subcategory 2
                    setState(() {
                      categoryId = sub2?.id;
                    });

                    // Print the subcategory 2 ID
                    print(
                        "Selected Sub-subcategory 2: ${sub2?.name}, Sub-subcategory 2 ID: ${sub2?.id}");
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
                  ),
                ),
                if (typeid == '5')
                  CreateListingCardWidget(
                    child: Row(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Event Address',
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
                            onSubmitted: (value) {
                              if (getRoad?.result[2].id != null) {
                                // Ensure the dynamic key is safe to access
                                cf?.add([
                                  'cf.${getRoad!.result[2].id}', // Create the key dynamically
                                  whatsintheboxcontroller.text,
                                ]);
                              }
                            },
                            controller: addresscontroller,
                            decoration: InputDecoration.collapsed(
                                hintText: 'Enter address',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color: const Color(0xffADADAD))),
                          ),
                        ),
                      ],
                    ),
                  ),
                if (typeid == '122')
                  CreateListingCardWidget(
                    child: Row(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Time',
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
                            child: InkWell(
                                onTap: () async {
                                  final pickedDate = await showDialog<DateTime>(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AdoptiveCalendar(
                                        onSelection: (p0) {
                                          if (phoneresp?.result != null) {
                                            // Ensure the dynamic key is safe to access
                                            cf?.add([
                                              'cf.${phoneresp!.result[4].id}', // Create the key dynamically
                                              p0
                                            ]);
                                          }
                                        },
                                        initialDate: DateTime
                                            .now(), // Default current date
                                        action:
                                            true, // Enable action buttons (Confirm/Cancel)
                                      );
                                    },
                                  );
                                  _onDateSelected(pickedDate);
                                },
                                child: Text(timeAndMonth == null
                                    ? "Pick a time"
                                    : DateFormat('yyyy/MM/dd HH:mm')
                                        .format(timeAndMonth!)))),
                      ],
                    ),
                  ),
                if (typeid == '4')
                  CreateListingCardWidget(
                      child: Row(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Experience',
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
                          onSubmitted: (value) {
                            if (jobsresp?.result[0].id != null) {
                              // Ensure the dynamic key is safe to access
                              cf?.add([
                                'cf.${jobsresp!.result[1].id}', // Create the key dynamically
                                value,
                              ]);
                            }
                          },
                          controller: experiencecontroller,
                          decoration: InputDecoration.collapsed(
                              hintText: 'Enter experience',
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
                if (selectedcategory?.id == 73)
                  CreateListingCardWidget(
                      child: Row(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Enter company name',
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
                          onSubmitted: (value) {
                            if (jobsresp?.result[2].id != null) {
                              // Ensure the dynamic key is safe to access
                              cf?.add([
                                'cf.${getRoad!.result[2].id}', // Create the key dynamically
                                value,
                              ]);
                            }
                          },
                          controller: comapnycontroller,
                          decoration: InputDecoration.collapsed(
                              hintText:
                                  'Enter company name leav if not want to disclose',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                  color: const Color(0xffADADAD))),
                        ),
                      ),
                    ],
                  )),
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
                if (selectedcategory?.id == 9 || selectedcategory?.id == 14)
                  CreateListingCardWidget(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'What\'s in the box',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              ' *',
                              style: TextStyle(
                                color: const Color(0xffD33636),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15.h),
                        TextField(
                          controller: whatsintheboxcontroller,
                          onSubmitted: (value) {
                            if (phoneresp?.result[1].id != null) {
                              // Ensure the dynamic key is safe to access
                              cf?.add([
                                'cf.${getRoad!.result[1].id}', // Create the key dynamically
                                whatsintheboxcontroller.text,
                              ]);
                            }
                          },
                          decoration: InputDecoration.collapsed(
                            hintText: "Mention what's included",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              color: const Color(0xffADADAD),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

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
                //         controller: titlecontroller,
                //         decoration: InputDecoration.collapsed(
                //             hintText: 'Enter brand',
                //             hintStyle: TextStyle(
                //                 fontWeight: FontWeight.w500,
                //                 fontSize: 14.sp,
                //                 color: const Color(0xffADADAD))),
                //       ),
                //     ),
                //   ],
                // ),
                // ),

                //   child: Row(
                //     mainAxisSize: MainAxisSize.max,
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
                //       SizedBox(
                //         width: 10.w,
                //       ),
                //       Expanded(
                //         // Wrap the dropdown in Expanded to constrain its width
                //         child: CustomDropdownButton<Option>(
                //           items: response!.result['4']!.options,
                //           dropdownValue: selectedProductTYpe,
                //           onChanged: (newValue) {
                //             setState(() {
                //               selectedProductTYpe = newValue;
                //             });
                //           },
                //           getItemLabel: (Option item) => item.value,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                if (selectedcategory?.id == 37)
                  CreateListingCardWidget(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rooms',
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
                          child: CustomDropdownButton<Option>(
                            items: getRoad!.result[3].options,
                            dropdownValue: selectedRoom,
                            onChanged: (newValue) {
                              setState(() {
                                selectedRoom = newValue;
                              });
                            },
                            getItemLabel: (Option item) => item.value,
                          ),
                        ),
                      ],
                    ),
                  ),
                if (selectedcategory?.id == 73)
                  CreateListingCardWidget(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Job Type',
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
                          child: CustomDropdownButton<Option>(
                            items: jobsresp?.result[3].options ?? [],
                            dropdownValue: jobtype,
                            onChanged: (newValue) {
                              setState(() {
                                jobtype = newValue;
                              });
                              if (jobsresp?.result[3].id != null) {
                                // Ensure the dynamic key is safe to access
                                cf?.add([
                                  'cf.${getRoad!.result[3].id}', // Create the key dynamically
                                  jobtype?.id,
                                ]);
                              }
                            },
                            getItemLabel: (Option item) => item.value,
                          ),
                        ),
                      ],
                    ),
                  ),

                // if (selectedcategory?.id != 30 && selectedcategory?.id != 1)
                //   if (phoneresp != null)
                //     CreateListingCardWidget(
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.start,
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           Row(
                //             mainAxisAlignment: MainAxisAlignment.start,
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               Text(
                //                 'Return Policy',
                //                 style: TextStyle(
                //                     fontSize: 14.sp,
                //                     fontWeight: FontWeight.w600,
                //                     color: Colors.black),
                //               ),
                //             ],
                //           ),
                //           Expanded(
                //             child: Column(
                //               mainAxisAlignment: MainAxisAlignment.start,
                //               crossAxisAlignment: CrossAxisAlignment.center,
                //               children: [
                //                 // First Checkbox option
                //                 Row(
                //                   children: [
                //                     Checkbox(
                //                       value: _isselected ==
                //                           true, // The first checkbox is selected if _isselected is true
                //                       onChanged: (value) {
                //                         setState(() {
                //                           _isselected =
                //                               true; // Set _isselected to true when the first checkbox is selected
                //                         });
                //                         cf?.add([
                //                           'cf.${getRoad!.result['8']?.id}', // Create the key dynamically
                //                           phoneresp!.result['8']!.options[0].id,
                //                         ]);
                //                       },
                //                     ),
                //                     Flexible(
                //                       child: Text(
                //                         phoneresp!
                //                             .result['8']!.options[0].value,
                //                         style: TextStyle(
                //                           fontSize: 14.sp,
                //                           fontWeight: FontWeight.w600,
                //                           color: Colors.black,
                //                         ),
                //                       ),
                //                     )
                //                   ],
                //                 ),
                //                 // Second Checkbox option
                //                 Row(
                //                   children: [
                //                     Checkbox(
                //                       value: _isselected ==
                //                           false, // The second checkbox is selected if _isselected is false
                //                       onChanged: (value) {
                //                         setState(() {
                //                           _isselected =
                //                               false; // Set _isselected to false when the second checkbox is selected
                //                         });
                //                         cf?.add([
                //                           'cf.${getRoad!.result['8']?.id}', // Create the key dynamically
                //                           phoneresp!.result['8']!.options[1].id,
                //                         ]);
                //                       },
                //                     ),
                //                     Flexible(
                //                       child: Text(
                //                         phoneresp!
                //                             .result['8']!.options[1].value,
                //                         style: TextStyle(
                //                           fontSize: 14.sp,
                //                           fontWeight: FontWeight.w600,
                //                           color: Colors.black,
                //                         ),
                //                       ),
                //                     )
                //                   ],
                //                 ),
                //               ],
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),

                if (getRoad?.result != null)
                  if (selectedcategory?.id == 1)
                    CreateListingCardWidget(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Available features',
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
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<Option>(
                                isExpanded: true,
                                hint: Text(
                                  selectedFeatures == null ||
                                          selectedFeatures!.isEmpty
                                      ? "Select features"
                                      : selectedFeatures!.first.value,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                items: getRoad!.result[10].options.map((color) {
                                  return DropdownMenuItem<Option>(
                                    value: color,
                                    child: Row(
                                      children: [
                                        StatefulBuilder(
                                          builder: (context, setState) {
                                            return Checkbox(
                                              value: selectedFeatures != null &&
                                                  selectedFeatures!
                                                      .contains(color),
                                              onChanged: (bool? isChecked) {
                                                setState(() {
                                                  selectedFeatures ??= [];
                                                  if (isChecked == true) {
                                                    selectedFeatures!
                                                        .add(color);
                                                  } else {
                                                    selectedFeatures!
                                                        .remove(color);
                                                  }

                                                  final cfKey =
                                                      'cf.${getRoad!.result[10].id}';
                                                  final cfValue = selectedFeatures!
                                                      .map((feature) =>
                                                          feature.id)
                                                      .toSet()
                                                      .toList(); // Ensure unique values

                                                  // Check if cf already contains this key
                                                  int index = cf?.indexWhere(
                                                          (entry) =>
                                                              entry[0] ==
                                                              cfKey) ??
                                                      -1;

                                                  if (index >= 0) {
                                                    // Update existing entry
                                                    cf?[index][1] = cfValue;
                                                  } else {
                                                    // Add a new entry
                                                    cf?.add([cfKey, cfValue]);
                                                  }
                                                });
                                              },
                                            );
                                          },
                                        ),
                                        Text(color.value),
                                      ],
                                    ),
                                  );
                                }).toList(),
                                onChanged: (_) {}, // Keeps the dropdown open
                                icon: const Icon(Icons.arrow_drop_down,
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                SizedBox(
                  height: 5.h,
                ),
                if (selectedcategory?.id == 1 ||
                    selectedcategory?.id == 9 ||
                    selectedcategory?.id == 14 ||
                    selectedcategory?.id == 54)
                  CreateListingCardWidget(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'select colors',
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
                        if (getRoad?.result != null)
                          Expanded(
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<Option>(
                                isExpanded: true,
                                hint: Text(
                                  selectedColors == null ||
                                          selectedColors!.isEmpty
                                      ? "Select colors"
                                      : selectedColors!.first.value,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                items:
                                    phoneresp!.result[5].options.map((color) {
                                  return DropdownMenuItem<Option>(
                                    value: color,
                                    child: Row(
                                      children: [
                                        StatefulBuilder(
                                          builder: (context, setState) {
                                            return Checkbox(
                                              value: selectedColors != null &&
                                                  selectedColors!
                                                      .contains(color),
                                              onChanged: (bool? isChecked) {
                                                setState(() {
                                                  selectedColors ??= [];
                                                  if (isChecked == true) {
                                                    selectedColors!.add(color);
                                                  } else {
                                                    selectedColors!
                                                        .remove(color);
                                                  }

                                                  final cfKey =
                                                      'cf.${getRoad!.result[5].id}';
                                                  final cfValue = selectedColors!
                                                      .map((feature) =>
                                                          feature.id)
                                                      .toSet()
                                                      .toList(); // Ensure unique values

                                                  // Check if cf already contains this key
                                                  int index = cf?.indexWhere(
                                                          (entry) =>
                                                              entry[0] ==
                                                              cfKey) ??
                                                      -1;

                                                  if (index >= 0) {
                                                    // Update existing entry
                                                    cf?[index][1] = cfValue;
                                                  } else {
                                                    // Add a new entry
                                                    cf?.add([cfKey, cfValue]);
                                                  }
                                                });

                                                // Print the updated cf list
                                              },
                                            );
                                          },
                                        ),
                                        Text(color.value),
                                      ],
                                    ),
                                  );
                                }).toList(),
                                onChanged: (_) {}, // Keeps the dropdown open
                                icon: const Icon(Icons.arrow_drop_down,
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                if (selectedcategory?.id == 73 ||
                    selectedcategory?.id ==
                        122) // Conditionally show the calendar
                  CreateListingCardWidget(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Start date',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              ' *',
                              style: TextStyle(
                                color: const Color(0xffD33636),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2100),
                              );
                              if (pickedDate != null) {
                                setState(() {
                                  selectedStartDate =
                                      pickedDate; // Save the selected date
                                });
                                if (jobsresp?.result[4].id != null) {
                                  // Ensure the dynamic key is safe to access
                                  cf?.add([
                                    'cf.${jobsresp!.result[4].id}', // Create the key dynamically
                                    selectedStartDate,
                                  ]);
                                }
                              }
                            },
                            child: Text(
                              selectedStartDate != null
                                  ? '${selectedStartDate!.toLocal()}'.split(
                                      ' ')[0] // Display the selected date
                                  : 'Select date',
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: selectedStartDate != null
                                    ? Colors.black
                                    : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                if (selectedcategory?.id ==
                    171) // Conditionally show the calendar
                  CreateListingCardWidget(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Manufactured Date',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              ' *',
                              style: TextStyle(
                                color: const Color(0xffD33636),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2100),
                              );
                              if (pickedDate != null) {
                                setState(() {
                                  selectmanufacturingdate =
                                      pickedDate; // Save the selected date
                                });
                                if (grocerryresp?.result[0].id != null) {
                                  // Ensure the dynamic key is safe to access
                                  cf?.add([
                                    'cf.${grocerryresp!.result[0].id}', // Create the key dynamically
                                    selectmanufacturingdate,
                                  ]);
                                }
                              }
                            },
                            child: Text(
                              selectedStartDate != null
                                  ? '${selectedStartDate!.toLocal()}'.split(
                                      ' ')[0] // Display the selected date
                                  : 'Select date',
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: selectedStartDate != null
                                    ? Colors.black
                                    : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                if (selectedcategory?.id ==
                    171) // Conditionally show the calendar
                  CreateListingCardWidget(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Expiry Date',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              ' *',
                              style: TextStyle(
                                color: const Color(0xffD33636),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2100),
                              );
                              if (pickedDate != null) {
                                setState(() {
                                  grocceryexpiraydate =
                                      pickedDate; // Save the selected date
                                });
                                if (grocerryresp?.result[6].id != null) {
                                  // Ensure the dynamic key is safe to access
                                  cf?.add([
                                    'cf.${grocerryresp!.result[6].id}', // Create the key dynamically
                                    whatsintheboxcontroller.text,
                                  ]);
                                }
                              }
                            },
                            child: Text(
                              selectedStartDate != null
                                  ? '${selectedStartDate!.toLocal()}'.split(
                                      ' ')[0] // Display the selected date
                                  : 'Select date',
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: selectedStartDate != null
                                    ? Colors.black
                                    : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                if (selectedcategory?.id == 73 ||
                    selectedcategory?.id ==
                        122) // Conditionally show the calendar
                  CreateListingCardWidget(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Deadline',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              ' *',
                              style: TextStyle(
                                color: const Color(0xffD33636),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2100),
                              );
                              if (pickedDate != null) {
                                setState(() {
                                  deadlineDate =
                                      pickedDate; // Save the selected date

                                  if (jobsresp?.result[1].id != null) {
                                    // Ensure the dynamic key is safe to access
                                    cf?.add([
                                      'cf.${jobsresp!.result[1].id}', // Create the key dynamically
                                      deadlineDate
                                    ]);
                                  }
                                });
                              }
                            },
                            child: Text(
                              deadlineDate != null
                                  ? '${deadlineDate!.toLocal()}'.split(
                                      ' ')[0] // Display the selected date
                                  : 'Select date',
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: deadlineDate != null
                                    ? Colors.black
                                    : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                if (selectedcategory?.id == 9)
                  CreateListingCardWidget(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mobile brand',
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
                          child: CustomDropdownButton<Option>(
                            items: phoneresp!.result[7].options,
                            dropdownValue: selectedmobilebrand,
                            onChanged: (newValue) {
                              setState(() {
                                selectedmobilebrand = newValue;
                              });
                              if (phoneresp?.result[7].id != null) {
                                // Ensure the dynamic key is safe to access
                                cf?.add([
                                  'cf.${phoneresp!.result[7].id}', // Create the key dynamically
                                  selectedmobilebrand?.id,
                                ]);
                              }
                            },
                            getItemLabel: (Option item) =>
                                item.value.toString(),
                          ),
                        ),
                      ],
                    ),
                  ),
                if (selectedcategory?.id == 1)
                  CreateListingCardWidget(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Automobile Brand',
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
                        if (getRoad?.result != null)
                          Expanded(
                            // Wrap the dropdown in Expanded to constrain its width
                            child: CustomDropdownButton<Option>(
                              items: getRoad!.result[3].options,
                              dropdownValue: selectedmodel,
                              onChanged: (newValue) {
                                setState(() {
                                  selectedmodel = newValue;
                                });
                                if (getRoad?.result[3].id != null) {
                                  // Ensure the dynamic key is safe to access
                                  cf?.add([
                                    'cf.${getRoad!.result[3].id}', // Create the key dynamically
                                    whatsintheboxcontroller.text,
                                  ]);
                                }
                              },
                              getItemLabel: (Option item) =>
                                  item.value.toString(),
                            ),
                          ),
                      ],
                    ),
                  ),

                if (selectedcategory?.id == 1 || selectedcategory?.id == 14)
                  CreateListingCardWidget(
                      child: Row(
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
                      const Spacer(),
                      Expanded(
                        child: TextField(
                          onSubmitted: (value) {
                            if (getRoad?.result[3].id != null) {
                              // Ensure the dynamic key is safe to access
                              cf?.add([
                                'cf.${getRoad!.result[3].id}', // Create the key dynamically
                                whatsintheboxcontroller.text,
                              ]);
                            }
                          },
                          controller: auomobilecontroller,
                          decoration: InputDecoration.collapsed(
                              hintText: 'Enter model',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                  color: const Color(0xffADADAD))),
                        ),
                      ),
                    ],
                  )),
                if (selectedcategory?.id == 37)
                  CreateListingCardWidget(
                      child: Row(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Road Size',
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
                          onSubmitted: (value) {
                            if (getRoad?.result[0].id != null) {
                              // Ensure the dynamic key is safe to access
                              cf?.add([
                                'cf.${getRoad!.result[0].id}', // Create the key dynamically
                                value,
                              ]);
                            }
                          },
                          controller: streetsizecontroller,
                          decoration: InputDecoration.collapsed(
                              hintText: 'Size of road in feet',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                  color: const Color(0xffADADAD))),
                        ),
                      ),
                    ],
                  )),
                if (selectedcategory?.id == 37)
                  CreateListingCardWidget(
                      child: Row(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Size of road ',
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
                          onSubmitted: (value) {
                            if (getRoad?.result[0].id != null) {
                              // Ensure the dynamic key is safe to access
                              cf?.add([
                                'cf.${getRoad!.result[0].id}', // Create the key dynamically
                                value,
                              ]);
                            }
                          },
                          controller: sizecontroller,
                          decoration: InputDecoration.collapsed(
                              hintText: 'Anna or ropani',
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
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Enter address',
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
                          controller: addresscontroller,
                          decoration: InputDecoration.collapsed(
                              hintText: 'Enter address',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                  color: const Color(0xffADADAD))),
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
                          'Available stock',
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
                            hintText: 'Enter stock',
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
                if (selectedcategory?.id == 1)
                  CreateListingCardWidget(
                    child: Row(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Year of Registration',
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
                        const Spacer(),
                        Expanded(
                          child: GestureDetector(
                            onTap: () async {
                              DateTime? selectedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime.now(),
                                helpText: 'Select Year of Registration',
                                fieldHintText: 'Year',
                              );

                              if (selectedDate != null) {
                                // Assign selected year to the controller
                                yearofregistrationcontroller.text =
                                    selectedDate.year.toString();
                                if (getRoad?.result[11].id != null) {
                                  // Ensure the dynamic key is safe to access
                                  cf?.add([
                                    'cf.${getRoad!.result[11].id}', // Create the key dynamically
                                    yearofregistrationcontroller.text,
                                  ]);
                                }
                              }
                            },
                            child: AbsorbPointer(
                              child: TextField(
                                controller: yearofregistrationcontroller,
                                readOnly: true, // Make it non-editable
                                decoration: InputDecoration.collapsed(
                                  hintText: 'Enter registration year',
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp,
                                      color: const Color(0xffADADAD)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                if (selectedcategory?.id == 1)
                  CreateListingCardWidget(
                    child: Row(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kilometers',
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
                            onSubmitted: (value) {
                              if (getRoad?.result[6].id != null) {
                                // Ensure the dynamic key is safe to access
                                cf?.add([
                                  'cf.${getRoad!.result[6].id}', // Create the key dynamically
                                  value,
                                ]);
                              }
                            },
                            controller: kilometerscontroller,
                            decoration: InputDecoration.collapsed(
                                hintText: 'kilometers',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color: const Color(0xffADADAD))),
                          ),
                        ),
                      ],
                    ),
                  ),

                // if (selectedcategory?.id == 54)
                //   CreateListingCardWidget(
                //     child: Row(
                //       mainAxisSize: MainAxisSize.max,
                //       children: [
                //         Row(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             Text(
                //               'Size',
                //               style: TextStyle(
                //                   fontSize: 14.sp,
                //                   fontWeight: FontWeight.w500,
                //                   color: Colors.black),
                //             ),
                //             Text(
                //               ' *',
                //               style: TextStyle(
                //                   color: const Color(0xffD33636),
                //                   fontWeight: FontWeight.w500,
                //                   fontSize: 14.sp),
                //             )
                //           ],
                //         ),
                //         SizedBox(
                //           width: 10.w,
                //         ),
                //         if (getRoad?.result != null)
                //           Expanded(
                //             // Wrap the dropdown in Expanded to constrain its width
                //             child: CustomDropdownButton<Option>(
                //               items: getRoad!.result['12']!.options,
                //               dropdownValue: selecetedWarrenty,
                //               onChanged: (newValue) {
                //                 setState(() {
                //                   selecetedWarrenty = newValue;
                //                 });
                //               },
                //               getItemLabel: (Option item) => item.value,
                //             ),
                //           ),
                //       ],
                //     ),
                //   ),
                CreateListingCardWidget(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Select offer',
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
                          items: getoffer ?? [],
                          dropdownValue: selectedoffer,
                          onChanged: (newValue) {
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
                if (selectedcategory?.id == 1)
                  CreateListingCardWidget(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Fuel Type',
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
                        if (getRoad?.result != null)
                          Expanded(
                            // Wrap the dropdown in Expanded to constrain its width
                            child: CustomDropdownButton<Option>(
                                items: getRoad!.result[7].options,
                                dropdownValue: fuelType,
                                onChanged: (newValue) {
                                  setState(() {
                                    fuelType = newValue;
                                  });

                                  (value) {
                                    if (getRoad?.result[7].id != null) {
                                      // Ensure the dynamic key is safe to access
                                      cf?.add([
                                        'cf.${getRoad!.result[7].id}', // Create the key dynamically
                                        value,
                                      ]);
                                    }
                                  };
                                },
                                getItemLabel: (Option item) => item.value),
                          ),
                      ],
                    ),
                  ),
                if (selectedcategory?.id == 1)
                  CreateListingCardWidget(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (getRoad != null)
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
                        if (getRoad != null)
                          Expanded(
                            // Wrap the dropdown in Expanded to constrain its width
                            child: CustomDropdownButton<Option>(
                              items: getRoad!.result[11].options ?? [],
                              dropdownValue: selecetedWarrenty,
                              onChanged: (newValue) {
                                setState(() {
                                  selecetedWarrenty = newValue;

                                  // Initialize cf if null and add the new entry

                                  cf?.add([
                                    'cf.${getRoad!.result[11].id}', // Create the key dynamically
                                    selecetedWarrenty
                                        ?.id // Get the selected warranty ID
                                  ]);
                                });
                              },
                              getItemLabel: (Option item) => item.value,
                            ),
                          ),
                      ],
                    ),
                  ),
                if (selectedcategory?.id == 37)
                  CreateListingCardWidget(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Building type',
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
                        if (getRoad?.result != null)
                          Expanded(
                            // Wrap the dropdown in Expanded to constrain its width
                            child: CustomDropdownButton<Option>(
                              items: getRoad!.result[5].options,
                              dropdownValue: selectedbuildingtype,
                              onChanged: (newValue) {
                                setState(() {
                                  selectedbuildingtype = newValue;
                                  if (getRoad?.result[5].id != null) {
                                    // Ensure the dynamic key is safe to access
                                    cf?.add([
                                      'cf.${getRoad!.result[5].id}', // Create the key dynamically
                                      selectedbuildingtype?.value,
                                    ]);
                                  }
                                });
                              },
                              getItemLabel: (Option item) => item.value,
                            ),
                          ),
                      ],
                    ),
                  ),
                if (selectedcategory?.id == 9 && selectedcategory?.id == 14)
                  CreateListingCardWidget(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Electronic Model',
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
                          child: CustomDropdownButton<Option>(
                            items: laptoprep!.result[5].options,
                            dropdownValue: selectedElecModel,
                            onChanged: (newValue) {
                              setState(() {
                                selectedElecModel = newValue;
                              });
                            },
                            getItemLabel: (Option item) => item.value,
                          ),
                        ),
                      ],
                    ),
                  ),
                SizedBox(
                  height: 5.h,
                ),
                if (selectedcategory?.id == 54)
                  CreateListingCardWidget(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cloth size',
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
                          child: CustomDropdownButton<Option>(
                            items: clothresp!.result[7].options,
                            dropdownValue: selecteclothsize,
                            onChanged: (newValue) {
                              setState(() {
                                selecteclothsize = newValue;
                                if (getRoad?.result[0].id != null) {
                                  // Ensure the dynamic key is safe to access
                                  cf?.add([
                                    'cf.${getRoad!.result[0].id}', // Create the key dynamically
                                    selecteclothsize?.value,
                                  ]);
                                }
                              });
                            },
                            getItemLabel: (Option item) => item.value,
                          ),
                        ),
                      ],
                    ),
                  ),
                // if (selectedcategory?.id != 1)
                //   CreateListingCardWidget(
                //     child: Row(
                //       mainAxisSize: MainAxisSize.max,
                //       children: [
                //         Row(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             Text(
                //               'Seller Type',
                //               style: TextStyle(
                //                   fontSize: 14.sp,
                //                   fontWeight: FontWeight.w500,
                //                   color: Colors.black),
                //             ),
                //             Text(
                //               ' *',
                //               style: TextStyle(
                //                   color: const Color(0xffD33636),
                //                   fontWeight: FontWeight.w500,
                //                   fontSize: 14.sp),
                //             )
                //           ],
                //         ),
                //         SizedBox(
                //           width: 10.w,
                //         ),
                //         Expanded(
                //           // Wrap the dropdown in Expanded to constrain its width
                //           child: CustomDropdownButton<CityList>(
                //             items: citylistsitems!,
                //             dropdownValue: selectedCity,
                //             onChanged: (newValue) {
                //               setState(() {
                //                 selectedCity = newValue;
                //               });
                //             },
                //             getItemLabel: (CityList item) => item.name,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // if (selectedcategory?.id != 1 || selectedcategory?.id != 9 || selectedcategory?.id!=97)
                //   CreateListingCardWidget(
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Row(
                //           children: [
                //             Text(
                //               'Transmission Type',
                //               style: TextStyle(
                //                   fontSize: 14.sp,
                //                   fontWeight: FontWeight.w500,
                //                   color: Colors.black),
                //             ),
                //             Text(
                //               ' *',
                //               style: TextStyle(
                //                   color: const Color(0xffD33636),
                //                   fontWeight: FontWeight.w500,
                //                   fontSize: 14.sp),
                //             ),
                //           ],
                //         ),
                //         SizedBox(
                //           height: 10.h,
                //         ),
                //         if (getRoad?.result != null)
                //           Column(
                //             children: getRoad!.result[8].options
                //                 .map<Widget>((option) {
                //               return RadioListTile<Option>(
                //                 value: option,
                //                 groupValue: trasnmsissiontype,
                //                 onChanged: (newValue) {
                //                   setState(() {
                //                     trasnmsissiontype = newValue;

                //                     // Create dynamic cf key
                //                     final cfKey =
                //                         'cf.${getRoad!.result[8].id}';
                //                     final cfValue = [trasnmsissiontype!.id];

                //                     // Check if cf already contains this key
                //                     int index = cf?.indexWhere(
                //                             (entry) => entry[0] == cfKey) ??
                //                         -1;

                //                     if (index >= 0) {
                //                       // Update existing entry
                //                       cf?[index][1] = cfValue;
                //                     } else {
                //                       // Add a new entry
                //                       cf?.add([cfKey, cfValue]);
                //                     }
                //                   });

                //                   // Debug: Print the updated cf list
                //                 },
                //                 title: Text(
                //                   option
                //                       .value, // Display the label for each radio button
                //                   style: TextStyle(
                //                     fontSize: 14.sp,
                //                     fontWeight: FontWeight.w500,
                //                     color: Colors.black,
                //                   ),
                //                 ),
                //               );
                //             }).toList(),
                //           ),
                //       ],
                //     ),
                //   ),

                CreateListingCardWidget(
                    child: Row(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Youtube link',
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
                        onSubmitted: (value) {
                          if (getRoad?.result[12].id != null) {
                            // Ensure the dynamic key is safe to access
                            cf?.add([
                              'cf.${getRoad!.result[12].id}', // Create the key dynamically
                              value,
                            ]);
                          }
                        },
                        controller: youtubecontroller,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Enter youtube link',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: const Color(0xffADADAD))),
                      ),
                    ),
                  ],
                )),
                if (selectedcategory?.id == 9 || selectedcategory?.id == 14)
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
                          onSubmitted: (value) {
                            if (getRoad?.result[4].id != null) {
                              // Ensure the dynamic key is safe to access
                              cf?.add([
                                'cf.${getRoad!.result[4].id}', // Create the key dynamically
                                value,
                              ]);
                            }
                          },
                          controller: modelcontroller,
                          decoration: InputDecoration.collapsed(
                              hintText: 'Enter model',
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
                if (selectedcategory?.id == 1)
                  CreateListingCardWidget(
                      child: Row(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mileage',
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
                          onSubmitted: (value) {
                            if (getRoad?.result[9].id != null) {
                              // Ensure the dynamic key is safe to access
                              cf?.add([
                                'cf.${getRoad!.result[9].id}', // Create the key dynamically
                                value,
                              ]);
                            }
                          },
                          controller: milagecontroller,
                          decoration: InputDecoration.collapsed(
                              hintText: 'Mileage',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                  color: const Color(0xffADADAD))),
                        ),
                      ),
                    ],
                  )),
                if (selectedcategory?.id == 9 || selectedcategory?.id == 14)
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
                          onSubmitted: (value) {
                            if (phoneresp?.result[10].id != null) {
                              // Ensure the dynamic key is safe to access
                              cf?.add([
                                'cf.${phoneresp!.result[10].id}', // Create the key dynamically
                                value
                              ]);
                            }
                            print("ninik $cf");
                          },
                          controller: Gbcontroller,
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
                      value: trending,
                      onChanged: (value) {
                        setState(() {
                          trending = value!;
                        });
                      },
                    ),
                  ],
                )),

                SizedBox(
                  height: 10.h,
                ),
                if (selectedcategory?.id == 9)
                  CreateListingCardWidget(
                      child: Row(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Storage in GB',
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
                          controller: storagecontroller,
                          onSubmitted: (value) {
                            if (getRoad?.result[9].id != null) {
                              // Ensure the dynamic key is safe to access
                              cf?.add([
                                'cf.${getRoad!.result[9].id}', // Create the key dynamically
                                storagecontroller.text,
                              ]);
                            }
                          },
                          decoration: InputDecoration.collapsed(
                              hintText: 'storage in gb',
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
                if (selectedcategory?.id == 9 || selectedcategory?.id == 14)
                  CreateListingCardWidget(
                      child: Row(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Enter Screen Size (inches)',
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
                          onSubmitted: (value) {
                            if (laptoprep?.result[10].id != null) {
                              // Ensure the dynamic key is safe to access
                              cf?.add([
                                'cf.${laptoprep!.result[10].id}', // Create the key dynamically
                                value,
                              ]);
                            }
                          },
                          controller: screensizecontroller,
                          decoration: InputDecoration.collapsed(
                              hintText: 'Enter Screen Size (inches)',
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
                if (selectedcategory?.id == 37)
                  CreateListingCardWidget(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Furnished',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              ' *',
                              style: TextStyle(
                                color: const Color(0xffD33636),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            height: 10.h), // Add spacing before radio buttons
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:
                              furnitureresresp!.result[4].options.map((option) {
                            return Row(
                              children: [
                                Radio<Option>(
                                  value: option,
                                  groupValue: selectedFurnished,
                                  onChanged: (Option? newValue) {
                                    setState(() {
                                      selectedFurnished = newValue;
                                      if (furnitureresresp?.result[10].id !=
                                          null) {
                                        // Ensure the dynamic key is safe to access
                                        cf?.add([
                                          'cf.${furnitureresresp!.result[10].id}', // Create the key dynamically
                                          selectedFurnished?.value,
                                        ]);
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  option.value,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            );
                          }).toList(),
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
                        isExpanded: true, // Ensures dropdown spans full width
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
                          int day = index + 1; // Generates values from 1 to 10
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
                  height: 5.h,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Packaged Product Dimensions",
                      style: TextStyle(fontSize: 13),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                        ),
                        const Text(
                          "Hyper Delivery",
                          style: TextStyle(fontSize: 13),
                        )
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

                if (selectedcategory?.id == 9 ||
                    selectedcategory?.id == 14 ||
                    selectedcategory?.id == 30 ||
                    selectedcategory?.id == 171)
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
                          onSubmitted: (value) {
                            if (phoneresp?.result[9].id != null) {
                              // Ensure the dynamic key is safe to access
                              cf?.add([
                                'cf.${phoneresp!.result[9].id}', // Create the key dynamically
                                value,
                              ]);
                            }
                          },
                          decoration: InputDecoration.collapsed(
                              hintText: 'Brand name',
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
                if (selectedcategory?.id == 1 || selectedcategory?.id == 9)
                  CreateListingCardWidget(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
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
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Column(
                          children: phoneresp!.result[0].options
                              .map<Widget>((option) {
                            return RadioListTile<Option>(
                              value: option,
                              groupValue: selecctedProductTYpe,
                              onChanged: (newValue) {
                                setState(() {
                                  selecctedProductTYpe = newValue;

                                  // Create dynamic cf key
                                  final cfKey = 'cf.${getRoad!.result[0].id}';
                                  final cfValue = [selecctedProductTYpe!.id];

                                  // Check if cf already contains this key
                                  int index = cf?.indexWhere(
                                          (entry) => entry[0] == cfKey) ??
                                      -1;

                                  if (index >= 0) {
                                    // Update existing entry
                                    cf?[index][1] = cfValue;
                                  } else {
                                    // Add a new entry
                                    cf?.add([cfKey, cfValue]);
                                  }
                                });

                                // Debug: Print the updated cf list
                                print("Updated cf: $cf");
                              },
                              title: Text(
                                option
                                    .value, // Display the label for each radio button
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),

                if (selectedcategory?.id == 171)
                  CreateListingCardWidget(
                      child: Row(
                    children: [
                      Text(
                        'Grocery Brand',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            color: Colors.black),
                      ),
                      const Spacer(),
                      Expanded(
                        child: TextField(
                          onSubmitted: (value) {
                            if (grocerryresp?.result[1].id != null) {
                              // Ensure the dynamic key is safe to access
                              cf?.add([
                                'cf.${grocerryresp!.result[1].id}', // Create the key dynamically
                                value,
                              ]);
                            }
                          },
                          controller: weightcontroller,
                          decoration: InputDecoration.collapsed(
                              hintText: 'Grocery Brand',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                  color: const Color(0xffADADAD))),
                        ),
                      ),
                    ],
                  )),
                // const ReturnPolicyCardWidget(),
                // SizedBox(
                //   height: 10.h,
                // ),
                // Row(
                //   children: [prod
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
                      'Weight (Kg)',
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
                if (typeid == '7')
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
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          decoration: BoxDecoration(
                            color: const Color(0xffFDFDFE),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey, width: 1),
                          ),
                          child: Column(
                            children: [
                              // Display the "Pieces" and "Rate/piece" labels once
                              Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 80.w,
                                      ),
                                      Text(
                                        "Pieces",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 100.w),
                                  Column(
                                    // crossAxisAlignment: CrossAxisAlignment.end,
                                    children: const [
                                      Text(
                                        "Rate/piece",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ), 
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              ...rows.asMap().entries.map(
                                (entry) {
                                  int index = entry.key;
                                  return Row(
                                    children: [
                                      Material(
                                        elevation: 2,
                                        borderRadius: BorderRadius.circular(6),
                                        child: Container(
                                          height:
                                              30.0, // Increased height for better visibility
                                          width:
                                              30.0, // Adjust width if necessary
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 1.h),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            color: const Color(0xffFDFDFE),
                                          ),
                                          child: TextField(
                                            onChanged: (value) {
                                              rows[index]['pieces'] = value;
                                            },
                                            cursorHeight: 3,
                                            style: const TextStyle(
                                              fontSize:
                                                  14, // Ensure the font is large enough to be visible
                                              color: Colors
                                                  .black, // Text color to make it visible
                                            ),
                                            decoration: const InputDecoration(
                                              border: InputBorder
                                                  .none, // Remove the border for a clean look
                                              contentPadding: EdgeInsets.only(
                                                  bottom:
                                                      15), // Adjust padding for better alignment
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 6),
                                      const Text('to',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black)),
                                      const SizedBox(width: 6),
                                      Material(
                                        elevation: 2,
                                        borderRadius: BorderRadius.circular(6),
                                        child: Container(
                                          height:
                                              30.0, // Increased height for better visibility
                                          width:
                                              30.0, // Adjust width if necessary
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 1.h),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            color: const Color(0xffFDFDFE),
                                          ),
                                          child: TextField(
                                            onChanged: (value) {
                                              rows[index]['rate'] = value;
                                            },
                                            cursorHeight: 3,
                                            style: const TextStyle(
                                              fontSize:
                                                  14, // Ensure the font is large enough to be visible
                                              color: Colors
                                                  .black, // Text color to make it visible
                                            ),
                                            decoration: const InputDecoration(
                                              border: InputBorder
                                                  .none, // Remove the border for a clean look
                                              contentPadding: EdgeInsets.only(
                                                  bottom:
                                                      15), // Adjust padding for better alignment
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 40.w),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Row(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  // Plus button to add a new row
                                                  Material(
                                                    elevation: 2,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                    child: Container(
                                                      height:
                                                          30.0, // Increased height for better visibility
                                                      width:
                                                          80.0, // Adjust width if necessary
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10,
                                                              vertical: 1.h),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6),
                                                        color: const Color(
                                                            0xffFDFDFE),
                                                      ),
                                                      child: TextField(
                                                        onChanged: (value) {
                                                          rows[index]['total'] =
                                                              value;
                                                        },
                                                        cursorHeight: 3,
                                                        style: const TextStyle(
                                                          fontSize:
                                                              14, // Ensure the font is large enough to be visible
                                                          color: Colors
                                                              .black, // Text color to make it visible
                                                        ),
                                                        decoration:
                                                            const InputDecoration(
                                                          border: InputBorder
                                                              .none, // Remove the border for a clean look
                                                          contentPadding:
                                                              EdgeInsets.only(
                                                                  bottom:
                                                                      15), // Adjust padding for better alignment
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        rows.add({});
                                                      });
                                                    },
                                                    child: Container(
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10.w),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              4),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        border: Border.all(
                                                            color: Colors.grey),
                                                      ),
                                                      child: const CircleAvatar(
                                                        backgroundColor:
                                                            Color(0xff362677),
                                                        radius: 12,
                                                        child: Icon(
                                                          Icons.add,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                  InkWell(
                                                    onTap: () {
                                                      if (rows.length > 1) {
                                                        rows.removeAt(index);
                                                      }
                                                    },
                                                    child: Container(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              4),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        border: Border.all(
                                                            color: Colors.grey),
                                                      ),
                                                      child: const CircleAvatar(
                                                        backgroundColor:
                                                            Color(0xff362677),
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
                                  );
                                },
                              )
                            ],
                          ),
                        ),
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
                          print("pinky ${rows}");
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
                  pieces: rows,
                  stock: stockcontroller.text,

                  story: selectedStoryDisplayDays,

                  cfvalue: cf,
                  address: addresscontroller.text,
                  posttype: selectedType?.typeId,

                  childid: childcategory?.id.toString(),
                  parentid: categoryId.toString(),
                  youtube: youtubecontroller.text,
                  mileage: milagecontroller.text,
                  tags: _tags,
                  trending: trending ? 1 : 0,
                  transmission: trasnmsissiontype,
                  warrenty: selecetedWarrenty,
                  fuel: fuelType,
                  offer: selectedoffer,
                  producttype: selectedProductTYpe,
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
