import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/rich_text_widget.dart';
import 'package:smartbazar/features/my_order/view/my_order_details_screen.dart';
import 'package:smartbazar/features/online_transaction_record/online_transacation_record_screen.dart';
import 'package:smartbazar/features/pending_approval/pending_approval.dart';
import 'package:smartbazar/features/vendor_details/widgets/bank_details_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class ProductImportScreen extends StatelessWidget {
  const ProductImportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F1F1),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 20.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.import_contacts),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        'Product Import',
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
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CSV File',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      ChooseFileWidget(
                        textColor: Colors.red,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      GeneralTextButton(
                          marginH: 0,
                          height: 28.h,
                          width: 100.w,
                          isSmallText: true,
                          fgColor: Colors.white,
                          bgColor: Color(0xff362677),
                          title: 'Add'),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Text(
                            'Sample Document',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Icon(
                            Icons.file_copy,
                            size: 20.h,
                            color: Color(0xff362677),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      DownloadFileSampleWidget(
                        text: 'Donwload Sample',
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      DownloadFileSampleWidget(
                        text: 'Donwload Documents',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 80.h,
                ),
                GeneralTextButton(
                  // marginH: 0,
                  width: MediaQuery.of(context).size.width,
                  title: 'Online Transaction',
                  fgColor: Colors.white,
                  bgColor: Color(0xff362677),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => OnlineTransactionRecordScreen()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DownloadFileSampleWidget extends StatelessWidget {
  final String text;
  const DownloadFileSampleWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 11.w),
      decoration: BoxDecoration(
          color: Color(0xff2ECC71), borderRadius: BorderRadius.circular(10.r)),
      child: Row(
        children: [
          Icon(
            Icons.file_copy,
            size: 15.h,
            color: Colors.white,
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 10.sp,
                color: Colors.white,
                fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
