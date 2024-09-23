import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';

class ServiceContainer extends StatefulWidget {
  const ServiceContainer({
    super.key,
  });

  @override
  State<ServiceContainer> createState() => _ServiceContainerState();
}

class _ServiceContainerState extends State<ServiceContainer> {
  final List<Map<String, dynamic>> serviceLists = [
    {'imageIcon': openCart, 'title': 'Products'},
    {'imageIcon': brandBazarIcon, 'title': 'B2B'},
    {'imageIcon': b2bIcon, 'title': 'B2B'},
    {'imageIcon': usedIcon, 'title': 'Used'},
    {'imageIcon': servicesIcon, 'title': 'Services'},
    {'imageIcon': jobIcon, 'title': 'Jobs'},
    {'imageIcon': eventIcon, 'title': 'Event'},
    {'imageIcon': groceryIcon, 'title': 'Grocery'},
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
      itemBuilder: (context, index) => Column(
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
      separatorBuilder: (BuildContext context, int index) => SizedBox(
        width: 20.w,
      ),
      itemCount: seriveLists.length,
    );
  }
}
