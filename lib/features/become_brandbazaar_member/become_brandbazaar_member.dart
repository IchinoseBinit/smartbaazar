import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/auth/view/bottom_navigation_bar.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/become_brandbazaar_member/api/brand_store_api.dart';
import 'package:smartbazar/features/create_listing/widget/create_listing_card_widget.dart';
import 'package:smartbazar/features/vendor_details/widgets/bank_details_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class BecomeBrandbazaarMemberScreen extends ConsumerStatefulWidget {
  const BecomeBrandbazaarMemberScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BecomeBrandbazaarMemberScreenState();
}

class _BecomeBrandbazaarMemberScreenState
    extends ConsumerState<BecomeBrandbazaarMemberScreen> {
  final TextEditingController brandNameController = TextEditingController();
  final TextEditingController panVatNoController = TextEditingController();

  File? brandLogoFile;
  File? taxDocumentFile;
  File? brandCertificateFile;

  Future<void> postMember(BuildContext context) async {
    final brandName = brandNameController.text.trim();
    final panVatNo = panVatNoController.text.trim();
    if (brandName.isEmpty ||
        panVatNo.isEmpty ||
        brandLogoFile == null ||
        taxDocumentFile == null ||
        brandCertificateFile == null) {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text('Warning'),
          content: Text('Please fill all fields and select an image'),
        ),
      );
      return;
    }
    final success = await ref.read(postBrandMemberProvider(
      brandName,
      brandLogoFile!,
      panVatNo,
      taxDocumentFile!,
      brandCertificateFile!,
    ).future);
    if (success) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('GMembership Request posted successfully!'),
          backgroundColor: Colors.white70,
        ),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const BottomNavigationScreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Failed to post gift'),
          backgroundColor: Colors.white70,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: SafeArea(
          child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 8.w),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Row(
                    children: [
                      const Icon(Icons.ad_units),
                      SizedBox(width: 8.w),
                      Text(
                        'Become a brandbazar member',
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
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Brand Name ',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              controller: brandNameController,
                              textAlign: TextAlign.end,
                              textInputAction: TextInputAction.next,
                              // focusNode: linkFocusNode,
                              decoration: InputDecoration.collapsed(
                                hintText: 'Brand Name',
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp,
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
                CreateListingCardWidget(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Brand Logo ',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Text(
                          '(Recommended Size 1:1)',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xffADADAD)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    ChooseFileWidget(
                      textColor: Colors.red,
                      onImageSelected: (selectedImage) {
                        setState(() {
                          brandLogoFile = selectedImage;
                        });
                      },
                    ),
                  ],
                )),
                CreateListingCardWidget(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Pan/Vat No. ',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          const Spacer(),
                          Expanded(
                            child: TextField(
                              controller: panVatNoController,
                              textAlign: TextAlign.end,
                              textInputAction: TextInputAction.next,
                              // focusNode: linkFocusNode,
                              decoration: InputDecoration.collapsed(
                                hintText: 'XXX-XXXX-XXXX',
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp,
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
                CreateListingCardWidget(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Tax Clearance Document ',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Text(
                          '(scanned copy)',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xffADADAD)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    ChooseFileWidget(
                      textColor: Colors.red,
                      onImageSelected: (selectedImage) {
                        setState(() {
                          taxDocumentFile = selectedImage;
                        });
                      },
                    ),
                  ],
                )),
                CreateListingCardWidget(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Brand Certificate ',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Text(
                          '(scanned copy)',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xffADADAD)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    ChooseFileWidget(
                      textColor: Colors.red,
                      onImageSelected: (selectedImage) {
                        setState(() {
                          brandCertificateFile = selectedImage;
                        });
                      },
                    ),
                  ],
                )),
                SizedBox(
                  height: 15.h,
                ),
                GeneralTextButton(
                  width: MediaQuery.of(context).size.width,
                  title: 'Submit',
                  fgColor: Colors.white,
                  bgColor: const Color(0xff362677),
                  onPressed: () async {
                    await postMember(context);
                  },
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
