import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smartbazar/features/advertisement/api/post_advertisement_api.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/create_listing/widget/create_listing_card_widget.dart';
import 'package:smartbazar/features/proceed_pay/view/proceed_to_pay_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

// Define your ChooseFileWidget
class ChooseFileWidget extends StatefulWidget {
  final Function(File) onImageSelected;
  final Color textColor;

  const ChooseFileWidget({super.key, 
    required this.onImageSelected,
    required this.textColor,
  });

  @override
  _ChooseFileWidgetState createState() => _ChooseFileWidgetState();
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
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Select Image',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: widget.textColor,
              ),
            ),
            IconButton(
              icon: Icon(Icons.image_search, color: widget.textColor),
              onPressed: pickImage,
            ),
          ],
        ),
        SizedBox(height: 10.h),
        _selectedImage != null
            ? Container(
                width: double.infinity,
                height: 150.h,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Image.file(_selectedImage!, fit: BoxFit.cover),
              )
            : Text('No image selected', style: TextStyle(color: widget.textColor)),
      ],
    );
  }
}

// Define your ApplyAdvertisementScreen
class ApplyAdvertisementScreen extends ConsumerStatefulWidget {
  const ApplyAdvertisementScreen({super.key});

  @override
  ConsumerState<ApplyAdvertisementScreen> createState() => _ApplyAdvertisementScreenState();
}

class _ApplyAdvertisementScreenState extends ConsumerState<ApplyAdvertisementScreen> {
  final TextEditingController linkController = TextEditingController();
  final FocusNode linkFocusNode = FocusNode();
  File? imageFile;

  Future<void> submitAdvertisement() async {
    if (imageFile == null || linkController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please provide both an image and a link')),
      );
      return;
    }

    try {
      await ref.read(postAdvertisementProvider(
        imageFile!,
        linkController.text,
      ).future);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Advertisement posted successfully!')),
      );
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const ProceesToPayScreen()),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to post advertisement: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F1F1),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Row(
                    children: [
                      const Icon(Icons.ad_units),
                      SizedBox(width: 8.w),
                      Text(
                        'Apply for Advertisement',
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
                Divider(
                  thickness: 2.w,
                  color: const Color(0xffD9D9D9),
                ),
                SizedBox(height: 10.h),
                CreateListingCardWidget(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Banner/ Ad Image ',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            '(individual)',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xffADADAD),
                            ),
                          ),
                        ],
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
                    ],
                  ),
                ),
                SizedBox(height: 5.h),
                CreateListingCardWidget(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Link ',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          const Spacer(),
                          Expanded(
                            child: TextField(
                              controller: linkController,
                              focusNode: linkFocusNode,
                              decoration: InputDecoration.collapsed(
                                hintText: 'Link',
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                  color: const Color(0xffADADAD),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Divider(
                  thickness: 2.w,
                  color: const Color(0xffD9D9D9),
                ),
                SizedBox(height: 40.h),
                GeneralTextButton(
                  width: MediaQuery.of(context).size.width,
                  title: 'Submit',
                  fgColor: Colors.white,
                  bgColor: const Color(0xff362677),
                  onPressed: submitAdvertisement,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
