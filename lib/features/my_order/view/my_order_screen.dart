import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/button_nav_bar/cusom_btn_bar/custom_bottom_nav.dart';
import 'package:smartbazar/features/create_listing/model/places_model.dart';
import 'package:smartbazar/features/my_order/api/post_return_api.dart';
import 'package:smartbazar/features/my_order/view/my_order_details_screen.dart';
import 'package:smartbazar/features/my_order/api/my_order_api.dart';
import 'package:smartbazar/features/my_order/view/my_return_screen.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/utils/custom_toast.dart';

class MyOrderScreen extends ConsumerWidget {
  const MyOrderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orderResponse = ref.watch(getOrderDetailsProvider);
    bool _isloading;
    _isloading = false;

    return Scaffold(
      extendBody: false,
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
                    'My Orders',
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
            Expanded(
              child: orderResponse.when(
                data: (data) {
                  return DefaultTabController(
                    length: 2, // Number of tabs
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const TabBar(
                          tabAlignment: TabAlignment.start,
                          isScrollable: true,
                          dividerColor: Color(0xffD9D9D9),
                          tabs: [
                            Tab(text: 'Order Received'),
                            Tab(text: 'Order Placed'),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              // Order Received Tab
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 20.h),
                                child: ListView(
                                  children: [
                                    data.ordersReceived.data.isNotEmpty
                                        ? ListView.separated(
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            itemBuilder: (context, index) {
                                              final order = data
                                                  .ordersReceived.data[index];
                                              return Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10.w),
                                                child: OrderContainer(
                                                  order: order,
                                                  isOrderReceived: true,
                                                ),
                                              );
                                            },
                                            separatorBuilder:
                                                (context, index) =>
                                                    SizedBox(height: 14.h),
                                            itemCount:
                                                data.ordersReceived.data.length,
                                          )
                                        : Center(
                                            child: Text(
                                              'No products found in Order Received',
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                    SizedBox(height: 20.h),
                                    Divider(
                                        thickness: 2.w,
                                        color: const Color(0xffD9D9D9)),
                                  ],
                                ),
                              ),
                              // Order Placed Tab
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 20.h),
                                child: ListView(
                                  children: [
                                    data.ordersPlaced.data.isNotEmpty
                                        ? ListView.separated(
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            itemBuilder: (context, index) {
                                              final order =
                                                  data.ordersPlaced.data[index];
                                              return Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10.w),
                                                child: OrderContainer(
                                                  order: order,
                                                  isOrderReceived: false,
                                                ),
                                              );
                                            },
                                            separatorBuilder:
                                                (context, index) =>
                                                    SizedBox(height: 14.h),
                                            itemCount:
                                                data.ordersPlaced.data.length,
                                          )
                                        : Center(
                                            child: Text(
                                              'No products found in Order Placed',
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                    SizedBox(height: 20.h),
                                    Divider(
                                        thickness: 2.w,
                                        color: const Color(0xffD9D9D9)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                error: (error, stack) =>
                    const Center(child: Text('PLease login again')),
                loading: () => const Center(child: CircularProgressIndicator()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OrderContainer extends ConsumerStatefulWidget {
  final dynamic order;
  final bool isOrderReceived;

  const OrderContainer({
    Key? key,
    required this.order,
    required this.isOrderReceived,
  }) : super(key: key);

  @override
  ConsumerState<OrderContainer> createState() => _OrderContainerState();
}

class _OrderContainerState extends ConsumerState<OrderContainer> {
  String? issue, message, address;
  Place? place;
  File? image;
  bool _isReturnEligible(DateTime createdAt) {
    final now = DateTime.now();
    final difference = now.difference(createdAt).inDays;
    return difference <= 15;
  }

  bool? _isloadaing;

  @override
  void initState() {
    _isloadaing = false;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool _showdialog = false;
    final order = widget.order;
    // Ensure createdAt is parsed as DateTime
    final createdAt = order.createdAt is String
        ? DateTime.tryParse(order.createdAt) ?? DateTime.now()
        : order.createdAt;

    // Check eligibility if createdAt is successfully parsed
    final isReturnEligible = _isReturnEligible(createdAt);
    final vendorName = widget.order.vendorName;
    final productTitle = widget.order.postTitle;

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
          InkWell(
            onTap: () {
              navigateToPage(
                context: context,
                page: ProductDetailScreen(productId: widget.order.id),
                ref: ref,
                showNavBar: false, // Hide bottom navbar
              );
            },
            child: Row(
              children: [
                SizedBox(width: 7.w),
                Text(vendorName),
                const Icon(Icons.arrow_forward_ios, color: Color(0xffADADAD)),
                const Spacer(),
                const SizedBox()
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 7.w),
              // Product Image (if available)
              Container(
                padding: EdgeInsets.only(
                  top: 15.h,
                  left: 8.w,
                  right: 8.w,
                  bottom: 20.h,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color(0xffF6F1F1),
                ),
                child: widget.order.postPhotoUrl != null
                    ? Image.network(
                        widget.order.postPhotoUrl!,
                        height: 70.h,
                        fit: BoxFit.cover,
                      )
                    : Image.asset(
                        'assets/images/default_product_image.png',
                        height: 70.h,
                      ),
              ),
              SizedBox(width: 20.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productTitle,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Order ID: ${widget.order.id}',
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 40.h),
                    Row(
                      children: [
                        Text(
                          'Rs ${widget.order.price}',
                          style: TextStyle(
                            color: const Color(0xff36383C),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            // print('bibash ${order}');
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) =>
                                    MyOrderDetailsScreen(order: widget.order),
                              ),
                            );
                          },
                          child: Text(
                            'View Details',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: const Color(0xff36383C),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.h),
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
                          width: 97.w,
                          fgColor: Colors.white,
                          bgColor: const Color(0xff362677),
                          title: 'Track',
                          isSmallText: true,
                          onPressed: () {
                            OrderDetialsOderDialogBox().orderDetailDialouge(
                              context,
                              title: 'Status',
                              heading: 'Track Order',
                              buttonTitle: 'Understood',
                              callback: () {
                                Navigator.of(context, rootNavigator: true)
                                    .pop();
                              },
                              widget: TrackOrderDetails(order: widget.order),
                            );
                          },
                        )
                      ],
                    ),
                    SizedBox(height: 5.h),
                    if (isReturnEligible)
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
                          !_isloadaing!
                              ? GeneralTextButton(
                                  marginH: 0,
                                  isSmallText: true,
                                  height: 25.h,
                                  width: 97.w,
                                  fgColor: Colors.white,
                                  bgColor: const Color(0xff362677),
                                  textPadding:
                                      EdgeInsets.symmetric(horizontal: 2.w),
                                  title: 'Return',
                                  onPressed: () {
                                    OrderDetialsOderDialogBox()
                                        .orderDetailDialouge(
                                      context,
                                      buttonTitle: 'Submit',
                                      callback: () async {
                                        if (!mounted)
                                          return; // Prevent execution if the widget is unmounted

                                        try {
                                          final _return = await ref.read(
                                            postmyreturnProvider(
                                              widget.order.id, // Order ID
                                              widget
                                                  .order.vendorId, // Vendor ID
                                              widget.order.postId, // Post ID
                                              issue!, // Issue description
                                              message!, // Message
                                              place!
                                                  .description!, // Place description
                                              place!.place_id!, // City name
                                              address!, // Address
                                              place!.latitude!
                                                  .toString(), // Latitude
                                              place!.longitude!
                                                  .toString(), // Longitude
                                              image!,
                                            ).future, // Ensure it awaits the future
                                          );

                                          print(
                                              'bibash $_return'); // ✅ This should now print the response

                                          Future.delayed(
                                              const Duration(milliseconds: 90),
                                              () {
                                            showDialog(
                                                context: context,
                                                builder: (ctx) => AlertDialog(
                                                      title: const Text(
                                                          "Return Sent"),
                                                      content: Text("$_return"),
                                                      actions: <Widget>[
                                                        TextButton(
                                                          onPressed: () {
                                                            //    Navigator.push(context, route)

                                                            try {
                                                              // Navigator.pop(
                                                              //     context); // Close dialog
                                                                                            Navigator.of(context, rootNavigator: true).push(
          MaterialPageRoute(builder: (ctx) => MyReturnScreen()),
        );
                                                            } catch (e) {
                                                              print(
                                                                  'error $e');
                                                            }
                                                          },
                                                          child: const Text(
                                                              "Okay"),
                                                        ),
                                                      ],
                                                    ));
                                            print('delayed execution');
                                          });
                                        } catch (e) {
                                          print(
                                              'Error: $e'); // Print error if API fails
                                        }
                                      },
                                      widget: ReturnProductDetails(
                                        issue: (p1) {
                                          issue = p1;
                                        },
                                        message: (p0) {
                                          message = p0;
                                        },
                                        address: (p3) {
                                          address = p3;
                                        },
                                        place: (p4) {
                                          print('bibash $p4');
                                          place = p4;
                                        },
                                        file: (p5) {
                                          image = p5;
                                        },
                                      ),
                                      title: 'Fill the form',
                                      heading: 'Return Products',
                                    );

                                    //  Navigator.pop(context);
                                  },
                                )
                              : CircularProgressIndicator()
                        ],
                      ),
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

class ReturnProductDialog {
  Future returnProductDialog(
    BuildContext context, {
    required Widget widget,
  }) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          final screenWidth = MediaQuery.of(context).size.width;
          final screenHeight = MediaQuery.of(context).size.height;
          return AlertDialog(
            insetPadding: EdgeInsets.zero,
            clipBehavior: Clip.hardEdge,
            backgroundColor: Colors.white,
            content: SizedBox(
              width: screenWidth,
              child: widget,
            ),
          );
        });
  }
}
