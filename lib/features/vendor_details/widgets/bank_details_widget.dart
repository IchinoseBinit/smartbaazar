import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smartbazar/features/auth/widgets/general_text_field_widget.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/vendor_details/api/post_bank_details_api.dart'; // Import your provider

class BankDetailsWidget extends ConsumerStatefulWidget {
  const BankDetailsWidget({
    super.key,
  });

  @override
  ConsumerState<BankDetailsWidget> createState() => _BankDetailsWidgetState();
}

class _BankDetailsWidgetState extends ConsumerState<BankDetailsWidget> {
  final _formKey = GlobalKey<FormState>();
  String? bankName, bankBranch, accountHolder, accountNumber;
  File? imageFile;

  void _submitBankDetails() {
    bool isFormValid = _formKey.currentState!.validate();
    if (!isFormValid || imageFile == null) {
      // If form is invalid or image is not selected
      String errorMessage = '';
      if (!isFormValid) {
        errorMessage += 'Please fill all fields. ';
      }
      if (imageFile == null) {
        errorMessage += 'Please select an image.';
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(errorMessage.trim())),
      );
      return;
    }

    _formKey.currentState!.save();

    // Call the API provider to post the bank details
    ref
        .read(postUserBankDetailsProvider(
      bankName!,
      bankBranch!,
      accountHolder!,
      accountNumber!,
      imageFile!,
    ).future)
        .then((success) {
      if (success) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Bank details submitted successfully!')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to submit bank details.')),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(bottom: 18.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(width: 1, color: const Color(0xffADADAD)),
      ),
      child: Form(
        key: _formKey,
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
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            const Divider(color: Color(0xffADADAD)),
            Padding(
              padding: EdgeInsets.only(left: 10.w, right: 45.w, top: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextFieldWidget(
                    textInputType: TextInputAction.next,
                    fill: true,
                    fillColor: const Color(0xffF3F3F3),
                    icon: Icons.person,
                    hintText: "Bank Name",
                    onChanged: (value) => bankName = value,
                    validator: (value) =>
                        value!.isEmpty ? "Enter bank name" : null,
                  ),
                  SizedBox(height: 10.2.h),
                  CustomTextFieldWidget(
                     textInputType: TextInputAction.next,
                    fill: true,
                    fillColor: const Color(0xffF3F3F3),
                    icon: Icons.location_city,
                    hintText: "Bank Branch",
                    onChanged: (value) => bankBranch = value,
                    validator: (value) =>
                        value!.isEmpty ? "Enter bank branch" : null,
                  ),
                  SizedBox(height: 10.2.h),
                  CustomTextFieldWidget(
                     textInputType: TextInputAction.next,
                    fill: true,
                    fillColor: const Color(0xffF3F3F3),
                    icon: Icons.person_outline,
                    hintText: "Account Holder Name",
                    onChanged: (value) => accountHolder = value,
                    validator: (value) =>
                        value!.isEmpty ? "Enter account holder name" : null,
                  ),
                  SizedBox(height: 10.2.h),
                  CustomTextFieldWidget(
                     textInputType: TextInputAction.done,
                    fill: true,
                    fillColor: const Color(0xffF3F3F3),
                    icon: Icons.account_balance,
                    hintText: "Account Number",
                    onChanged: (value) => accountNumber = value,
                    validator: (value) =>
                        value!.isEmpty ? "Enter account number" : null,
                  ),
                  SizedBox(height: 10.h),
                  ChooseFileWidget(
                    textColor: Colors.red,
                    onImageSelected: (selectedImage) {
                      setState(() {
                        imageFile = selectedImage;
                      });
                    },
                  ),
                  SizedBox(height: 15.h),
                  GeneralTextButton(
                    marginH: 0,
                    height: 25.h,
                    width: 100.w,
                    title: 'Submit',
                    fgColor: Colors.white,
                    bgColor: const Color(0xff362677),
                    isSmallText: true,
                    onPressed: _submitBankDetails, // Call submit on press
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
          ],
        ),
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
