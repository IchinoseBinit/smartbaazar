import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CarouselDemo(),
    );
  }
}

class CarouselDemo extends StatefulWidget {
  const CarouselDemo({super.key});

  @override
  _CarouselDemoState createState() => _CarouselDemoState();
}

class _CarouselDemoState extends State<CarouselDemo> {
  final List<String> _items = ['Content 1', 'Content 2', 'Content 3', 'Content 4'];

  final CarouselSliderController _carouselController = CarouselSliderController(); // Correct CarouselController instance
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carousel with Buttons & Dots'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider(
            items: _items.map((item) {
              return Container(
                width: double.infinity,
                alignment: Alignment.center,
                color: Colors.blueAccent,
                child: Text(
                  item,
                  style: const TextStyle(fontSize: 24, color: Colors.white),
                ),
              );
            }).toList(),
            carouselController: _carouselController, // Attach controller
            options: CarouselOptions(
              // height: 200,
              // initialPage: 0,
              // enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _items.asMap().entries.map((entry) {
              return Container(
                width: 12.0,
                height: 12.0,
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == entry.key ? Colors.blue : Colors.grey,
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (_currentIndex > 0) {
                    _carouselController.animateToPage(
                      _currentIndex - 1, // Move to previous slide
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                child: const Text('Previous'),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  if (_currentIndex < _items.length - 1) {
                    _carouselController.animateToPage(
                      _currentIndex + 1, // Move to next slide
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                child: const Text('Next'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
