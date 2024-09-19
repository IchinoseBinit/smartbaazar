import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/auth/widgets/general_elevated_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/rich_text_widget.dart';
import 'package:smartbazar/features/my_order/view/my_order_details_screen.dart';
import 'package:smartbazar/features/vendor/view/added_disputes_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class DisputesScreen extends StatelessWidget {
  const DisputesScreen({super.key});

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
                    Icon(Icons.mic),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      'Disputes',
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
                          Tab(text: 'Disputes Received'),
                          Tab(text: 'Disputes Placed'),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 20.h),
                              child: Container(
                                decoration: BoxDecoration(),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemBuilder: (context, int index) =>
                                            Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.w),
                                          child: DisputesDetails(),
                                        ),
                                        separatorBuilder: (context, index) =>
                                            SizedBox(
                                          height: 14.h,
                                        ),
                                        itemCount: 2,
                                      ),
                                      SizedBox(height: 20.h),
                                      Divider(
                                          thickness: 2.w,
                                          color: const Color(0xffD9D9D9)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            // Add content for the second tab here
                            Center(
                              child: Text('Content for Disputes Placed'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GeneralEelevatedButton(
                  text: 'Add New',
                  onPresssed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => AddNewDisputes()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class DisputesDetails extends StatelessWidget {
  const DisputesDetails({
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
            color: Color(0xff00000040).withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Suraj Lohani',
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
          SizedBox(
            height: 3.h,
          ),
          Text(
            'Dispute ID: 12345',
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
          SizedBox(
            width: 7.w,
          ),
          Card(
            color: Colors.white,
            child: ExpansionTile(
              // tilePadding: EdgeInsets.zero,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Defective or Damged Product",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  Text(
                    'product arrives damaged or  with defects',
                    style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10.h,
                  )
                ],
              ),

              children: [
                Text(
                  'This is dummy text. This is a dummy text.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Text(
                      'Status: Pending',
                      style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Spacer(),
                    Text(
                      'Proof:',
                      style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    GeneralTextButton(
                        height: 35.h,
                        fgColor: Colors.white,
                        bgColor: Color(0xffADADAD),
                        title: 'Image')
                  ],
                ),
                SizedBox(
                  height: 10.h,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
