import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  File? imageFile;

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: SafeArea(
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
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(),
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
                      'Gift Image ',
                      style: TextStyle(
                          fontSize: 16.sp,
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
                      imageFile = selectedImage;
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
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(),
                      Expanded(
                        child: TextField(
                          controller: brandNameController,
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
          ],
        ),
      )),
    );
  }
}
