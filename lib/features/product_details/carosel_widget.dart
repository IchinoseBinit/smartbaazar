import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Import Riverpod
import 'package:smartbazar/constant/button_nav_sheet.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/features/button_nav_bar/cusom_btn_bar/custom_bottom_nav.dart';
import 'package:smartbazar/features/home/model/product_details_model.dart';
import 'package:smartbazar/features/message/view/chat_screen.dart';
import 'package:smartbazar/features/message/view/message_view_screen.dart';
import 'package:smartbazar/features/product_details/api/check_enquire_provider.dart';
import 'package:smartbazar/features/product_details/model/enquire_model.dart';

Future<EnquireResponse> getEnquire(WidgetRef ref, String id) async {
  try {
    return await ref.read(checkEnquireProvider(id).future);
  } catch (e) {
    print("Error fetching enquiry: $e");
    throw Exception("Failed to fetch enquiry data");
  }
}

class CarsoselWidget extends ConsumerStatefulWidget {
  // Change to ConsumerStatefulWidget
  const CarsoselWidget({
    Key? key,
    required this.items,
    required this.onCommenttapped,
    int? dots,
    required this.avg_rating,
    required this.comment,
    required this.VImage,
    required this.wow,
    required this.pid,
  })  : dots = dots ?? items.length,
        super(key: key);

  final List<Picture> items;
  final int dots;
  final String wow, comment, avg_rating, VImage;
  final Function()? onCommenttapped;
  final int pid;

  @override
  _CarsoselWidgetState createState() => _CarsoselWidgetState();
}

class _CarsoselWidgetState extends ConsumerState<CarsoselWidget> {
  // Use ConsumerState
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        Positioned(
          child: CarouselSlider(
            options: CarouselOptions(
              height: 300.h, // Set height of carousel
              viewportFraction: 1.0,
              initialPage: 0,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            items: widget.items.map((item) {
              return GestureDetector(
                onTap: () {
                  // Open full-screen zoomable image on tap
                  showDialog(
                    context: context,
                    builder: (_) => Dialog(
                      insetPadding: EdgeInsets.zero, // Remove dialog padding
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: PhotoViewGallery.builder(
                          itemCount: widget.items.length,
                          builder: (context, index) {
                            return PhotoViewGalleryPageOptions(
                              imageProvider:
                                  NetworkImage(widget.items[index].image_url!),
                              minScale: PhotoViewComputedScale.contained,
                              maxScale: PhotoViewComputedScale.covered,
                            );
                          },
                          scrollPhysics: const BouncingScrollPhysics(),
                          backgroundDecoration: const BoxDecoration(
                            color: Colors.black,
                          ),
                          pageController:
                              PageController(initialPage: currentIndex),
                        ),
                      ),
                    ),
                  );
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Image.network(
                    item.image_url!,
                    fit: BoxFit.fill,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const Center(child: CircularProgressIndicator());
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return GestureDetector(
                        onTap: () {
                          setState(
                              () {}); // Force widget rebuild to retry loading
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.refresh,
                                size: 50, color: Colors.grey),
                            const Text(
                              "swipe right to retry",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        Positioned(
          left: 200.w,
          bottom: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(widget.dots, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: currentIndex == index
                      ? 16.0
                      : 12.0, // Larger dot for active index
                  height: currentIndex == index ? 16.0 : 12.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentIndex == index
                        ? const Color.fromARGB(255, 83, 81, 81)
                        : Colors.white,
                  ),
                ),
              );
            }),
          ),
        ),
        Positioned(
          left: 40.w,
          bottom: 15.h,
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 1),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10.h),
                decoration: const BoxDecoration(
                    color: ColorConstant.whiteColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/tire.png",
                      color: ColorConstant.blackColor,
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    Text(
                      widget.wow == 'null' ? "1" : widget.wow,
                      style: headerstyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: ColorConstant.blackColor),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    InkWell(
                      onTap: widget.onCommenttapped,
                      child: Image.asset(
                        "assets/images/Frame.png",
                        color: ColorConstant.blackColor,
                        height: 30,
                        width: 30,
                      ),
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    Text(
                      widget.comment,
                      style: headerstyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: ColorConstant.blackColor),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Image.asset("assets/icon/Frame.png"),
                    SizedBox(
                      width: 7.w,
                    ),
                    Text(
                      widget.avg_rating,
                      style: headerstyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: ColorConstant.blackColor),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5.h),
                decoration: const BoxDecoration(
                    color: ColorConstant.whiteColor,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    InkWell(
                      onTap: () {
                        getEnquire(ref, widget.pid.toString()).then(
                          (value) {
                            value.data?.enquire == 0
                                ? showModalBottomSheet(
                                    useSafeArea: true,
                                    isScrollControlled: true,
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SizedBox(
                                        height: MediaQuery.of(context)
                                                .size
                                                .height *
                                            0.8, // Use 80% of the screen height

                                        child: SendMessageBottomWidget(
                                          ref: ref,
                                          productidid: widget.pid.toString(),
                                        ),
                                      );
                                    },
                                  )
                                : navigateToPage(
                                    context: context,
                                    page: ChatScreen(
                                        threadId: value.data!.thread!.id!,
                                        username: value.data!.thread!.subject!,
                                        postId: value.data!.thread!.post_id!),
                                    ref: ref,
                                    showNavBar: false, // Hide bottom navbar
                                  );
                          },
                        ).catchError(
                          (error) {
                            print('Error: $error');
                          },
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/wave.png',
                          ),
                          Text(
                            "ASk",
                            style: headerstyle.copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                color: const Color(0xff362677)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    CircleAvatar(backgroundImage: NetworkImage(widget.VImage)),
                    SizedBox(
                      width: 5.w,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 10,
          right: 15,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "${currentIndex + 1}/${widget.items.length}", // Display current index + 1 / total images
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
