import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Ensure you have this import for SvgPicture
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/b2b_screen/view/b2b_screen.dart';
import 'package:smartbazar/features/brand_bazar/brand_bazar_screen.dart';
import 'package:smartbazar/features/create_listing/view/create_new_listing_screen.dart';
import 'package:smartbazar/features/events_screen/view/events_screen.dart';
import 'package:smartbazar/features/grocessary_screen/view/grocary_screen.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/jobs_screen/view/jobs_screen.dart';
import 'package:smartbazar/features/services_screen/service_screen.dart';
import 'package:smartbazar/features/used_screen/view/used_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> drawerList = [
      {'imageIcon': openCart, 'title': 'Products'},
      {'imageIcon': brandBazarIcon, 'title': 'BrandBazar'},
      {'imageIcon': b2bIcon, 'title': 'B2B'},
      {'imageIcon': usedIcon, 'title': 'Used'},
      {'imageIcon': servicesIcon, 'title': 'Services'},
      {'imageIcon': jobIcon, 'title': 'Jobs'},
      {'imageIcon': eventIcon, 'title': 'Event'},
      {'imageIcon': groceryIcon, 'title': 'Grocery'},
    ];

    return Drawer(
      width: MediaQuery.of(context).size.width * 0.57,
      backgroundColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(top: 25.h, right: 16, left: 15, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(ImageConstant.appLogo),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All Product",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff362677),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.clear),
                ),
              ],
            ),
            SizedBox(height: 45.h),
            Expanded(
              child: DrawerItemWidget(
                listOfDrawerItem: drawerList,
                onTap: (title) {
                  if (title == 'Products') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  } else if (title == 'BrandBazar') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const BrandBazarScreen(),
                      ),
                    );
                  } else if (title == 'B2B') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const B2bScreen(),
                      ),
                    );
                  } else if (title == 'Event') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const EventsScreen(),
                      ),
                    );
                  } else if (title == 'Services') {
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ServicesScreen(),
                        ));

                    // Handle navigation for Services if needed
                  } else if (title == 'Used') {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UsedScreen(),
                        ));
                  }else if(title=='Jobs'){
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => JobssScreen(),
                        ));
                  }else{Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GrocarysScreen(),
                        ));

                  }
                  // Add more conditions as needed for other titles
                },
              ),
            ),
            Divider(
              thickness: 1.0,
              color: const Color(0xff000000).withOpacity(0.15),
            ),
            SizedBox(height: 10.h),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const CreateNewListinScreen(),
                  ),
                );
              },
              child: Row(
                children: [
                  SizedBox(width: 20.w),
                  const Icon(Icons.add),
                  SizedBox(width: 5.w),
                  Text(
                    'Creating Listing',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff000000),
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerItemWidget extends StatelessWidget {
  final List<Map<String, dynamic>> listOfDrawerItem;
  final Function(String) onTap;

  const DrawerItemWidget({
    super.key,
    required this.listOfDrawerItem,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) => InkWell(
        onTap: () {
          onTap(listOfDrawerItem[index]['title']);
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  listOfDrawerItem[index]['imageIcon'],
                  colorFilter: const ColorFilter.mode(
                    Color(0xff000000),
                    BlendMode.srcIn,
                  ),
                ),
                SizedBox(width: 12.w),
                Text(
                  listOfDrawerItem[index]['title'],
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff000000),
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
              ],
            ),
          ],
        ),
      ),
      separatorBuilder: (BuildContext context, int index) => SizedBox(
        height: 20.h,
        child: Divider(
          thickness: 1.0,
          color: const Color(0xff000000).withOpacity(0.15),
        ),
      ),
      itemCount: listOfDrawerItem.length,
    );
  }
}
