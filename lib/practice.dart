import 'package:flutter/material.dart';



class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Center(
            child: Text("Main Content"),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.1, // Start small (10% of screen)
            minChildSize: 0.1, // Minimum height (10%)
            maxChildSize: 0.9, // Maximum height (90%)
            builder: (context, scrollController) {
              return Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                      spreadRadius: 2,
                    )
                  ],
                ),
                child: ListView(
                  controller: scrollController, // Allows dragging
                  children: const [
                    Center(
                      child: Text(
                        "Drag me up!",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                        "This is a draggable sheet that appears when you drag up."),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
