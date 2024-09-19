import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/rich_text_widget.dart';
import 'package:smartbazar/features/my_order/view/my_order_details_screen.dart';
import 'package:smartbazar/features/pending_approval/pending_approval.dart';
import 'package:smartbazar/features/prodcut_import/product_import_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class OfflineListinScreen extends StatelessWidget {
  const OfflineListinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F1F1),
        // appBar: AppBar(
        //   // backgroundColor: const Color(0xffF6F1F1),
        //   automaticallyImplyLeading: false,
        //   toolbarHeight: 30.h,
        // ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.pending),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        'Offline Listing',
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
                ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, int index) => Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: const OfflineListingContainer(),
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          height: 14.h,
                        ),
                    itemCount: 3),
                SizedBox(
                  height: 25.h,
                ),
                GeneralTextButton(
                  // marginH: 0,
                  width: MediaQuery.of(context).size.width,
                  title: 'Product Import',
                  fgColor: Colors.white,
                  bgColor: const Color(0xff362677),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const ProductImportScreen()));
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

class OfflineListingContainer extends StatelessWidget {
  const OfflineListingContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.white,
        // color: Colors.red,
        boxShadow: [
          BoxShadow(
            color: const Color(0xff00000040).withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 7.w,
              ),
              const Text('Options'),
              const Spacer(),
              const Icon(Icons.share),
              SizedBox(
                width: 10.w,
              ),
              SvgPicture.asset(deleteIcon)
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 7.w,
              ),
              Container(
                  padding: EdgeInsets.only(
                      top: 15.h, left: 8.w, right: 8.w, bottom: 20.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: const Color(0xffF6F1F1),
                  ),
                  child: Image.asset(
                    ImageConstant.laptopImage,
                    height: 70.h,
                  )),
              SizedBox(
                width: 20.w,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Acer Aspire 5 A515-56-32DK Intel Core i3, 11th Gen/15.6 FHD',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Text(
                    'Order ID: 12345',
                    style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'Rs 60,000',
                        style: TextStyle(
                            color: const Color(0xff36383C),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      const Spacer(),
                      // InkWell(
                      //   onTap: () {
                      //     Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: (_) => MyOrderDetailsScreen()));
                      //   },
                      //   child: Text(
                      //     'View Details',
                      //     style: TextStyle(
                      //         decoration: TextDecoration.underline,
                      //         color: const Color(0xff36383C),
                      //         fontSize: 14.sp,
                      //         fontWeight: FontWeight.w500),
                      //   ),
                      // ),
                    ],
                  )
                ],
              ))
            ],
          )
        ],
      ),
    );
  }
}
