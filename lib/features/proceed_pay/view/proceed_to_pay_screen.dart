import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class ProceesToPayScreen extends StatelessWidget {
  const ProceesToPayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 30.h,
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Row(
                children: [
                  SvgPicture.asset(payementIcon),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    'Payment',
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
            const Column(
              children: [
                PayementDetailsWidget(
                  title: 'Particular',
                  description: 'Acer Aspire 5 A515-56-32DK',
                ),
                PayementDetailsWidget(
                  title: 'Quantity',
                  description: '1',
                ),
                PayementDetailsWidget(
                  title: 'Rate',
                  description: 'Rs. 60,000',
                ),
                PayementDetailsWidget(
                  title: 'Total',
                  description: 'Rs. 60,000',
                  textStyle: TextStyle(fontWeight: FontWeight.w700),
                ),
                PayementDetailsWidget(
                  title: 'Shipping Charge',
                  description: 'Rs. 200',
                ),
                PayementDetailsWidget(
                  title: 'Grand Total',
                  description: 'Rs. 60,200',
                  textStyle: TextStyle(fontWeight: FontWeight.w700),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Divider(
              thickness: 2.w,
              color: const Color(0xffD9D9D9),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 20.h),
              child: Row(
                children: [
                  SvgPicture.asset(contactSellerIcon),
                  SizedBox(
                    width: 8.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '24x7 Helpline',
                        style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff36383C)),
                      ),
                      Text(
                        '9840714218',
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff36383C)),
                      )
                    ],
                  ),
                  const Spacer(),
                  GeneralTextButton(
                      marginH: 0,
                      height: 38.h,
                      width: MediaQuery.of(context).size.width / 2.5,
                      isSmallText: true,
                      fgColor: Colors.white,
                      bgColor: const Color(0xff362677),
                      title: 'Pay with Fonepay')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PayementDetailsWidget extends StatelessWidget {
  final TextStyle? textStyle;
  final String title;
  final String description;

  const PayementDetailsWidget({
    super.key,
    required this.title,
    required this.description,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 16.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start, // Align at the start for multiline text
        children: [
          Expanded(
            flex: 2,
            child: Text(
              title,
              style: textStyle ??
                  TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff36383C),
                  ),
            ),
          ),
          SizedBox(width: 10.w), // Add some spacing between title and description
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end, // Align description to the end
              children: [
                Text(
                  description,
                  style: textStyle ??
                      TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff36383C),
                      ),
                  softWrap: true, // Allow text to wrap
                  overflow: TextOverflow.visible, // Display text in multiple lines if needed
                  textAlign: TextAlign.end, // Ensure the text is aligned to the end
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


