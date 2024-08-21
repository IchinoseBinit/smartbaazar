import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/auth/widgets/custom_drop_down_widget.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/create_listing/api/get_dropdown_value_api.dart';
import 'package:smartbazar/features/create_listing/model/dropdown_value_model.dart';
import 'package:smartbazar/features/create_listing/widget/create_listing_card_widget.dart';
import 'package:smartbazar/features/my_order/view/my_return_screen.dart';
import 'package:smartbazar/features/proceed_pay/view/proceed_to_pay_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class MyOrderDetailsScreen extends ConsumerStatefulWidget {
  const MyOrderDetailsScreen({super.key});

  @override
  ConsumerState<MyOrderDetailsScreen> createState() =>
      _MyOrderDetailsScreenState();
}

class _MyOrderDetailsScreenState extends ConsumerState<MyOrderDetailsScreen> {
  TypeList? dropdownvalue;
  List<TypeList> typeListItems = [];

  @override
  void initState() {
    super.initState();
    _fetchTypeList(); // Fetch the types when the widget is initialized
  }

  Future<void> _fetchTypeList() async {
    try {
      NewListingRepository repository = NewListingRepository();
      List<TypeList> fetchedTypes = await repository.fetchTypeList();
      setState(() {
        typeListItems = fetchedTypes;
      });
    } catch (e) {
      // Handle error, maybe show a message to the user
      print('Failed to load types: $e');
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
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                ),
                child: Row(
                  children: [
                    const Icon(Icons.shopping_cart),
                    SizedBox(
                      width: 8.w,
                    ),
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
              SizedBox(
                height: 10.h,
              ),
              const PayementDetailsWidget(
                  title: 'Product', description: 'Acer Aspire 5 A515-56-32Dk'),
              const PayementDetailsWidget(
                  title: 'Vendor Name', description: 'Tech Store/ 985100000'),
              const PayementDetailsWidget(title: 'Quantity', description: '1'),
              const PayementDetailsWidget(title: 'Rate', description: '60'),
              const PayementDetailsWidget(
                title: 'Total',
                description: 'Rs. 60,000',
                textStyle: TextStyle(fontWeight: FontWeight.w700),
              ),
              const PayementDetailsWidget(
                  title: 'Shipping', description: 'Rs. 200'),
              const PayementDetailsWidget(
                title: 'Grand Total',
                description: 'Rs. 60,200',
                textStyle: TextStyle(fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(
                thickness: 2.w,
                color: const Color(0xffD9D9D9),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 16.w),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Payement Mode',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff36383C)),
                        ),
                        Text(
                          'COD',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff36383C)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
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
                              buttonTitle: 'UnderStood',
                              callback: () {},
                              widget: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Order ID',
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        '12345',
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Status',
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        'Order Cancelled',
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
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
                            CustomDialougeBox().orderDetailDialouge(context,
                                buttonTitle: 'Submit',
                                callback: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) =>
                                            const MyReturnScreen())),
                                widget: Column(
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
                                        // Spacer(),
                                        SizedBox(
                                          width: 80.w,
                                        ),
                                        Expanded(
                                          child: CustomDropdownButton(
                                            items: typeListItems,
                                            dropdownValue: dropdownvalue,
                                            color: const Color(0xffADADAD),
                                            onChanged: (TypeList? newValue) {
                                              setState(() {
                                                dropdownvalue = newValue!;
                                              });
                                            },
                                            getItemLabel: (TypeList item) =>
                                                item.typeName,
                                          ),
                                        ),
                                      ],
                                    )),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    CreateListingCardWidget(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Message',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          ),
                                          // Spacer(),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          TextField(
                                            decoration:
                                                InputDecoration.collapsed(
                                                    hintText:
                                                        'Describe your issue',
                                                    hintStyle: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 16.sp,
                                                        color: const Color(
                                                            0xffADADAD))),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    CreateListingCardWidget(
                                        child: Row(
                                      children: [
                                        Text(
                                          'Street Address',
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        const Spacer(),
                                        Expanded(
                                          child: TextField(
                                            decoration:
                                                InputDecoration.collapsed(
                                                    hintText: 'Select Loaction',
                                                    hintStyle: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 16.sp,
                                                        color: const Color(
                                                            0xffADADAD))),
                                          ),
                                        ),
                                      ],
                                    )),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    CreateListingCardWidget(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Screenshot of the issue',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          ),
                                          // Spacer(),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(
                                                top: 6.h,
                                                left: 12.w,
                                                bottom: 7.h),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12.r),
                                                color: const Color(0xffEDECEC)),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Choose File',
                                                  style: TextStyle(
                                                      fontSize: 10.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: const Color(
                                                          0xff36383C)),
                                                ),
                                                SizedBox(
                                                  width: 7.w,
                                                ),
                                                Text(
                                                  "|",
                                                  style: TextStyle(
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: const Color(
                                                          0xffADADAD)),
                                                ),
                                                SizedBox(
                                                  width: 11.w,
                                                ),
                                                Text(
                                                  'No File Chosen',
                                                  style: TextStyle(
                                                      fontSize: 10.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      // color: Color(0xff36383C)
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
                                title: 'Action',
                                heading: 'Return Products');
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(
                thickness: 2.w,
                color: const Color(0xffD9D9D9),
              ),
            ],
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
      required String heading}) async {
    return showDialog(
      context: context,
      builder: (_) => AlertDialog(
        titlePadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.w),
        contentPadding: EdgeInsets.zero,
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
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
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.close))
              ],
            ),
            Text(
              heading,
              style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff362677)),
            ),
            SizedBox(
              height: 10.h,
            ),
            widget,
            // ,
            SizedBox(
              height: 10.h,
            ),
            Divider(
              thickness: 2.w,
              color: const Color(0xffD9D9D9),
            ),
            SizedBox(
              height: 10.h,
            ),
            GeneralTextButton(
              bgColor: const Color(0xff362677),
              fgColor: Colors.white,
              width: MediaQuery.of(context).size.width,
              title: buttonTitle,
              onPressed: () {
                callback();
              },
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}
