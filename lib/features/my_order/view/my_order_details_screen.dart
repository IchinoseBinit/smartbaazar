import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/create_listing/view/city_field.dart';
import 'package:smartbazar/features/create_listing/widget/create_listing_card_widget.dart';
import 'package:smartbazar/features/my_order/view/dropdown_menu_item.dart';
import 'package:smartbazar/features/my_order/view/my_return_screen.dart';
import 'package:smartbazar/features/proceed_pay/view/proceed_to_pay_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class MyOrderDetailsScreen extends ConsumerStatefulWidget {
  final dynamic order; // Assuming `order` is a Map or a model class
  const MyOrderDetailsScreen({super.key, required this.order});

  @override
  ConsumerState<MyOrderDetailsScreen> createState() =>
      _MyOrderDetailsScreenState();
}

class _MyOrderDetailsScreenState extends ConsumerState<MyOrderDetailsScreen> {
  IssueDropdownList? dropdownvalue;

  @override
  Widget build(BuildContext context) {
    final order = widget.order; // Access the order data

    return GenericSafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: const Color(0xffF6F1F1),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.shopping_cart),
                      SizedBox(width: 8.w),
                      Text(
                        'Order Details',
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
                SizedBox(height: 10.h),
                PayementDetailsWidget(
                  title: 'Product',
                  description: order.postTitle ?? 'N/A',
                ),
                PayementDetailsWidget(
                  title: 'Vendor Name',
                  description:
                      '${order.vendorName} / ${order.vendorContact ?? ''}',
                ),
                PayementDetailsWidget(
                  title: 'Quantity',
                  description: order.qty?.toString() ?? 'N/A',
                ),
                PayementDetailsWidget(
                  title: 'Rate',
                  description: order.price?.toString() ?? 'N/A',
                ),
                PayementDetailsWidget(
                  title: 'Total',
                  description: 'Rs. ${order.total?.toString() ?? 'N/A'}',
                  textStyle: const TextStyle(fontWeight: FontWeight.w700),
                ),
                PayementDetailsWidget(
                  title: 'Shipping',
                  description:
                      'Rs. ${order.shippingCharge?.toString() ?? 'N/A'}',
                ),
                PayementDetailsWidget(
                  title: 'Grand Total',
                  description:
                      'Rs. ${(double.tryParse(order.total?.toString() ?? '0')! + double.tryParse(order.shippingCharge?.toString() ?? '0')!).toStringAsFixed(2)}',
                  textStyle: const TextStyle(fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10.h),
                Divider(thickness: 2.w, color: const Color(0xffD9D9D9)),
                SizedBox(height: 10.h),
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 5.h, horizontal: 16.w),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Payment Mode',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff36383C)),
                          ),
                          Text(
                            order.paymentMethod ?? 'N/A',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff36383C)),
                          )
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Status',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff36383C)),
                          ),
                          GeneralTextButton(
                            marginH: 0,
                            height: 25.h,
                            width: 95.w,
                            fgColor: Colors.white,
                            bgColor: const Color(0xff362677),
                            title: 'Track',
                            isSmallText: true,
                            onPressed: () {
                              CustomDialougeBox().orderDetailDialouge(
                                context,
                                title: 'Status',
                                heading: 'Track Order',
                                buttonTitle: 'Understood',
                                callback: () {},
                                widget: TrackOrderDetails(order: order),
                              );
                            },
                          )
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Action',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff36383C)),
                          ),
                          GeneralTextButton(
                            marginH: 0,
                            isSmallText: true,
                            height: 25.h,
                            width: 95.w,
                            fgColor: Colors.white,
                            bgColor: const Color(0xff362677),
                            title: 'Return',
                            onPressed: () {
                              CustomDialougeBox().orderDetailDialouge(
                                context,
                                buttonTitle: 'Submit',
                                callback: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) =>
                                            const MyReturnScreen())),
                                widget: ReturnProductDetails(
                                  //  IssueDropdownListItems: IssueDropdownListItems,
                                  onDropdownChanged: (IssueDropdownList value) {
                                    setState(() {
                                      dropdownvalue = value;
                                    });
                                  },
                                ),
                                title: 'Action',
                                heading: 'Return Products',
                              );
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Divider(thickness: 2.w, color: const Color(0xffD9D9D9)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomDialougeBox {
  Future orderDetailDialouge(BuildContext context,
      {required Widget widget,
      required String title,
      required String buttonTitle,
      required VoidCallback callback,
      required String heading,
      double dialogWidth = 0.7}) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        final screenWidth = MediaQuery.of(context).size.width;
        final screenHeight = MediaQuery.of(context).size.height;

        return AlertDialog(
          insetPadding: EdgeInsets.zero,
          clipBehavior: Clip.hardEdge,
          backgroundColor: Colors.white,
          content: Container(
            width: screenWidth ,
            child: SingleChildScrollView(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () => Navigator.pop(context),
                      )
                    ],
                  ),
                  Text(
                    heading,
                    style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff362677)),
                  ),
                  SizedBox(height: 10.h),
                  widget,
                  SizedBox(height: 20.h),
                  GeneralTextButton(
                    bgColor: const Color(0xff362677),
                    fgColor: Colors.white,
                    width: double.infinity,
                    title: buttonTitle,
                    onPressed: () {
                      callback();
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}




class TrackOrderDetails extends StatelessWidget {
  final dynamic order;

  const TrackOrderDetails({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Order ID',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            Text(
              order.orderId ?? 'N/A', // Replace with actual order ID
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ],
        ),
        SizedBox(height: 5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Status',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            Text(
              order.status ?? 'N/A', // Replace with actual order status
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ],
        ),
      ],
    );
  }
}

class ReturnProductDetails extends StatefulWidget {
  final Function(IssueDropdownList) onDropdownChanged;

  const ReturnProductDetails({
    Key? key,
    required this.onDropdownChanged,
  }) : super(key: key);

  @override
  State<ReturnProductDetails> createState() => _ReturnProductDetailsState();
}

class _ReturnProductDetailsState extends State<ReturnProductDetails> {
  IssueDropdownList? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CreateListingCardWidget(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Issue',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(width: 80.w),
                  Expanded(
                    child: DropdownButtonFormField<IssueDropdownList>(
                      items: getStaticDropdownMenuItems(),
                      value: dropdownValue,
                      onChanged: (IssueDropdownList? newValue) {
                        setState(() {
                          dropdownValue = newValue;
                          if (newValue != null) {
                            widget.onDropdownChanged(newValue);
                          }
                        });
                      },
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                      ),
                      dropdownColor: Colors.white,
                      isExpanded: true,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.h),
            CreateListingCardWidget(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Message',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(height: 10.h),
                  TextField(
                    maxLines: null,
                    decoration: InputDecoration.collapsed(
                        hintText: 'Describe your issue',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            color: const Color(0xffADADAD))),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.h),
            const CityField(),
            SizedBox(height: 5.h),
            CreateListingCardWidget(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Street Address',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(height: 10.h),
                  TextField(
                    decoration: InputDecoration.collapsed(
                        hintText: 'Enter Street Address',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            color: const Color(0xffADADAD))),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.h),
            CreateListingCardWidget(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Screenshot of the issue',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    padding: EdgeInsets.only(top: 6.h, left: 12.w, bottom: 7.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: const Color(0xffEDECEC)),
                    child: Row(
                      children: [
                        Text(
                          'Choose File',
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff36383C)),
                        ),
                        SizedBox(width: 7.w),
                        Text(
                          "|",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xffADADAD)),
                        ),
                        SizedBox(width: 11.w),
                        Text(
                          'No File Chosen',
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}