import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/create_listing/widget/create_listing_card_widget.dart';
import 'package:smartbazar/features/my_order/view/dropdown_menu_item.dart';
import 'package:smartbazar/features/vendor/view/api/add_dispute_api.dart';
import 'package:smartbazar/features/vendor/view/my_listing_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class AddNewDisputes extends ConsumerStatefulWidget {
  const AddNewDisputes({super.key});

  @override
  ConsumerState<AddNewDisputes> createState() => _AddNewDisputesState();
}

class _AddNewDisputesState extends ConsumerState<AddNewDisputes> {
  List<File>? _selectedImages = [];
  final ImagePicker _picker = ImagePicker();
  final TextEditingController _vendorNameController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  IssueDropdownList? _selectedIssue;

  Future<void> pickImages() async {
    final pickedFiles = await _picker.pickMultiImage();
    if (pickedFiles != null && pickedFiles.isNotEmpty) {
      setState(() {
        _selectedImages = pickedFiles.map((file) => File(file.path)).toList();
      });
    }
  }

  @override
  void dispose() {
    _vendorNameController.dispose();
    _subjectController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  Future<void> submitDispute() async {
  if (_selectedImages == null || _selectedImages!.isEmpty) {
    showCustomSnackBar(context, "Please select at least one image.");
    return;
  }

  // Get the PostDisputeRef from the provider
  final result = await ref.read(postDisputeProvider(
          _vendorNameController.text,
          getIssueLabel(_selectedIssue!),
          _messageController.text,
          _selectedImages!.first)
      .future);

  if (result) {
    showCustomSnackBar(context, "Dispute submitted successfully!");
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const MyListingScreen()),
    );
  } else {
    showCustomSnackBar(context, "Failed to submit dispute. Please try again.");
  }
}

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F1F1),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Row(
                    children: [
                      const Icon(Icons.mic),
                      SizedBox(width: 8.w),
                      Text(
                        'Disputes',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Text(
                          'Go back',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff888888),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(thickness: 2, color: Color(0xffD9D9D9)),
                SizedBox(height: 20.h),
                CreateListingCardWidget(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Vendor Name',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      TextFormField(
                        controller: _vendorNameController,
                        decoration: InputDecoration(
                          hintText: 'Enter Vendor Name',
                          hintStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xffADADAD),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CreateListingCardWidget(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Subject/Issue',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      DropdownButtonFormField<IssueDropdownList>(
                        isExpanded: true,
                        value: _selectedIssue,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                        items: getStaticDropdownMenuItems(),
                        onChanged: (IssueDropdownList? newValue) {
                          setState(() {
                            _selectedIssue = newValue;
                          });
                        },
                        hint: Text(
                          'Select an issue',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: const Color(0xffADADAD),
                          ),
                        ),
                        menuMaxHeight: 400.h,
                        selectedItemBuilder: (BuildContext context) {
                          return getStaticDropdownMenuItems().map((item) {
                            return SizedBox(
                              width: double.infinity,
                              child: Text(
                                _selectedIssue != null
                                    ? getIssueLabel(_selectedIssue!)
                                    : '',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(fontSize: 12.sp),
                              ),
                            );
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                CreateListingCardWidget(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Message',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      TextField(
                        controller: _messageController,
                        maxLines: 5,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Describe your issue',
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
                CreateListingCardWidget(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Select Images of the issue',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      GestureDetector(
                        onTap: pickImages,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 6.h, horizontal: 12.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: const Color(0xffEDECEC),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Choose Files',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff36383C),
                                ),
                              ),
                              SizedBox(width: 7.w),
                              Text(
                                "|",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xffADADAD),
                                ),
                              ),
                              SizedBox(width: 11.w),
                              Text(
                                _selectedImages != null &&
                                        _selectedImages!.isNotEmpty
                                    ? '${_selectedImages!.length} Files Chosen'
                                    : 'No Files Chosen',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: _selectedImages != null &&
                                          _selectedImages!.isNotEmpty
                                      ? Colors.green
                                      : Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Display selected images
                      if (_selectedImages != null &&
                          _selectedImages!.isNotEmpty)
                        Container(
                          height: 100.h,
                          margin: EdgeInsets.only(top: 10.h),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: _selectedImages!.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(right: 8.w),
                                child: Image.file(
                                  _selectedImages![index],
                                  width: 80.w,
                                  height: 80.h,
                                  fit: BoxFit.cover,
                                ),
                              );
                            },
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                const Divider(thickness: 2, color: Color(0xffD9D9D9)),
                SizedBox(height: 20.h),
                GeneralTextButton(
                  width: MediaQuery.of(context).size.width,
                  fgColor: Colors.white,
                  bgColor: const Color(0xff362677),
                  title: 'Submit',
                  onPressed: submitDispute,
                  // onPressed: () {
                  //   // Add submission logic here
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (_) => const MyListingScreen()),
                  //   );
                  // },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void showCustomSnackBar(BuildContext context, String message) {
  final snackBar = SnackBar(
    content: Text(
      message,
      style: TextStyle(color: Colors.black), // Text color
    ),
    backgroundColor: Colors.white, // SnackBar background color
    behavior: SnackBarBehavior.floating,
    action: SnackBarAction(
      label: 'Close',
      textColor: Color(0xff362677), // Button color
      onPressed: () {
        // Close the SnackBar
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
      },
    ),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
}

class ReturnOrderDetails extends StatelessWidget {
  const ReturnOrderDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.white,
        // color: Colors.red,
        boxShadow: [
          BoxShadow(
            color: const Color(0xff00000040).withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 7.w,
              ),
              const Text('Tech Store'),
              const Icon(
                Icons.arrow_forward_ios,
                color: Color(0xffADADAD),
              ),
              const Spacer(),
              SvgPicture.asset(deleteIcon)
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 7.w,
              ),
              Container(
                  padding: EdgeInsets.only(
                      top: 15.h, left: 8.w, right: 8.w, bottom: 20.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: const Color(0xffF6F1F1),
                  ),
                  child: Image.asset(
                    ImageConstant.laptopImage,
                    height: 70.h,
                  )),
              SizedBox(
                width: 20.w,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Acer Aspire 5 A515-56-32DK Intel Core i3, 11th Gen/15.6 FHD',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Text(
                    'Order ID: 12345',
                    style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'Rs 60,000',
                        style: TextStyle(
                            color: const Color(0xff36383C),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      const Spacer(),
                      Text(
                        'Return Date: 2023-01-02',
                        style: TextStyle(
                            // decoration: TextDecoration.underline,
                            color: const Color(0xff36383C),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ))
            ],
          ),
        ],
      ),
    );
  }
}
