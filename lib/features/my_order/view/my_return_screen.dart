import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/my_order/api/my_return_api.dart';
import 'package:smartbazar/features/my_order/model/my_return_model.dart';
import 'package:smartbazar/features/pending_approval/pending_approval.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class MyReturnScreen extends ConsumerWidget {
  const MyReturnScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myReturnsAsyncValue = ref.watch(getMyReturnsProvider);

    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F1F1),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Row(
                  children: [
                    const Icon(Icons.shopping_cart),
                    SizedBox(width: 8.w),
                    Text(
                      'My Returns',
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
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 2.w,
                color: const Color(0xffD9D9D9),
              ),
              SizedBox(height: 10.h),
              Expanded(
                  child: myReturnsAsyncValue.when(
                data: (data) {
                   print('Data: $data');
                    print('Return Received: ${data.returnReceived}');
                    print('Return Placed: ${data.returnPlaced}');
                  return DefaultTabController(
                    length: 2, // Number of tabs
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const TabBar(
                          isScrollable: true,
                          tabs: [
                            Tab(text: 'Return Received'),
                            Tab(text: 'Return Placed'),
                          ],
                        ),
                        Expanded(
                            child: TabBarView(
                          children: [
                            // Return Received tab
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 20.h),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    if (data.returnReceived?.data?.isNotEmpty ??
                                        false)
                                      ListView.separated(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) {
                                            final returnReceivedItem = data
                                                .returnReceived?.data?[index];
                                          
                                            return Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10.w),
                                              child: ReturnOrderDetails(
                                                  returnItem:
                                                      returnReceivedItem),
                                            );
                                          },
                                          separatorBuilder: (context, index) =>
                                              SizedBox(height: 14.h),
                                          itemCount:
                                              data.returnReceived!.data!.length)
                                    else
                                      Center(
                                          child: Text('No Returns Received')),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.symmetric(vertical: 20.h),
                                child: SingleChildScrollView(
                                    child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        if (data.returnPlaced?.data
                                                ?.isNotEmpty ??
                                            false)
                                          ListView.separated(
                                              itemBuilder: (context, index) {
                                                final returnPlacedItem = data
                                                    .returnPlaced?.data?[index];
                                                return Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 10.w),
                                                  child: ReturnOrderDetails(
                                                      returnItem:
                                                          returnPlacedItem),
                                                );
                                              },
                                              separatorBuilder:
                                                  (context, index) =>
                                                      SizedBox(height: 14.h),
                                              itemCount: data
                                                  .returnPlaced!.data!.length)
                                        else
                                          Center(
                                              child: Text('No Returns Placed')),
                                      ],
                                    )
                                  ],
                                )))
                            // if (data.returnReceived?.data?.isNotEmpty ?? false)
                            //   Padding(
                            //     padding: EdgeInsets.symmetric(vertical: 20.h),
                            //     child: ListView.separated(
                            //       itemCount:
                            //           data.returnReceived?.data?.length ?? 0,
                            //       itemBuilder: (context, index) {
                            //         final returnReceivedItem =
                            //             data.returnReceived?.data?[index];
                            //         return Padding(
                            //           padding: EdgeInsets.symmetric(
                            //               horizontal: 10.w),
                            //           child: ReturnOrderDetails(
                            //               returnItem: returnReceivedItem),
                            //         );
                            //       },
                            //       separatorBuilder: (context, index) =>
                            //           SizedBox(height: 14.h),
                            //     ),
                            //   )
                            // else
                            //   Center(child: Text('No Returns Received')),
                            // Return Placed tab
                            // if (data.returnPlaced?.data?.isNotEmpty ?? false)
                            //   Padding(
                            //     padding: EdgeInsets.symmetric(vertical: 20.h),
                            //     child: ListView.separated(
                            //       itemCount:
                            //           data.returnPlaced?.data?.length ?? 0,
                            //       itemBuilder: (context, index) {
                            //         final returnPlacedItem =
                            //             data.returnPlaced?.data?[index];
                            //         return Padding(
                            //           padding: EdgeInsets.symmetric(
                            //               horizontal: 10.w),
                            //           child: ReturnOrderDetails(
                            //               returnItem: returnPlacedItem),
                            //         );
                            //       },
                            //       separatorBuilder: (context, index) =>
                            //           SizedBox(height: 14.h),
                            //     ),
                            //   )
                            // else
                            //   Center(child: Text('No Returns Placed')),
                          ],
                        )),
                        // Expanded(
                        //   child: myReturnsAsyncValue.when(
                        //     data: (data) {
                        //       return ;
                        //     },
                        //     error: (error, stack) => Center(child: Text('Error: $error')),
                        //     loading: () => const Center(child: CircularProgressIndicator()),
                        //   ),
                        // ),
                      ],
                    ),
                  );
                },
                error: (error, stack) => Center(child: Text('Error: $error')),
                loading: () => const Center(child: CircularProgressIndicator()),
              )),
              SizedBox(height: 25.h),
              GeneralTextButton(
                width: MediaQuery.of(context).size.width,
                title: 'Pending Approval',
                fgColor: Colors.white,
                bgColor: const Color(0xff362677),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const PendingApprovalScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReturnOrderDetails extends StatelessWidget {
  final ReturnItem? returnItem;

  const ReturnOrderDetails({super.key, this.returnItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.white,
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
              SizedBox(width: 7.w),
              Text(returnItem?.vendorName ?? 'Vendor Name'),
              const Spacer(),
              SvgPicture.asset(deleteIcon)
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              SizedBox(width: 7.w),
              Container(
                padding: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color(0xffF6F1F1),
                ),
                child: Image.asset(
                  ImageConstant.laptopImage,
                  height: 70.h,
                ),
              ),
              SizedBox(width: 20.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      returnItem?.productTitle ?? 'Product Title',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Order ID: ${returnItem?.orderId ?? 'Order ID'}',
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 40.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Rs ${returnItem?.amount ?? 'Amount'}',
                            style: TextStyle(
                              color: const Color(0xff36383C),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          'Return Date: ${returnItem?.createdAt ?? 'Date'}',
                          style: TextStyle(
                            color: const Color(0xff36383C),
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
