import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/feed_page/api/get_feed_of_following_api.dart';
import 'package:smartbazar/features/feed_page/api/get_following_story_api.dart';
import 'package:smartbazar/features/feed_page/api/get_for_you_feed_api.dart';
import 'package:smartbazar/features/feed_page/api/get_for_you_story_api.dart';
import 'package:smartbazar/features/feed_page/model/get_feed_stories_model.dart';
import 'package:smartbazar/features/feed_page/widget/feed_container.dart';
import 'package:smartbazar/features/feed_page/widget/feed_story_add_widget.dart';
import 'package:smartbazar/features/feed_page/widget/promo_card.dart';
import 'package:smartbazar/features/home/view/header.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class FeedScreen extends ConsumerStatefulWidget {
  const FeedScreen({super.key});

  @override
  ConsumerState<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends ConsumerState<FeedScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final TextEditingController _searchController = TextEditingController();
  bool _showSearchProductModels = false;

  void _onSearchFocusChanged(bool hasFocus) {
    setState(() {
      _showSearchProductModels = hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Two tabs: "Following" and "For You"
      child: GenericSafeArea(
        child: Scaffold(
          extendBody: true,
          backgroundColor: Colors.transparent,
          key: _key,
          resizeToAvoidBottomInset: false,
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
                              searchController: _searchController,
                              ontapped: () {},
                              onchnage: (p0) {},
                              onSearchFocusChanged: _onSearchFocusChanged,
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                asyncFollowingStoryContent.when(
                  data: (feedStoryData) {
                    final feedStoryContent = feedStoryData.data?.feedstory;

                    if (feedStoryContent != null &&
                        feedStoryContent.posts != null) {
                      return Expanded(
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: feedStoryContent.posts!.length,
                          itemBuilder: (context, index) {
                            final Post story = feedStoryContent.posts![index];

                            return FeedStoryAddWidget(
                                index: index,
                                vendorName:
                                    story.vendorName ?? "Unknown Vendor",
                                vendorImage: story.vendorImage ??
                                    "https://example.com/default-image.png",
                                storyCount: story.storyCount ?? 0,
                                showGift: story.hasSponsoredGifts ?? false,
                                feedStoryContent: feedStoryContent,
                                userId: story.vendorId ?? "",
                              );
                          },
                        ),
                      );
                    } else {
                      return const Center(
                          child: Text(
                        "No stories available",
                        textAlign: TextAlign.center,
                      ));
                    }
                  },
                  loading: () => Expanded(
                      child: ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Shimmer.fromColors(
                                baseColor: Colors.grey[300]!,
                                highlightColor: Colors.grey[100]!,
                                child: Container(
                                  width: 80,
                                  height: 80,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            );
                          })),
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
                        // horizontal: 16,
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                asyncForYouStoryContent.when(
                  data: (feedStoryData) {
                    final feedStoryContent = feedStoryData.data?.feedstory;
                    if (feedStoryContent != null &&
                        feedStoryContent.posts != null) {
                      return Expanded(
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: feedStoryContent.posts?.length ?? 0,
                          itemBuilder: (context, index) {
                            final Post story = feedStoryContent.posts![index];

                            return FeedStoryAddWidget(
                              index: index,
                              vendorName: story.vendorName ?? "Unknown Vendor",
                              vendorImage: story.vendorImage ??
                                  "https://example.com/default-image.png",
                              storyCount: story.storyCount ?? 0,
                              showGift: story.hasSponsoredGifts ?? false,
                              feedStoryContent: feedStoryContent,
                              userId: story.vendorId!,
                            );
                          },
                        ),
                      );
                    } else {
                      return const Center(
                          child: Text(
                        "No stories available",
                        textAlign: TextAlign.center,
                      ));
                    }
                  },
                  loading: () => Expanded(
                      child: ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Shimmer.fromColors(
                                baseColor: Colors.grey[300]!,
                                highlightColor: Colors.grey[100]!,
                                child: Container(
                                  width: 80,
                                  height: 80,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            );
                          })),
                  error: (error, stack) {
                    if (error.toString().contains('Session has expired')) {
                      return Center(child: Text('Please log in again.'));
                    }
                    return Center(child: Text('Error: $error'));
                  },
                ),
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
                        vertical: 8.0,
                        //  horizontal: 16,
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
