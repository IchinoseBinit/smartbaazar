import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smartbazar/features/auth/widgets/general_text_field_widget.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';

class BankDetailsWidget extends ConsumerStatefulWidget {
  const BankDetailsWidget({
    super.key,
  });

  @override
  ConsumerState<BankDetailsWidget> createState() => _BankDetailsWidgetState();
}

class _BankDetailsWidgetState extends ConsumerState<BankDetailsWidget> {
  File? imageFile;
  @override
  Widget build(BuildContext context) {
    return Container(
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
              'Bank Details',
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
            padding: EdgeInsets.only(left: 10.w, right: 45.w, top: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextFieldWidget(
                  fill: true,
                  fillColor: const Color(0xffF3F3F3),
                  icon: Icons.person,
                  hintText: "Bnnk Name",
                  validator: (_) {},
                ),
                SizedBox(
                  height: 10.2.h,
                ),
                CustomTextFieldWidget(
                  fill: true,
                  fillColor: const Color(0xffF3F3F3),
                  icon: Icons.call,
                  hintText: "Bank Branch",
                  validator: (_) {},
                ),
                SizedBox(
                  height: 10.2.h,
                ),
                CustomTextFieldWidget(
                  fill: true,
                  fillColor: const Color(0xffF3F3F3),
                  icon: Icons.mail,
                  hintText: "Account Holder Name",
                  validator: (_) {},
                ),
                SizedBox(
                  height: 10.2.h,
                ),
                CustomTextFieldWidget(
                  fill: true,
                  fillColor: const Color(0xffF3F3F3),
                  icon: Icons.person_outline,
                  hintText: "User Name",
                  validator: (_) {},
                ),
                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: Container(
                    height: 75.h,
                    width: 95.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(
                            width: 1.w, color: const Color(0xffADADAD))),
                    child: Center(
                      child: Text(
                        'Add Photo',
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: const Color(0xff888888),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                ChooseFileWidget(
                  textColor: Colors.red,
                  onImageSelected: (selectedImage) {
                    setState(() {
                      imageFile = selectedImage;
                    });
                  },
                ),
                SizedBox(
                  height: 15.h,
                ),
                GeneralTextButton(
                  marginH: 0,
                  height: 25.h,
                  width: 100.w,
                  title: 'Submit',
                  fgColor: Colors.white,
                  bgColor: const Color(0xff362677),
                  isSmallText: true,
                ),
                SizedBox(
                  height: 10.h,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ChooseFileWidget extends StatefulWidget {
  final Function(File) onImageSelected;
  final Color? textColor;

  const ChooseFileWidget({
    super.key,
    required this.onImageSelected,
    this.textColor,
  });

  @override
  State<ChooseFileWidget> createState() => _ChooseFileWidgetState();
}

class _ChooseFileWidgetState extends State<ChooseFileWidget> {
  File? _selectedImage;
  final ImagePicker _picker = ImagePicker(); // Add ImagePicker instance here

  Future<void> pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
        widget.onImageSelected(_selectedImage!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: pickImage,
          child: Container(
            padding: EdgeInsets.only(top: 6.h, left: 12.w, bottom: 7.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: const Color(0xffEDECEC),
            ),
            child: Row(
              children: [
                Text(
                  'Choose File',
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
                  _selectedImage == null
                      ? 'No File Chosen'
                      : 'File Selected', // Update based on image selection
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: widget.textColor ?? const Color(0xff36383C),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10.h),
        // Show image preview if available
        _selectedImage != null
            ? Container(
                width: double.infinity,
                height: 150.h, // You can adjust the height as per your design
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffADADAD)),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.file(
                    _selectedImage!,
                    fit: BoxFit.cover, // Adjust fit to fill the container
                  ),
                ),
              )
            : Container(), // Empty container if no image is selected
      ],
    );
  }
}
