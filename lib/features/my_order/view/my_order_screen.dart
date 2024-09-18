import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/my_order/view/my_order_details_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';
import 'package:smartbazar/features/my_order/api/my_order_api.dart';

class MyOrderScreen extends ConsumerWidget {
  const MyOrderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orderResponse = ref.watch(getOrderDetailsProvider);

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
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        ListView.separated(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) {
                                            final order =
                                                data.ordersReceived.data[index];
                                            return Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10.w),
                                              child: OrderContainer(
                                                order: order,
                                                isOrderReceived: true,
                                              ),
                                            );
                                          },
                                          separatorBuilder: (context, index) =>
                                              SizedBox(height: 14.h),
                                          itemCount:
                                              data.ordersReceived.data.length,
                                        ),
                                        SizedBox(height: 20.h),
                                        Divider(
                                            thickness: 2.w,
                                            color: const Color(0xffD9D9D9)),
                                      ],
                                    ),
                                  ),
                                ),
                                // Order Placed Tab
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 20.h),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        ListView.separated(
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
                                          separatorBuilder: (context, index) =>
                                              SizedBox(height: 14.h),
                                          itemCount:
                                              data.ordersPlaced.data.length,
                                        ),
                                        SizedBox(height: 20.h),
                                        Divider(
                                            thickness: 2.w,
                                            color: const Color(0xffD9D9D9)),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  error: (error, stack) => Center(child: Text('Error: $error')),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OrderContainer extends StatelessWidget {
  final dynamic order;
  final bool isOrderReceived;

  const OrderContainer({
    Key? key,
    required this.order,
    required this.isOrderReceived,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vendorName = order.vendorName;
    final productTitle = order.postTitle;

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
              Text(vendorName),
              const Icon(Icons.arrow_forward_ios, color: Color(0xffADADAD)),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  // Handle delete action
                },
              ),
            ],
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
                child: order.postPhotoUrl != null
                    ? Image.network(
                        order.postPhotoUrl!,
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
                      'Order ID: ${order.orderId}',
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
                          'Rs ${order.price}',
                          style: TextStyle(
                            color: const Color(0xff36383C),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) =>
                                    MyOrderDetailsScreen(order: order),
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
