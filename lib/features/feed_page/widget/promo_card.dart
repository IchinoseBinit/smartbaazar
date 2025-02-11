import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

class PromoCard extends StatefulWidget {
  const PromoCard({
    Key? key,
    required this.products,
    required this.captionTitle,
    required this.caption,
    required this.offerText,
  }) : super(key: key);

  final List<Map<String, String>> products;
  final String captionTitle;
  final String caption;
  final String offerText;

  @override
  State<PromoCard> createState() => _PromoCardState();
}

class _PromoCardState extends State<PromoCard> {
  bool isExpanded = false;
  bool isOverflowing = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      child: Center(
        child: Container(
          decoration: const BoxDecoration(
            // borderRadius: BorderRadius.circular(),
            color: Color.fromARGB(255, 243, 244, 242),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Reduce SizedBox height
              const SizedBox(height: 5),

              // Product Images and Prices
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.red.shade100,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          RotatedBox(
                            quarterTurns: 3,
                            child: Padding(
                              padding:
                                  const EdgeInsets.all(2.0), // Reduce padding
                              child: Text(
                                widget.offerText,
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 7.sp, // Reduce font size
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Product List
                    if (widget.products.isNotEmpty)
                      _productFirstItem(
                        imagePath: widget.products[0]["imagePath"]!,
                        price: widget.products[0]["price"]!,
                        showHotIcon: true,
                        postType: widget.products[0]["id"],
                      ),
                    ...widget.products.skip(1).map((product) {
                      return _productItem(
                        imagePath: product["imagePath"]!,
                        price: product["price"]!,
                        showHotIcon: true,
                        postType: product["id"]!,
                      );
                    }).toList(),
                  ],
                ),
              ),

              // Description Section
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0), // Reduce padding
                        child: Row(
                          children: [
                            Container(
                              color: const Color(0xFF4B004B),
                              child: Image.asset(
                                "assets/images/announcement.png",
                                width: 20.w, // Reduce image size
                                height: 15.h, // Reduce image size
                              ),
                            ),
                            SizedBox(width: 5.w), // Reduce spacing
                            Text(
                              widget.captionTitle ?? "Special Offer!",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10.sp, // Reduce font size
                              ),
                            ),
                            const Spacer(),
                            Image.asset(
                              "assets/images/pin_icon.png",
                              width: 20, // Reduce size
                              height: 20, // Reduce size
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5), // Reduce spacing
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: ReadMoreText(
                              widget.caption,
                              style: TextStyle(
                                  fontSize: 11.sp, // Reduce font size
                                  color: Colors.black87),
                              trimLines: 2,
                              colorClickableText: Colors.blue,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: ' More',
                              trimExpandedText: ' Less',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _productFirstItem({
    required String imagePath,
    required String price,
    bool showHotIcon = false,
    String? postType,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Product Image
          Container(
            width: 135.w,
            height: 75.h,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Image.network(
              imagePath,
              fit: BoxFit.fill,
              width: double.infinity,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
              errorBuilder: (context, error, stackTrace) {
                return SizedBox(
                  width: 130.w,
                  height: 70.h,
                  child: const Icon(Icons.error),
                );
              },
            ),
          ),

          // Product Price with Optional Icon
          Container(
            width: 135.w,
            decoration: const BoxDecoration(
              color: Color(0xFF70646B),
            ),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // if (showHotIcon)
                  const Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Icon(Icons.check_box, color: Colors.white),
                    // child: Image.asset(
                    //   'assets/icon/flame.png',
                    //   width: 20.w,
                    //   height: 20.h,
                    //   color: Colors.white,
                    // ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    postType == '3' ? 'BOOK' : 'BUY',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget for Product Item
  Widget _productItem({
    required String imagePath,
    required String price,
    bool showHotIcon = false,
    required String postType,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Product Image
          Container(
            width: 135.w,
            height: 75.h,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Image.network(
              imagePath,
              fit: BoxFit.fill,
              width: double.infinity,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
              errorBuilder: (context, error, stackTrace) {
                return SizedBox(
                  width: 130.w,
                  height: 70.h,
                  child: const Icon(Icons.error),
                );
              },
            ),
          ),

          // Product Price with Optional Icon
          Container(
            width: 135.w,
            decoration: const BoxDecoration(
              color: Colors.black87,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Rs $price',
                    style:  TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11.sp,
                      color: Colors.white,
                    ),
                  ),
                  if (showHotIcon)
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Image.asset(
                        'assets/icon/flame.png',
                        width: 20.w,
                        height: 20.h,
                        color: Colors.white,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
