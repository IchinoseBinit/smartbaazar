import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.h,
      padding: const EdgeInsets.all(5),
      margin: EdgeInsets.only(left: 5.w),
      width: MediaQuery.sizeOf(context).width*0.75,
      decoration: BoxDecoration(
          color: Colors.white30, borderRadius: BorderRadius.circular(20)),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Section with Avatar and Info
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Avatar
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300,
                    ),
                    child: const Center(
                      child: Text(
                        "Tech store",
                        style: TextStyle(fontSize: 10, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  // Title and Info
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tech Store",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Row(
                        children: [
                          Text(
                            "5.5K Subscribers",
                            style:
                                TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "•",
                            style:
                                TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "20h",
                            style:
                                TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.more_vert, color: Colors.grey),
                ],
              ),
            ),
            // Image Section
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(0),
                bottom: Radius.circular(0),
              ),
              child: Image.asset(
                'assets/images/forest.png',
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            // Description Section
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text.rich(
                TextSpan(
                  text:
                      "The company's product portfolio includes footwear, apparel accessories such as ad bags, sunglasses ",
                  style: TextStyle(fontSize: 12),
                  children: [
                    TextSpan(
                      text: "More",
                      style: TextStyle(color: Colors.blue, fontSize: 12),
                    ),
                  ],
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            // Action Section (like, comment, share)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon:
                        const Icon(Icons.favorite_border, color: Colors.grey),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.comment_outlined,
                        color: Colors.grey),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon:
                        const Icon(Icons.share_outlined, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
