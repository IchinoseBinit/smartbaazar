import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/advertisement/view/advertisement_screen.dart';
import 'package:smartbazar/features/auth/widgets/custom_check_box_widgt.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/create_listing/widget/create_listing_card_widget.dart';
import 'package:smartbazar/features/sponsorship/api/post_coupon_api.dart';
import 'package:smartbazar/features/sponsorship/api/post_gift_api.dart';
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
  final TextEditingController giftController = TextEditingController();
  final TextEditingController giftWorthController = TextEditingController();
  final TextEditingController giftQtyController = TextEditingController();
  String totalWorth = 'Total Worth (Limit 2000)';
  String sponsorshipFee = 'Sponsorship Fee (2%)';
  String totalCost = 'NPR';
  @override
  void initState() {
    super.initState();

    // Add listeners to controllers
    giftQtyController.addListener(_calculateTotalWorth);
    giftWorthController.addListener(_calculateTotalWorth);
  }

  @override
  void dispose() {
    giftQtyController.dispose();
    giftWorthController.dispose();
    super.dispose();
  }

  void _calculateTotalWorth() {
    final String qtyText = giftQtyController.text;
    final String worthText = giftWorthController.text;

    if (qtyText.isNotEmpty && worthText.isNotEmpty) {
      try {
        final int quantity = int.parse(qtyText);
        final double worth = double.parse(worthText);

        final double total = quantity * worth;
        final double fee = total * 0.02;
        final double totalWithFee = total + fee;

        setState(() {
          totalWorth = 'Rs $total';
          sponsorshipFee = 'Rs $fee';
          totalCost = 'Rs $totalWithFee';
        });
      } catch (e) {
        setState(() {
          totalWorth = 'Invalid input';
          sponsorshipFee = 'Invalid fee';
          totalCost = 'Invalid total cost';
        });
      }
    } else {
      setState(() {
        totalWorth = 'Total Worth (Limit 2000)';
        sponsorshipFee = 'Sponsorship Fee (2%)';
        totalCost = 'Total Cost (NPR)';
      });
    }
  }

  Future<void> submitGift(BuildContext context) async {
    final gift = giftController.text.trim();
    final giftWorth = giftWorthController.text.trim();
    final giftQty = giftQtyController.text.trim();
    const giftType = "gift";

    if (imageFile == null ||
        gift.isEmpty ||
        giftWorth.isEmpty ||
        giftQty.isEmpty ||
        giftType.isEmpty) {
      // Show error if any required field is missing
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill all fields and select an image')),
      );
      return;
    }

    // Call the postgift API
    final success = await ref.read(postgiftProvider(
      gift,
      giftWorth,
      giftType,
      giftQty,
      imageFile!,
    ).future);

    if (success) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Gift posted successfully!')),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const AdvertisementScreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to post gift')),
      );
    }
  }

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
                    SizedBox(
                      width: 5.w,
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
                                            Expanded(
                                              child: TextField(
                                                textAlign: TextAlign.end,
                                                textInputAction:
                                                    TextInputAction.done,
                                                controller: giftController,
                                                decoration:
                                                    InputDecoration.collapsed(
                                                        hintText: 'Gift Title',
                                                        hintStyle: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 12.sp,
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
                                            Expanded(
                                              child: TextField(
                                                textAlign: TextAlign.end,
                                                textInputAction:
                                                    TextInputAction.next,
                                                keyboardType:
                                                    TextInputType.number,
                                                controller: giftQtyController,
                                                decoration:
                                                    InputDecoration.collapsed(
                                                        hintText: '1',
                                                        hintStyle: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 12.sp,
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Gift Worth ',
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
                                            Expanded(
                                              child: TextField(
                                                textInputAction:
                                                    TextInputAction.done,
                                                controller: giftWorthController,
                                                keyboardType:
                                                    TextInputType.number,
                                                textAlign: TextAlign.end,
                                                decoration:
                                                    InputDecoration.collapsed(
                                                        hintText:
                                                            'Gift Worth (NPR)',
                                                        hintStyle: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 12.sp,
                                                            color: const Color(
                                                                0xffADADAD))),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )),
                                    ReadContainer(
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
                                            Expanded(
                                              child: TextField(
                                                readOnly: true,
                                                textAlign: TextAlign.end,
                                                decoration:
                                                    InputDecoration.collapsed(
                                                        hintText: totalWorth,
                                                        hintStyle: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 12.sp,
                                                            color: const Color(
                                                                0xffADADAD))),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )),
                                    ReadContainer(
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
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Expanded(
                                                child: TextField(
                                                  readOnly:
                                                      true, // Make the text field read-only
                                                  textAlign: TextAlign.end,
                                                  decoration:
                                                      InputDecoration.collapsed(
                                                    hintText: totalWorth ==
                                                            'Total Worth (Limit 2000)'
                                                        ? 'impression (in times)'
                                                        : totalWorth,
                                                    hintStyle: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12.sp,
                                                      color: const Color(
                                                          0xffADADAD),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    ReadContainer(
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
                                            Expanded(
                                              child: TextField(
                                                readOnly: true,
                                                textAlign: TextAlign.end,
                                                decoration:
                                                    InputDecoration.collapsed(
                                                        hintText:
                                                            sponsorshipFee,
                                                        // '2 % of total Gift Worth',
                                                        hintStyle: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 12.sp,
                                                            color: const Color(
                                                                0xffADADAD))),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )),
                                    ReadContainer(
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
                                            Expanded(
                                              child: TextField(
                                                readOnly: true,
                                                textAlign: TextAlign.end,
                                                decoration:
                                                    InputDecoration.collapsed(
                                                        hintText: totalCost,
                                                        hintStyle: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 12.sp,
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
                                    ),
                                    GeneralTextButton(
                                      width: MediaQuery.of(context).size.width,
                                      title: 'Submit',
                                      fgColor: Colors.white,
                                      bgColor: const Color(0xff362677),
                                      onPressed: () async {
                                        await submitGift(context);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10.h),
                                  child: const CouponWidget()),
                            )
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
            ],
          ),
        ),
      ),
    );
  }
}

class ReadContainer extends StatelessWidget {
  final Widget child;
  final double? width;
  const ReadContainer({super.key, required this.child, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: width ?? MediaQuery.of(context).size.width,
      ),
      decoration: BoxDecoration(
        color: const Color(0xffF6F1F1),
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
          const BoxShadow(
            color: Colors.white,
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Card(
        color: const Color(0xFFe8ecee),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 18.h),
          child: child,
        ),
      ),
    );
  }
}

class CouponWidget extends ConsumerStatefulWidget {
  const CouponWidget({super.key});

  @override
  ConsumerState<CouponWidget> createState() => _CouponWidgetState();
}

class _CouponWidgetState extends ConsumerState<CouponWidget> {
  final TextEditingController couponController = TextEditingController();
  final TextEditingController discountuptoController = TextEditingController();
  final TextEditingController couponQtyController = TextEditingController();
  String totalWorth = 'Total Worth (Limit 2000)';
  String sponsorshipFee = 'Sponsorship Fee (2%)';
  String totalCost = 'NPR';
  @override
  void initState() {
    super.initState();

    couponQtyController.addListener(_calculateTotalWorthofCoupon);
    discountuptoController.addListener(_calculateTotalWorthofCoupon);
  }

  @override
  void dispose() {
    couponQtyController.dispose();
    discountuptoController.dispose();
    super.dispose();
  }

  void _calculateTotalWorthofCoupon() {
    final String discountUptoText = discountuptoController.text;
    final String couponQtyText = couponQtyController.text;
    if (discountUptoText.isNotEmpty) {
      try {
        final double discountUpto = double.parse(discountUptoText);
        final int couponQty = int.parse(couponQtyText);

        final double total = discountUpto * couponQty;
        final double fee = total * 0.02;
        final double totalWithFee = total + fee;

        setState(() {
          totalWorth = 'Rs $total';
          sponsorshipFee = 'Rs $fee';
          totalCost = 'Rs $totalWithFee';
        });
      } catch (e) {
        setState(() {
          totalWorth = 'Invalid input';
          sponsorshipFee = 'Invalid fee';
          totalCost = 'Invalid total cost';
        });
      }
    } else {
      setState(() {
        totalWorth = 'Total Worth (Limit 2000)';
        sponsorshipFee = 'Sponsorship Fee (2%)';
        totalCost = 'NPR';
      });
    }
  }

  Future<void> submitCoupon(BuildContext context) async {
    final String couponPercentage = couponController.text.trim();
    final String discountUptoText = discountuptoController.text.trim();
    final String couponQuantityText = couponQtyController.text.trim();

    // Validate inputs
    if (couponPercentage.isEmpty ||
        discountUptoText.isEmpty ||
        couponQuantityText.isEmpty) {
      // Show an error message if any field is empty
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Error'),
          content: const Text('Please fill in all fields.'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
      return;
    }

    // Calculate total worth, sponsorship fee, and total cost before submission
    try {
      final double discountUpto = double.parse(discountUptoText);
      final int couponQty = int.parse(couponQuantityText);

      final double total = discountUpto * couponQty;
      final double fee = total * 0.02;
      final double totalWithFee = total + fee;
      final String couponTotalWorth = totalWithFee.toString();
      final String couponImpression =
          total.toString(); 

      // Submit the coupon via API
      final bool success = await ref.read(postCouponProvider(
        couponPercentage,
        discountUptoText,
        couponQuantityText,
        couponTotalWorth,
        'Coupon', // giftType

        couponImpression,
      ).future);

      if (success) {
        // Show success message and clear fields
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Success'),
            content: const Text('Coupon posted successfully!'),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      } else {
        // Show error message if submission fails
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Error'),
            content: const Text('Failed to post the coupon. Please try again.'),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      }
    } catch (e) {
      // Handle invalid input (non-numeric input)
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Invalid Input'),
          content: const Text(
              'Please enter valid numbers for discount and quantity.'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreateListingCardWidget(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Coupon Discount %',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Expanded(
                  child: TextField(
                    textAlign: TextAlign.end,
                    textInputAction: TextInputAction.next,
                    controller: couponController,
                    decoration: InputDecoration.collapsed(
                        hintText: 'Coupon Discount %',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                            color: const Color(0xffADADAD))),
                  ),
                ),
              ],
            ),
          ],
        )),
        CreateListingCardWidget(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Discount upto.',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Expanded(
                  child: TextField(
                    textAlign: TextAlign.end,
                    textInputAction: TextInputAction.done,
                    controller: discountuptoController,
                    decoration: InputDecoration.collapsed(
                        hintText: 'Discount upto.',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                            color: const Color(0xffADADAD))),
                  ),
                ),
              ],
            ),
          ],
        )),
        CreateListingCardWidget(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Coupon Quantity',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Expanded(
                  child: TextField(
                    textAlign: TextAlign.end,
                    textInputAction: TextInputAction.done,
                    controller: couponQtyController,
                    decoration: InputDecoration.collapsed(
                        hintText: '1',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            color: const Color(0xffADADAD))),
                  ),
                ),
              ],
            ),
          ],
        )),
        ReadContainer(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Total Worth ',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Expanded(
                  child: TextField(
                    readOnly: true,
                    textAlign: TextAlign.end,
                    decoration: InputDecoration.collapsed(
                        hintText: totalWorth,
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                            color: const Color(0xffADADAD))),
                  ),
                ),
              ],
            ),
          ],
        )),
        ReadContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Impression',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      readOnly: true, // Make the text field read-only
                      textAlign: TextAlign.end,
                      decoration: InputDecoration.collapsed(
                        hintText: totalWorth == 'Total Worth (Limit 2000)'
                            ? 'impression (in times)'
                            : totalWorth,
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
        ReadContainer(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '2 % Sponsorship Fee',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Expanded(
                  child: TextField(
                    readOnly: true,
                    textAlign: TextAlign.end,
                    decoration: InputDecoration.collapsed(
                        hintText: sponsorshipFee,
                        // '2 % of total Gift Worth',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                            color: const Color(0xffADADAD))),
                  ),
                ),
              ],
            ),
          ],
        )),
        ReadContainer(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Total Cost',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Expanded(
                  child: TextField(
                    readOnly: true,
                    textAlign: TextAlign.end,
                    decoration: InputDecoration.collapsed(
                        hintText: totalCost,
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                            color: const Color(0xffADADAD))),
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
              CustomCheckbox(value: true, onChanged: (_) {}),
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
        ),
        GeneralTextButton(
          width: MediaQuery.of(context).size.width,
          title: 'Submit',
          fgColor: Colors.white,
          bgColor: const Color(0xff362677),
          onPressed: () async {
            await submitCoupon(context);
          },
        ),
      ],
    );
  }
}
