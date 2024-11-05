import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/vendor_details/view/vendor_details_screen.dart';
import 'package:smartbazar/features/vendor_details/widgets/account_details_widget.dart';
import 'package:smartbazar/features/vendor_details/widgets/background_image_description_widgt.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class BuyerDetailsScreen extends ConsumerStatefulWidget {
  const BuyerDetailsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BuyerDetailsScreenState();
}

class _BuyerDetailsScreenState extends ConsumerState<BuyerDetailsScreen> {
  String? vendorName;
  @override
  void initState() {
    super.initState();
    _loadUserName(); // Load user name from SharedPreferences
  }

  Future<void> _loadUserName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      vendorName = prefs.getString('userName');
    });
  }

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: Colors.black)),
                      child: Image.asset(ImageConstant.personImage),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Text(
                      '$vendorName',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff000000),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const AddToCartScreen()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(9),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 2, color: Colors.black)),
                        child: SvgPicture.asset(
                          openCart,
                          colorFilter: const ColorFilter.mode(
                              Color(0xff362677), BlendMode.srcIn),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                // const PhotoAvatarContainerWidget(),
                // SizedBox(
                //   height: 16.h,
                // ),
                const BackgroundImageDescriptionWidget(),
                SizedBox(
                  height: 16.h,
                ),
                const AccountDetailsWidget(),
                SizedBox(
                  height: 16.h,
                ),

                const VerifyAccountWidget(),
                SizedBox(
                  height: 16.h,
                ),
                const ChangePasswordWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
