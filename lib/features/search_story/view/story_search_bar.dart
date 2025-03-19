import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StorySearchBar extends StatefulWidget {
  final VoidCallback onClose;
  final TextEditingController? searchcontroller;
  final Function(String)? unchanged;
  final Function(String)? onsubmitted;
  final void Function()? onsearchpressed;

  const StorySearchBar(
      {Key? key,
      required this.onClose,
      this.searchcontroller,
      this.unchanged,
      this.onsubmitted,
      this.onsearchpressed
      })
      : super(key: key);

  @override
  State<StorySearchBar> createState() => _StorySearchBarState();
}

class _StorySearchBarState extends State<StorySearchBar> {
  String searchQuery = '';
  bool isLoading = false;
  Timer? debounceTimer;

  void viewStory(String imageUrl) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        child: Container(
          width: 300.w,
          height: 400.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4.r,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 330.w),
              GestureDetector(
                onTap: widget.onClose,
                child: const Icon(
                  Icons.close,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50.h,
            width: 300.w,
            child: TextField(
              onSubmitted: widget.onsubmitted,
              controller: widget.searchcontroller,
              onChanged: widget.unchanged,
              decoration: InputDecoration(
                hintText: 'Search Story ',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFF090909)),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
                suffixIcon: Container(
                  width: 50.w,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius:
                        BorderRadius.horizontal(right: Radius.circular(7.r)),
                  ),
                  child: IconButton(
                    onPressed:widget.onsearchpressed,
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          // SizedBox(height: 16.h),
          // if (isLoading)
          //   const CircularProgressIndicator()
          // else if (filteredStories.isEmpty)
          //   const Center(child: Text('No stories found'))
          // else
          //   Expanded(
          //     child: GridView.builder(
          //       itemCount: filteredStories.length,
          //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount: 3,
          //         crossAxisSpacing: 8.w,
          //         mainAxisSpacing: 8.h,
          //       ),
          //       itemBuilder: (context, index) {
          //         final story = filteredStories[index];
          //         return GestureDetector(
          //           onTap: () => viewStory(story.image),
          //           child: Container(
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(8.r),
          //               image: DecorationImage(
          //                 image: NetworkImage(story.image),
          //                 fit: BoxFit.cover,
          //               ),
          //             ),
          //           ),
          //         );
          //       },
          //     ),
          //   ),
        ],
      ),
    );
  }
}
