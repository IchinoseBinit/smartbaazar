import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarsoselWidget extends StatefulWidget {
  const CarsoselWidget({super.key, required this.items});
  final List<String> items;

  @override
  State<CarsoselWidget> createState() => _CarsoselWidgetState();
}

class _CarsoselWidgetState extends State<CarsoselWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 250.0.h, // Responsive height
              viewportFraction: 1.0,
              initialPage: 0,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            items: widget.items.map((item) {
              return SizedBox(
                width: double.infinity,
                child: Image.network(
                  item,
                  fit: BoxFit.fill,
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 10.h),
          // Dots representing the current index
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(widget.items.length, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: currentIndex == index
                      ? 16.0
                      : 12.0, // Larger dot for active index
                  height: currentIndex == index ? 16.0 : 12.0,
                  margin:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentIndex == index ? const Color.fromARGB(255, 83, 81, 81) : Colors.grey,
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
