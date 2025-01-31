import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/features/feed_page/api/feed_gift_card_api.dart';
import 'package:smartbazar/features/feed_page/api/list_comment_feed_api.dart';
import 'package:smartbazar/features/feed_page/api/post_feed_wow_api.dart';
import 'package:smartbazar/features/feed_page/model/list_comment_of_feed.dart';
import 'package:smartbazar/features/feed_page/view/add_comment_provider.dart';
import 'package:smartbazar/features/feed_page/widget/feed_page_pop_up.dart';

class FeedContainer extends ConsumerStatefulWidget {
  const FeedContainer({
    super.key,
    required this.vendorImage,
    required this.vendorName,
    required this.suscribers,
    required this.productCount,
    required this.livePrize,
    required this.distance,
    required this.userId,
    this.showGift,
    required this.hassttory,
    // this.userDetails,
    required this.interested,
    required this.engagement,
    required this.views,
    required this.feedDetailImage,
    required this.membershipTitle,
    required this.membershipId,
    required this.feedId,
  });
  final String? vendorImage;
  final String? vendorName;
  final String? suscribers;
  final String? productCount;
  final String? livePrize;
  final String? distance;
  final String? interested;
  final String? engagement;
  final String? views;
  final String? feedDetailImage;
  final String? membershipTitle;
  final String? membershipId;
  final bool? showGift;
  final String userId;
  final String feedId;
  final bool hassttory;
  // final UserDetail? userDetails;
  // final Interested? interested;
  // final FeedDetail? feedDetail;
  @override
  ConsumerState<FeedContainer> createState() => _FeedContainerState();
}

class _FeedContainerState extends ConsumerState<FeedContainer> {
  bool _isLoading = false;
  bool _isLiked = false;
  int _likeCount = 0;

  void _showCommentSection(BuildContext context, String feedproductid) {
    showModalBottomSheet(
      useSafeArea: true,
      context: context,
      isScrollControlled: true, // Allows full-screen modal
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => SizedBox(
        height: MediaQuery.of(context).size.height, // Full screen height
        child: CommentSection(id: feedproductid),
      ),
    );
  }

  // void _showCommentBottomSheet(BuildContext context, String id) {
  //   showModalBottomSheet(
  //     context: context,
  //     isScrollControlled: true, // Ensures it adjusts for the keyboard
  //     shape: const RoundedRectangleBorder(
  //       borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
  //     ),
  //     builder: (BuildContext context) {
  //       print("kela ${id}");
  //       return Padding(
  //         padding: EdgeInsets.only(
  //           left: 16,
  //           right: 16,
  //           top: 16,
  //           bottom: MediaQuery.of(context).viewInsets.bottom + 16,
  //         ),
  //         child: Column(
  //           mainAxisSize: MainAxisSize.min, // Minimized to fit content
  //           children: [
  //             const Text(
  //               'Add a Comment',
  //               style: TextStyle(
  //                 fontSize: 18,
  //                 fontWeight: FontWeight.bold,
  //               ),
  //             ),
  //             const SizedBox(height: 10),
  //             TextField(
  //               controller: _commentcontroller,
  //               decoration: InputDecoration(
  //                 hintText: 'Write your comment here...',
  //                 border: OutlineInputBorder(
  //                   borderRadius: BorderRadius.circular(8),
  //                 ),
  //               ),
  //               maxLines: 3,
  //             ),
  //             const SizedBox(height: 10),
  //             ElevatedButton(
  //               onPressed: () {
  //                 if (_commentcontroller.text.isNotEmpty) {
  //                   ref
  //                       .watch(postcommentProvider(id, _commentcontroller.text))
  //                       .whenData(
  //                     (value) {
  //                       ScaffoldMessenger.of(context)
  //                           .showSnackBar(SnackBar(content: Text(value)));
  //                     },
  //                   );
  //                 }

  //                 Navigator.pop(context); // Close the bottom sheet
  //                 // Handle the comment submission logic here
  //               },
  //               child: const Text('Submit'),
  //             ),
  //             SizedBox(
  //               height: 100,
  //             )
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final feedGiftCardFuture =
        ref.watch(getFeedGiftCardProvider(widget.userId));
    // print("kala ${widget.vendorImage}")

    return Column(
      children: [
        Material(
          elevation: 5,
          shadowColor: ColorConstant.blackColor,
          child: Container(
            // padding: const EdgeInsets.all(10),
            width: double.infinity,

            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Colors.white,
                Color.fromARGB(255, 231, 219, 219),
                Color(0xFFa4a4a4)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    widget.hassttory
                        ? Container(
                            margin: EdgeInsets.symmetric(horizontal: 5.w),
                            width: 70.r,
                            height: 70.r,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 3.w, color: const Color(0xffEACACB)),
                              shape: BoxShape.circle,
                            ),
                          )
                        : Container(),
                    Padding(
                      padding: const EdgeInsets.all(3),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(),
                        ),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor:
                              const Color(0x7F7F7F73).withOpacity(0.45),
                          child: ClipOval(
                              child: widget.vendorImage != null &&
                                      widget.vendorImage!.isNotEmpty
                                  ? Image.network(
                                      widget.vendorImage!,
                                      fit: BoxFit.cover,
                                      width: 52,
                                      height: 52,
                                    )
                                  : Icon(
                                      Icons.person,
                                      size: 24.sp,
                                    )),
                        ),
                      ),
                    ),
                    widget.showGift!
                        ? Positioned(
                            bottom: -6.h,
                            right: 0,
                            left: 0,
                            child: GestureDetector(
                              onTap: () {
                                feedGiftCardFuture.when(
                                  data: (feedCardData) {
                                    print("pinky $feedCardData");
                                    return showCustomBottomSheet(
                                        context, feedCardData);
                                  },
                                  error: (error, stackTrace) =>
                                      Text("error $error"),
                                  loading: () => showDialog(
                                    context: context,
                                    builder: (context) => Center(
                                      child: Shimmer.fromColors(
                                        baseColor: Colors.grey[300]!,
                                        highlightColor: Colors.grey[100]!,
                                        child: Container(
                                          width: 50.r,
                                          height: 50.r,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                padding: EdgeInsets.all(2.r),
                                child: Icon(
                                  Icons.card_giftcard,
                                  color: Colors.amber,
                                  size: 20.r,
                                ),
                              ),
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
                // SizedBox(width: 10.w),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Flexible(
                                    child: Text(
                                      widget.vendorName ?? 'N/A',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13.sp,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: true,
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Image.asset(
                                    "assets/images/back.png",
                                    height: 16.h,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  _getMembershipImage(widget.membershipId),
                                  width: 16.w,
                                  height: 16.h,
                                  color: Colors.black45,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    widget.membershipTitle ?? '',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                widget.suscribers ?? '0',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11.sp),
                              ),
                              Text(
                                "SUBSCRIBERS",
                                style: TextStyle(fontSize: 9.sp),
                              ),
                            ],
                          ),
                          SizedBox(width: 15.w),
                          Column(
                            children: [
                              Text(
                                widget.productCount ?? '0',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11.sp),
                              ),
                              Text(
                                "PRODUCTS",
                                style: TextStyle(fontSize: 9.sp),
                              ),
                            ],
                          ),
                          SizedBox(width: 15.w),
                          Column(
                            children: [
                              Text(
                                widget.livePrize ?? '0',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11.sp),
                              ),
                              Text(
                                "LIVE PRIZES",
                                style: TextStyle(fontSize: 9.sp),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 14.sp,
                              ),
                              // SizedBox(height: 5.h),
                              Text(
                                '${widget.distance ?? '0'} km',
                                style: TextStyle(fontSize: 9.sp),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 5.w,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Container(
          height: 300.h,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            // borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
          ),
          child: Stack(
            children: [
              // Image Section

              ClipRRect(
                child: Image.network(
                  widget.feedDetailImage ?? '',
                  width: double.infinity,
                  height: double.infinity, // Make the image take full height
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) {
                      return child; // If no loading, show the image
                    } else {
                      return Shimmer.fromColors(
                        baseColor: Colors.grey[300]!,
                        highlightColor: Colors.grey[100]!,
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          color: Colors.white, // Placeholder color for shimmer
                        ),
                      ); // Show shimmer while loading
                    }
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return const SizedBox(
                      width: 130,
                      height: 70,
                      child: Icon(Icons.error),
                    ); // Show error icon if image fails to load
                  },
                ),
              ),

              Positioned(
                top: 10.0,
                right: 5.0,
                // left: 10,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context, rootNavigator: true)
                        .push(MaterialPageRoute(
                      builder: (context) => FullscreenImageView(
                        imagePath: widget.feedDetailImage ?? '',
                      ),
                    ));

                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => FullscreenImageView(
                    //       imagePath: widget.feedDetailImage ?? '',
                    //     ),
                    //   ),
                    // );
                  },
                  child: Container(
                    color: Colors.black54,
                    height: 35,
                    width: 35,
                    child: Icon(Icons.zoom_out_map_rounded,
                        color: Colors.white, size: 20.h),
                  ),
                ),
              ),

              // Icons Section (Like, Comment, Share) positioned above the image
              Positioned(
                bottom: 60.0, // Positioned higher so it's above the image
                right: 10.0,
                left: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Like Icon
                    GestureDetector(
                      onTap: () async {
                        print("Liked!");
                        if (!mounted) return;
                        setState(() {
                          _isLoading = true;
                        });

                        try {
                          // Read the provider and get the AsyncValue
                          final asyncResult = await ref
                              .read(postFeedWowProvider(widget.feedId).future);

                          // Update the like state on success
                          setState(() {
                            _isLiked = !_isLiked;
                            _likeCount += _isLiked ? 1 : -1;
                          });
                        } catch (e) {
                          // Handle errors
                          print('Error: $e');
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Error liking post: $e')),
                          );
                        } finally {
                          setState(() {
                            _isLoading = false;
                          });
                        }
                      },
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  _isLiked ? Colors.grey : Colors.white,
                                  Colors.pink
                                ], // Gradient colors
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              shape: BoxShape
                                  .circle, // Make the background circular (if needed)
                            ),
                            padding: const EdgeInsets.all(
                                8), // Add padding for space around the image
                            child: Image.asset(
                              'assets/icon/heart.png',
                              color: _isLiked
                                  ? Colors.red
                                  : Colors.white, // Icon color
                              // width: 24, // You can adjust the size
                              // height: 24, // You can adjust the size
                            ),
                          ),

                          // Icon(
                          //   _isLiked
                          //       ? Icons.favorite
                          //       : Icons.favorite_border_outlined,
                          //   color: _isLiked ? Colors.red : Colors.white,
                          //   size: 20.h,
                          // ),
                          SizedBox(width: 4.w),
                        ],
                      ),
                    ),
                    SizedBox(width: 15.w),
                    // Comment Icon
                    GestureDetector(
                      onTap: () => _showCommentSection(context, widget.feedId),
                      child: Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.blue,
                                  Colors.purple
                                ], // Define your gradient colors
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              shape: BoxShape
                                  .circle, // Make the container circular
                            ),
                            padding: const EdgeInsets.all(
                                8), // Add padding to ensure the icon has space around it
                            child: Image.asset(
                              'assets/icon/Rectangle.png',
                              color: Colors.white,
                              height: 24,
                              width: 24,
                            ),
                          ),
                          SizedBox(width: 4.w),
                        ],
                      ),
                    ),

                    SizedBox(width: 15.w),
                    // Comment Icon
                    GestureDetector(
                      onTap: () {
                        print("Commented!");
                      },
                      child: Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape
                                  .circle, // Make the container circular
                              gradient: LinearGradient(
                                colors: [
                                  Colors.blue,
                                  Colors.green
                                ], // Define your gradient colors
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            padding: const EdgeInsets.all(
                                8), // Optional: add padding around the image
                            child: Image.asset(
                              'assets/icon/tabler_location-share.png',
                              width: 24, // Adjust width as needed
                              height: 24, // Adjust height as needed
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 15.w),
                    // Share Icon
                    GestureDetector(
                        onTap: () {
                         Share.share('Share this');
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            shape:
                                BoxShape.circle, // Make the container circular
                            gradient: LinearGradient(
                              colors: [
                                Colors.blue,
                                Colors.green
                              ], // Define your gradient colors
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          padding: const EdgeInsets.all(
                              8), // Optional: add padding around the image
                          child: Image.asset(
                            'assets/icon/fluent_share-48-filled.png',
                            width: 24, // Adjust width as needed
                            height: 24, // Adjust height as needed
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              // Interested, Engagement, and Views Section (above the image)
              Positioned(
                //  top: 4,
                bottom: 0.0, // Adjust position as needed
                left: 0,
                right: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Container(
                    height: 40.h,
                    width: MediaQuery.of(context).size.width * 0.8,
                    // padding: EdgeInsets.symmetric(horizontal: 20.w),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(
                          0.5), // Slight opacity to blend with image
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(5.0),
                        bottomRight: Radius.circular(5.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Interested
                          GestureDetector(
                            onTap: () {
                              print("Interested!");
                            },
                            child: Row(
                              children: [
                                Text(
                                  "${widget.interested ?? '0'} Interested",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const VerticalDivider(
                            thickness: 2,
                            color: Colors.black,
                          ),
                          // Engagement
                          GestureDetector(
                            onTap: () {
                              print("Engagement!");
                            },
                            child: Row(
                              children: [
                                Text(
                                  "${widget.engagement ?? '0'} Engagement",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const VerticalDivider(
                            thickness: 2,
                            color: Colors.black,
                          ),
                          // Views
                          GestureDetector(
                            onTap: () {
                              print("Views!");
                            },
                            child: Row(
                              children: [
                                Text(
                                  "${widget.views ?? '0'}  views",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  // Function to get membership image
  String _getMembershipImage(String? membershipId) {
    switch (membershipId) {
      case '1':
        return 'assets/icon/basic_seller.png';
      case '2':
        return 'assets/icon/spotlight_seller.png';
      case '3':
        return 'assets/icon/domestic_brand.png';
      case '25':
        return 'assets/icon/global_brand.png';
      default:
        return 'assets/icon/global_brand.png'; // Default image
    }
  }
}

// import 'package:flutter/material.dart';

class FullscreenImageView extends StatelessWidget {
  final String imagePath;

  const FullscreenImageView({Key? key, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: Image.network(
              imagePath,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 16,
            right: 16,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.close, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CommentSection extends ConsumerStatefulWidget {
  const CommentSection({super.key, required this.id});

  final String id;

  @override
  ConsumerState<CommentSection> createState() => _CommentSectionState();
}

class _CommentSectionState extends ConsumerState<CommentSection> {
  bool _isLoading = false;
  final TextEditingController _commentcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final commentAsyncValue = ref.watch(getfeedcommentProvider(widget.id));

    return DraggableScrollableSheet(
      initialChildSize: 1,
      minChildSize: 1,
      maxChildSize: 1,
      builder: (context, scrollController) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 40,
                  height: 5,
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Text(
                "Comment",
                style: headerstyle.copyWith(
                    color: ColorConstant.blackColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w800),
              ),
              commentAsyncValue.when(
                data: (comment) {
                  if (comment.isEmpty) {
                    return const Text('No comments yet');
                  }
                  return Expanded(
                    child: ListView.builder(
                      controller: scrollController,
                      itemCount: comment.length,
                      itemBuilder: (context, index) {
                        FeedCommentModel value = comment[index];
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(value.photo ?? ""),
                          ),
                          title: Text(value.name ?? "",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text(value.comment ?? ""),
                        );
                      },
                    ),
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stack) => Center(child: Text('Error: $error')),
              ),
              // Comment Input Section
              TextField(
                controller: _commentcontroller,
                decoration: InputDecoration(
                  hintText: "Add a comment...",
                  border: InputBorder.none,
                  suffixIcon: _isLoading
                      ? const CircularProgressIndicator()
                      : IconButton(
                          icon: const Icon(Icons.send, color: Colors.blue),
                          onPressed: () async {
                            if (_commentcontroller.text.isNotEmpty) {
                              setState(() {
                                _isLoading = true;
                              });

                              // Optimistically add the comment to the UI
                              final newComment = FeedCommentModel(
                                name: "You",
                                comment: _commentcontroller.text,
                                photo: "", // Provide the photo URL
                              );

                              // Post the comment
                              ref
                                  .watch(postcommentProvider(
                                      widget.id, _commentcontroller.text))
                                  .whenData((value) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text(value)));
                              });

                              setState(() {
                                _isLoading = false;
                              });

                              // Clear the input field
                              _commentcontroller.text = '';

                              // Trigger a rebuild of the comment list by refreshing the provider
                              ref.refresh(getfeedcommentProvider(widget.id));
                            }
                          },
                        ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
