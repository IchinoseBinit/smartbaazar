import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/create_listing/model/places_model.dart';
import 'package:smartbazar/features/create_listing/view/city_field.dart';
import 'package:smartbazar/features/create_listing/widget/create_listing_card_widget.dart';
import 'package:smartbazar/features/my_order/api/post_return_api.dart';
import 'package:smartbazar/features/my_order/view/dropdown_menu_item.dart';
import 'package:smartbazar/features/my_order/view/my_return_screen.dart';
import 'package:smartbazar/features/proceed_pay/view/proceed_to_pay_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class MyOrderDetailsScreen extends ConsumerStatefulWidget {
  final dynamic order; // Assuming `order` is a Map or a model class
  const MyOrderDetailsScreen({super.key, required this.order});

  @override
  ConsumerState<MyOrderDetailsScreen> createState() =>
      _MyOrderDetailsScreenState();
}

class _MyOrderDetailsScreenState extends ConsumerState<MyOrderDetailsScreen> {
  String? dropdownvalue;
  File? _selectedImage;
  String? issue, message, address;
  Place? place;
  File? image;

  bool _isReturnEligible(DateTime createdAt) {
    final now = DateTime.now();
    final difference = now.difference(createdAt).inDays;
    return difference <= 15;
  }

  //   Future<void> pickImage() async {
  //   final pickedFile =
  //       await ImagePicker().pickImage(source: ImageSource.gallery);
  //   if (pickedFile != null) {
  //     setState(() {
  //       _selectedImage = File(pickedFile.path);
  //       widget.onImageSelected(_selectedImage);
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final order = widget.order;
    // Ensure createdAt is parsed as DateTime
    final createdAt =
        order.createdAt != null ? DateTime.tryParse(order.createdAt) : null;

    // Check eligibility if createdAt is successfully parsed
    final isReturnEligible = createdAt != null && _isReturnEligible(createdAt);

    return GenericSafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: const Color(0xffF6F1F1),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.shopping_cart),
                      SizedBox(width: 8.w),
                      Text(
                        'Order Details',
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
                Divider(
                  thickness: 2.w,
                  color: const Color(0xffD9D9D9),
                ),
                SizedBox(height: 10.h),
                PayementDetailsWidget(
                  title: 'Product',
                  description: order.postTitle ?? 'N/A',
                ),
                PayementDetailsWidget(
                  title: 'Vendor Name',
                  description:
                      '${order.vendorName} / ${order.vendorContact ?? ''}',
                ),
                PayementDetailsWidget(
                  title: 'Quantity',
                  description: order.qty?.toString() ?? 'N/A',
                ),
                PayementDetailsWidget(
                  title: 'Rate',
                  description: order.price?.toString() ?? 'N/A',
                ),
                PayementDetailsWidget(
                  title: 'Total',
                  description: 'Rs. ${order.total?.toString() ?? 'N/A'}',
                  textStyle: const TextStyle(fontWeight: FontWeight.w700),
                ),
                PayementDetailsWidget(
                  title: 'Shipping',
                  description:
                      'Rs. ${order.shippingCharge?.toString() ?? 'N/A'}',
                ),
                PayementDetailsWidget(
                  title: 'Grand Total',
                  description:
                      'Rs. ${(double.tryParse(order.total?.toString() ?? '0')! + double.tryParse(order.shippingCharge?.toString() ?? '0')!).toStringAsFixed(2)}',
                  textStyle: const TextStyle(fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10.h),
                Divider(thickness: 2.w, color: const Color(0xffD9D9D9)),
                SizedBox(height: 10.h),
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 5.h, horizontal: 16.w),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Payment Mode',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff36383C)),
                          ),
                          Text(
                            order.paymentMethod ?? 'N/A',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff36383C)),
                          )
                        ],
                      ),
                      SizedBox(height: 5.h),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     Text(
                      //       'Status',
                      //       style: TextStyle(
                      //           fontSize: 14.sp,
                      //           fontWeight: FontWeight.w500,
                      //           color: const Color(0xff36383C)),
                      //     ),
                      //     GeneralTextButton(
                      //       marginH: 0,
                      //       height: 25.h,
                      //       width: 95.w,
                      //       fgColor: Colors.white,
                      //       bgColor: const Color(0xff362677),
                      //       title: 'Track',
                      //       isSmallText: true,
                      //       onPressed: () {
                      //         CustomDialougeBox().orderDetailDialouge(
                      //           context,
                      //           title: 'Status',
                      //           heading: 'Track Order',
                      //           buttonTitle: 'Understood',
                      //           callback: () {
                      //             Navigator.pop(context);
                      //           },
                      //           widget: TrackOrderDetails(order: order),
                      //         );
                      //       },
                      //     )
                      //   ],
                      // ),
                      // SizedBox(height: 5.h),
                      // if (isReturnEligible)
                      //   Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: [
                      //       Text(
                      //         'Action',
                      //         style: TextStyle(
                      //             fontSize: 14.sp,
                      //             fontWeight: FontWeight.w500,
                      //             color: const Color(0xff36383C)),
                      //       ),
                      //       GeneralTextButton(
                      //         marginH: 0,
                      //         isSmallText: true,
                      //         height: 25.h,
                      //         width: 95.w,
                      //         fgColor: Colors.white,
                      //         bgColor: const Color(0xff362677),
                      //         title: 'Return',
                      //         onPressed: () {
                      //           CustomDialougeBox().orderDetailDialouge(
                      //             context,
                      //             buttonTitle: 'Submit',
                      //             callback: () {
                      //               print("lala $order");
                      //               ref
                      //                   .watch(postmyreturnProvider(
                      //                 order.id, // Random order ID
                      //                 order.vendorId, // Random vendor ID
                      //                 order.postId, // Random post ID
                      //                 issue!, // Random issue description
                      //                 message!, // Random message
                      //                 place!
                      //                     .description!, // Random place description
                      //                 '123', // Random city name
                      //                 address!, // Random address
                      //                 place!.latitude!
                      //                     .toString(), // Random latitude
                      //                 place!.longitude!
                      //                     .toString(), // Random longitude
                      //                 image!,
                      //               ))
                      //                   .whenData(
                      //                 (value) {
                      //                   ScaffoldMessenger.of(context)
                      //                       .showSnackBar(const SnackBar(
                      //                           content:
                      //                               Text("Data inserted")));
                      //                   Navigator.pop(context);
                      //                 },
                      //               );
                      //             },
                      //             widget: ReturnProductDetails(
                      //               issue: (p1) {
                      //                 issue = p1;
                      //               },
                      //               message: (p0) {
                      //                 message = p0;
                      //               },
                      //               address: (p3) {
                      //                 address = p3;
                      //               },
                      //               place: (p4) {
                      //                 place = p4;
                      //               },
                      //               file: (p5) {
                      //                 image = p5;
                      //               },
                      //             ),
                      //             title: 'Fill the form',
                      //             heading: 'Return Products',
                      //           );
                      //           Navigator.pop(context);
                      //         },
                      //       )
                      //     ],
                      //   ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Divider(thickness: 2.w, color: const Color(0xffD9D9D9)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomDialougeBox {
  Future orderDetailDialouge(BuildContext context,
      {required Widget widget,
      required String title,
      required String buttonTitle,
      required VoidCallback callback,
      required String heading,
      double dialogWidth = 0.7}) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        final screenWidth = MediaQuery.of(context).size.width;
        final screenHeight = MediaQuery.of(context).size.height;

        return AlertDialog(
          insetPadding: EdgeInsets.zero,
          clipBehavior: Clip.hardEdge,
          backgroundColor: Colors.white,
          content: SizedBox(
            width: screenWidth,
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () => Navigator.pop(context),
                      )
                    ],
                  ),
                  Text(
                    heading,
                    style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff362677)),
                  ),
                  SizedBox(height: 10.h),
                  widget,
                  SizedBox(height: 20.h),
                  GeneralTextButton(
                    bgColor: const Color(0xff362677),
                    fgColor: Colors.white,
                    width: double.infinity,
                    title: buttonTitle,
                    onPressed: () {
                      callback();
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class TrackOrderDetails extends StatelessWidget {
  final dynamic order;

  const TrackOrderDetails({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Order ID',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            Text(
              order.orderId ?? 'N/A', // Replace with actual order ID
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ],
        ),
        SizedBox(height: 5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Status',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            Text(
              order.status ?? 'N/A', // Replace with actual order status
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ],
        ),
      ],
    );
  }
}

//sab xa
class ReturnProductDetails extends StatefulWidget {
  final Function(String) issue;
  final Function(String) message;
  final Function(String) address;

  final Function(Place) place;
  final Function(File) file;

  const ReturnProductDetails({
    Key? key,
    required this.issue,
    required this.message,
    required this.address,
    required this.place,
    required this.file,
  }) : super(key: key);

  @override
  State<ReturnProductDetails> createState() => _ReturnProductDetailsState();
}

class _ReturnProductDetailsState extends State<ReturnProductDetails> {
  List<String?>? issueList = [];
  Place? selectedpickup;
  bool _isImagePickerActive = false; // Track the state of image picker

  final TextEditingController _pickupcontroller = TextEditingController();

  File? _selectedImage;
  TextEditingController? messagecontroller;

  Future<void> _pickImage() async {
    if (_isImagePickerActive) {
      return; // Prevent opening picker if it's already active
    }
    setState(() {
      _isImagePickerActive = true; // Set to true when image picker is active
    });
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _isImagePickerActive = false; // Set back to false when picker is closed
    });
    if (image != null) {
      setState(() {
        _selectedImage = File(image.path);
        if (_selectedImage != null) {
          widget.file(_selectedImage!);
        }
      });
    }
  }

  String? selectedissue;
  @override
  void initState() {
    super.initState();
    // Populate issueList in initState to prevent modifying state inside build()
    issueList = getStaticDropdownMenuItems()
        .map((e) => e.value?.name ?? "Unknown Issue")
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CreateListingCardWidget(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Issue',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Flexible(
                    child: DropdownButtonFormField<String>(
                      items: issueList!
                          .map(
                            (issue) => DropdownMenuItem<String>(
                              value: issue,
                              child: Text(issue!),
                            ),
                          )
                          .toList(),
                      value: selectedissue,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedissue = newValue;
                          if (newValue != null) {
                            widget.issue(selectedissue!);
                          }
                        });
                      },
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                      ),
                      dropdownColor: Colors.white,
                      isExpanded: true,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.h),
            CreateListingCardWidget(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Message',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(height: 10.h),
                  TextField(
                    controller: messagecontroller,
                    onChanged: (value) {
                      widget.message(selectedissue!);
                    },
                    maxLines: null,
                    decoration: InputDecoration.collapsed(
                        hintText: 'Describe your issue',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            color: const Color(0xffADADAD))),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.h),
            CityField(
              onCitySelected: (data) {
                widget.place(data!);
              },
            ),
            SizedBox(height: 5.h),
            CreateListingCardWidget(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Street Address',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(height: 10.h),
                  TextField(
                    onChanged: (value) {
                      widget.address(value!);
                    },
                    decoration: InputDecoration.collapsed(
                        hintText: 'Enter Street Address',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            color: const Color(0xffADADAD))),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.h),
            CreateListingCardWidget(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Screenshot of the issue',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(height: 10.h),
                  GestureDetector(
                    onTap: _pickImage, // Open gallery on tap
                    child: Container(
                      padding:
                          const EdgeInsets.only(top: 6, left: 12, bottom: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xffEDECEC),
                      ),
                      child: Row(
                        children: [
                          const Text(
                            'Choose File',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff36383C)),
                          ),
                          const SizedBox(width: 7),
                          const Text(
                            "|",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffADADAD)),
                          ),
                          const SizedBox(width: 11),
                          _selectedImage != null
                              ? Row(
                                  children: [
                                    Image.file(
                                      _selectedImage!,
                                      width: 40, // Adjust image size
                                      height: 40, // Adjust image size
                                      fit: BoxFit.cover,
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      _selectedImage!.path
                                          .split('/')
                                          .last, // Show file name
                                      style: const TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ],
                                )
                              : const Text(
                                  'No File Chosen',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.red,
                                  ),
                                ),
                        ],
                      ),
                    ),
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

class OrdersPlacedDatum {
  final int? id;
  final int? userId;
  final int? vendorId;
  final int? postId;
  final int? orderId;
  final int? qty;
  final double? price;
  final double? shippingCharge;
  final double? total;
  final String? paymentMethod;
  final String? paymentProof;
  final String? deliveryMethod;
  final String? deliveryAddress;
  final int? coupon;
  final int? status;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? postTitle;
  final String? customerName;
  final String? customerContact;
  final String? vendorName;
  final String? vendorContact;
  final String? postPhotoUrl;

  OrdersPlacedDatum({
    this.id,
    this.userId,
    this.vendorId,
    this.postId,
    this.orderId,
    this.qty,
    this.price,
    this.shippingCharge,
    this.total,
    this.paymentMethod,
    this.paymentProof,
    this.deliveryMethod,
    this.deliveryAddress,
    this.coupon,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.postTitle,
    this.customerName,
    this.customerContact,
    this.vendorName,
    this.vendorContact,
    this.postPhotoUrl,
  });

  // Factory method to parse dynamic data
  factory OrdersPlacedDatum.fromJson(Map<String, dynamic> json) {
    return OrdersPlacedDatum(
      id: json['id'],
      userId: json['userId'],
      vendorId: json['vendorId'],
      postId: json['postId'],
      orderId: json['orderId'],
      qty: json['qty'],
      price: json['price'],
      shippingCharge: json['shippingCharge'],
      total: json['total'],
      paymentMethod: json['paymentMethod'],
      paymentProof: json['paymentProof'],
      deliveryMethod: json['deliveryMethod'],
      deliveryAddress: json['deliveryAddress'],
      coupon: json['coupon'],
      status: json['status'],
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
      postTitle: json['postTitle'],
      customerName: json['customerName'],
      customerContact: json['customerContact'],
      vendorName: json['vendorName'],
      vendorContact: json['vendorContact'],
      postPhotoUrl: json['postPhotoUrl'],
    );
  }
}
