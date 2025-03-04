import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/add_to_cart/api/delivery_charge_api.dart';
import 'package:smartbazar/features/add_to_cart/api/smart_biz_login_api.dart';
import 'package:smartbazar/features/add_to_cart/model/delivery_charge_model.dart';
import 'package:smartbazar/features/add_to_cart/model/smart_biz_login_model.dart';
import 'package:smartbazar/features/auth/view/bottom_navigation_bar.dart';
import 'package:smartbazar/features/auth/widgets/general_text_field_widget.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/rich_text_widget.dart';
import 'package:smartbazar/features/button_nav_bar/cusom_btn_bar/custom_bottom_nav.dart';
import 'package:smartbazar/features/buy_now_screen/api/get_estimated_fair_api.dart';
import 'package:smartbazar/features/buy_now_screen/view/buy_now_screen.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/order_details/api/checkout_details_api.dart';
import 'package:smartbazar/features/order_details/api/checkout_form_submission_api.dart';
import 'package:smartbazar/features/order_details/api/shipping_cities_api.dart';
import 'package:smartbazar/features/order_details/api/street_address_api.dart';
import 'package:smartbazar/features/order_details/model/checkout_details_model.dart';
import 'package:smartbazar/features/order_details/model/street_address_model.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';
import 'package:collection/collection.dart';

class OrderDetailsScreen extends ConsumerStatefulWidget {
  const OrderDetailsScreen({
    super.key,
    required this.selectedProductIds,
    required this.selectedVendorIds,
    required this.pickup,
    required this.longitude,
    required this.latitude,
    required this.wiright,
    required this.vendorname,
    required this.vendorid
  });
  final List<String> selectedProductIds;
  final List<String?> selectedVendorIds;
  final String pickup;
  final double longitude;
  final double latitude;
  final int wiright;
  final String vendorname;
  final int vendorid;

  @override
  ConsumerState<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends ConsumerState<OrderDetailsScreen> {
  String selectedPaymentMethod = "Pre-Payement"; // Default payment method
  String selectedDeliveryOption = "Self Pickup"; // Default delivery option
  String? selectedCoupon = '';
  // String selectedCity = '';
  StreetAddressModel? selectedStreet;
  List<double> itemRates = [];
  List<double> itemTotalPayments = [];
  ParcelFareResponse? _fairresponse;
  TextEditingController namecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController pricecontroller = TextEditingController();

  void clearSelectedCoupon() {
    setState(() {
      selectedCoupon = null;
    });
  }

  // void updateCity(String city) {
  //   setState(() {
  //     selectedCity = city;
  //   });
  // }

  void updateStreet(StreetAddressModel street) {
    setState(() {
      selectedStreet = street;
      print('Selected Street: $selectedStreet');
    });

    if (_bizLoginResponse?.data?.token != null && selectedStreet != null) {
      getDeliveryChargeSmartbiz(
        _bizLoginResponse!.data!.token!, // Replace with actual token
        [
          widget.latitude,
          widget.longitude,
        ], // Pickup coordinates
        [
          selectedStreet?.latitude ?? 0.0,
          selectedStreet?.longitude ?? 0.0,
        ], // Destination coordinates
        "parcel", // Type
        widget.pickup ?? 'ktm', // Pickup address
        selectedStreet?.description ?? 'ktm', // Destination address
        [], // No intermediate coordinates
        widget.wiright?.toDouble() ?? 0.0, // Parcel weight
        "44cb222c-b93c-44e2-a5aa-a3a5932e0d63", // Parcel category ID
        widget.selectedVendorIds.toString(), // Vendor ID
      ).then(
        (value) {
          setState(() {
            _fairresponse = value;
            print('kingko ${_fairresponse?.data?.estimatedFare}');
          });
        },
      );
    }
  }

  void updatePaymentMethod(String value) {
    setState(() {
      selectedPaymentMethod = value;
    });
  }

  void updateDeliveryOption(String value) {
    setState(() {
      selectedDeliveryOption = value;
    });
  }

  BizLoginResponse? _bizLoginResponse;
  // String? token;

  @override
  Widget build(BuildContext context) {
    final loginBoiData = ref.watch(loginSmartBizProvider);
    final asyncCheckoutDetails = ref.watch(postSelectedItemOfCartProvider(
        widget.selectedVendorIds, widget.selectedProductIds));
    loginBoiData.whenData(
      (value) {
        _bizLoginResponse = value;
      },
    );

    return GenericSafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffF6F1F1),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
          child: asyncCheckoutDetails.when(
            data: (checkoutDetails) {
              namecontroller.text = checkoutDetails.data!.user!.first.name!;
              phonecontroller.text = checkoutDetails.data!.user!.first.phone!;
              emailcontroller.text = checkoutDetails.data!.user!.first.email!;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.shopping_cart,
                        color: Color(0xff000000),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      const Text('Checkout'),
                      const Spacer(),
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Go back'))
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  const Divider(
                    thickness: 2,
                    color: Color(0xffD9D9D9),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  const Text(
                    'Order Details',
                    style: TextStyle(
                        color: Color(0xff362677),
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  CustomTextFieldWidget(
                    controller: namecontroller,
                    readOnly: false,
                    icon: Icons.person,
                    hintText: (checkoutDetails.data!.user?.isNotEmpty ?? false)
                        ? checkoutDetails.data!.user!.first.name ?? 'Name'
                        : 'Name',
                    fill: true,
                    fillColor: const Color.fromARGB(255, 241, 234, 234),
                    validator: (name) {
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  CustomTextFieldWidget(
                    readOnly: false,
                    controller: phonecontroller,
                    icon: Icons.call,
                    hintText: (checkoutDetails.data!.user?.isNotEmpty ?? false)
                        ? checkoutDetails.data!.user!.first.phone ??
                            'Contact Number'
                        : 'Contact Number',
                    fill: true,
                    fillColor: const Color.fromARGB(255, 241, 234, 234),
                    validator: (number) {
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  CustomTextFieldWidget(
                    readOnly: false,
                    controller: emailcontroller,
                    icon: Icons.email,
                    hintText: (checkoutDetails.data!.user?.isNotEmpty ?? false)
                        ? checkoutDetails.data!.user!.first.email ?? 'Email'
                        : 'Email',
                    fill: true,
                    fillColor: const Color.fromARGB(255, 241, 234, 234),
                    validator: (number) {
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  CustomTextFieldWidget(
                    icon: Icons.money,
                    hintText: 'Rs ${checkoutDetails.data!.cartTotal ?? '0'}',
                    readOnly: true,
                    fill: true,
                    fillColor: const Color.fromARGB(255, 241, 234, 234),
                    validator: (total) {
                      return null;
                    },
                  ),
                  if (checkoutDetails.data!.items![0].postTypeId == '7')
                    SizedBox(
                      height: 160.h,
                      child: Column(
                        children: [
                          SizedBox(height: 20.h),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/flameIcon.png",
                                width: 50.w,
                                height: 50.h,
                              ),
                              Text(
                                'Discount On Bulk Orders !',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff000000)),
                              ),
                            ],
                          ),
                          Expanded(
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: checkoutDetails.data!.items![0]
                                      .discountOnBulks?.length ??
                                  0,
                              itemBuilder: (context, index) {
                                final bulkDiscount = checkoutDetails
                                    .data!.items![0].discountOnBulks![index];
                                return Row(
                                  children: [
                                    DiscountOnBulkContainer(
                                      pieceFrom: bulkDiscount.pieceFrom,
                                      pieceTo: bulkDiscount.pieceTo,
                                      rate: bulkDiscount.rate,
                                    ),
                                    SizedBox(width: 10.w),
                                  ],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),

                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Payement Method',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff000000)),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomRadioButton(
                    title1: 'Pre-Payment',
                    title2: 'Cash on Delivery',
                    onChanged: updatePaymentMethod,
                  ),
                  const Divider(
                    thickness: 2,
                    color: Color(0xffD9D9D9),
                  ),
                  Text(
                    'Delivery Option',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff000000)),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomRadioButton(
                    title1: 'Self Pickup',
                    title2: 'Home Delivery',
                    onChanged: updateDeliveryOption,
                  ),
                  // ShippingCitiesField(
                  //   onSelected: updateCity,
                  // ),

                  SizedBox(
                    height: 8.h,
                  ),
                  StreetAddressFieldWidget(
                    onSelected: updateStreet,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  const Divider(
                    thickness: 2,
                    color: Color(0xffD9D9D9),
                  ),
                  Text(
                    'Coupon',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff000000)),
                  ),
                  SizedBox(height: 8.h),
                  if (checkoutDetails.data?.coupons != null &&
                      checkoutDetails.data!.coupons!.isNotEmpty)
                    DropdownButton<String>(
                      hint: const Text('Select a coupon'),
                      items: checkoutDetails.data!.coupons!
                          .map<DropdownMenuItem<String>>(
                        (coupon) {
                          return DropdownMenuItem<String>(
                            value: coupon
                                .toString(), // Adjust according to your coupon structure
                            child: Text(coupon
                                .toString()), // Adjust according to your coupon structure
                          );
                        },
                      ).toList(),
                      onChanged: (selectedCoupon) {
                        // Handle coupon selection
                        setState(() {
                          this.selectedCoupon = selectedCoupon;
                        });
                      },
                    )
                  else
                    GestureDetector(
                      onTap: clearSelectedCoupon,
                      child: const Text(
                        'No coupons available',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),

                  SizedBox(
                    height: 10.h,
                  ),
                  const Divider(
                    thickness: 2,
                    color: Color(0xffD9D9D9),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   children: [
                  //     Text(
                  //       'Quantity',
                  //       style: TextStyle(
                  //           fontSize: 16.sp,
                  //           fontWeight: FontWeight.w500,
                  //           color: const Color(0xfff000000)),
                  //     ),
                  //     const Spacer(),
                  //     const Icon(Icons.remove),
                  //     SizedBox(
                  //       width: 5.w,
                  //     ),
                  //     Container(
                  //       padding: EdgeInsets.symmetric(
                  //           horizontal: 8.w, vertical: 3.h),
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(4.r),
                  //         border: Border.all(
                  //           color: const Color(0xffD9D9D9),
                  //           width: 1,
                  //         ),
                  //       ),
                  //       child: const Text('1'),
                  //     ),
                  //     SizedBox(
                  //       width: 5.w,
                  //     ),
                  //     const Icon(Icons.add)
                  //   ],
                  // ),
                  // const Divider(
                  //   thickness: 2,
                  //   color: Color(0xffD9D9D9),
                  // ),
                  OrderSummaryWidget(
                    weight: 0,
                    address: selectedStreet?.description?? 'kathmandu',
                    deliverychareg: _fairresponse ?? ParcelFareResponse(),
                    email: emailcontroller.text,
                    name: namecontroller.text,
                    phone: phonecontroller.text,
                    pickuplatitutevednor: widget.latitude,
                    pickuplongitutevendor: widget.longitude,
                    receiverphone: phonecontroller.text,
                    senderPhone: '000',
                    senderaddress: widget.pickup,
                    sendername: widget.vendorname,
                    vendorid: widget.vendorid,

                    items: checkoutDetails.data!.items ?? [],
                    discounts:
                        checkoutDetails.data!.items!.first.discountOnBulks ??
                            [],
                    selectedPaymentMethod: selectedPaymentMethod,
                    selectedDeliveryOption: selectedDeliveryOption,
                    // selectedCity: selectedCity,
                    selectedStreet: selectedStreet ??
                        StreetAddressModel(
                            description: 'kathmandu',
                            placeId: '12',
                            latitude: 0.1,
                            longitude: 1.1),
                    selectedCoupon: selectedCoupon,
                    selectedProductIds: widget.selectedProductIds,
                    checkoutDetails: checkoutDetails,
                  ),
                ],
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stackTrace) => const Center(
              child: Text('Please login again'),
            ),
          ),
        ),
      ),
    ));
  }
}

class OrderSummaryWidget extends ConsumerStatefulWidget {
  final List<Item> items;
  final ParcelFareResponse deliverychareg;
  final String name;
  final String email;
  final String phone;
  final String address;
  final double pickuplatitutevednor;
  final double pickuplongitutevendor;
  final String sendername;
  final String senderPhone;
  final BizLoginResponse? bizLoginResponseparams;
  final int vendorid;
  final String senderaddress;
  final String receiverphone;
  final double weight;
  final List<DiscountOnBulk>? discounts;
  final String selectedPaymentMethod;
  final String selectedDeliveryOption;
  final String? selectedCoupon;
  final StreetAddressModel selectedStreet;
  final List<String> selectedProductIds;
  final CheckoutDetailsModel checkoutDetails;

  const OrderSummaryWidget({
    Key? key,
    required this.items,
    required this.deliverychareg,
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
    required this.pickuplatitutevednor,
    required this.pickuplongitutevendor,
    required this.sendername,
    required this.senderPhone,
    this.bizLoginResponseparams,
    required this.vendorid,
    required this.senderaddress,
    required this.receiverphone,
    required this.weight,
    this.discounts,
    required this.selectedPaymentMethod,
    required this.selectedDeliveryOption,
    this.selectedCoupon,
    required this.selectedStreet,
    required this.selectedProductIds,
    required this.checkoutDetails,
  }) : super(key: key);

  @override
  ConsumerState<OrderSummaryWidget> createState() => _OrderSummaryWidgetState();
}

class _OrderSummaryWidgetState extends ConsumerState<OrderSummaryWidget> {
  late double totalAmount;
  late double finalTotal;
  late double finallyRate;

  @override
  void initState() {
    super.initState();
    widget.items.map((item) => calculateTotals(item)).toList();
  }

  void calculateTotals(Item item) {
    DiscountOnBulk? matchingDiscount =
        findMatchingDiscount(int.tryParse(item.qty) ?? 0, widget.discounts);

    double originalPrice = double.tryParse(item.price) ?? 0.0;
    double discountedPrice = originalPrice;

    // Determine the final rate (discounted or original)
    if (matchingDiscount != null &&
        matchingDiscount.rate != null &&
        matchingDiscount.rate!.isNotEmpty) {
      double discountPercentage =
          double.tryParse(matchingDiscount.rate!) ?? 0.0;
      if (discountPercentage > 0) {
        discountedPrice = discountPercentage;
      }
    }

    double finalRate = discountedPrice;
    finallyRate = discountedPrice;
    totalAmount = finallyRate * int.parse(item.qty);

    // totalAmount = 0.0;
    // finalTotal = 0.0;

    // for (var item in widget.items) {
    //   var itemTotal = double.parse(item.price);
    //   var matchingDiscount =
    //       findMatchingDiscount(int.tryParse(item.qty) ?? 0, widget.discounts);
    //   if (matchingDiscount != null &&
    //       matchingDiscount.rate != null &&
    //       matchingDiscount.rate!.isNotEmpty) {
    //     double discountPercentage = double.parse(matchingDiscount.rate!);
    //     itemTotal *= (discountPercentage);
    //   }
    //   totalAmount += itemTotal;
    //   finalTotal += itemTotal;
    // }
  }

  Future<void> submitForm(
      BuildContext context, CheckoutDetailsModel checkoutDetails) async {
    try {
      final userName = checkoutDetails.data!.user?.first.name ?? 'N/A';
      final email = checkoutDetails.data!.user?.first.email ?? 'N/A';
      final address = checkoutDetails.data!.user?.first.phone ?? 'N/A';
      // final total = checkoutDetails.data!.cartTotal?.toString() ?? '0';
      final postIds =
          checkoutDetails.data!.items?.map((e) => e.postId).toList() ?? [];
      final prices =
          checkoutDetails.data!.items?.map((e) => e.price).toList() ?? [];
      final quantities =
          checkoutDetails.data!.items?.map((e) => e.qty).toList() ?? [];
      final postName =
          checkoutDetails.data!.items?.map((e) => e.name!).toList() ?? [];
      print(
          '--------------------------------$prices,$totalAmount, $finallyRate');
      print('--------------------------------');
      ref
          .read(postCheckoutFormProvider(
        userName,
        address,
        email,
        widget.selectedPaymentMethod,
        widget.selectedDeliveryOption,
        "Standard",
        // widget.selectedCity,
        widget.selectedStreet.description,
        widget.selectedCoupon,
        postIds,
        widget.selectedProductIds,
        postName,
        quantities,
        [finallyRate.toStringAsFixed(2)],
        totalAmount.toStringAsFixed(2),
      ).future)
          .then((success) {
        if (success) {
          const message =
              "Congratulations, your order has been placed successfully! Please check your email or view My Orders for order details to Track Your Order.";
          showDialog(
            context: context,
            barrierDismissible: false, // Prevents dismissal on outside tap
            builder: (_) => AlertDialog(
              title: Center(
                child: Text(
                  'Successfull!',
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF362677)),
                ),
              ),
              content: Text(
                message,
                style: TextStyle(fontSize: 12.sp),
              ),
              actions: [
                Center(
                  child: TextButton(
                    onPressed: () {
                      // Navigate to the BottomNavigationScreen when the user clicks "OK"
                      Navigator.pop(context);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainScreen()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('OK'),
                        SizedBox(width: 8.w),
                        const Icon(
                          Icons.check_circle,
                          color: Color(0xFF362677),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                content: Text('Failed to place order. Please try again.')),
          );
        }
      });
    } catch (e) {
      // Handle any error that occurred during submission
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Failed to submit the order. Please try again.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Order Summary',
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xff000000)),
        ),
        SizedBox(height: 5.h),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: widget.items.map((item) => buildItemRow(item)).toList(),
          ),
        ),
        // const Divider(thickness: 2, color: Color(0xffD9D9D9)),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RichTextWidget(
              title:
                  'By proceeding with the this order, you acknowledge to accept our  ',
              titleStyle: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff36383C)),
              subtitle: ' Terms & Condtions',
              subtitleStyle: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff36383C)),
              onPressed: () {}),
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            SvgPicture.asset(contactSellerIcon),
            SizedBox(
              width: 10.w,
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
            Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delivery Partner',
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff36383C)),
                ),
                Image.asset(ImageConstant.upayaImage)
              ],
            ),
            const Spacer(),
          ],
        ),
        SizedBox(
          height: 30.h,
        ),
        GeneralTextButton(
          width: MediaQuery.of(context).size.width,
          bgColor: const Color(0xff362677),
          fgColor: Colors.white,
          title: 'Place Order',
          onPressed: () async {
            await submitForm(context, widget.checkoutDetails);

            // final image = checkoutDetails.data!.items
            //         ?.map((e) => '${ApiConstants.imgUrl}${e.image}')
            //         .toList() ??
            //     [];
          },
        ),
        SizedBox(
          height: 20.h,
        )
      ],
    );
  }

  // Widget buildItemRow(Item item) {
  Widget buildItemRow(Item item) {
    DiscountOnBulk? matchingDiscount =
        findMatchingDiscount(int.tryParse(item.qty) ?? 0, widget.discounts);

    double originalPrice = double.tryParse(item.price) ?? 0.0;
    double discountedPrice = originalPrice;

    // Determine the final rate (discounted or original)
    if (matchingDiscount != null &&
        matchingDiscount.rate != null &&
        matchingDiscount.rate!.isNotEmpty) {
      double discountPercentage =
          double.tryParse(matchingDiscount.rate!) ?? 0.0;
      if (discountPercentage > 0) {
        discountedPrice = discountPercentage;
      }
    }

    double finalRate = discountedPrice;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Product',
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600)),
            SizedBox(
              width: 15.w,
            ),
            Expanded(child: Text(item.name ?? 'N/A'))
          ],
        ),
        SizedBox(height: 5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Quantity',
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600)),
            Text(item.qty.toString())
          ],
        ),
        SizedBox(height: 5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Rate',
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600)),
            Text('Rs ${finalRate.toStringAsFixed(2)}')
          ],
        ),
        SizedBox(height: 5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total Payment',
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold)),
            Text(
                'Rs ${(finalRate * int.tryParse(item.qty)!).toStringAsFixed(2)}')
          ],
        ),
        SizedBox(height: 5.h),
        const Divider(
          thickness: 2,
          color: Color(0xffD9D9D9),
        ),
        SizedBox(height: 5.h),
      ],
    );
  }

  DiscountOnBulk? findMatchingDiscount(
      int qty, List<DiscountOnBulk>? discounts) {
    if (discounts == null || discounts.isEmpty) return null;

    return discounts.firstWhereOrNull((discount) =>
        discount.pieceFrom != null &&
        discount.pieceTo != null &&
        (qty >= int.parse(discount.pieceFrom!) &&
            qty <= int.parse(discount.pieceTo!)));
  }
}

class CustomRadioButton extends StatefulWidget {
  final String title1;
  final String title2;
  final Function(String)? onChanged;
  const CustomRadioButton(
      {super.key,
      required this.title1,
      required this.title2,
      required this.onChanged});

  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  int selectedOption = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Radio<int>(
          value: 1,
          groupValue: selectedOption,
          activeColor: const Color(0xffFBFBFD),
          fillColor: WidgetStateProperty.all(const Color(0xff0362677)),
          splashRadius: 20,
          onChanged: (int? value) {
            setState(() {
              selectedOption = value!;
            });
            widget.onChanged!(value == 1 ? widget.title1 : widget.title2);
          },
        ),
        Text(
          widget.title1,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: const Color(0xff36383C),
          ),
        ),
        const Spacer(),
        Radio<int>(
          value: 2,
          groupValue: selectedOption,
          activeColor: const Color(0xffFBFBFD),
          fillColor: WidgetStateProperty.all(const Color(0xff0362677)),
          splashRadius: 25,
          onChanged: (int? value) {
            setState(() {
              selectedOption = value!;
            });
            widget.onChanged!(value == 1 ? widget.title1 : widget.title2);
          },
        ),
        Text(
          widget.title2,
          style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xff36383C)),
        )
      ],
    );
  }
}

class ShippingCitiesField extends ConsumerStatefulWidget {
  const ShippingCitiesField({super.key, this.onSelected});
  final Function(String)? onSelected;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ShippingCitiesFieldState();
}

class _ShippingCitiesFieldState extends ConsumerState<ShippingCitiesField> {
  final TextEditingController _cityController = TextEditingController();
  String query = '';

  @override
  Widget build(BuildContext context) {
    final citySuggestionsAsync = ref.watch(getShippingCitiesProvider);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          textInputAction: TextInputAction.next,
          controller: _cityController,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 10),
            hintText: "City",
            hintStyle: TextStyle(
              color: const Color(0xffADADAD),
              fontSize: 14.sp,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.r),
            ),
            filled: true,
            fillColor: const Color.fromARGB(255, 241, 234, 234),
            prefixIcon: Padding(
              padding: EdgeInsets.only(
                  right: 11.w, left: 10.w, top: 5.h, bottom: 5.h),
              child: Container(
                height: 50,
                width: 52,
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 11.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color(0xffAEC5FF),
                ),
                child: const Icon(
                  Icons.location_on,
                  color: Color(0xff362677),
                ),
              ),
            ),
          ),
          onChanged: (value) {
            setState(() {
              query = value;
            });
          },
        ),
        // const SizedBox(height: 10),
        if (query.isNotEmpty) // Only show suggestions if the query is not empty
          citySuggestionsAsync.when(
            data: (cities) {
              final filteredCities = cities
                  .where((city) =>
                      city.name.toLowerCase().contains(query.toLowerCase()))
                  .toList();

              if (filteredCities.isEmpty) {
                return const Text('No cities found.');
              }

              return Flexible(
                fit: FlexFit.loose,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: filteredCities.length,
                  itemBuilder: (context, index) {
                    final city = filteredCities[index];
                    return ListTile(
                      title: Text(
                        city.name,
                        style: TextStyle(
                            fontSize: 12.sp), // Set the desired font size
                      ),
                      onTap: () {
                        _cityController.text = city.name;
                        setState(() {
                          query = ''; // Clear the query to hide suggestions
                          widget.onSelected!(city.name);
                        });
                      },
                    );
                  },
                ),
              );
            },
            loading: () => const CircularProgressIndicator(),
            error: (error, stackTrace) => const Text('Please login again'),
          ),
      ],
    );
  }
}

// class StreetAddressFieldWidget extends ConsumerStatefulWidget {
//   const StreetAddressFieldWidget({super.key, this.onSelected});
//   final Function(String)? onSelected;
//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() =>
//       _StreetAddressFieldWidgetState();
// }

// class _StreetAddressFieldWidgetState
//     extends ConsumerState<StreetAddressFieldWidget> {
//   final TextEditingController _streetController = TextEditingController();
//   String query = '';

//   @override
//   Widget build(BuildContext context) {
//     // Use the new provider to get street address suggestions
//     final streetSuggestionsAsync = ref.watch(getStreetAddressProvider(query));

//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         TextFormField(
//           textInputAction: TextInputAction.next,
//           controller: _streetController,
//           decoration: InputDecoration(
//             contentPadding: const EdgeInsets.symmetric(vertical: 10),
//             hintText: "Street Address",
//             hintStyle: TextStyle(
//               color: const Color(0xffADADAD),
//               fontSize: 14.sp,
//             ),
//             border: OutlineInputBorder(
//               borderSide: BorderSide.none,
//               borderRadius: BorderRadius.circular(10.r),
//             ),
//             filled: true,
//             fillColor: const Color.fromARGB(255, 241, 234, 234),
//             prefixIcon: Padding(
//               padding: EdgeInsets.only(
//                   right: 11.w, left: 10.w, top: 5.h, bottom: 5.h),
//               child: Container(
//                 height: 50,
//                 width: 52,
//                 padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 11.h),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10.r),
//                   color: const Color(0xffAEC5FF),
//                 ),
//                 child: const Icon(
//                   Icons.location_disabled_outlined,
//                   color: Color(0xff362677),
//                 ),
//               ),
//             ),
//           ),
//           onChanged: (value) {
//             setState(() {
//               query = value; // Update query when text changes
//             });
//           },
//         ),
//         const SizedBox(height: 10),
//         if (query.isNotEmpty) // Only show suggestions if the query is not empty
//           streetSuggestionsAsync.when(
//             data: (addresses) {
//               if (addresses.isEmpty) {
//                 return const Text('No street address found.');
//               }

//               return Flexible(
//                 fit: FlexFit.loose,
//                 child: ListView.builder(
//                   shrinkWrap: true,
//                   physics: const NeverScrollableScrollPhysics(),
//                   itemCount: addresses.length,
//                   itemBuilder: (context, index) {
//                     final address = addresses[index];
//                     return Padding(
//                       padding: const EdgeInsets.symmetric(
//                           vertical: 2.0), // Adjust spacing as needed
//                       child: ListTile(
//                         title: Text(
//                           address.description,
//                           style: TextStyle(
//                               fontSize: 12.sp), // Set the desired font size
//                         ),
//                         onTap: () {
//                           _streetController.text = address.description;
//                           setState(() {
//                             query = ''; // Clear the query to hide suggestions
//                             widget.onSelected!(address.description);
//                           });
//                         },
//                       ),
//                     );
//                   },
//                 ),
//               );
//             },
//             loading: () => const CircularProgressIndicator(),
//             error: (error, stackTrace) => const Text('Please login again'),
//           ),
//       ],
//     );
//   }
// }

class DiscountOnBulkContainer extends StatelessWidget {
  const DiscountOnBulkContainer({
    super.key,
    required this.pieceFrom,
    required this.pieceTo,
    required this.rate,
  });
  final String? pieceFrom;
  final String? pieceTo;
  final String? rate;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
      width: MediaQuery.sizeOf(context).width * 0.35,
      height: 85.h,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$pieceFrom-$pieceTo pieces",
                style: TextStyle(
                  fontSize: 13.sp,
                )),
            Text("Rs $rate",
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 15.w),
                Icon(
                  Icons.arrow_downward_rounded,
                  color: const Color(0xFF4B004B),
                  size: 24.sp,
                ),
                Text("30%",
                    style: TextStyle(
                        color: const Color(0xFF4B004B),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w900)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
