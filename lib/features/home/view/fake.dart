import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageCarousel extends StatefulWidget {
  final List<dynamic> sliders; // Example: Replace dynamic with your actual data model

  const ImageCarousel({Key? key, required this.sliders}) : super(key: key);

  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 130.0,
          width: double.infinity,
          child: CarouselSlider(
            items: widget.sliders.map((banner) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const B2bScreen(),
                    ),
                  );
                },
                child: CachedNetworkImage(
                  width: double.infinity,
                  fit: BoxFit.fill,
                  imageUrl: banner.image!, // Assuming banner.image is the image URL
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              );
            }).toList(),
            options: CarouselOptions(
              aspectRatio: 0.1,
              reverse: true,
              viewportFraction: 1,
              autoPlay: true,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ),
        // Dots indicator
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.sliders.map((banner) {
            int index = widget.sliders.indexOf(banner);
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              height: 8.0,
              width: 8.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index
                    ? Colors.blue // Active dot color
                    : Colors.grey, // Inactive dot color
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

class B2bScreen extends StatelessWidget {
  const B2bScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("B2B Screen")),
      body: Center(child: const Text("B2B Screen Content")),
    );
  }
}
