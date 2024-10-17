import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/advertisement/view/advertisement_screen.dart';
import 'package:smartbazar/features/anti_scam/view/anit_scam_screen.dart';
import 'package:smartbazar/features/auth/view/bottom_navigation_bar.dart';
import 'package:smartbazar/features/auth/view/login_screen.dart';
import 'package:smartbazar/features/become_smart_seller/view/smart_seller_screen.dart';
import 'package:smartbazar/features/contact_us/view/contact_us_screen.dart';
import 'package:smartbazar/features/exchange_adBost/view/exchange_adBost_screen.dart';
import 'package:smartbazar/features/faq/view/faq_screen.dart';
import 'package:smartbazar/features/favourite_list/view/favourite_listing_screen.dart';
import 'package:smartbazar/features/my_order/view/my_order_screen.dart';
import 'package:smartbazar/features/my_order/view/my_return_screen.dart';
import 'package:smartbazar/features/offline_listing/offline_lisiting_screen.dart';
import 'package:smartbazar/features/online_transaction_record/online_transacation_record_screen.dart';
import 'package:smartbazar/features/pending_approval/pending_approval.dart';
import 'package:smartbazar/features/privacy_policy/view/privacy_policy_screen.dart';
import 'package:smartbazar/features/prodcut_import/product_import_screen.dart';
import 'package:smartbazar/features/product_details/api/add_to_cart_provider.dart';
import 'package:smartbazar/features/sponsorship/view/sponsorship_screen.dart';
import 'package:smartbazar/features/terms_condition/view/terms_condtion_screen.dart';
import 'package:smartbazar/features/auth/api/logout.dart';
import 'package:smartbazar/features/vendor/view/disputes_screen.dart';
import 'package:smartbazar/features/vendor/view/my_listing_screen.dart';
import 'package:smartbazar/features/vendor/view/my_subscribe_and_win_page.dart';
import 'package:smartbazar/features/vendor_details/view/my_subscription_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class VendorProfileScreen extends StatefulWidget {
  // final String vendorName;
  const VendorProfileScreen({
    super.key,
    //required this.vendorName,
  });

  @override
  State<VendorProfileScreen> createState() => _VendorProfileScreenState();
}

class _VendorProfileScreenState extends State<VendorProfileScreen> {
  final List<Map<String, dynamic>> profileList = [
    {"icon": Icons.mail, "title": '1', "subtitle": 'mail'},
    {"icon": Icons.visibility, "title": '55', "subtitle": 'visits'},
    {"icon": Icons.volume_down, "title": '4', "subtitle": 'listing'},
    {"icon": Icons.star, "title": '6', "subtitle": 'favourite'},
    {"icon": Icons.mail, "title": '11', "subtitle": 'followers'},
  ];
  final List<Map<String, dynamic>> buyerListing = [
    {
      "icon": Icons.mail,
      "title": 'Favourite',
      "subtitle": 'Listing',
      "screen": const FavouriteListingScreen(),
    },
    {
      "icon": Icons.saved_search,
      "title": 'Saved',
      "subtitle": 'Searches',
      "screen": const PendingApprovalScreen(),
    },
    {
      "icon": Icons.notifications,
      "title": 'Buyer',
      "subtitle": 'Account',
      "screen": const OfflineListingScreen(),
    },
    {
      "icon": Icons.volume_down,
      "title": 'Subscriptions',
      "subtitle": '',
      "screen": const MySubscriptionScreen(),
    },
    {
      "icon": Icons.mail,
      "title": 'My',
      "subtitle": 'Orders',
      "screen": const MyOrderScreen(),
    },
    {
      "icon": Icons.mail,
      "title": 'My',
      "subtitle": 'Returns',
      "screen": const MyReturnScreen(),
    },
    {
      "icon": Icons.volume_down,
      "title": 'My Suscribe',
      "subtitle": 'And Win',
      "screen": const MySubscribeAndWinPage(),
    },
    {
      "icon": Icons.pending,
      "title": 'Dispute',
      "subtitle": '',
      "screen": const DisputesScreen(),
    },
  ];
  final List<Map<String, dynamic>> sellerCenterListing = [
    {
      "icon": Icons.mail,
      "title": 'My',
      "subtitle": 'Listing',
      "screen": const MyListingScreen(),
    },
    {
      "icon": Icons.saved_search,
      "title": 'Pending',
      "subtitle": 'Approval',
      "screen": const PendingApprovalScreen(),
    },
    {
      "icon": Icons.notifications,
      "title": 'Offline',
      "subtitle": 'listing',
      "screen": const OfflineListingScreen(),
    },
    {
      "icon": Icons.volume_down,
      "title": 'Product',
      "subtitle": 'import',
      "screen": const ProductImportScreen(),
    },
    {
      "icon": Icons.mail,
      "title": 'Seller',
      "subtitle": 'Account',
      "screen": const MyOrderScreen(),
    },
    {
      "icon": Icons.mail,
      "title": 'Payment',
      "subtitle": 'Record',
      "screen": const OnlineTransactionRecordScreen(),
    },
    {
      "icon": Icons.volume_down,
      "title": 'My',
      "subtitle": 'Orders',
      "screen": const MyOrderScreen(),
    },
    {
      "icon": Icons.pending,
      "title": 'My',
      "subtitle": 'Returns',
      "screen": const MyReturnScreen(),
    },
    {
      "icon": Icons.card_giftcard_sharp,
      "title": 'Prize',
      "subtitle": 'Sponsorship',
      "screen": const SponsorshipScreen(),
    },
    {
      "icon": Icons.gif_box,
      "title": 'Advertisement',
      "subtitle": '',
      "screen": const AdvertisementScreen(),
    },
    {
      "icon": Icons.comment,
      "title": 'Dispute',
      "subtitle": '',
      "screen": const DisputesScreen(),
    },
    {
      "icon": Icons.branding_watermark,
      "title": 'Brand',
      "subtitle": 'Bazar',
      "screen": const BottomNavigationScreen(),
    },
  ];

  final List<Map<String, dynamic>> accointProfileList = [
    {
      "icon": Icons.mail,
      "title": 'Messenger',
    },
    {
      "icon": Icons.money,
      "title": 'Transaction',
    },
    {
      "icon": Icons.notifications,
      "title": 'Log Out',
    },
    {
      "icon": Icons.volume_down,
      "title": 'Close account',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F1F1),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xffF6F1F1),
          toolbarHeight: 85.h,
          leadingWidth: 30.h,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: 40.h,
                width: 40.h,
                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
                decoration: BoxDecoration(
                    color: const Color(0xffF5BF05),
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 1.w,
                    )),
                child: Image.asset(
                  ImageConstant.personImage,
                ),
              ),
              SizedBox(
                width: 10.h,
              ),
              Text(
                'Vendor Name',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              const Spacer(),
              Container(
                height: 32.h,
                width: 32.h,
                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 1.w, color: Colors.black)),
                child: SvgPicture.asset(openCart),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12.w,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VendorProfileGridWidget(
                  profileData: profileList,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                          width: 1.w, color: const Color(0xffADADAD))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Buyer Center'),
                      ),
                      const Divider(
                        color: Color(0xffADADAD),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 14.w),
                        child: BuyerCenterWidget(
                          buyerData: buyerListing,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                          width: 1.w, color: const Color(0xffADADAD))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Seller Center'),
                      ),
                      const Divider(
                        color: Color(0xffADADAD),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 14.w),
                        child: BuyerCenterWidget(
                          buyerData: sellerCenterListing,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                          width: 1.w, color: const Color(0xffADADAD))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('My Account'),
                      ),
                      const Divider(
                        color: Color(0xffADADAD),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: MyAccountWidget(
                          accountData: accointProfileList,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                const VendorProfileExtraLinkWidget(),
                SizedBox(
                  height: 40.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class VendorProfileExtraLinkWidget extends StatelessWidget {
  const VendorProfileExtraLinkWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Extra Links',
            style: TextStyle(
                fontSize: 14.sp,
                color: Colors.black,
                fontWeight: FontWeight.w500),
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 11.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const ExchangeAdBostScreen()));
                    },
                    child: Text(
                      'Exchange AdBoost',
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xff36383C),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const BecomeSmartSellerScreen()));
                    },
                    child: Text(
                      'Become a Smart Seller',
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xff36383C),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const FAQScreen()));
                    },
                    child: Text(
                      'FAQ',
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xff36383C),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const AntiScamScreen()));
                    },
                    child: Text(
                      'Anti-Scam',
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xff36383C),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 50.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      const TermsConditionScreen();
                    },
                    child: Text(
                      'Terms & Conditions',
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xff36383C),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const PrivacyPolicyScreen()));
                    },
                    child: Text(
                      'Privacy',
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xff36383C),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const ContactUsScreen()));
                    },
                    child: Text(
                      'Contact Us',
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xff36383C),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class VendorProfileGridWidget extends StatelessWidget {
  final List<Map<String, dynamic>> profileData;

  const VendorProfileGridWidget({super.key, required this.profileData});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero, // Ensure no extra padding
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 4.0, // Adjusted spacing between columns
        mainAxisSpacing: 4.0, // Adjusted spacing between rows
      ),
      itemCount: profileData.length,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.zero, // Removed horizontal padding
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 14.r, // Adjusted radius
                backgroundColor: const Color(0xff362677),
                child: Icon(
                  profileData[index]['icon'],
                  color: Colors.white,
                  size: 14.sp, // Adjusted icon size
                ),
              ),
              const SizedBox(
                width: 4.0, // Reduced space between CircleAvatar and Column
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      profileData[index]['title'],
                      style: TextStyle(
                        fontSize: 12.sp, // Adjusted font size
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                      overflow: TextOverflow.ellipsis, // Handle overflow
                    ),
                    Text(
                      profileData[index]['subtitle'],
                      style: TextStyle(
                        fontSize: 10.sp, // Adjusted font size
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      overflow: TextOverflow.ellipsis, // Handle overflow
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class BuyerCenterWidget extends StatelessWidget {
  final List<Map<String, dynamic>> buyerData;

  const BuyerCenterWidget({super.key, required this.buyerData});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 4,
        mainAxisSpacing: 2.0,
      ),
      itemCount: buyerData.length,
      itemBuilder: (context, index) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => buyerData[index]['screen'] as Widget,
                  ),
                );
              },
              child: Column(
                children: [
                  Icon(
                    buyerData[index]['icon'],
                    color: Colors.black,
                    size: 20.sp,
                  ),
                  Text(
                    buyerData[index]['title'],
                    style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Text(
                    buyerData[index]['subtitle'],
                    style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  )
                ],
              ),
            )
          ],
        );
      },
    );
  }
}

class MyAccountWidget extends StatelessWidget {
  final List<Map<String, dynamic>> accountData;

  const MyAccountWidget({super.key, required this.accountData});

  @override
  Widget build(BuildContext context) {
    Future<void> _logout(BuildContext context) async {
      final prefs = await SharedPreferences.getInstance();
      final String? userId = prefs.getString("userId");

      if (userId != null) {
        LogoutApi logoutApi = LogoutApi(); // Create an instance of LogoutApi
        await logoutApi.logout(userId, context); // Call the logout method

        // After logout, navigate to the login screen or home
      } else {
        // Handle case where userId is not found in SharedPreferences
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Logged out succesfully !')),
        );
      }
    }

    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 3,
          mainAxisSpacing: 4.0,
        ),
        itemCount: accountData.length,
        itemBuilder: (context, index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () async {
                  if (accountData[index]['title'] == 'Log Out') {
                    _logout(context);
                    SharedPreferences preferences =
                        await SharedPreferences.getInstance();
                    await preferences.clear();

                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ));
                  }
                },
                child: Column(
                  children: [
                    Icon(
                      accountData[index]['icon'],
                      color: Colors.black,
                      size: 20.sp,
                    ),
                    Text(
                      accountData[index]['title'],
                      style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ],
                ),
              )
            ],
          );
        });
  }
}
