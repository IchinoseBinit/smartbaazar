import 'package:flutter/material.dart';
import 'package:smartbazar/constant/color_constant.dart';

class PerksWidget extends StatefulWidget {
  final String first;
  final String second;
  final String third;
  final String fourth;

  const PerksWidget({
    super.key,
    required this.first,
    required this.second,
    required this.third,
    required this.fourth,
  });

  @override
  State<PerksWidget> createState() => _PerksWidgetState();
}

class _PerksWidgetState extends State<PerksWidget> {
  // int _selectedIndex = -1; // Default to -1 to indicate no selection.
  // bool _isSelected = false; // Tracks if a button has been clicked.

  @override
  Widget build(BuildContext context) {
    // List of button labels
    final options = [widget.first, widget.second, widget.third, widget.fourth];

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Colors.white, Color(0xFFf3f3f3)]),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(options.length, (index) {
              // Generate buttons dynamically
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 2),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white,
                  border: Border.all(
                    width: 1,
                    color: const Color(0xffD9D9D9),
                  ),
                ),
                child: Text(
                  options[index],
                  style: headerstyle.copyWith(
                      fontSize: 13, color: Color.fromARGB(255, 78, 76, 76)),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
