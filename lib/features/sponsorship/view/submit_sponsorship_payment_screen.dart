import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/sponsorship/api/delete_sponsor_api.dart';
import 'package:smartbazar/features/sponsorship/api/post_coupon_api.dart';
import 'package:smartbazar/features/sponsorship/api/post_sponsor_banner_api.dart';
import 'package:smartbazar/features/sponsorship/api/sponsor_gift_api.dart';
import 'package:smartbazar/features/sponsorship/model/sponsor_gift_model.dart';
import 'package:smartbazar/features/sponsorship/view/apply_sponsorship_price_screen.dart';
import 'package:smartbazar/features/vendor_details/widgets/bank_details_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';
import 'package:smartbazar/payment/payment_screen.dart';

class PaymentSponsoredScreen extends ConsumerStatefulWidget {
  final String title;
  final String discounted;
  final String quantity, toal, rate;
  final int coupunqty;

  // Constructor now includes required parameters
  const PaymentSponsoredScreen(
      {super.key,
      required this.quantity,
      required this.toal,
      required this.title,
      required this.rate,
      required this.discounted,
      required this.coupunqty});

  @override
  ConsumerState<PaymentSponsoredScreen> createState() =>
      _PaymentSponsoredScreenState();
}

class _PaymentSponsoredScreenState
    extends ConsumerState<PaymentSponsoredScreen> {
  @override
  Widget build(BuildContext context) {
    final sponsorshipData = ref.watch(getSponsorGiftModelResponseProvider);

    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF6F4F4),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Row(
                    children: [
                      const Icon(Icons.credit_card),
                      SizedBox(width: 8.w),
                      Text(
                        'Payment',
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
                SizedBox(
                  height: 5.h,
                ),
                Divider(
                  color: Color(0xffD9D9D9),
                  height: 1,
                ),
                SizedBox(
                  height: 5.h,
                ),
                row_with_value('Particualr', widget.title),
                SizedBox(
                  height: 5.h,
                ),
                row_with_value('Quantity', widget.quantity.toString()),
                SizedBox(
                  height: 5.h,
                ),
                row_with_value('Rate', widget.rate.toString()),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: GoogleFonts.quicksand().fontFamily,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        widget.toal.toString(),
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: GoogleFonts.quicksand().fontFamily,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 5.h,
                ),
                // Your content goes here
                Divider(
                  color: Color(0xffD9D9D9),
                  height: 1,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/headphone.png'),
                    GeneralTextButton(
                      width: 200.w,
                      title: 'Proceed to Pay',
                      fgColor: Colors.white,
                      bgColor: const Color(0xff362677),
                      onPressed: () async {
                        bool success =
                            await initiatePayment(context, widget.toal, true);

                        // Validate inputs
                      },
                    ),
                  ],
                )

                // Add more widgets/content as needed
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding row_with_value(String first, String second) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            first,
            style: TextStyle(
              color: Colors.black,
              fontFamily: GoogleFonts.quicksand().fontFamily,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            second,
            style: TextStyle(
              color: Colors.black,
              fontFamily: GoogleFonts.quicksand().fontFamily,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
