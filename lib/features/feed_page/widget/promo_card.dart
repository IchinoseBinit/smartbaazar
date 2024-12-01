import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PromoCard extends StatefulWidget {
  const PromoCard({Key? key}) : super(key: key);

  @override
  State<PromoCard> createState() => _PromoCardState();
}

class _PromoCardState extends State<PromoCard> {
  // State to track whether the text is expanded
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        elevation: 7,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 5,
                  offset: const Offset(0, 5),
                ),
              ],
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
                      _productItem(
                        imagePath: "assets/images/perfume.jpg",
                        price: "Rs. 19,999",
                      ),
                      _productItem(
                        imagePath: "assets/images/perfume.jpg",
                        price: "Rs. 19,999",
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          _productItem(
                            imagePath: "assets/images/perfume.jpg",
                            price: "Rs. 19,999",
                          ),
                          Container(
                            color: Colors.black54,
                            height: 80,
                            width: 80,
                            child: const Center(
                              child: Text(
                                "+4",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
                        Row(
                          children: [
                            Text(
                              "LIMITED DISCOUNT FROM NIC !",
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
                            const Icon(
                              Icons.push_pin_rounded,
                              color: Colors.grey,
                              size: 16,
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                "Subscribe to Adidas Official BizSpace to SHOP our Dashain Deals above & win AMAZING PRIZES by simply Subscribing to our Smartbazar",
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
            width: 110,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Container(
            decoration: const BoxDecoration(
              color: Colors.black87,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    price,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Icon(
                    Icons.whatshot,
                    size: 16,
                    color: Colors.orange,
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
