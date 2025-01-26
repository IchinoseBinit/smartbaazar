import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/advertisement/view/advertisement_screen.dart';
import 'package:smartbazar/features/anti_scam/view/anit_scam_screen.dart';
import 'package:smartbazar/features/auth/view/login_screen.dart';
import 'package:smartbazar/features/become_smart_seller/view/smart_seller_screen.dart';
import 'package:smartbazar/features/button_nav_bar/cusom_btn_bar/custom_bottom_nav.dart';
import 'package:smartbazar/features/contact_us/view/contact_us_screen.dart';
import 'package:smartbazar/features/exchange_adBost/view/exchange_adBost_screen.dart';
import 'package:smartbazar/features/faq/view/faq_screen.dart';
import 'package:smartbazar/features/favourite_list/view/favourite_listing_screen.dart';
import 'package:smartbazar/features/feed-form_screen/feed-form_screen.dart';
import 'package:smartbazar/features/feed_page/view/feed_page_screen.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/hot_deals/view/hot_vew_screen.dart';
import 'package:smartbazar/features/left_arrow/view/left_arrow_screen.dart';
import 'package:smartbazar/features/message/view/message_view_screen.dart';
import 'package:smartbazar/features/my_order/view/my_order_screen.dart';
import 'package:smartbazar/features/my_order/view/my_return_screen.dart';
import 'package:smartbazar/features/offline_listing/offline_lisiting_screen.dart';
import 'package:smartbazar/features/online_transaction_record/online_transacation_record_screen.dart';
import 'package:smartbazar/features/pending_approval/pending_approval.dart';
import 'package:smartbazar/features/privacy_policy/view/privacy_policy_screen.dart';
import 'package:smartbazar/features/prodcut_import/product_import_screen.dart';
import 'package:smartbazar/features/saved_search/saved_search_screen.dart';
import 'package:smartbazar/features/sponsorship/view/sponsorship_screen.dart';
import 'package:smartbazar/features/terms_condition/view/terms_condtion_screen.dart';
import 'package:smartbazar/features/vendor/view/disputes_screen.dart';
import 'package:smartbazar/features/vendor/view/my_listing_screen.dart';
import 'package:smartbazar/features/vendor/view/my_subscribe_and_win_page.dart';
import 'package:smartbazar/features/vendor_details/view/buyer_details_screen.dart';
import 'package:smartbazar/features/vendor_details/view/my_subscription_screen.dart';
import 'package:smartbazar/features/vendor_details/view/vendor_details_screen.dart';
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
  String? vendorName;
  @override
  void initState() {
    super.initState();
    _loadUserName(); // Load user name from SharedPreferences
  }

  Future<void> _loadUserName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // print("kela ${prefs.getString('name')}");
    setState(() {
      vendorName = prefs.getString('name');
    });
  }

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
      "screen": const SavedSearchScreen(),
    },
    {
      "icon": Icons.notifications,
      "title": 'Buyer',
      "subtitle": 'Account',
      "screen": const BuyerDetailsScreen(),
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
    {
      "icon": Icons.emergency,
      "title": 'Hot',
      "subtitle": 'Products',
      "screen": HotViewScreen(
        header: 'hotdeals',
      ),
    },
    {
      "icon": Icons.card_membership,
      "title": 'Mermbership',
      "subtitle": '',
      "screen": const LeftArrowScreen(),
    },
    {
      "icon": Icons.settings_applications_rounded,
      "title": 'Sponsored',
      "subtitle": '',
      "screen": HotViewScreen(
        header: 'sponsored',
      ),
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
      "screen": const VendroDetailsScreen(),
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
      "screen": const HomeScreen(),
    },
    {
      "icon": Icons.feed,
      "title": 'Create',
      "subtitle": 'Feed',
      "screen": const FeedFormScreen(),
    },
  ];

  final List<Map<String, dynamic>> accointProfileList = [
    {
      "icon": Icons.mail,
      "title": 'Messenger',
      "screen": const MessageViewScreen()
    },
    {
      "icon": Icons.money,
      "title": 'Transaction',
      "screen": const MessageViewScreen()
    },
    {
      "icon": Icons.notifications,
      "title": 'Log Out',
      "screen": const MessageViewScreen()
    },
    {
      "icon": Icons.volume_down,
      "title": 'Close account',
      "screen": const MessageViewScreen()
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: const Color(0xffF6F1F1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffF6F1F1),
        toolbarHeight: 85.h,
        leadingWidth: 30.h,
        title: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (_) => const VendroDetailsScreen()));
              },
              child: Container(
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
            ),
            SizedBox(
              width: 10.h,
            ),
            Text(
              '$vendorName',
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const AddToCartScreen(),
                  ),
                );
              },
              child: Container(
                height: 32.h,
                width: 32.h,
                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 1.w, color: Colors.black)),
                child: SvgPicture.asset(openCart),
              ),
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
                margin: EdgeInsets.only(top: 18.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border:
                        Border.all(width: 1.w, color: const Color(0xffADADAD))),
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
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
                    border:
                        Border.all(width: 1.w, color: const Color(0xffADADAD))),
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
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
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
                    border:
                        Border.all(width: 1.w, color: const Color(0xffADADAD))),
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
                height: 240.h,
              ),
            ],
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
    return Wrap(
      direction: Axis.horizontal, // Arrange children horizontally
      spacing: 8.0, // Space between items horizontally
      runSpacing: 20.0, // Space between rows vertically
      children: profileData.map((data) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min, // Minimize the Row width
            children: [
              CircleAvatar(
                radius: 14, // Adjusted radius
                backgroundColor: const Color(0xff362677),
                child: Icon(
                  data['icon'],
                  color: Colors.white,
                  size: 14, // Adjusted icon size
                ),
              ),
              const SizedBox(
                width: 8.0, // Space between avatar and text
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data['title'],
                    style: const TextStyle(
                      fontSize: 12, // Adjusted font size
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis, // Handle overflow
                  ),
                  Text(
                    data['subtitle'],
                    style: const TextStyle(
                      fontSize: 10, // Adjusted font size
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis, // Handle overflow
                  ),
                ],
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

class BuyerCenterWidget extends StatelessWidget {
  final List<Map<String, dynamic>> buyerData;

  const BuyerCenterWidget({super.key, required this.buyerData});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start, // Align items to the start
      spacing: 2.0, // Horizontal space between items
      runSpacing: 15.0, // Vertical space between rows
      children: List.generate(buyerData.length, (index) {
        return SizedBox(
          width: MediaQuery.of(context).size.width / 4 -
              15, // Fit 4 items in a row
          child: GestureDetector(
            onTap: () {
              
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => buyerData[index]['screen'] as Widget,
                ),
              );
            },
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.center, // Center items within the column
              children: [
                Icon(
                  buyerData[index]['icon'],
                  color: Colors.black,
                  size: 20.sp,
                ),
                const SizedBox(height: 8.0), // Space between icon and text
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
                ),
                SizedBox(
                  height: 2.h,
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

class MyAccountWidget extends StatelessWidget {
  final List<Map<String, dynamic>> accountData;

  const MyAccountWidget({super.key, required this.accountData});

  Future<void> _handleAction(BuildContext context, String title) async {
    if (title == 'Log Out') {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      await preferences.clear();
   Navigator.of(context, rootNavigator: true).pushReplacement(MaterialPageRoute(builder: (context) => const LoginScreen()));

    } else if (title == 'Messenger') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MessageViewScreen()),
      );
    } else if (title == 'Transaction') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const OnlineTransactionRecordScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: accountData.map((data) {
        return InkWell(
          onTap: () => _handleAction(context, data['title']),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                data['icon'],
                color: Colors.black,
                size: 20.0,
              ),
              const SizedBox(height: 4.0),
              Text(
                data['title'],
                style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
