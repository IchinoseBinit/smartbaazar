import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/advertisement/view/advertisement_screen.dart';
import 'package:smartbazar/features/auth/widgets/custom_check_box_widgt.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/create_listing/widget/create_listing_card_widget.dart';
import 'package:smartbazar/features/vendor_details/widgets/bank_details_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class ApplySponsorshipPriceScreen extends ConsumerStatefulWidget {
  const ApplySponsorshipPriceScreen({super.key});

  @override
  ConsumerState<ApplySponsorshipPriceScreen> createState() =>
      _ApplySponsorshipPriceScreenState();
}

class _ApplySponsorshipPriceScreenState
    extends ConsumerState<ApplySponsorshipPriceScreen> {
  File? imageFile;
  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F1F1),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                ),
                child: Row(
                  children: [
                    const Icon(Icons.card_giftcard),
                    const Icon(Icons.card_giftcard),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      ' Apply for Prize SponsorShip',
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
              SizedBox(
                height: 10.h,
              ),
              Expanded(
                child: DefaultTabController(
                  length: 2, // Number of tabs
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const TabBar(
                        tabAlignment: TabAlignment.start,
                        isScrollable: true,
                        dividerColor: Color(0xffD9D9D9),
                        tabs: [
                          Tab(
                            text: 'Gifts',
                          ),
                          Tab(
                            text: 'Coupons',
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          children: [
                            SingleChildScrollView(
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.h),
                                child: Column(
                                  children: [
                                    CreateListingCardWidget(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Gift Name/Title',
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black),
                                            ),
                                            const Spacer(),
                                            Expanded(
                                              child: TextField(
                                                decoration:
                                                    InputDecoration.collapsed(
                                                        hintText: 'Gift  Title',
                                                        hintStyle: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 16.sp,
                                                            color: const Color(
                                                                0xffADADAD))),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )),
                                    CreateListingCardWidget(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Gift Quantity ',
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
                                                  color:
                                                      const Color(0xffADADAD)),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Gift Quantity',
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black),
                                            ),
                                            const Spacer(),
                                            Expanded(
                                              child: TextField(
                                                decoration:
                                                    InputDecoration.collapsed(
                                                        hintText: '1',
                                                        hintStyle: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 16.sp,
                                                            color: const Color(
                                                                0xffADADAD))),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )),
                                    CreateListingCardWidget(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              'Gift Quantity ',
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black),
                                            ),
                                            Text(
                                              '(individual)',
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color:
                                                      const Color(0xffADADAD)),
                                            ),
                                            const Spacer(),
                                            const Spacer(),
                                            Expanded(
                                              child: TextField(
                                                decoration:
                                                    InputDecoration.collapsed(
                                                        hintText:
                                                            'Gift Worth (NPR)',
                                                        hintStyle: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 16.sp,
                                                            color: const Color(
                                                                0xffADADAD))),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )),
                                    CreateListingCardWidget(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              'Total Worth ',
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black),
                                            ),
                                            const Spacer(),
                                            Expanded(
                                              child: TextField(
                                                decoration:
                                                    InputDecoration.collapsed(
                                                        hintText:
                                                            'Total Worth (Limit 2000)',
                                                        hintStyle: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 16.sp,
                                                            color: const Color(
                                                                0xffADADAD))),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )),
                                    CreateListingCardWidget(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              'Impression',
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black),
                                            ),
                                            const Spacer(),
                                            Expanded(
                                              child: TextField(
                                                decoration:
                                                    InputDecoration.collapsed(
                                                        hintText:
                                                            'impression (in times)',
                                                        hintStyle: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 16.sp,
                                                            color: const Color(
                                                                0xffADADAD))),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )),
                                    CreateListingCardWidget(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              '2 % Sponsorship Fee',
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black),
                                            ),
                                            const Spacer(),
                                            Expanded(
                                              child: TextField(
                                                decoration:
                                                    InputDecoration.collapsed(
                                                        hintText:
                                                            '2 % of total Gift Worth',
                                                        hintStyle: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 16.sp,
                                                            color: const Color(
                                                                0xffADADAD))),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )),
                                    CreateListingCardWidget(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              'Total Cost',
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black),
                                            ),
                                            const Spacer(),
                                            Expanded(
                                              child: TextField(
                                                decoration:
                                                    InputDecoration.collapsed(
                                                        hintText: 'NPR',
                                                        hintStyle: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 16.sp,
                                                            color: const Color(
                                                                0xffADADAD))),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          CustomCheckbox(
                                              value: true, onChanged: (_) {}),
                                          SizedBox(
                                            width: 15.w,
                                          ),
                                          Expanded(
                                            child: Text(
                                              'I agree  on Term and COnditions of  sponsorship Program. Click here to see the terms & condition',
                                              style: TextStyle(fontSize: 10.sp),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
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
              ),
              SizedBox(
                height: 10.h,
              ),
              GeneralTextButton(
                  // marginH: 0,

                  width: MediaQuery.of(context).size.width,
                  title: 'Submit',
                  fgColor: Colors.white,
                  bgColor: const Color(0xff362677),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const AdvertisementScreen()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
