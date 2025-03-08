
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/home/model/home_story_model.dart';
import 'package:smartbazar/features/home/view/home_story_screen.dart';

class HomePageStoryContainer extends ConsumerStatefulWidget {
  final int index;
  final bool? showGift;
  final bool? addSearch;
  final String? vendorName;
  final String? vendorImage;
  final int? storyCount;
  final Story? feedStoryContent;
  final String userId;
    final VoidCallback? onsearchtapped;

  const HomePageStoryContainer({
    super.key,
    required this.index,
    this.showGift,
    this.addSearch = false,
    this.vendorName,
    this.vendorImage,
    this.storyCount,
    this.feedStoryContent,
    required this.userId,
    this.onsearchtapped
  });

  @override
  ConsumerState<HomePageStoryContainer> createState() =>
      _HomePageStoryContainerState();
}

class _HomePageStoryContainerState
    extends ConsumerState<HomePageStoryContainer> {
  // late List<Post> stories;
  // late List<String> vendors;
  // late List<String> vendorImage;
  // late List<bool> hasGift;
  // late Map<String, List<Post>> groupedStories;

  @override
  void initState() {
    super.initState();

    // Initialize stories
    // stories = widget.feedStoryContent?.posts ?? [];

    // Group stories by vendor ID
    // groupedStories = {};
    // for (var story in stories) {
    //   groupedStories.putIfAbsent(story.vendorId!, () => []).add(story);
    // }

    // Extract only one story per vendor (the first story)
    // var uniqueStories = groupedStories.values
    //     .map((vendorStories) => vendorStories.first)
    //     .toList();

    // Set the filtered list of stories
    // stories = uniqueStories;

    // // Extract unique vendors and their images
    // vendors = stories.map((story) => story.vendorName!).toList();
    // vendorImage = stories.map((story) => story.vendorImage!).toList();
    // hasGift = stories.map((story) => story.hasSponsoredGifts ?? false).toList();
  }

  @override
  Widget build(BuildContext context) {
    // final feedGiftCardFuture =
    //     ref.watch(getFeedGiftCardProvider(widget.userId));
    // print(widget.showGift);
    return GestureDetector(
      onTap: () {
        if (widget.addSearch!) {
          widget.onsearchtapped?.call();
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => HomeStoryScreen(
                selectedVendorIndex: widget.index,
                initialIndex: widget.index,
                author: widget.vendorName ?? '',
                storyCount: widget.storyCount ?? 0,
                feedStory: widget.feedStoryContent!,
              ),
            ),
          );
        }
      },
      child: Column(
        children: [
          
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                // Outer Circle
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                  width: 95.r,
                  height: 95.r,
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 3.w, color: const Color(0xffEACACB)),
                    shape: BoxShape.circle,
                  ),
                ),

                // Vendor Image

                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 38.r,
                    backgroundColor: const Color(0x7F7F7F73).withOpacity(0.45),
                    backgroundImage: NetworkImage(widget.vendorImage!),
                  ),
                ),

                // Vendor Name
                Positioned(
                  bottom: -25.h,
                  child: SizedBox(
                    width: 100.w,
                    child: Text(
                      widget.vendorName!,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 11.sp,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                widget.addSearch!
                    ? Positioned(
                        bottom: -5.h,
                        right: 0,
                        left: 0,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          padding: EdgeInsets.all(2.r),
                          child: Icon(
                            Icons.search,
                            color: const Color(0xffAA0018),
                            size: 24.r,
                          ),
                        ),
                      )
                    // : widget.showGift!
                    : (widget.showGift?? false)
                        ? Positioned(
                            bottom: -5.h,
                            right: 0,
                            left: 0,
                            child: GestureDetector(
                              onTap: () {
                                // feedGiftCardFuture.when(
                                //   data: (feedCardData) {
                                //     return showCustomBottomSheet(
                                //         context, feedCardData);
                                //   },
                                //   error: (error, stackTrace) =>
                                //       Text("error $error"),
                                //   loading: () => const Center(
                                //       child: CircularProgressIndicator()),
                                // );
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
                                  size: 24.r,
                                ),
                              ),
                            ),
                          )
                        : const SizedBox(),
              ],
            ),
        ],
      ),
    );
  }
}
