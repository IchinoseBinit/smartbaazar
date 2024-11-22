import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdsWidget extends StatelessWidget {
  const AdsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 5.h),
      height: 150.h,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.white,
          Color.fromARGB(255, 231, 219, 219),
          Color(0xFFa4a4a4)
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              Image.asset(
          
            fit: BoxFit.cover,
              height: 110, "assets/images/subscribe.png"),
                  const Text("Adidas"),
                  SizedBox(width: 5.w,),
                     const Icon(Icons.logout),
                  const Spacer(),
                  const Text("Global Brand"),
                  const SizedBox(width: 5,),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              
               
          
              //   ],
              // )
            ],
          ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
        Column(
          children: [
            Text('4.5K'),
            Text('SUBSCRIBER')
          ],
        ),
            Column(
          children: [
            Text('1.5K'),
            Text('PRODUCTS')
          ],
        ),
            Column(
          children: [
            Text('8'),
            Text('LIVE PRIZES')
          ],
        ),
            Column(
          children: [
            Icon(Icons.location_on_outlined,
            size: 20,
            ),
            Text('2.4 KM')
          ],
        ),
            ],
          )
        
        ],
      ),
    );
  }
}
