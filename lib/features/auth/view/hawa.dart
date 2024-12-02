import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: SwipablePage(),
//     );
//   }
// }

class SwipablePage extends StatefulWidget {
  @override
  _SwipablePageState createState() => _SwipablePageState();
}

class _SwipablePageState extends State<SwipablePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Swipable Icons')),
      body: Column(
        children: [
          // Top Icons Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(4, (index) {
              return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    height: 20,
                    width: 20,
                    color: selectedIndex == index ? Colors.amber : Colors.grey,
                    margin: EdgeInsets.all(10),
                  ));
            }),
          ),
          SizedBox(height: 20),
          // Dotted Container with PageView
          SizedBox(
            width: double.infinity,
            height: 100,
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              itemCount: 4,
              itemBuilder: (context, index) {
                Map<String, dynamic> data = items[index];

                return GestureDetector(
                  onTap: () {
                    if (data['screen'] != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => data['screen']),
                      );
                    }
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 30), // Spacing between items
                    child: Column(
                      mainAxisSize: MainAxisSize.min, // Shrinks to fit children
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Center within available space
                      children: [
                        if (data['icon'].toString().endsWith('.svg'))
                          SvgPicture.asset(
                            data['icon'],
                            color: Color(0xffD9D9D9).withOpacity(0.5),
                            width: 20, // Adjust size
                            height: 20,
                          )
                        else
                          Image.asset(
                            data['icon'],
                            color: Color(0xffD9D9D9).withOpacity(0.5),

                            width: 20, // Adjust size
                            height: 20,
                          ),
                        const SizedBox(
                            height: 8), // Space between icon and label
                        Text(
                          data['label'],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffD9D9D9).withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
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
