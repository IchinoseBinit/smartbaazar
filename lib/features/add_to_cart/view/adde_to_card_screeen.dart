import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/order_details/view/order_details_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class AddToCartScreen extends StatefulWidget {
  const AddToCartScreen({super.key});

  @override
  State<AddToCartScreen> createState() => _AddToCartScreenState();
}

class _AddToCartScreenState extends State<AddToCartScreen> {
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F1F1),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.shopping_cart,
                        size: 25,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'Cart',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xffADADAD),
                      ),
                      Text(
                        'Continue Shopping',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff888888)),
                      )
                    ],
                  ),
                ),
                const Divider(
                  thickness: 2,
                  color: Color(0xffD9D9D9),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, int index) =>
                        const AddToCartPRoductDetails(),
                    separatorBuilder: (context, index) => SizedBox(
                          height: 16.h,
                        ),
                    itemCount: 5),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Sub Total',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff36383C)),
                          ),
                          Text(
                            'Rs. 60,000',
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff36383C)),
                          )
                        ],
                      ),
                      GeneralTextButton(
                        // width: MediaQuery.of(context).size.width / 1.9,
                        marginH: 0,
                        fgColor: Colors.white,
                        bgColor: const Color(0xff362677),
                        title: 'Checkout',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const OrderDetailsScreen()));
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AddToCartPRoductDetails extends StatefulWidget {
  const AddToCartPRoductDetails({
    super.key,
  });

  @override
  State<AddToCartPRoductDetails> createState() =>
      _AddToCartPRoductDetailsState();
}

class _AddToCartPRoductDetailsState extends State<AddToCartPRoductDetails> {
  bool _isChecked = false;
  bool _isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.w),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 10.h),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: const Color(0xffFFFFFF),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.2),
              spreadRadius: 10,
              blurRadius: 10,
              offset: const Offset(1, 0),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _isClicked = !_isClicked;
                    });
                  },
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: _isClicked ? const Color(0xff362677) : null,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: _isClicked
                              ? const Color(0xff362677)
                              : const Color(0xffD9D9D9),
                          width: 1.0),
                    ),
                    child: _isClicked
                        ? const Icon(
                            Icons.check,
                            size: 12.0,
                            color: Colors.white,
                          )
                        : null,
                  ),
                ),
                SizedBox(
                  width: 7.w,
                ),
                const Text('Tech Store'),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xffADADAD),
                ),
                const Spacer(),
                SvgPicture.asset(deleteIcon)
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Checkbox(
                //   value: true,
                //   onChanged: (value) {},
                // ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _isChecked = !_isChecked;
                    });
                  },
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: _isChecked ? const Color(0xff362677) : null,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: _isChecked
                              ? const Color(0xff362677)
                              : const Color(0xffD9D9D9),
                          width: 1.0),
                    ),
                    child: _isChecked
                        ? const Icon(
                            Icons.check,
                            size: 12.0,
                            color: Colors.white,
                          )
                        : null,
                  ),
                ),
                SizedBox(
                  width: 7.w,
                ),
                Container(
                    padding: EdgeInsets.only(
                        top: 15.h, left: 8.w, right: 8.w, bottom: 20.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: const Color(0xffF6F1F1),
                    ),
                    child: Image.asset(
                      ImageConstant.laptopImage,
                      height: 70.h,
                    )),
                SizedBox(
                  width: 20.w,
                ),
                Expanded(
                    child: Column(
                  children: [
                    Text(
                      'Acer Aspire 5 A515-56-32DK Intel Core i3, 11th Gen/15.6 FHD',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Rs 60,000',
                          style: TextStyle(
                              color: const Color(0xff36383C),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.remove,
                          size: 15,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                              color: const Color(0xff36383C),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        const Icon(
                          Icons.add,
                          size: 15,
                        )
                      ],
                    )
                  ],
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
