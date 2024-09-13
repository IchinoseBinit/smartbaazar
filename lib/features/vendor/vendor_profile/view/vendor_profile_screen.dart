import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class VendorProfileScreen extends StatefulWidget {
  final String vendorName;
  const VendorProfileScreen({super.key, required this.vendorName});

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
    {"icon": Icons.mail, "title": 'My', "subtitle": 'Listing'},
    {"icon": Icons.pending, "title": 'Pending', "subtitle": 'Approval'},
    {"icon": Icons.notifications, "title": 'Offline', "subtitle": 'listing'},
    {"icon": Icons.volume_down, "title": 'Product', "subtitle": 'import'},
    {"icon": Icons.mail, "title": 'My', "subtitle": 'Listing'},
    {"icon": Icons.mail, "title": 'My', "subtitle": 'Listing'},
    {"icon": Icons.volume_down, "title": 'Product', "subtitle": 'import'},
    {"icon": Icons.pending, "title": 'Pending', "subtitle": 'Approval'},
    {"icon": Icons.mail, "title": 'My', "subtitle": 'Listing'},
  ];
  final List<Map<String, dynamic>> accointProfileList = [
    {
      "icon": Icons.mail,
      "title": 'Messagenr',
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
                        child: Text('My Account'),
                      ),
                      const Divider(
                        color: Color(0xffADADAD),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 14.w),
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
                  Text(
                    'Exchange AdBoost',
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: const Color(0xff36383C),
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Become a Smart Seller',
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: const Color(0xff36383C),
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'FAQ',
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: const Color(0xff36383C),
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Anti-Scam',
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: const Color(0xff36383C),
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                width: 50.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Temrs & Conditions',
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: const Color(0xff36383C),
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Prvacy',
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: const Color(0xff36383C),
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Contact',
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: const Color(0xff36383C),
                        fontWeight: FontWeight.w400),
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
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 0.2,
          mainAxisSpacing: 5.0,
        ),
        itemCount: profileData.length,
        itemBuilder: (context, index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 18.r,
                backgroundColor: const Color(0xff362677),
                child: Icon(
                  profileData[index]['icon'],
                  color: Colors.white,
                  size: 20.sp,
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              Column(
                children: [
                  Text(
                    profileData[index]['title'],
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  Text(
                    profileData[index]['subtitle'],
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  )
                ],
              )
            ],
          );
        });
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
          crossAxisSpacing: 30,
          mainAxisSpacing: 2.0,
        ),
        itemCount: buyerData.length,
        itemBuilder: (context, index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Icon(
                    buyerData[index]['icon'],
                    color: Colors.black,
                    size: 20.sp,
                  ),
                  Text(
                    buyerData[index]['title'],
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Text(
                    buyerData[index]['subtitle'],
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  )
                ],
              )
            ],
          );
        });
  }
}

class MyAccountWidget extends StatelessWidget {
  final List<Map<String, dynamic>> accountData;

  const MyAccountWidget({super.key, required this.accountData});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 16,
          mainAxisSpacing: 2.0,
        ),
        itemCount: accountData.length,
        itemBuilder: (context, index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Icon(
                    accountData[index]['icon'],
                    color: Colors.black,
                    size: 20.sp,
                  ),
                  Text(
                    accountData[index]['title'],
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ],
              )
            ],
          );
        });
  }
}
