
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';

TextStyle headerstyle = const TextStyle(fontSize: 10, color: Colors.white);

class Product_item_widget extends StatelessWidget {
  const Product_item_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      width: 250.w,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(10)
      ),
      margin: const EdgeInsets.all(3),
      
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SvgPicture.asset(
                    b2bIcon,
                    height: 10,
                    color: Colors.grey,
                  ),
                  Text(
                    "TradeHub",
                    style:
                        headerstyle.copyWith(fontSize: 10, color: Colors.grey),
                  )
                ],
              ),
              SizedBox(width: 100.w,),
              PopupMenuButton(
                padding: EdgeInsets.zero,
                menuPadding: EdgeInsets.zero,
                color: const Color.fromARGB(102, 57, 58, 62).withOpacity(0.7),
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                ),
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                        value: 'share',
                        child: InkWell(
                            onTap: () async {},
                            child: Text(
                              "Share",
                              style: headerstyle,
                            ))),
                    PopupMenuItem(
                        value: 'wishList',
                        child: InkWell(
                            onTap: () {},
                            child: Text(
                              "Save",
                              style: headerstyle,
                            ))),
                    PopupMenuItem(
                        value: 'delete',
                        child: InkWell(
                            onTap: () {},
                            child: Text(
                              "Contact Seller",
                              style: headerstyle,
                            ))),
                    PopupMenuItem(
                        value: 'delete',
                        child: InkWell(
                            onTap: () {},
                            child: Text(
                              "Get Seller Directions",
                              style: headerstyle,
                            ))),
                    PopupMenuItem(
                        value: 'delete',
                        child: InkWell(
                            onTap: () {},
                            child: Text(
                              "Report",
                              style: headerstyle,
                            ))),
                  ];
                },
                onSelected: (String value) {
                },
              ),
              SizedBox(height: 5.h,)
              // const Icon(
              //   Icons.more_vert,
              //   color: Colors.grey,
              // ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Image.asset("assets/images/ear.png"),
          SizedBox(
            height: 5.h,
          ),
          const Wrap(
            children: [
              Text(
                "Himalayan Brightening Vitamin...",
                softWrap: true,
                maxLines: 1,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("RS 60,000"),
              SizedBox(
                width: 10.w,
              ),
              const Icon(
                Icons.track_changes_sharp,
                color: Colors.red,
                size: 15,
              ),
              Text(
                "Best Proce",
                style: headerstyle.copyWith(color: Colors.red, fontSize: 10),
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                "RS 10,000",
                style: headerstyle.copyWith(
                    fontSize: 10,
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.grey),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                    child: Text(
                      "129",
                      style: headerstyle.copyWith(fontSize: 10),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5)),
                        border: Border.all(color: Colors.grey)),
                    child: RatingBar.builder(
                      initialRating: 5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 12,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                      itemBuilder: (context, _) =>
                          const Icon(Icons.star, color: Colors.red),
                      onRatingUpdate: (rating) {},
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/flameIcon.png",
                    height: 10,
                    width: 10,
                  ),
                  Text(
                    "30%",
                    style:
                        headerstyle.copyWith(color: Colors.red, fontSize: 10),
                  ),
                  const Icon(
                    Icons.arrow_downward_rounded,
                    size: 15,
                    color: Colors.red,
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/icon/Rectangle.png'),
                      const Text("78")
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/icon/Vector.png"),
                      const Text("3.2K")
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/icon/solar.png",
                        color: Colors.grey,
                      ),
                      const Text("345")
                    ],
                  )
                ],
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(color: Colors.grey),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("ENQUIRE"),
                Text('|'),
                Text("wIN"),
                Text('|'),
                Text("BUY"),
              ],
            ),
          ),
          Expanded(
            // width: double.infinity,
            // padding: const EdgeInsets.all(5),
            // decoration: const BoxDecoration(
            //     color: Color(0xff3D215F),
            // ),
                // borderRadius: BorderRadius.only(
                //     bottomLeft: Radius.circular(20),
                //     bottomRight: Radius.circular(20))),
            child: Container(
             padding: const EdgeInsets.all(5),
              margin: EdgeInsets.zero,
            decoration: const BoxDecoration(
              color: Color(0xff3D215F),
              borderRadius: BorderRadius.only(
                 bottomLeft: Radius.circular(10),
                 bottomRight: Radius.circular(10)

              )
            ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage("assets/images/power.png"),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Dozoko",
                                style: headerstyle.copyWith(
                                    fontSize: 12, fontWeight: FontWeight.w700),
                              ),
                              const Icon(
                                Icons.logout,
                                color: Colors.white,
                                size: 12,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.outlined_flag_rounded,
                                color: Colors.white,
                                size: 12,
                              ),
                              Text(
                                "DOMESTIC BRAND",
                                style: headerstyle.copyWith(
                                    fontSize: 7, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: Colors.white,
                            size: 12,
                          ),
                          Text(
                            "2.5 km",
                            style: headerstyle.copyWith(
                                fontSize: 12, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.noise_aware,
                            color: Colors.white,
                            size: 12,
                          ),
                          Text(
                            "SPONSERED",
                            style: headerstyle.copyWith(
                                fontSize: 7, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
