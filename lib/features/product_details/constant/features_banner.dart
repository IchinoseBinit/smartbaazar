import 'package:flutter/material.dart';
import 'package:smartbazar/constant/color_constant.dart';


class FeaturesBannerWidget extends StatelessWidget {
  const FeaturesBannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          const Color(0xFFd9d9d9).withOpacity(0.8),
           const Color(0xFFd9d9d9),
    
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight
        )
      ),
      width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(text: TextSpan(children: [
              TextSpan(text: 'PAYMENT\n',
              style: headerstyle.copyWith(
                color: const Color.fromARGB(255, 63, 60, 60).withOpacity(0.7),
                fontWeight: FontWeight.w500
              ),
              ),
              TextSpan(text: 'OPTIONS',
                 style: headerstyle.copyWith(
                color: const Color.fromARGB(255, 63, 60, 60).withOpacity(0.7),
              fontWeight: FontWeight.w500
              ),
              ),
              
              
            ])),
            Image.asset("assets/images/cashd.png"),
            Image.asset("assets/images/fone.png"),
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  
                  color: const Color.fromARGB(255, 103, 100, 100)
                )
              ),
    
              child: Row(
                children: [
                  const Icon(Icons.check_circle,
                  color:Color(0xFF370c6b) ,
                  ),
                  Text("100%",
                  style: headerstyle.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
              
                  ),
                  ),
                    Text("ढुक्क",
                  style: headerstyle.copyWith(
                    color: const Color.fromARGB(255, 32, 31, 31),
              
                  ),
                  ),
              
                ],
              ),
            )
    
    
          ],
        ),
      );
  }
}
