import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/features/auth/view/login_screen.dart';
import 'package:smartbazar/features/feed_page/api/feed_gift_card_api.dart';
import 'package:smartbazar/features/feed_page/api/list_comment_feed_api.dart';
import 'package:smartbazar/features/feed_page/api/post_feed_wow_api.dart';
import 'package:smartbazar/features/feed_page/model/list_comment_of_feed.dart';
import 'package:smartbazar/features/feed_page/view/add_comment_provider.dart';
import 'package:smartbazar/features/feed_page/widget/feed_page_pop_up.dart';
import 'package:smartbazar/features/message/api/message_thread_api.dart';
import 'package:smartbazar/features/message/api/message_thread_provider.dart';
import 'package:smartbazar/features/message/model/message_thread_model.dart';
import 'package:smartbazar/features/message/view/chat_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';

class FeedContainer extends ConsumerStatefulWidget {
  const FeedContainer(
      {super.key,
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
      required this.isLiked,
      required this.refreshprovider,
      required this.productinfo});

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
  final String? isLiked;
  final String? productinfo;
  final VoidCallback? refreshprovider;

  // final UserDetail? userDetails;
  // final Interested? interested;
  // final FeedDetail? feedDetail;
  @override
  ConsumerState<FeedContainer> createState() => _FeedContainerState();
}

class _FeedContainerState extends ConsumerState<FeedContainer> {
  bool? _isLiked;
  bool _isLoading = false;

  int _likeCount = 0;
  List<ThreadData>? messageList;

  void _showBottomSheet(BuildContext context, String imgurl) {
    if (messageList != null) {
      showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),
        builder: (context) {
          return ListView(
            shrinkWrap: true,
            children: List.generate(messageList!.length, (index) {
              ThreadData msg = messageList![index];
              return ListTile(
                title: Text(msg.subject!),
                onTap: () {
                  Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute(
                      builder: (context) => ChatScreen(
                        threadId: msg.id.toString(),
                        username: msg.subject!,
                        postId: msg.postId!,
                        imageUrl: imgurl,
                        //  isImportant: isImportant,
                      ),
                    ),
                  );
                  Navigator.pop(context); // Close the bottom sheet
                },
              );
            }),
          );
        },
      );
    }
  }

  void _showCommentSection(BuildContext context, String feedproductid) {
    showModalBottomSheet(
        useRootNavigator: true,
        useSafeArea: true,
        context: context,
        isScrollControlled: true, // Allows full-screen modal
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        builder: (_) {
          return LayoutBuilder(
            builder: (context, _) {
              return AnimatedContainer(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                duration: const Duration(milliseconds: 150),
                height:
                    MediaQuery.of(context).size.height, // Full screen height
                child: CommentSection(id: feedproductid),
              );
            },
          );
        });
  }

  void _shareImage(String imageUrl, String bio) {
    if (imageUrl.isNotEmpty) {
      Share.share("It's about $bio\n : $imageUrl", subject: bio);
    } else {
      print("No image URL provided.");
    }
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
  void initState() {
    // TODO: implement initState
    _isLiked = widget.isLiked == "0" ? true : false;
    // print("pinky ${_isLiked} and ${widget.isLiked}");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final feedGiftCardFuture =
        ref.watch(getFeedGiftCardProvider(widget.userId));
    final currentfilter = ref.watch(messageFilterStateProvider);

    final messageThreadProvider =
        ref.watch(getMessageThreadProvider(filter: currentfilter)).whenData(
      (value) async {
        // print("rajukt ${value}");
        messageList = value.result?.data;
      },
    );

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
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VendorHomeScreen(
                                  vid: int.tryParse(widget.userId)!,
                                  vendorName: widget.vendorName!),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, top: 3, bottom: 3, right: 8),
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
                                      loadingBuilder:
                                          (context, child, loadingProgress) {
                                        if (loadingProgress == null) {
                                          return child;
                                        }
                                        return Shimmer.fromColors(
                                          baseColor: Colors.grey[300]!,
                                          highlightColor: Colors.grey[100]!,
                                          child: Container(
                                            width: 52,
                                            height: 52,
                                            color: Colors.white,
                                          ),
                                        );
                                      },
                                      errorBuilder:
                                          (context, error, stackTrace) {
                                        return GestureDetector(
                                          onTap: () {
                                            setState(
                                                () {}); // Retry fetching the image on tap
                                          },
                                          child:
                                              Icon(Icons.refresh, size: 24.sp),
                                        );
                                      },
                                    )
                                  : Icon(Icons.person, size: 24.sp),
                            ),
                          ),
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
                                    // print("pinky $feedCardData");
                                    return showCustomBottomSheet(
                                        context, feedCardData);
                                  },
                                  error: (error, stackTrace) =>
                                      const Text("Please login again"),
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
                                widget.refreshprovider?.call();
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

              InkWell(
                onTap: () {
                  Navigator.of(context, rootNavigator: true)
                      .push(MaterialPageRoute(
                    builder: (context) => FullscreenImageView(
                      imagePath: widget.feedDetailImage ?? '',
                    ),
                  ));
                },
                child: ClipRRect(
                  child: Image.network(
                    widget.feedDetailImage ?? '',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      } else {
                        return Shimmer.fromColors(
                          baseColor: Colors.grey[300]!,
                          highlightColor: Colors.grey[100]!,
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            color: Colors.white,
                          ),
                        );
                      }
                    },
                    errorBuilder: (context, error, stackTrace) {
                      setState(() {});
                      return SizedBox(
                        width: 130.w,
                        height: 70.h,
                        child: Icon(Icons.error),
                      );
                    },
                  ),
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
                    widget.refreshprovider?.call();

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
                        if (!mounted) return;

                        print("Liked!");

                        setState(() {
                          _isLoading = true;
                        });

                        try {
                          // Await the API response
                          final asyncResult = await ref
                              .read(postFeedWowProvider(widget.feedId).future);

                          // Force the provider to refresh
                          ref.invalidate(postFeedWowProvider);

                          // Ensure _isLiked is not null before updating
                          if (_isLiked != null) {
                            setState(() {
                              _isLiked = !_isLiked!;
                              _likeCount += _isLiked! ? 1 : -1;
                            });
                          } else {
                            print("Error: _isLiked is null");
                          }
                        } catch (e) {
                          print('Error: $e');
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Error liking post: $e')),
                          );
                        } finally {
                          setState(() {
                            _isLoading = false;
                          });
                        }
                        // widget.refreshprovider?.call();
                      },
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  _isLiked == true ? Colors.grey : Colors.white,
                                  Colors.pink
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              shape: BoxShape.circle,
                            ),
                            padding: const EdgeInsets.all(8),
                            child: Image.asset(
                              'assets/icon/heart.png',
                              color:
                                  _isLiked == true ? Colors.white : Colors.red,
                            ),
                          ),
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

                    messageThreadProvider.when(
                      data: (data) {
                        return GestureDetector(
                          onTap: () {
                            _showBottomSheet(context, widget.feedDetailImage!);
                          },
                          child: Row(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle, // Circular container
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.blue,
                                      Colors.green
                                    ], // Define gradient colors
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
                              ),
                            ],
                          ),
                        );
                      },
                      error: (error, stackTrace) => InkWell(
                        onTap: () {
                          Navigator.of(context, rootNavigator: true)
                              .pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                            (route) => false,
                          );
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle, // Circular container
                            gradient: LinearGradient(
                              colors: [
                                Colors.blue,
                                Colors.green
                              ], // Define gradient colors
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
                        ),
                      ),
                      loading: () => Shimmer.fromColors(
                        baseColor: Colors.grey[300]!,
                        highlightColor: Colors.grey[100]!,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 15.w),
                    // Share Icon
                    GestureDetector(
                        onTap: () {
                          _shareImage(widget.feedDetailImage!,
                              widget.productinfo ?? 'info');
                          // Share.share('Share this ${widget.feedDetailImage}');
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
                              print('bibash ${widget.feedId}');
                              // ref.watch(postFeedWowProvider())
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
                error: (error, stack) =>
                    const Center(child: Text('Please login again')),
              ),
              // Comment Input Section
              TextField(
                controller: _commentcontroller,
                keyboardType: TextInputType.text,
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

                              await ref.read(postcommentProvider(
                                      widget.id, _commentcontroller.text)
                                  .future);

                              ref.invalidate(getfeedcommentProvider(widget.id));

                              _commentcontroller.clear();

                              setState(() {
                                _isLoading = false;
                              });
                            }
                          }),
                ),
              ),
              SizedBox(
                height: 5.h,
              )
            ],
          ),
        );
      },
    );
  }
}
