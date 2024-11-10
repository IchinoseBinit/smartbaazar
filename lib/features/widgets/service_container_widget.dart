import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/b2b_screen/view/b2b_screen.dart';
import 'package:smartbazar/features/events_screen/view/events_screen.dart';
import 'package:smartbazar/features/grocessary_screen/view/grocary_screen.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/jobs_screen/view/jobs_screen.dart';
import 'package:smartbazar/features/services_screen/service_screen.dart';
import 'package:smartbazar/features/used_screen/view/used_screen.dart';

class ServiceContainer extends StatefulWidget {
  const ServiceContainer({
    super.key,
  });

  @override
  State<ServiceContainer> createState() => _ServiceContainerState();
}

class _ServiceContainerState extends State<ServiceContainer> {
  final List<Map<String, dynamic>> serviceLists = [
    {'imageIcon': openCart, 'title': 'Products', 'screen': const HomeScreen()},
    // {'imageIcon': brandBazarIcon, 'title': 'B2B'},
    {'imageIcon': b2bIcon, 'title': 'B2B', 'screen': const B2bScreen()},
    {'imageIcon': usedIcon, 'title': 'Used', 'screen': const UsedScreen()},
    {
      'imageIcon': servicesIcon,
      'title': 'Services',
      'screen': const ServicesScreen()
    },
    {'imageIcon': jobIcon, 'title': 'Jobs', 'screen': const JobssScreen()},
    {'imageIcon': eventIcon, 'title': 'Event', 'screen': const EventsScreen()},
    {
      'imageIcon': groceryIcon,
      'title': 'Grocery',
      'screen': const GrocarysScreen()
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66.h,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 25.h, left: 20.w, right: 20.w),
      color: const Color(0xff73193E),
      child: ServicesListWidget(seriveLists: serviceLists),
    );
  }
}

class ServicesListWidget extends StatelessWidget {
  final List<Map<String, dynamic>> seriveLists;

  const ServicesListWidget({
    super.key,
    required this.seriveLists,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => seriveLists[index]['screen'],
              ));
        },
        child: Column(
          children: [
            SvgPicture.asset(
              seriveLists[index]['imageIcon'],
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
            SizedBox(height: 5.h),
            Text(
              seriveLists[index]['title'],
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      separatorBuilder: (BuildContext context, int index) => SizedBox(
        width: 20.w,
      ),
      itemCount: seriveLists.length,
    );
  }
}
