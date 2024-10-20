import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/general_text_field_widget.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/rich_text_widget.dart';
import 'package:smartbazar/features/order_details/api/checkout_details_api.dart';
import 'package:smartbazar/features/order_details/api/checkout_form_submission_api.dart';
import 'package:smartbazar/features/order_details/api/shipping_cities_api.dart';
import 'package:smartbazar/features/order_details/api/street_address_api.dart';
import 'package:smartbazar/features/order_details/model/checkout_details_model.dart';
import 'package:smartbazar/features/proceed_pay/view/proceed_to_pay_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class OrderDetailsScreen extends ConsumerStatefulWidget {
  const OrderDetailsScreen({
    super.key,
    required this.selectedProductIds,
    required this.selectedVendorIds,
  });
  final List<String> selectedProductIds;
  final List<String?> selectedVendorIds;

  @override
  ConsumerState<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends ConsumerState<OrderDetailsScreen> {
  String selectedPaymentMethod = "Pre-Payement"; // Default payment method
  String selectedDeliveryOption = "Self Pickup"; // Default delivery option
  String? selectedCoupon = '';
  String selectedCity = '';
  String selectedStreet = '';
  void clearSelectedCoupon() {
    setState(() {
      selectedCoupon = null;
    });
  }

  void updateCity(String city) {
    setState(() {
      selectedCity = city;
    });
  }

  void updateStreet(String street) {
    setState(() {
      selectedStreet = street;
    });
  }

  @override
  Widget build(BuildContext context) {
    final asyncCheckoutDetails = ref.watch(postSelectedItemOfCartProvider(
        widget.selectedVendorIds, widget.selectedProductIds));

    return GenericSafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffF6F1F1),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
          child: asyncCheckoutDetails.when(
            data: (checkoutDetails) {
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
                      const Text('Go back')
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
                    readOnly: true,
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
                    readOnly: true,
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
                    icon: Icons.money,
                    hintText: 'Rs ${checkoutDetails.data!.cartTotal ?? '0'}',
                    readOnly: true,
                    fill: true,
                    fillColor: const Color.fromARGB(255, 241, 234, 234),
                    validator: (total) {
                      return null;
                    },
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
                    title1: 'Pre-Payement',
                    title2: 'Cash on delivery',
                    onChanged: (value) {
                      setState(() {
                        selectedPaymentMethod =
                            value == 1 ? 'Pre-Payment' : 'Cash on delivery';
                      });
                    },
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
                    title1: 'Slef Pickup',
                    title2: 'Home Delivery',
                    onChanged: (value) {
                      setState(() {
                        selectedDeliveryOption =
                            value == 1 ? 'Self Pickup' : 'Home Delivery';
                      });
                    },
                  ),
                  ShippingCitiesField(
                    onSelected: updateCity,
                  ),

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
                          this.selectedCoupon = selectedCoupon ?? null;
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
                  OrderSummaryWidget(items: checkoutDetails.data!.items ?? []),
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
                      final userName =
                          checkoutDetails.data!.user?.first.name ?? 'N/A';
                      final email = checkoutDetails.data!.user?.first.email ??
                          'N/A'; // Assuming you have email available
                      final address = checkoutDetails.data!.user?.first.phone ??
                          'N/A'; // Replace with actual address input
                      final total =
                          checkoutDetails.data!.cartTotal?.toString() ?? '0';
                      final postIds = checkoutDetails.data!.items
                              ?.map((e) => e.postId)
                              .toList() ??
                          [];
                      final prices = checkoutDetails.data!.items
                              ?.map((e) => e.price)
                              .toList() ??
                          [];
                      final quantities = checkoutDetails.data!.items
                              ?.map((e) => e.qty)
                              .toList() ??
                          [];
                      final postName = checkoutDetails.data!.items
                              ?.map((e) => e.name!)
                              .toList() ??
                          [];
                      // final image = checkoutDetails.data!.items
                      //         ?.map((e) => '${ApiConstants.imgUrl}${e.image}')
                      //         .toList() ??
                      //     [];

                      print('Username: $userName');
                      print(
                          'Email:???????????????????????????????????????????????????? $email');
                      print('Address: $address');
                      print('Total: $total');
                      print('Post IDs: $postIds');
                      print('Prices: $prices');
                      print('Quantities: $quantities');
                      print('Post Names: $postName');
                      print('Selected Payment Method: $selectedPaymentMethod');
                      print(
                          'Selected Delivery Option: $selectedDeliveryOption');
                      print('Selected City: $selectedCity');
                      print('Selected Street: $selectedStreet');
                      print('Selected Coupon: $selectedCoupon');
                      print(
                          'Selected Product IDs: ${widget.selectedProductIds}');
                      //print('image $image');
                      final success = ref.read(postCheckoutFormProvider(
                        userName,
                        address,
                        email,
                        selectedPaymentMethod,
                        selectedDeliveryOption,
                        "Standard",
                        selectedCity,
                        selectedStreet,
                        selectedCoupon,
                        postIds, widget.selectedProductIds,
                        postName,
                        quantities,
                        prices, // Add prices here
                        total,
                       // image,
                      ));
                      if (success == true) {
                        // Handle successful order placement (e.g., navigate to a success page)
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const ProceesToPayScreen()),
                        );
                      } else {
                        // Handle failure (e.g., show a message)
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text(
                                  'Failed to place order. Please try again.')),
                        );
                      }
                    },
                    // onPressed: () => Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (_) => const ProceesToPayScreen())),
                  ),
                  SizedBox(
                    height: 20.h,
                  )
                ],
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stackTrace) => Center(
              child: Text('Error loading checkout details: $error'),
            ),
          ),
        ),
      ),
    ));
  }
}

class OrderSummaryWidget extends StatelessWidget {
  final List<Item> items;

  const OrderSummaryWidget({Key? key, required this.items}) : super(key: key);

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
            children: items.map((item) => buildItemRow(item)).toList(),
          ),
        ),
        // const Divider(thickness: 2, color: Color(0xffD9D9D9)),
      ],
    );
  }

  Widget buildItemRow(Item item) {
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
            Text(item.qty ?? '1')
          ],
        ),
        SizedBox(height: 5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Rate',
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600)),
            Text('Rs ${item.price ?? '0'}')
          ],
        ),
        SizedBox(height: 5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total Payment',
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold)),
            Text('Rs ${item.itemTotal ?? '0'}')
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
            error: (error, stackTrace) => Text('Error: $error'),
          ),
      ],
    );
  }
}

class StreetAddressFieldWidget extends ConsumerStatefulWidget {
  const StreetAddressFieldWidget({super.key, this.onSelected});
  final Function(String)? onSelected;
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
                            widget.onSelected!(address.description);
                          });
                        },
                      ),
                    );
                  },
                ),
              );
            },
            loading: () => const CircularProgressIndicator(),
            error: (error, stackTrace) => Text('Error: $error'),
          ),
      ],
    );
  }
}
