import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/contact_us/api/contact_us_api.dart';
import 'package:smartbazar/features/contact_us/model/contact_us_model.dart';
import 'package:smartbazar/features/create_listing/widget/create_listing_card_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class ContactUsScreen extends ConsumerStatefulWidget {
  const ContactUsScreen({super.key});

  @override
  ConsumerState<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends ConsumerState<ContactUsScreen> {
  final _formKey = GlobalKey<FormState>();

  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _companyNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _companyNameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  Future<void> _submitForm() async {
    if (_formKey.currentState?.validate() ?? false) {
      final contactUsModel = ContactUsModel(
          firstName: _firstNameController.text,
          lastName: _lastNameController.text,
          companyName: _companyNameController.text,
          email: _emailController.text,
          message: _messageController.text,
          countryCode: "NP",
          countryName: "Nepal");

      try {
        final response =
            await ref.read(postContactUsProvider(contactUsModel).future);

        _showSuccessDialog();
        _clearFormFields();
      } catch (e) {
        if (e is DioException) {
          final errorMessage =
              e.response?.data['message'] ?? 'An error occurred';
          final errors = e.response?.data['errors'] ?? {};
          _showErrorDialog('$errorMessage: $errors');
        } else {
          _showErrorDialog('An unexpected error occurred.');
        }
      }
    }
  }

  void _clearFormFields() {
    _firstNameController.clear();
    _lastNameController.clear();
    _companyNameController.clear();
    _emailController.clear();
    _messageController.clear();
  }

  void _showSuccessDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Success'),
        content: const Text('Your message has been sent successfully.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Error'),
        content: Text('Failed to send message: $message'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffF6F1F1),
          toolbarHeight: 50.h,
          automaticallyImplyLeading: false,
          title: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    messagesIcon,
                    height: 20.h,
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    'Contact US',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Text(
                      'Go back',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: const Color(0xff888888),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 5.h),
              Divider(
                thickness: 2.w,
                color: const Color(0xffD9D9D9),
              ),
            ],
          ),
        ),
        backgroundColor: const Color(0xffF6F1F1),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 136.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: const Color(0xffD9D9D9),
                    ),
                    child: Center(
                      child: Text(
                        'Google Maps API',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xffADADAD),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  CreateListingCardWidget(
                    child: _buildTextField(
                      label: 'First Name',
                      controller: _firstNameController,
                      hintText: 'Name',
                    ),
                  ),
                  SizedBox(height: 10.h),
                  CreateListingCardWidget(
                    child: _buildTextField(
                      label: 'Last Name',
                      controller: _lastNameController,
                      hintText: 'Last Name',
                    ),
                  ),
                  SizedBox(height: 10.h),
                  CreateListingCardWidget(
                    child: _buildTextField(
                      label: 'Company Name',
                      controller: _companyNameController,
                      hintText: 'Company Name',
                    ),
                  ),
                  SizedBox(height: 10.h),
                  CreateListingCardWidget(
                    child: _buildTextField(
                      label: 'Email Address',
                      controller: _emailController,
                      hintText: 'Email Address',
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  CreateListingCardWidget(
                    child: _buildMessageField(),
                  ),
                  SizedBox(height: 30.h),
                  GeneralTextButton(
                    width: MediaQuery.of(context).size.width,
                    title: 'Submit',
                    fgColor: Colors.white,
                    bgColor: const Color(0xff362677),
                    onPressed: _submitForm,
                  ),
                  SizedBox(height: 30.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required TextEditingController controller,
    required String hintText,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$label ',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const Spacer(),
        Expanded(
          child: TextFormField(
            controller: controller,
            textInputAction: TextInputAction.next,
            keyboardType: keyboardType,
            decoration: InputDecoration.collapsed(
              hintText: hintText,
              hintStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                color: const Color(0xffADADAD),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your $label';
              }
              return null;
            },
          ),
        ),
      ],
    );
  }

  Widget _buildMessageField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Message ',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 10.h),
        TextFormField(
          controller: _messageController,
          textInputAction: TextInputAction.done,
          maxLines: null,
          decoration: InputDecoration.collapsed(
            hintText: 'Describe your message',
            hintStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              color: const Color(0xffADADAD),
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your message';
            }
            return null;
          },
        ),
      ],
    );
  }
}
