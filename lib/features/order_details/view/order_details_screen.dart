import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/general_elevated_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/general_text_field_widget.dart';
import 'package:smartbazar/features/auth/widgets/rich_text_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffF6F1F1),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.shopping_cart,
                    color: Color(0xff000000),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text('Checkout'),
                  Spacer(),
                  Text('Go back')
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Divider(
                thickness: 2,
                color: Color(0xffD9D9D9),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
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
                icon: Icons.person,
                hintText: 'Name',
                fill: true,
                fillColor: Color.fromARGB(255, 241, 234, 234),
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomTextFieldWidget(
                icon: Icons.call,
                hintText: 'Contact Number',
                fill: true,
                fillColor: Color.fromARGB(255, 241, 234, 234),
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomTextFieldWidget(
                icon: Icons.money,
                hintText: 'Rs 60,000',
                readOnly: true,
                fill: true,
                fillColor: Color.fromARGB(255, 241, 234, 234),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Payement Method',
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomRadioButton(
                title1: 'Pre-Payement',
                title2: 'Cash on delivery',
              ),
              Divider(
                thickness: 2,
                color: Color(0xffD9D9D9),
              ),
              Text(
                'Delivery Option',
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomRadioButton(
                title1: 'Slef Pickup',
                title2: 'Home Delivery',
              ),
              CustomTextFieldWidget(
                icon: Icons.location_on,
                hintText: 'City',
                fill: true,
                fillColor: Color.fromARGB(255, 241, 234, 234),
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomTextFieldWidget(
                icon: Icons.location_disabled_outlined,
                hintText: 'Street Address',
                fill: true,
                fillColor: Color.fromARGB(255, 241, 234, 234),
              ),
              SizedBox(
                height: 12.h,
              ),
              Divider(
                thickness: 2,
                color: Color(0xffD9D9D9),
              ),
              Text(
                'Coupon',
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000)),
              ),
              Text('Drop Down remain'),
              SizedBox(
                height: 10.h,
              ),
              Divider(
                thickness: 2,
                color: Color(0xffD9D9D9),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Quantity',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xfff000000)),
                  ),
                  Spacer(),
                  Icon(Icons.remove),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.r),
                      border: Border.all(
                        color: Color(0xffD9D9D9),
                        width: 1,
                      ),
                    ),
                    child: Text('1'),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Icon(Icons.add)
                ],
              ),
              Divider(
                thickness: 2,
                color: Color(0xffD9D9D9),
              ),
              OrderSummaryWidget(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichTextWidget(
                    title:
                        'By proceeding with the this order, you acknowledge to accept our  ',
                    textStyle: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff36383C)),
                    subtitle: ' Terms & Condtions',
                    subtitleStyle: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff36383C)),
                    onPressed: () {}),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
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
                            color: Color(0xff36383C)),
                      ),
                      Text(
                        '9840714218',
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff36383C)),
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Delivery Partner',
                        style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff36383C)),
                      ),
                      Image.asset(ImageConstant.upayaImage)
                    ],
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              GeneralEelevatedButton(
                  width: MediaQuery.of(context).size.width,
                  text: 'Place Order',
                  onPresssed: () {}),
              SizedBox(
                height: 20.h,
              )
            ],
          ),
        ),
      ),
    ));
  }
}

class OrderSummaryWidget extends StatelessWidget {
  const OrderSummaryWidget({
    super.key,
  });

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
              color: Color(0xfff000000)),
        ),
        SizedBox(
          height: 5.h,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Product',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xfff36383C)),
                  ),
                  Text('Acer Aspire 5 A515-56-32Dk')
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Qantity',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xfff36383C)),
                  ),
                  Text('1')
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rate',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xfff36383C)),
                  ),
                  Text('Rs 60,000')
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Payement',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xfff36383C)),
                  ),
                  Text('Rs 60,000')
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 2,
          color: Color(0xffD9D9D9),
        ),
      ],
    );
  }
}

class CustomRadioButton extends StatefulWidget {
  final String title1;
  final String title2;
  const CustomRadioButton(
      {super.key, required this.title1, required this.title2});

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
          activeColor: Color(0xffFBFBFD),
          fillColor: MaterialStateProperty.all(Color(0xff0362677)),
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
            color: Color(0xff36383C),
          ),
        ),
        SizedBox(
          width: 30,
        ),
        Radio<int>(
          value: 2,
          groupValue: selectedOption,
          activeColor: Color(0xffFBFBFD),
          fillColor: MaterialStateProperty.all(Color(0xff0362677)),
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
              color: Color(0xff36383C)),
        )
      ],
    );
  }
}
