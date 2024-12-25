import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/feed_page/api/get_feed_of_following_api.dart';
import 'package:smartbazar/features/feed_page/api/get_following_story_api.dart';
import 'package:smartbazar/features/feed_page/api/get_for_you_feed_api.dart';
import 'package:smartbazar/features/feed_page/api/get_for_you_story_api.dart';
import 'package:smartbazar/features/feed_page/widget/feed_container.dart';
import 'package:smartbazar/features/feed_page/widget/feed_story_add_widget.dart';
import 'package:smartbazar/features/feed_page/widget/promo_card.dart';
import 'package:smartbazar/features/feed_page/widget/story_add_widget.dart';
import 'package:smartbazar/features/home/view/header.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class FeedScreen extends ConsumerWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();
    return DefaultTabController(
      length: 2, // Two tabs: "Following" and "For You"
      child: GenericSafeArea(
        child: Scaffold(
          extendBody: true,
          key: _key,
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              // Gradient Header Section
              Container(
                height: 170,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF392574),
                      Color(0xFF681b4e),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    Row(
                      children: [
                        const SizedBox(width: 10),
                        const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10.w),
                        SizedBox(
                            height: 50,
                            child: NewSearchWidget(
                              onchnage: (p0) {},
                            )),
                      ],
                    ),
                    SizedBox(height: 30.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildHeaderIcon(openCart, "Shopping"),
                        SizedBox(width: 25.w),
                        _buildHeaderIcon(servicesIcon, "Services"),
                        SizedBox(width: 25.w),
                        _buildHeaderIcon(jobIcon, "TradeHub"),
                      ],
                    )
                  ],
                ),
              ),
              // Tab Bar Section
              const TabBar(
                indicatorColor: Color(0xFF392574),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(text: "Following"),
                  Tab(text: "For You"),
                ],
              ),
              // Tab Bar View Section
              Expanded(
                child: TabBarView(
                  children: [
                    // "Following" Tab Content
                    _buildFollowingTabContent(ref),
                    // "For You" Tab Content
                    _buildForYouTabContent(ref),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper Method to Build Header Icons
  Widget _buildHeaderIcon(String assetPath, String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          assetPath,
          colorFilter: const ColorFilter.mode(
            Colors.white,
            BlendMode.srcIn,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  // Following Tab Content
  Widget _buildFollowingTabContent(WidgetRef ref) {
    final asyncFollowingFeedContent = ref.watch(getFeedOfFollowingProvider);
    final asyncFollowingStoryContent = ref.watch(getFollowingStoryProvider);

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 30.h),
          SizedBox(
            height: 100,
            child: Row(
              children: [
                // Stack(
                //   clipBehavior: Clip.none,
                //   alignment: Alignment.center,
                //   children: [
                //     Positioned(
                //       child: Stack(
                //         clipBehavior: Clip.none,
                //         alignment: Alignment.center,
                //         children: [
                //           Container(
                //             margin: EdgeInsets.symmetric(horizontal: 5.w),
                //             width: 95.r,
                //             height: 95.r,
                //             decoration: BoxDecoration(
                //               border: Border.all(
                //                   width: 3.w, color: const Color(0xffEACACB)),
                //               shape: BoxShape.circle,
                //             ),
                //           ),
                //           Container(
                //             decoration: BoxDecoration(
                //               border:
                //                   Border.all(width: 1.w, color: Colors.black),
                //               shape: BoxShape.circle,
                //             ),
                //             child: CircleAvatar(
                //               radius: 38.r,
                //               backgroundColor:
                //                   const Color(0x7F7F7F73).withOpacity(0.45),
                //               backgroundImage: NetworkImage(
                //                 'https://smartbazaar.jianjun-rnd.com.np/storage/files/np/947/11ce743037dbc695f81557faf3d959de.png',
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //       // child: Image.asset(
                //       //   fit: BoxFit.cover,
                //       //   height: 120,
                //       //   "assets/images/subscribe.png",
                //       // ),
                //     ),
                //     Positioned(
                //       bottom: -7,
                //       right: 1,
                //       left: 1,
                //       child: Container(
                //         decoration: const BoxDecoration(
                //           color: Colors.grey,
                //           shape: BoxShape.circle,
                //         ),
                //         child: const Icon(Icons.add),
                //       ),
                //     ),
                //   ],
                // ),
                asyncFollowingFeedContent.when(
                  data: (feedData) {
                   
                    if (feedData.data != null && feedData.data!.story != null) {
                      final feedStoryItems = feedData.data!.story!;
                      final feedDataUserId = feedData.data!.feedPost;
                      return asyncFollowingStoryContent.when(
                        data: (feedStoryData) {
                          final feedStoryContent =
                              feedStoryData.data!.feedstory;

                          return Expanded(
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: feedStoryItems.feedStory!.length,
                              itemBuilder: (context, index) {
                                // if (feedData.data!.feedPost == null ||
                                //     feedData.data!.feedPost![index] == null) {
                                //   return const Center(
                                //       child: Text('No user ID available'));
                                // }
                                // final userId =
                                //     feedData.data!.feedPost![index].userId ??
                                //         '';
                                return FeedStoryAddWidget(
                                  index: index,
                                  vendorName: feedStoryItems
                                      .feedStory![index].vendorName,
                                  vendorImage: feedStoryItems
                                      .feedStory![index].vendorImage,
                                  storyCount: feedStoryItems
                                      .feedStory![index].storyCount,
                                  showGift: feedStoryItems
                                      .feedStory![index].hasSponsoredGifts,
                                  feedStoryContent: feedStoryContent,
                                  userId: '166',
                                );
                              },
                            ),
                          );
                        },
                        loading: () =>
                            const Center(child: CircularProgressIndicator()),
                        error: (error, stack) =>
                            Center(child: Text('Error: $error')),
                      );
                    } else {
                      return const Center(child: Text('No story available'));
                    }
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (error, stack) => Center(child: Text('Error: $error')),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          asyncFollowingFeedContent.when(
            data: (feedData) {
              if (feedData.data != null && feedData.data!.feedPost != null) {
                final feedItems = feedData.data!.feedPost!;
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: feedItems.length,
                  itemBuilder: (context, index) {
                    final feedItem = feedItems[index];
                    final userDetails = feedItem.userDetail;
                    final interested = feedItem.interested;
                    final feedDetail = feedItem.feedDetail;

                    // return _buildFeedItem(feedItems[index]);
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FeedContainer(
                            productCount: userDetails!.productCount.toString(),
                            suscribers: userDetails.subscribers.toString(),
                            vendorName: userDetails.vendorName!,
                            vendorImage: userDetails.vendorImage!,
                            livePrize: userDetails.livePrize.toString(),
                            distance: userDetails.distance?.toStringAsFixed(0),
                            interested: interested?.interested?.toString(),
                            engagement: interested?.engagement?.toString(),
                            views: interested?.views,
                            feedDetailImage: feedDetail!.image!,
                            membershipTitle: userDetails.membershipTitle ?? '',
                            membershipId: userDetails.membershipId ?? '',
                            showGift: userDetails.hasSponsoredGifts ?? false,
                            userId: feedItem.userId ?? '',
                            //feedDetail: feedItem.feedDetail,
                          ),
                          PromoCard(
                            products: feedItem.products!
                                .map((product) => {
                                      "imagePath": product.image ??
                                          "https://smartbazaar.jianjun-rnd.com.np/uploads/smartbazaar_app_loading_logo.png",
                                      "price": product.price! ?? "N/A",
                                    })
                                .toList(),
                            captionTitle: '${feedItem.captionTitle}',
                            caption: feedItem.caption ?? '',
                            offerText: feedItem.offers ?? 'Special Offer!',
                          ),
                          // SizedBox(height: 18.h),
                          // PromoCard(
                          //   offers: feedItem.offers!,
                          //   feedItem: feedItem,
                          // ),
                          // _buildUserDetails(feedItem.userDetail),
                          // SizedBox(height: 8.h),
                          // _buildFeedContent(feedItem),
                          // SizedBox(height: 8.h),
                          // _buildEngagementSection(feedItem),
                        ],
                      ),
                    );
                  },
                );
              } else {
                return const Center(child: Text('No feed items available'));
              }
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stack) => Center(child: Text('Error: $error')),
          ),
          //const FeedContainer(),
        ],
      ),
    );
  }

  // For You Tab Content
  Widget _buildForYouTabContent(WidgetRef ref) {
    final asyncForYouFeedContent = ref.watch(getForYouFeedApiProvider);
    final asyncForYouStoryContent = ref.watch(getForYouStoryProvider);
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20.h),
          SizedBox(
            height: 100,
            child: Row(
              children: [
                // Stack(
                //   children: [
                //     Positioned(
                //       child: Image.asset(
                //         fit: BoxFit.cover,
                //         height: 120,
                //         "assets/images/subscribe.png",
                //       ),
                //     ),
                //     Positioned(
                //       bottom: 12,
                //       right: 1,
                //       left: 1,
                //       child: Container(
                //         decoration: const BoxDecoration(
                //           color: Colors.white,
                //           shape: BoxShape.circle,
                //         ),
                //         child: const Icon(Icons.add),
                //       ),
                //     ),
                //   ],
                // ),
                asyncForYouFeedContent.when(
                  data: (feedData) {
                    if (feedData.data != null && feedData.data!.story != null) {
                      final feedStoryItems = feedData.data!.story!;
                      return asyncForYouStoryContent.when(
                        data: (feedStoryData) {
                          final feedStoryContent =
                              feedStoryData.data?.feedstory;
                          return Expanded(
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount:
                                  feedStoryData.data!.feedstory!.posts!.length,
                              itemBuilder: (context, index) {
                                final story = feedStoryData
                                    .data!.feedstory!.posts![index];
                                return FeedStoryAddWidget(
                                  index: index,
                                  vendorName:
                                      story.vendorName ?? "Unknown Vendor",
                                  vendorImage: story.vendorImage ??
                                      "https://example.com/default-image.png",
                                  storyCount: story.storyCount ?? 0,
                                  showGift: story.hasSponsoredGifts ?? false,
                                  feedStoryContent: feedStoryContent,
                                  userId:
                                      // feedData.data!.feedPost![index].userId ??
                                          '166',
                                );
                              },
                            ),
                          );
                        },
                        loading: () =>
                            const Center(child: CircularProgressIndicator()),
                        error: (error, stack) =>
                            Center(child: Text('Error: $error')),
                      );
                    } else {
                      return const Center(child: Text('No story available'));
                    }
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (error, stack) => Center(child: Text('Error: $error')),
                )

                // Expanded(
                //   child: ListView.builder(
                //     padding: EdgeInsets.zero,
                //     shrinkWrap: true,
                //     scrollDirection: Axis.horizontal,
                //     itemCount: 2,
                //     itemBuilder: (context, index) {
                //       return StoryAddWidget(
                //         index: index,
                //         showgift: true,
                //       );
                //     },
                //   ),
                // )
              ],
            ),
          ),
          SizedBox(height: 20.h),
          asyncForYouFeedContent.when(
            data: (feedData) {
              if (feedData.data != null && feedData.data!.feedPost != null) {
                final feedItems = feedData.data!.feedPost!;
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: feedItems.length,
                  itemBuilder: (context, index) {
                    final feedItem = feedItems[index];
                    final userDetails = feedItem.userDetail;
                    final interested = feedItem.interested;
                    final feedDetail = feedItem.feedDetail;

                    // return _buildFeedItem(feedItems[index]);
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FeedContainer(
                            productCount: userDetails!.productCount.toString(),
                            suscribers: userDetails.subscribers.toString(),
                            vendorName: userDetails.vendorName!,
                            vendorImage: userDetails.vendorImage!,
                            livePrize: userDetails.livePrize.toString(),
                            distance: userDetails.distance?.toStringAsFixed(0),
                            interested: interested?.interested?.toString(),
                            engagement: interested?.engagement?.toString(),
                            views: interested?.views,
                            feedDetailImage: feedDetail!.image!,
                            membershipTitle: userDetails.membershipTitle,
                            membershipId: userDetails.membershipId ?? '',
                            showGift: userDetails.hasSponsoredGifts ?? false,
                            userId: feedItem.userId ?? '',
                            //feedDetail: feedItem.feedDetail,
                          ),
                          PromoCard(
                            products: feedItem.products!
                                .map((product) => {
                                      "imagePath": product.image ??
                                          "https://smartbazaar.jianjun-rnd.com.np/uploads/smartbazaar_app_loading_logo.png",
                                      "price": product.price ?? "N/A",
                                      "id": feedItem.id ?? "",
                                    })
                                .toList(),
                            captionTitle: '${feedItem.captionTitle}',
                            caption: feedItem.caption ?? '',
                            offerText: feedItem.offers ?? 'Special Offer!',
                          ),
                        ],
                      ),
                    );
                  },
                );
              } else {
                return const Center(child: Text('No feed items available'));
              }
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stack) => Center(child: Text('Error: $error')),
          )
          // const FeedContainer(),
          // const PromoCard(),
        ],
      ),
    );
  }
}


// class FeedScreen extends ConsumerWidget {
//   const FeedScreen({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return GenericSafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 height: 170,
//                 decoration: const BoxDecoration(
//                   borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(50),
//                       bottomRight: Radius.circular(50)),
//                   gradient: LinearGradient(colors: [
//                     Color(0xFF392574),
//                     Color(0xFF681b4e),
//                   ], begin: Alignment.topLeft, end: Alignment.bottomRight),
//                 ),
//                 child: Column(
//                   children: [
//                     const SizedBox(
//                       height: 40,
//                     ),
//                     Row(
//                       children: [
//                         const SizedBox(
//                           width: 10,
//                         ),
//                         const Icon(
//                           Icons.arrow_back_ios,
//                           color: Colors.white,
//                         ),
//                         SizedBox(
//                           width: 10.w,
//                         ),
//                         SizedBox(height: 50, child: NewSearchWidget()),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 30.h,
//                     ),
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             SvgPicture.asset(
//                               openCart,
//                               colorFilter: const ColorFilter.mode(
//                                 Colors.white,
//                                 BlendMode.srcIn,
//                               ),
//                             ),
//                             Text(
//                               "Shopping",
//                               style: TextStyle(
//                                 fontSize: 12.sp,
//                                 fontWeight: FontWeight.w700,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           width: 25.w,
//                         ),
//                         Column(
//                           children: [
//                             SvgPicture.asset(
//                               servicesIcon,
//                               //  color: Colors.white,
//                             ),
//                             Text(
//                               "Services",
//                               style: TextStyle(
//                                 fontSize: 12.sp,
//                                 fontWeight: FontWeight.w700,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           width: 25.w,
//                         ),
//                         Column(
//                           children: [
//                             SvgPicture.asset(
//                               jobIcon,
//                               colorFilter: const ColorFilter.mode(
//                                 Colors.white,
//                                 BlendMode.srcIn,
//                               ),
//                             ),
//                             Text(
//                               "TradeHub",
//                               style: TextStyle(
//                                 fontSize: 12.sp,
//                                 fontWeight: FontWeight.w700,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 30.h,
//               ),
//               //i want a tabview following and For you
//               SizedBox(
//                 height: 100,
//                 child: Row(
//                   children: [
//                     Stack(
//                       children: [
//                         Positioned(
//                             child: Image.asset(
//                                 fit: BoxFit.cover,
//                                 height: 120,
//                                 "assets/images/subscribe.png")),
//                         Positioned(
//                             bottom: 12,
//                             right: 1,
//                             left: 1,
//                             child: Container(
//                                 decoration: const BoxDecoration(
//                                   color: Colors.white,
//                                   shape: BoxShape.circle,
//                                   // borderRadius: BorderRadius.circular(1)
//                                 ),
//                                 child: const Icon(Icons.add)))
//                       ],
//                     ),
//                     Expanded(
//                       child: ListView.builder(
//                           padding: EdgeInsets.zero,
//                           shrinkWrap: true,
//                           scrollDirection: Axis.horizontal,
//                           itemCount: 2,
//                           itemBuilder: (context, index) {
//                             return StoryAddWidget(index: index);
//                           }),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 20.h,
//               ),
//               const FeedContainer(),
//               const PromoCard(),
//               SizedBox(
//                 height: 30.h,
//               ),
//               const FeedContainer(),
//               const PromoCard(),
//               SizedBox(
//                 height: 30.h,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
