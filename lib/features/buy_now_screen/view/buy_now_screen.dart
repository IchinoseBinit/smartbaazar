import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/payment/create_listing_payement.dart';
import 'package:smartbazar/features/add_to_cart/api/smart_biz_login_api.dart';
import 'package:smartbazar/features/add_to_cart/model/delivery_charge_model.dart';
import 'package:lottie/lottie.dart';
import 'package:smartbazar/features/add_to_cart/model/smart_biz_login_model.dart';
import 'package:smartbazar/features/auth/widgets/general_text_field_widget.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/rich_text_widget.dart';
import 'package:smartbazar/features/buy_now_screen/api/buy_now_api.dart';
import 'package:smartbazar/features/buy_now_screen/api/get_estimated_fair_api.dart';
import 'package:smartbazar/features/buy_now_screen/api/submit_buy_api.dart';
import 'package:smartbazar/features/buy_now_screen/model/post_buy_now_model.dart';
import 'package:smartbazar/features/online_transaction_record/online_transacation_record_screen.dart';
import 'package:smartbazar/features/order_details/api/shipping_cities_api.dart';
import 'package:smartbazar/features/order_details/api/street_address_api.dart';
import 'package:smartbazar/features/order_details/model/checkout_details_model.dart';
import 'package:smartbazar/features/order_details/model/street_address_model.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';
import 'package:collection/collection.dart';
import 'package:smartbazar/payment/payment_screen.dart';

final quantityProvider = StateProvider<int>((ref) => 1);

// ignore: must_be_immutable
class BuyNowFormScreen extends ConsumerStatefulWidget {
  BuyNowFormScreen(
      {required this.pickuplatitute,
      required this.pickupicklongitute,
      super.key,
      required this.postypeid,
      required this.vendorname,
      required this.selectedProductIds,
      required this.selectedVendorIds,
      required this.pickupaddress,
      required this.phonenumber,
      this.weight});
  final int selectedProductIds;
  final int selectedVendorIds;
  final double pickuplatitute;
  final double pickupicklongitute;
  final String pickupaddress;
  final String vendorname;
  final String postypeid;

  int phonenumber;
  int? weight;

  @override
  ConsumerState<BuyNowFormScreen> createState() => _BuyNowFormScreenState();
}

class _BuyNowFormScreenState extends ConsumerState<BuyNowFormScreen> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController pricecontroller = TextEditingController();
  String selectedPaymentMethod = "Pre-Payement"; // Default payment method
  String selectedDeliveryOption = "Self Pickup"; // Default delivery option
  String hyperOption = 'Standard';
  // String standard = 'Standard';
  String? selectedCoupon = '';
  ParcelFareResponse? _fairresponse;
  // String selectedCity = '';
  StreetAddressModel? selectedStreet;
  List<double> itemRates = [];
  List<double> itemTotalPayments = [];
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
    });

    if (_bizLoginResponse?.data?.token != null && selectedStreet != null) {
      getDeliveryChargeSmartbiz(
        _bizLoginResponse!.data!.token!, // Replace with actual token
        [
          widget.pickuplatitute,
          widget.pickupicklongitute
        ], // Pickup coordinates
        [
          selectedStreet?.latitude ?? 0.0,
          selectedStreet?.longitude ?? 0.0,
        ], // Destination coordinates
        "parcel", // Type
        widget.pickupaddress ?? 'kathmandu', // Pickup address
        selectedStreet?.description ?? 'kathmandu', // Destination address
        [], // No intermediate coordinates
        widget.weight ?? 1, // Parcel weight
        "44cb222c-b93c-44e2-a5aa-a3a5932e0d63", // Parcel category ID
        widget.selectedVendorIds.toString(), // Vendor ID
      ).then(
        (value) {
          setState(() {
            _fairresponse = value;
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
    // print('ranka ${selectedDeliveryOption}');
  }

  // void updatehomedeloption(String value) {
  //   setState(() {
  //     hyperOption = value;
  //   });
  //   print('ranka ${selectedDeliveryOption}');
  // }

  BizLoginResponse? _bizLoginResponse;
  // String? token;

  @override
  Widget build(BuildContext context) {
    final quantity = ref.watch(quantityProvider);
    final loginBoiData = ref.watch(loginSmartBizProvider);

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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
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
                      const Text('Buy Now'),
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
                  ref
                      .watch(buynowproductProvider(
                          widget.selectedProductIds, widget.selectedVendorIds))
                      .when(
                          data: (data) {
                            namecontroller.text = data.data!.user!.first.name!;
                            namecontroller.text = data.data!.user!.first.name!;

                            phonecontroller.text =
                                data.data!.user!.first.phone!;
                            emailcontroller.text =
                                data.data!.user!.first.email!;
                            pricecontroller.text =
                                data.data!.posts!.first.price!;

                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomTextFieldWidget(
                                  controller: namecontroller,
                                  readOnly: false,
                                  icon: Icons.person,
                                  hintText: (namecontroller.text),
                                  fill: true,
                                  fillColor:
                                      const Color.fromARGB(255, 241, 234, 234),
                                  validator: (name) {
                                    return null;
                                  },
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                CustomTextFieldWidget(
                                  readOnly: false,
                                  icon: Icons.call,
                                  controller: phonecontroller,
                                  hintText: (phonecontroller.text),
                                  fill: true,
                                  fillColor:
                                      const Color.fromARGB(255, 241, 234, 234),
                                  validator: (number) {
                                    return null;
                                  },
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                CustomTextFieldWidget(
                                  readOnly: false,
                                  icon: Icons.email,
                                  controller: emailcontroller,
                                  hintText: (emailcontroller.text),
                                  fill: true,
                                  fillColor:
                                      const Color.fromARGB(255, 241, 234, 234),
                                  validator: (number) {
                                    return null;
                                  },
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                CustomTextFieldWidget(
                                  icon: Icons.money,
                                  controller: pricecontroller,
                                  hintText: 'Rs ${pricecontroller.text ?? '0'}',
                                  readOnly: true,
                                  fill: true,
                                  fillColor:
                                      const Color.fromARGB(255, 241, 234, 234),
                                  validator: (total) {
                                    return null;
                                  },
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                if (data.data?.posts?.first.postTypeId == '7')
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
                                                  color:
                                                      const Color(0xff000000)),
                                            ),
                                          ],
                                        ),
                                        // Expanded(
                                        //   child: ListView.builder(
                                        //     scrollDirection: Axis.horizontal,
                                        //     itemCount: data.data!.posts![0]
                                        //             .d?.length ??
                                        //         0,
                                        //     itemBuilder: (context, index) {
                                        //       final bulkDiscount = data
                                        //           .data!
                                        //           .posts![0]
                                        //           .discountOnBulks?[index];
                                        //       return Row(
                                        //         children: [
                                        //           DiscountOnBulkContainer(
                                        //             pieceFrom:
                                        //                 bulkDiscount?.pieceFrom,
                                        //             pieceTo:
                                        //                 bulkDiscount?.pieceTo,
                                        //             rate: bulkDiscount?.rate,
                                        //           ),
                                        //           SizedBox(width: 10.w),
                                        //         ],
                                        //       );
                                        //     },
                                        //   ),
                                        // ),
                                      ],
                                    ),
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
                                SizedBox(
                                  height: 8.h,
                                ),
                                if (selectedDeliveryOption == 'Home Delivery')
                                  CustomRadioButton(
                                    title1: 'Standard',
                                    title2: 'Hyper',
                                    onChanged: (p0) {
                                      hyperOption = p0;
                                    },
                                  ),
                                if (selectedDeliveryOption == 'Home Delivery')
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
                                const Text(
                                  'No coupons available',
                                  style: TextStyle(color: Colors.red),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                const Divider(
                                  thickness: 2,
                                  color: Color(0xffD9D9D9),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Quantity',
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xff000000)),
                                    ),
                                    SizedBox(
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                if (quantity > 1) {
                                                  ref
                                                      .read(quantityProvider
                                                          .notifier)
                                                      .state--;
                                                }
                                              },
                                              icon: const Icon(Icons.remove)),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8, vertical: 1),
                                            child: Text(quantity.toString()),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                                border: Border.all(
                                                  color: Colors.grey,
                                                )),
                                          ),
                                          IconButton(
                                              onPressed: () {
                                                ref
                                                    .read(quantityProvider
                                                        .notifier)
                                                    .state++;
                                              },
                                              icon: const Icon(Icons.add)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                const Divider(
                                  thickness: 2,
                                  color: Color(0xffD9D9D9),
                                ),
                                OrderSummaryWidget(
                                  hyper: hyperOption,

                                  // deliveryoption: hyperOption,
                                  // paymentpethod: selectedPaymentMethod,
                                  senderaddress: widget.pickupaddress,
                                  sendername: widget.vendorname,
                                  vendorid: widget.selectedVendorIds,
                                  weight: widget.weight!.toDouble() ?? 0,
                                  receiverphone: phonecontroller.text,
                                  senderPhone: widget.phonenumber.toString(),
                                  bizLoginResponseparams: _bizLoginResponse,
                                  pickuplatitutevednor: widget.pickuplatitute,
                                  pickuplongitutevendor:
                                      widget.pickupicklongitute,
                                  deliverychareg: _fairresponse ??
                                      const ParcelFareResponse(),
                                  venoraddress: widget.pickupaddress,
                                  email: emailcontroller.text,
                                  name: namecontroller.text,
                                  phone: phonecontroller.text,

                                  items: data.data!.posts!.first,

                                  selectedPaymentMethod: selectedPaymentMethod,
                                  selectedDeliveryOption:
                                      selectedDeliveryOption,
                                  // selectedCity: selectedCity,
                                  selectedStreet: selectedStreet ??
                                      const StreetAddressModel(
                                          description: '0',
                                          placeId: '0',
                                          latitude: 0,
                                          longitude: 0),
                                  selectedCoupon: selectedCoupon,
                                  selectedProductIds: widget.selectedProductIds,
                                ),
                              ],
                            );
                          },
                          error: (error, stackTrace) {
                            return const Text("Please login");
                          },
                          loading: () => Center(
                                child: SizedBox(
                                  width: 100.w,
                                  height: 100.h,
                                  child: Center(
                                    child: Image.asset(
                                      'assets/images/preloader.gif',
                                      width: 100.w,
                                      height: 100.h,
                                      fit: BoxFit
                                          .contain, // Ensures the image fits within its bounds
                                    ),
                                  ),
                                ),
                              )),
                ],
              ),
            ))));
  }
}

class OrderSummaryWidget extends ConsumerStatefulWidget {
  final ParcelFareResponse deliverychareg;
  final BuyNowPostModel items;
  final String name, email, phone, venoraddress;
  final List<DiscountOnBulk>? discounts;
  final String selectedPaymentMethod;
  final String selectedDeliveryOption;
  final String? selectedCoupon;
  final double pickuplatitutevednor;
  final double pickuplongitutevendor;
  final String sendername;
  final String senderPhone;

  // final String selectedCity;
  final StreetAddressModel selectedStreet;

  final int selectedProductIds;
  final BizLoginResponse? bizLoginResponseparams;
  final int vendorid;
  final String senderaddress;
  final String receiverphone;
  final double weight;
  final String hyper;

  // final CheckoutDetailsModel checkoutDetails;
  // final String? pieceFrom;
  // final String? pieceTo;
  // final String? rateFromBulkDiscount;

  const OrderSummaryWidget(
      {Key? key,
      required this.items,
      this.discounts,
      required this.selectedPaymentMethod,
      required this.selectedDeliveryOption,
      required this.selectedCoupon,
      // required this.selectedCity,
      required this.selectedStreet,
      required this.selectedProductIds,
      required this.email,
      required this.name,
      required this.phone,
      required this.venoraddress,
      required this.deliverychareg,
      required this.bizLoginResponseparams,
      required this.pickuplatitutevednor,
      required this.pickuplongitutevendor,
      required this.sendername,
      required this.senderPhone,
      required this.vendorid,
      required this.senderaddress,
      required this.receiverphone,
      required this.weight,
      required this.hyper

      // required this.checkoutDetails,
      //  this.pieceFrom,
      //  this.pieceTo,
      //   this.rateFromBulkDiscount,
      })
      : super(key: key);

  @override
  ConsumerState<OrderSummaryWidget> createState() => _OrderSummaryWidgetState();
}

class _OrderSummaryWidgetState extends ConsumerState<OrderSummaryWidget> {
  late double totalAmount;
  late double finalTotal;
  late double finallyRate;
  String? paymentmethod;

  @override
  void initState() {
    if (widget.selectedPaymentMethod == "Pre-Payement") {
      //  print('binod ${widget.paymentpethod.length}');
      paymentmethod = 'qr';
    } else {
      //   print('binodl ${widget.paymentpethod.length}');
      paymentmethod = 'cod';
    }
    //   print('pinky ${widget.deliverychareg.data?.estimatedFare}');
    // ref.read(quantityProvider.notifier).state = int.tryParse(widget.items.qty)!;

    super.initState();
  }

  void calculateTotals(Item item) {
    DiscountOnBulk? matchingDiscount = findMatchingDiscount(
        int.tryParse(item.qty ?? '0') ?? 0, widget.discounts);

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

    finallyRate = discountedPrice;
    totalAmount = finallyRate * int.parse(item.qty ?? '0');

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

  String? _finalPrice;

  @override
  Widget build(BuildContext context) {
    // print("bibash ${widget.d}");
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
            children: [
              buildItemRow(
                  Item(
                    price: widget.items.price!,
                    title: widget.items.title,
                    // itemTotal: widget.items.price
                  ), (newPrice) {
                _finalPrice = newPrice;
                //   print('Updated Price: Rs $newPrice');
                // You can update a state variable here if needed
              }, widget.deliverychareg.data?.estimatedFare ?? 0),
            ],
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
            await Future.delayed(const Duration(seconds: 2), () {});
            // Test data for checking
            if (widget.selectedPaymentMethod == "Pre-Payement") {
              showBottomSheet(
                enableDrag: true,
                elevation: 10,
                sheetAnimationStyle:
                    AnimationStyle(curve: FlippedCurve(Curves.bounceIn)),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(10.0)),
                ),
                backgroundColor: Colors.white,
                showDragHandle: true,
                context: context,
                builder: (context) {
                  return Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 20),
                    padding:
                        EdgeInsets.symmetric(horizontal: 50.w, vertical: 20.h),
                    child: SizedBox(
                      width: 200.w,
                      height: 50.h,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey.shade300,
                            elevation: 0,
                            side: const BorderSide(
                              width: 2,
                              color: Colors.black87,
                            )),
                        onPressed: () async {
                          bool success = await initiatePayment(
                              context, _finalPrice!, true);
                          if (success)
                            await buynowsubmit(
                              ref,
                              '715216549', // cityCode
                              widget.name, // username
                              widget.venoraddress, // address
                              widget.email, // email
                              double.tryParse(widget.items.price!)!, // price
                              paymentmethod ?? 'qr', // payMethod
                              widget.selectedDeliveryOption ??
                                  'self', // delivery
                              widget.hyper ?? 'Standard', // deliveryType
                              widget.selectedStreet.description, // city
                              widget.selectedStreet.description, // street
                              widget.selectedStreet.latitude, // latitude
                              widget.selectedStreet.longitude, // longitude
                              null, // coupon
                              ref.read(quantityProvider.notifier).state, // qty
                              widget.deliverychareg.data?.estimatedFare!
                                      .toDouble() ??
                                  0, // delCost
                              0.0, // couponDiscount
                              double.tryParse(_finalPrice!)!, // total
                              int.tryParse(widget.items.id!)!, // productId
                              widget.items.title!, // productTitle
                              //from delivery

                              widget.bizLoginResponseparams!.data!.token!,
                              widget.deliverychareg.data?.zoneId ?? '0.0',
                              [
                                widget.pickuplatitutevednor,
                                widget.pickuplongitutevendor
                              ], //pickup
                              [
                                widget.pickuplatitutevednor,
                                widget.pickuplongitutevendor
                              ], //cusomer
                              [
                                widget.pickuplatitutevednor,
                                widget.pickuplongitutevendor
                              ], //customer
                              [
                                widget.selectedStreet.latitude,
                                widget.selectedStreet.longitude
                              ], //destination
                              widget.deliverychareg.data?.estId ?? 0,
                              widget.deliverychareg.data?.estimatedFare!
                                      .toDouble() ??
                                  0,
                              widget.deliverychareg.data?.estimatedDistance ??
                                  0,
                              double.parse(widget.deliverychareg.data
                                          ?.estimatedDuration
                                          ?.replaceAll(
                                              RegExp(r'[^0-9.]'), '') ??
                                      '0.0') ??
                                  0.0,

                              widget.venoraddress,
                              widget.selectedStreet.description, //m

                              widget.vendorid,
                              "parcel",
                              widget.deliverychareg.data?.returnFee!
                                      .toDouble() ??
                                  0.0, //return fee
                              widget.deliverychareg.data?.cancellationFee!
                                      .toDouble() ??
                                  0.0,
                              widget.sendername,
                              widget.senderPhone,
                              widget.senderaddress,
                              widget.name,
                              widget.receiverphone,
                              widget.selectedStreet.description,
                              widget.deliverychareg.data?.fare?.first
                                      .parcelCategoryId ??
                                  '0',
                              widget.weight,
                              "sender",
                            );
                        },
                        child: const Text(
                          'Pay with Fonepay',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  );
                },
              );
            } else {
              final bool success = await buynowsubmit(
                ref,
                '715216549', // cityCode
                widget.name, // username
                widget.venoraddress, // address
                widget.email, // email
                double.tryParse(widget.items.price!)!, // price
                paymentmethod ?? 'qr', // payMethod
                widget.selectedDeliveryOption ?? 'self', // delivery
                widget.hyper ?? 'Standard', // deliveryType
                widget.selectedStreet.description, // city
                widget.selectedStreet.description, // street
                widget.selectedStreet.latitude, // latitude
                widget.selectedStreet.longitude, // longitude
                null, // coupon
                ref.read(quantityProvider.notifier).state, // qty
                widget.deliverychareg.data?.estimatedFare!.toDouble() ??
                    0, // delCost
                0.0, // couponDiscount
                double.tryParse(_finalPrice!)!, // total
                int.tryParse(widget.items.id!)!, // productId
                widget.items.title!, // productTitle
                //from delivery

                widget.bizLoginResponseparams!.data!.token!,
                widget.deliverychareg.data?.zoneId ?? '0.0',
                [
                  widget.pickuplatitutevednor,
                  widget.pickuplongitutevendor
                ], //pickup
                [
                  widget.pickuplatitutevednor,
                  widget.pickuplongitutevendor
                ], //cusomer
                [
                  widget.pickuplatitutevednor,
                  widget.pickuplongitutevendor
                ], //customer
                [
                  widget.selectedStreet.latitude,
                  widget.selectedStreet.longitude
                ], //destination
                widget.deliverychareg.data?.estId ?? 0,
                widget.deliverychareg.data?.estimatedFare!.toDouble() ?? 0,
                widget.deliverychareg.data?.estimatedDistance ?? 0,
                double.parse(widget.deliverychareg.data?.estimatedDuration
                            ?.replaceAll(RegExp(r'[^0-9.]'), '') ??
                        '0.0') ??
                    0.0,

                widget.venoraddress,
                widget.selectedStreet.description, //m

                widget.vendorid,
                "parcel",
                widget.deliverychareg.data?.returnFee!.toDouble() ??
                    0.0, //return fee
                widget.deliverychareg.data?.cancellationFee!.toDouble() ?? 0.0,
                widget.sendername,
                widget.senderPhone,
                widget.senderaddress,
                widget.name,
                widget.receiverphone,
                widget.selectedStreet.description,
                widget.deliverychareg.data?.fare?.first.parcelCategoryId ?? '0',
                widget.weight,
                "sender",
              );
              if (success) {
                showDialog(
                  barrierDismissible: true,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: Colors.white,
                      title: const Text("Order Placed Successfully!"),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Lottie.asset('assets/images/delivery.json',
                              height: 150),
                          const SizedBox(height: 30),
                          const Text(
                            "Congratulations, your order has been placed successfully! Please check your email or view My Orders for order details. Click here to Track Your Order.",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const OnlineTransactionRecordScreen(),
                                ));
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              }
            }

            //  if (false)
          },

          // if (success) {
          //   await Future.delayed(const Duration(seconds: 5), () {});
          //   await requestdelivery(
          //     widget.bizLoginResponseparams!.data!.token!,
          //     widget.deliverychareg.data!.zoneId!,
          //     [
          //       widget.pickuplatitutevednor,
          //       widget.pickuplongitutevendor
          //     ], //pickup
          //     [
          //       widget.pickuplatitutevednor,
          //       widget.pickuplongitutevendor
          //     ], //cusomer
          //     [
          //       widget.pickuplatitutevednor,
          //       widget.pickuplongitutevendor
          //     ], //customer
          //     [
          //       widget.selectedStreet.latitude,
          //       widget.selectedStreet.longitude
          //     ], //destination
          //     widget.deliverychareg.data!.estId!,
          //     widget.deliverychareg.data!.estimatedFare!.toDouble(),
          //     widget.deliverychareg.data!.estimatedDistance!,
          //     double.parse(widget.deliverychareg.data!.estimatedDuration!
          //         .replaceAll(RegExp(r'[^0-9.]'), '')),

          //     widget.venoraddress,
          //     widget.selectedStreet.description, //m

          //     widget.vendorid,
          //     "parcel",
          //     widget.deliverychareg.data!.returnFee!
          //         .toDouble(), //return fee
          //     widget.deliverychareg.data!.cancellationFee!.toDouble(),
          //     widget.sendername,
          //     widget.senderPhone,
          //     widget.senderaddress,
          //     widget.selectedStreet.description,
          //     widget.receiverphone,
          //     widget.selectedStreet.description,
          //     widget.deliverychareg.data!.fare!.first.parcelCategoryId!,
          //     widget.weight,
          //     "sender",
          //   );

          // Do something after successful submission
          //   print('Successfully submitted the buy now request!');
          // } else {
          //   // Handle failure
          //   print('Failed to submit the buy now request');
          // }
          // }),
        ),
        SizedBox(
          height: 20.h,
        )
      ],
    );
  }

  // Widget buildItemRow(Item item) {
  Widget buildItemRow(
      Item item, Function(String)? _pricechanged, int deliveryfair) {
    DiscountOnBulk? matchingDiscount = findMatchingDiscount(
        int.tryParse(item.qty ?? '0') ?? 0, widget.discounts);

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

    // if (_pricechanged != null) {
    //   _pricechanged((finalRate *
    //           int.tryParse(
    //               ref.read(quantityProvider.notifier).state.toString())!)
    //       .toStringAsFixed(2));
    // }
    double getfinalprice() {
      double total = finalRate *
              int.tryParse(
                  ref.read(quantityProvider.notifier).state.toString())! +
          deliveryfair;
      _pricechanged!(total.toString());

      return total;
    }

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
            const Spacer(),
            Text(
              (item.name ?? item.title ?? 'N/A').length > 30
                  ? '${(item.name ?? item.title ?? 'N/A').substring(0, 30)}...'
                  : item.name ?? item.title ?? 'N/A',
            )
          ],
        ),
        SizedBox(height: 5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Quantity',
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600)),
            Text(ref.read(quantityProvider.notifier).state.toString())
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Delivery Charge',
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600)),
            Text('Rs ${deliveryfair.toStringAsFixed(2)}')
          ],
        ),
        SizedBox(height: 5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total Payment',
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold)),
            Text('Rs ${getfinalprice().toStringAsFixed(2)}')
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

class StreetAddressFieldWidget extends ConsumerStatefulWidget {
  const StreetAddressFieldWidget({super.key, this.onSelected});
  final Function(StreetAddressModel)? onSelected;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _StreetAddressFieldWidgetState();
}

class _StreetAddressFieldWidgetState
    extends ConsumerState<StreetAddressFieldWidget> {
  final TextEditingController _streetController = TextEditingController();
  String query = '';

  @override
  Widget build(BuildContext context) {
    // Use the new provider to get street address suggestions
    final streetSuggestionsAsync = ref.watch(getStreetAddressProvider(query));

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          textInputAction: TextInputAction.next,
          controller: _streetController,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 10),
            hintText: "Street Address",
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
                  Icons.location_disabled_outlined,
                  color: Color(0xff362677),
                ),
              ),
            ),
          ),
          onChanged: (value) {
            setState(() {
              query = value; // Update query when text changes
            });
          },
        ),
        const SizedBox(height: 10),
        if (query.isNotEmpty) // Only show suggestions if the query is not empty
          streetSuggestionsAsync.when(
            data: (addresses) {
              if (addresses.isEmpty) {
                return const Text('No street address found.');
              }

              return Flexible(
                fit: FlexFit.loose,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: addresses.length,
                  itemBuilder: (context, index) {
                    final address = addresses[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2.0), // Adjust spacing as needed
                      child: ListTile(
                        title: Text(
                          address.description,
                          style: TextStyle(
                              fontSize: 12.sp), // Set the desired font size
                        ),
                        onTap: () {
                          _streetController.text = address.description;
                          setState(() {
                            query = ''; // Clear the query to hide suggestions
                            widget.onSelected!(address);
                          });
                        },
                      ),
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
