import 'package:flutter/material.dart';

class Hawa extends StatelessWidget {
  const Hawa({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [

                // Scrollable Container
                SingleChildScrollView(
                  child: Column(
              
                    children: List.generate(
                      50,
                      (index) => Container(
                        height: 100,
                        margin: const EdgeInsets.all(8),
                        color: Colors.blue.withOpacity(0.3),
                        child: Center(
                          child: Text(
                            'Item $index',
                            style: const TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // Fixed Container
                Positioned(
                  top: 20, // Fixed height from the top
                  right: 0,
                  child: Container(
                    height: 200, // Explicit height set
                    width: 100,
                    color: Colors.orange,
                    child: Column(children: [

                    ],)
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
