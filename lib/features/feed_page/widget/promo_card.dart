import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/feed_page/model/get_feed_of_following_model.dart';

class PromoCard extends StatefulWidget {
  const PromoCard({
    Key? key,
    required this.offers,
    required this.feedItem,
  }) : super(key: key);

  final Offers offers;
  final FeedItem feedItem;

  @override
  State<PromoCard> createState() => _PromoCardState();
}

class _PromoCardState extends State<PromoCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFD0D1CF),
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.red.shade100,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              "PROMO",
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 8.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ...widget.offers.products!.map((product) {
                      return _productItem(
                        imagePath: product.image ??
                            "https://smartbazaar.jianjun-rnd.com.np/uploads/smartbazaar_app_loading_logo.png",
                        price: product.price ?? "N/A",
                      );
                    }).toList(),
                  ],
                ),
              ),

              const SizedBox(height: 15),

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
                              widget.offers.offers ?? "Special Offer!",
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
                            child: Text(
                              '${widget.feedItem.captionTitle}\n${widget.feedItem.caption}' ??
                                  '',
                              //"Subscribe to Adidas Official BizSpace to SHOP our Dashain Deals above & win AMAZING PRIZES by simply Subscribing to our Smartbazar",
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.black87,
                              ),
                              maxLines: isExpanded ? null : 2,
                              overflow: isExpanded
                                  ? TextOverflow.visible
                                  : TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(width: 5.w),
                          TextButton(
                            onPressed: () {
                              // Toggle the expanded state
                              setState(() {
                                isExpanded = !isExpanded;
                              });
                            },
                            child: Text(isExpanded ? "Less" : "More"),
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

  // Widget for Product Item
  Widget _productItem({required String imagePath, required String price}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 140.w,
            height: 105.h,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12), topRight: Radius.circular(12)),
              // image: DecorationImage(
              //   image: imagePath.startsWith("http")
              //       ? NetworkImage(imagePath)
              //       : AssetImage(imagePath) as ImageProvider,
              //   fit: BoxFit.contain,
              // ),
            ),
            child: Image.network(
              imagePath,
              fit: BoxFit.fill,
              width: double.infinity,
            ),
          ),
          Container(
            width: 140.w,
            decoration: const BoxDecoration(
              color: Colors.black87,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                price,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
