import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:smartbazar/features/home/model/product_model.dart';

final productCardHeight = 225.h;
final productCardWidth = 210.w;

class ProductCard extends StatelessWidget {
  final Product product;
  final Function(Product) onTap;

  const ProductCard({
    super.key,
    required this.product,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap(product);
      },
      child: SizedBox(
        height: productCardHeight,
        width: productCardWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Skeleton.replace(
              width: productCardWidth,
              height: 100.h,
              child: Container(
                width: productCardWidth,
                height: 100.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(product.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 9.h,
            ),
            Skeleton.replace(
              height: 15.h,
              child: SizedBox(
                height: 30.h,
                child: Text(
                  product.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Row(
              children: [
                Text('Rs. ${product.price}'),
                // SizedBox(
                //   width: 10.w,
                // ),
                // Container(
                //   padding: EdgeInsets.only(
                //       left: 10.w, right: 15.w, top: 5.h, bottom: 5.h),
                //   decoration: BoxDecoration(
                //     color: const Color(0xff362677),
                //     borderRadius: BorderRadius.only(
                //       topLeft: const Radius.circular(0),
                //       topRight: Radius.circular(10.r),
                //       bottomLeft: Radius.circular(10.r),
                //     ),
                //   ),
                //   child: Text(
                //     '0.4',
                //     style: TextStyle(
                //         fontSize: 9.sp,
                //         fontWeight: FontWeight.w400,
                //         color: Colors.white),
                //   ),
                // ),
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Skeleton.replace(
              height: 10.h,
              width: productCardWidth,
              child: SizedBox(
                width: productCardWidth,
                child: Text(
                  product.contact_name,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Skeleton.unite(
                  child: RatingBar.builder(
                    initialRating: product.avg_rating,
                    minRating: 0,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 15,
                    itemPadding: const EdgeInsets.symmetric(
                      horizontal: 1.0,
                    ),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Color(0xfff781740),
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                ),
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  "(${product.avg_rating})",
                  style: TextStyle(
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff888888),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 6.h,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.visibility,
                  size: 20,
                  color: Color(0xff888888),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Text(
                  '${NumberFormat.compact().format(
                    int.parse(product.visits),
                  )} Views',
                  style: TextStyle(
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff888888),
                  ),
                ),
                SizedBox(
                  width: 24.w,
                ),
                if (product.pickup != null)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 20,
                        color: Color(0xff888888),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Skeleton.replace(
                        width: 80.w,
                        height: 10.h,
                        child: SizedBox(
                          width: 80.w,
                          child: Text(
                            product.pickup!,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff888888),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
