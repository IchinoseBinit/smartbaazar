import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/vendor_details/api/post_profile_bg_and_desc.api.dart';

class BackgroundImageDescriptionWidget extends ConsumerStatefulWidget {
  const BackgroundImageDescriptionWidget({
    super.key,
  });

  @override
  ConsumerState<BackgroundImageDescriptionWidget> createState() =>
      _BackgroundImageDescriptionWidgetState();
}

class _BackgroundImageDescriptionWidgetState
    extends ConsumerState<BackgroundImageDescriptionWidget> {
  final ImagePicker _picker = ImagePicker();
  String? username;

  File? _selectedBackgroundImage;
  File? _selectedProfileImage;
  final TextEditingController _descriptionController = TextEditingController();
  bool _isLoading = false;

  Future<void> pickImage({required bool isBackground}) async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        if (isBackground) {
          _selectedBackgroundImage = File(pickedFile.path);
        } else {
          _selectedProfileImage = File(pickedFile.path);
        }
      });
    }
  }

  Future<void> getuser() async {
    SharedPreferences prfs = await SharedPreferences.getInstance();
    username = prfs.getString("name");
    print("ramu $username");
  }

  Future<void> _submit() async {
    setState(() {
      _isLoading = true;
    });

    // Call the API using Riverpod
    final success = await ref.read(postProfileBGAndDescProvider(
      _selectedBackgroundImage, // Background image
      _descriptionController.text, // Description
      _selectedProfileImage, // Profile image)
    ).future);

    setState(() {
      _isLoading = false;
    });

    if (success) {
      _selectedBackgroundImage = null;
      _selectedProfileImage = null;
      _descriptionController.clear();
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content:
            Text('Profile background and description posted successfully!'),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Failed to post profile background and description.'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    getuser();
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(bottom: 18.w),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(width: 1, color: const Color(0xffADADAD))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 17.h,
                  left: 12.w,
                ),
                child: Text(
                  'Photo or Avatar',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              const Divider(
                color: Color(0xffADADAD),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.w),
                child: const Text(
                  'Recommended 1:1 Size',
                  style: TextStyle(color: Color(0xffFF282F)),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Center(
                child: GestureDetector(
                  onTap: () => pickImage(isBackground: false),
                  child: DottedBorder(
                      borderType: BorderType.RRect,
                      color: const Color(0xffADADAD),
                      padding: EdgeInsets.zero,
                      radius: Radius.circular(8.r),
                      strokeWidth: 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.r),
                        child: Container(
                          width: 118.w,
                          height: 95.h,
                          decoration: const BoxDecoration(
                            color: Color(0xffD9D9D9),
                          ),
                          child: _selectedProfileImage != null
                              ? Image.file(
                                  _selectedProfileImage!,
                                  fit: BoxFit.cover,
                                )
                              : const Center(child: Text('Choose File')),
                        ),
                      )),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(bottom: 18.w),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(width: 1, color: const Color(0xffADADAD))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 17.h,
                  left: 12.w,
                ),
                child: Text(
                  'Profile Background Images & Description',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              const Divider(
                color: Color(0xffADADAD),
              ),
              SizedBox(
                height: 16.h,
              ),
              // Display the selected image or a placeholder
              Center(
                child: GestureDetector(
                  onTap: () => pickImage(isBackground: true),
                  child: _selectedBackgroundImage != null
                      ? Image.file(
                          _selectedBackgroundImage!,
                          width: 320.w,
                          height: 94.h,
                          fit: BoxFit.cover,
                        )
                      : Container(
                          width: 320.w,
                          height: 94.h,
                          color: const Color(0xffD9D9D9),
                        ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 12.w, right: 15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Recommended Size 728* 90',
                      style: TextStyle(color: Color(0xffFF282F)),
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    // GestureDetector(
                    //   onTap: pickImage,
                    //   child: Container(
                    //     padding:
                    //         EdgeInsets.only(top: 6.h, left: 12.w, bottom: 7.h),
                    //     decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(12.r),
                    //         color: const Color(0xffEDECEC)),
                    //     child: Row(
                    //       children: [
                    //         Text(
                    //           'Choose File',
                    //           style: TextStyle(
                    //               fontSize: 10.sp,
                    //               fontWeight: FontWeight.w400,
                    //               color: const Color(0xff36383C)),
                    //         ),
                    //         SizedBox(
                    //           width: 7.w,
                    //         ),
                    //         Text(
                    //           "|",
                    //           style: TextStyle(
                    //               fontSize: 16.sp,
                    //               fontWeight: FontWeight.w700,
                    //               color: const Color(0xffADADAD)),
                    //         ),
                    //         SizedBox(
                    //           width: 11.w,
                    //         ),
                    //         Text(
                    //           _selectedImage != null
                    //               ? _selectedImage!.path.split('/').last
                    //               : 'No File Chosen',
                    //           style: TextStyle(
                    //               fontSize: 10.sp,
                    //               fontWeight: FontWeight.w400,
                    //               color: const Color(0xff36383C)),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 11.h,
                    ),
                    Text(
                      'Description',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff36383C)),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding:
                          EdgeInsets.only(top: 6.h, left: 12.w, bottom: 7.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(
                            width: 1, color: const Color(0xffADADAD)),
                      ),
                      child: TextField(
                        controller: _descriptionController,
                        decoration: const InputDecoration(
                          hintText: 'Enter description here',
                          border: InputBorder.none,
                        ),
                        maxLines: 3,
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    if (_isLoading)
                      const Center(child: CircularProgressIndicator())
                    else
                      GeneralTextButton(
                        marginH: 0,
                        height: 25.h,
                        width: 90.w,
                        title: 'Add',
                        fgColor: Colors.white,
                        bgColor: const Color(0xff362677),
                        isSmallText: true,
                        onPressed: _submit,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
