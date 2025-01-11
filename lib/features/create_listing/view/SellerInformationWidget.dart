import 'dart:convert';
import 'dart:core';
import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:google_places_flutter/google_places_flutter.dart';
// import 'package:google_places_flutter/model/prediction.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/custom_check_box_widgt.dart';
import 'package:smartbazar/features/auth/widgets/general_elevated_button_widget.dart';
import 'package:smartbazar/features/create_listing/api/create_new_listing_providers.dart';
import 'package:smartbazar/features/create_listing/model/dropdown_value_model.dart';
import 'package:smartbazar/features/create_listing/model/fields_model.dart';
import 'package:smartbazar/features/create_listing/view/google_api_helper.dart';
import 'package:smartbazar/features/create_listing/widget/create_listing_card_widget.dart';
import 'package:smartbazar/features/create_listing/widget/pick_image_from_gallery.dart';
import 'package:smartbazar/features/order_details/model/shipping_cities_model.dart';

// ignore: must_be_immutable
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
      this.producttype,
      this.offer,
      this.fuel,
      this.warrenty,
      this.transmission,
      this.mileage,
      this.youtube,
      this.posttype,
      this.trending,
      this.tags,
      this.parentid,
      this.childid,
      this.subcatlength,
      this.cfvalue,
      this.parentchild,
      this.address,
      this.stock,
      this.story,
      this.pieces,
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
  List<Map<String, String>>? pieces;
  List<List<dynamic>>? parentchild;
  TextEditingController? phonecoontroller;
  String? terms;
  String? discount, youtube, mileage, stock;
  TextEditingController? emailcontroller;
  Option? producttype, fuel, transmission;
  Offer? offer;
  List<String>? tags;
  String? parentid, childid;
  int? subcatlength;
  List<List<dynamic>>? cfvalue;
  int? posttype;
  Option? warrenty;
  int? trending, story;
  String? address;

  TextEditingController? nameconroller;
  List<ShippingCitiesModel> shippingList;

  @override
  State<SellerInformationWidget> createState() =>
      _SellerInformationWidgetState();
}

class _SellerInformationWidgetState extends State<SellerInformationWidget> {
  TextEditingController? mapcontrolleer = TextEditingController();
  List<File?> selectedImages = [];
  bool isloading = false;
  double? latitute, long;
  void onImagesSelected(List<File?> images) {
    setState(() {
      selectedImages = images;
    });
  }

  String selectedpickup = ''; // Store the selected pickup location

  int? _selectedpackage = 0;

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
            SizedBox(
              width: 20.w,
            ),
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
              SizedBox(
                width: 5.w,
              ),
              Text(
                'select pickup',
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
              SizedBox(
                width: 20.w,
              ),
              // Expanded(
              //   child: GooglePlaceAutoCompleteTextField(
              //     showError: false,
              //     inputDecoration: const InputDecoration(
              //       enabledBorder: InputBorder.none,
              //       focusedBorder: InputBorder.none,
              //     ),
              //     boxDecoration: BoxDecoration(
              //       borderRadius: BorderRadius.zero,
              //       border: Border.all(style: BorderStyle.none),
              //     ),
              //     textEditingController: mapcontrolleer!,
              //     countries: const ["np"],
              //     isLatLngRequired: true,
              //     debounceTime: 800,
              //     itemClick: (Prediction prediction) async {
              //       setState(() {
              //         mapcontrolleer?.text = prediction.description ?? "";
              //         selectedpickup = prediction.description ?? "";
              //       });

              //       // Fetch place details to get latitude and longitude
              //       if (prediction.placeId != null) {
              //         try {
              //           var placeDetails =
              //               await GooglePlaceApiHelper.getPlaceDetails(
              //             prediction.placeId!,
              //             'AIzaSyBB-iTRIHiOtWs_ynnL5FZvf4GJluKVqiI',
              //           );
              //           if (placeDetails != null) {
              //             latitute =
              //                 placeDetails['geometry']['location']['lat'];
              //             long = placeDetails['geometry']['location']['lng'];

              //             // Print the latitude and longitude
              //           }
              //         } catch (e) {
              //           print('Error fetching place details: $e');
              //         }
              //       }
              //     },
              //     googleAPIKey: 'AIzaSyBB-iTRIHiOtWs_ynnL5FZvf4GJluKVqiI',
              //   ),
              // ),
            ],
          ),
        ),

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

        Center(
          child: isloading
              ? const Center(child: CircularProgressIndicator())
              : GeneralEelevatedButton(
                  text: isloading ? 'Submitting...' : 'Submit',
                  onPresssed: () async {
                    if (
                      widget.category != null 
                      //   widget.title != null &&
                      //   widget.city != null &&
                      //   widget.description != null &&
                      //   widget.phonecoontroller?.text.isNotEmpty == true &&
                      //   selectedpickup.isNotEmpty &&
                      //   selectedImages.isNotEmpty &&
                      //   widget.terms != null
                        ) {
                      setState(() {
                        isloading = true; // Start loading
                      });
                      try {
                        // Call your API
                        String responseMessage = await createlisting(
                          
                            package: _selectedpackage,
                            pieces: widget.pieces,
                            null, // ref
                            cf: widget.cfvalue,
                            tags: widget.tags,
                            category: widget.category!.trim(),
                            stock: widget.stock!.trim(),
                            mileage: widget.mileage?.trim(),
                            warrenty: widget.warrenty?.value,
                            title: widget.title!.trim(),
                            city: widget.city!.trim(),
                            price: widget.price!.trim(),
                            description: widget.description!.trim(),
                            length: widget.length?.trim() ?? '0',
                            width: widget.width?.trim() ?? '0',
                            height: widget.height?.trim() ?? '0',
                            weight: widget.weight?.trim() ?? '0',
                            disprice: widget.discount?.trim(),
                            posttype: widget.posttype.toString() ?? '0',
                            email: widget.emailcontroller!.text.trim(),
                            phone: widget.phonecoontroller!.text.trim(),
                            username: widget.nameconroller!.text.trim(),
                            pickup: selectedpickup.trim(),
                            images: selectedImages,
                            accept: widget.terms?.trim() ?? '0',
                            address: mapcontrolleer?.text.trim() ?? '',
                            offer: widget.offer?.offers.trim(),
                            story: widget.story?.toString().trim(),
                            youtube: widget.youtube?.trim(),
                            lat: latitute,
                            long: long);

                        // Stop loading and show dialog
                        setState(() {
                          isloading = false; // End loading
                        });

                        await showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              title: const Text("Response"),
                              content: Text(responseMessage),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text("OK"),
                                ),
                              ],
                            );
                          },
                        );
                      } catch (e) {
                        setState(() {
                          isloading = false; // End loading
                        });

                        // Show error message
                        await showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("Error"),
                              content: Text(e.toString()),
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
                  },
                ),
        ),

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
                        setState(() {});
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
                        setState(() {});
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
                        setState(() {});
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
                        setState(() {});
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
                        setState(() {});
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
