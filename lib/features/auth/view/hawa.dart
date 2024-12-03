import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartbazar/common/appbar_widget.dart';
import 'package:smartbazar/constant/image_constant.dart';

class SwipablePage extends StatefulWidget {
  const SwipablePage({super.key});

  @override
  _SwipablePageState createState() => _SwipablePageState();
}

class _SwipablePageState extends State<SwipablePage> {
  int selectedIndex = 0;
  final PageController _pageController = PageController(viewportFraction: 0.3);

  void _onPageChanged(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Swipable Icons')),
      body: Column(
        children: [
          // Top Indicator Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(items.length, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                  _pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: selectedIndex == index ? Colors.amber : Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
              );
            }),
          ),
          const SizedBox(height: 20),
          // Scrollable Icons and Labels
          SizedBox(
            height: 70,
            width: double.infinity,
            child: PageView.builder(
              
              
              controller: _pageController,
              onPageChanged: _onPageChanged,
              itemCount: items.length,
              itemBuilder: (context, index) {
                Map<String, dynamic> data = items[index];
                bool isActive = index == selectedIndex;

                return AnimatedContainer(
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.zero,
                  duration: const Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                    color:
                        isActive ? Colors.amber.shade100 : Colors.transparent,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (data['icon'].toString().endsWith('.svg'))
                        SvgPicture.asset(
                          data['icon'],
                          color: isActive
                              ? Colors.amber
                              : const Color(0xffD9D9D9).withOpacity(0.5),
                          width: 40,
                          height: 40,
                        )
                      else
                        Icon(
                          Icons.image, // Placeholder for asset image
                          size: 30,
                          color: isActive
                              ? Colors.amber
                              : const Color(0xffD9D9D9).withOpacity(0.5),
                        ),
                      const SizedBox(height: 8),
                      Text(
                        data['label'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: isActive
                              ? Colors.amber
                              : const Color(0xffD9D9D9).withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
