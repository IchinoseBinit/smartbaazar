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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 243, 244, 242),
            // boxShadow: [#8183804A
            //   BoxShadow(
            //     color: Colors.grey.shade300,
            //     blurRadius: 5,
            //     offset: const Offset(0, 5),
            //   ),
            // ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),

              // Product Images and Prices
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.red.shade100,
                        // borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          RotatedBox(
                            quarterTurns: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                widget.offerText,
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 8.sp,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (widget.products.length > 0)
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
                    // ...widget.products.asMap().entries.map((entry) {
                    //   int index = entry.key;
                    //   Map<String, String> product = entry.value;

                    //   return _productItem(
                    //     imagePath: product["imagePath"]!,
                    //     price: product["price"]!,
                    //     showHotIcon: index == 0,
                    //   );
                    // }).toList(),
                  ],
                ),
              ),

              // const SizedBox(height: 15),

              // Description Section
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              color: const Color(0xFF4B004B),
                              child: Image.asset(
                                "assets/images/announcement.png",
                                width: 25.w,
                                height: 20.h,
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              widget.captionTitle ?? "Special Offer!",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11.sp,
                              ),
                            ),
                            SizedBox(width: 5.w),
                            const CircleAvatar(
                              radius: 2,
                              backgroundColor: Colors.grey,
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              "20h",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                            const Spacer(),
                            Image.asset(
                              "assets/images/pin_icon.png",
                              width: 25,
                              height: 25,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: ReadMoreText(
                              widget.caption,
                              style: TextStyle(
                                  fontSize: 12.sp, color: Colors.black87),
                              trimLines: 2,
                              colorClickableText: Colors.blue,
                              trimMode: TrimMode.Line, // Trims by lines
                              trimCollapsedText: ' More',
                              trimExpandedText: ' Less',

                              // maxLines: isExpanded ? null : 2,
                              // overflow: isExpanded
                              //     ? TextOverflow.visible
                              //     : TextOverflow.ellipsis,
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
            width: 155.w,
            height: 120.h,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Image.network(
              imagePath,
              fit: BoxFit.fill,
              width: double.infinity,
            ),
          ),

          // Product Price with Optional Icon
          Container(
            width: 155.w,
            decoration: const BoxDecoration(
              color: Color(0xFF70646B),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // if (showHotIcon)
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
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
            width: 155.w,
            height: 120.h,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Image.network(
              imagePath,
              fit: BoxFit.fill,
              width: double.infinity,
            ),
          ),

          // Product Price with Optional Icon
          Container(
            width: 155.w,
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
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
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
