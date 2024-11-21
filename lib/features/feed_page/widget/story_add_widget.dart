import 'package:flutter/material.dart';

class StoryAddWidget extends StatelessWidget {
  const StoryAddWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      
      children: [
        Positioned(

            child: Image.asset(

              fit: BoxFit.cover,
                height: 120, "assets/images/subscribe.png")),
        Positioned(
          bottom: 12,
        right: 1,
        left: 1,
        
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              // borderRadius: BorderRadius.circular(1)
            ),
            
            
            child: Icon(Icons.add)))
      ],
    );
  }
}
