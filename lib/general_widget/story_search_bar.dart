// // import 'package:flutter/material.dart';
// // import 'package:flutter_screenutil/flutter_screenutil.dart';
// //
// // class StorySearchBar extends StatelessWidget {
// //   final VoidCallback onClose;
// //
// //   const StorySearchBar({Key? key, required this.onClose}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       margin: EdgeInsets.symmetric(horizontal: 16.w),
// //       padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
// //       decoration: BoxDecoration(
// //         color: Colors.white,
// //         borderRadius: BorderRadius.circular(12.r),
// //         boxShadow: [
// //           BoxShadow(
// //             color: Colors.black12,
// //             blurRadius: 4.r,
// //             offset: const Offset(0, 2),
// //           ),
// //         ],
// //       ),
// //       child: Column(
// //         children: [
// //           Row(
// //             children: [
// //               SizedBox(width: 330.w),
// //               GestureDetector(
// //                 onTap: onClose,
// //                 child: const Icon(
// //                   Icons.close,
// //                   color: Colors.black,
// //                 ),
// //               ),
// //             ],
// //           ),
// //           // Wrap TextField with SizedBox to control dimensions
// //           SizedBox(
// //             height: 50.h, // Control height
// //             width: 300.w, // Control width (full width in this case)
// //             child: TextField(
// //               decoration: InputDecoration(
// //                 hintText: 'Story Search .....',
// //                 hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
// //                 border: OutlineInputBorder(
// //                   borderSide: const BorderSide(color: Color(0xFF090909)),
// //                   borderRadius: BorderRadius.circular(8.r),
// //                 ),
// //                 // Remove vertical content padding since we're controlling height from outside
// //                 contentPadding: EdgeInsets.symmetric(
// //                   horizontal: 12.w,
// //                 ),
// //                 suffixIcon: Container(
// //                   width: 50.w, // Control search icon width
// //                   decoration: BoxDecoration(
// //                     color: Colors.black,
// //                     borderRadius: BorderRadius.horizontal(right: Radius.circular(7.r)),
// //                   ),
// //                   child: IconButton(
// //                     onPressed: () {
// //                       // Search logic can go here
// //                     },
// //                     icon: const Icon(
// //                       Icons.search,
// //                       color: Colors.white,
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
//
//
//
//
//
//
//
//
//
//
//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// class StorySearchBar extends StatefulWidget {
//   final VoidCallback onClose;
//
//   const StorySearchBar({Key? key, required this.onClose}) : super(key: key);
//
//   @override
//   State<StorySearchBar> createState() => _StorySearchBarState();
// }
//
// class _StorySearchBarState extends State<StorySearchBar> {
//   List<dynamic> _filteredStories = [];
//   final TextEditingController _searchController = TextEditingController();
//   Map<String, dynamic> _homeStory = {};
//
//   @override
//   void initState() {
//     super.initState();
//     _fetchStories();
//   }
//
//   Future<void> _fetchStories() async {
//     const apiUrl = 'https://smartbazaar.jianjun-rnd.com.np/api/homeSections';
//     try {
//       final response = await http.get(Uri.parse(apiUrl));
//       if (response.statusCode == 200) {
//         final data = json.decode(response.body);
//         setState(() {
//           _homeStory = data['home_story'] ?? {};
//         });
//       } else {
//         print('Failed to load data');
//       }
//     } catch (e) {
//       print('Error: $e');
//     }
//   }
//
//   void _filterStories(String query) {
//     if (query.isEmpty) {
//       setState(() {
//         _filteredStories = [];
//       });
//       return;
//     }
//
//     final results = _homeStory.entries
//         .where((entry) =>
//         (entry.value['vendor_name'] as String)
//             .toLowerCase()
//             .contains(query.toLowerCase()))
//         .map((entry) => entry.value)
//         .toList();
//
//     setState(() {
//       _filteredStories = results;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 16.w),
//       padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12.r),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black12,
//             blurRadius: 4.r,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               SizedBox(width: 330.w),
//               GestureDetector(
//                 onTap: widget.onClose,
//                 child: const Icon(
//                   Icons.close,
//                   color: Colors.black,
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 50.h,
//             width: 300.w,
//             child: TextField(
//               controller: _searchController,
//               onChanged: _filterStories,
//               decoration: InputDecoration(
//                 hintText: 'Story Search .....',
//                 hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
//                 border: OutlineInputBorder(
//                   borderSide: const BorderSide(color: Color(0xFF090909)),
//                   borderRadius: BorderRadius.circular(8.r),
//                 ),
//                 contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
//                 suffixIcon: Container(
//                   width: 50.w,
//                   decoration: BoxDecoration(
//                     color: Colors.black,
//                     borderRadius:
//                     BorderRadius.horizontal(right: Radius.circular(7.r)),
//                   ),
//                   child: IconButton(
//                     onPressed: () => _filterStories(_searchController.text),
//                     icon: const Icon(
//                       Icons.search,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 10.h),
//           Expanded(
//             child: _filteredStories.isEmpty
//                 ? Center(
//               child: Text(
//                 'No stories found',
//                 style: TextStyle(color: Colors.grey, fontSize: 14.sp),
//               ),
//             )
//                 : ListView.builder(
//               itemCount: _filteredStories.length,
//               itemBuilder: (context, index) {
//                 final story = _filteredStories[index];
//                 final posts = story['posts'] as List<dynamic>;
//                 return Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       story['vendor_name'],
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16.sp,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 100.h,
//                       child: ListView.builder(
//                         scrollDirection: Axis.horizontal,
//                         itemCount: posts.length,
//                         itemBuilder: (context, postIndex) {
//                           final post = posts[postIndex];
//                           return GestureDetector(
//                             onTap: () {
//                               // Handle viewing the story
//                               print('Clicked on story: ${post['title']}');
//                             },
//                             child: Padding(
//                               padding: EdgeInsets.all(8.w),
//                               child: Image.network(
//                                 post['image'],
//                                 height: 80.h,
//                                 width: 80.w,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                   ],
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }









// method one

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'dart:convert'; // For JSON decoding
// import 'package:http/http.dart' as http; // For HTTP requests
//
// class StorySearchBar extends StatefulWidget {
//   final VoidCallback onClose;
//
//   const StorySearchBar({Key? key, required this.onClose}) : super(key: key);
//
//   @override
//   State<StorySearchBar> createState() => _StorySearchBarState();
// }
//
// class _StorySearchBarState extends State<StorySearchBar> {
//   String searchQuery = '';
//   List<Story> filteredStories = [];
//   bool isLoading = false;
//
//   Future<void> fetchStories(String vendorName) async {
//     setState(() {
//       isLoading = true;
//       filteredStories = [];
//     });
//
//     final url = Uri.parse('https://smartbazaar.jianjun-rnd.com.np/api/homeSections');
//     final requestBody = jsonEncode({"vendor_name": vendorName});
//
//     try {
//       final response = await http.post(
//         url,
//         headers: {
//           'Content-Type': 'application/json',
//           'Accept': 'application/json',
//         },
//         body: requestBody,
//       );
//
//       if (response.statusCode == 200) {
//         final List<dynamic> data = jsonDecode(response.body);
//         setState(() {
//           filteredStories = data.map((story) => Story.fromJson(story)).toList();
//         });
//       } else {
//         // Handle non-200 response
//         setState(() {
//           filteredStories = [];
//         });
//       }
//     } catch (e) {
//       // Handle errors (e.g., network issues)
//       setState(() {
//         filteredStories = [];
//       });
//     } finally {
//       setState(() {
//         isLoading = false;
//       });
//     }
//   }
//
//   void viewStory(String imageUrl) {
//     showDialog(
//       context: context,
//       builder: (context) => Dialog(
//         child: Container(
//           width: 300.w,
//           height: 400.h,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: NetworkImage(imageUrl),
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 16.w),
//       padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12.r),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black12,
//             blurRadius: 4.r,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               SizedBox(width: 330.w),
//               GestureDetector(
//                 onTap: widget.onClose,
//                 child: const Icon(
//                   Icons.close,
//                   color: Colors.black,
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 50.h,
//             width: 300.w,
//             child: TextField(
//               onChanged: (value) {
//                 searchQuery = value;
//               },
//               decoration: InputDecoration(
//                 hintText: 'Story Search .....',
//                 hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
//                 border: OutlineInputBorder(
//                   borderSide: const BorderSide(color: Color(0xFF090909)),
//                   borderRadius: BorderRadius.circular(8.r),
//                 ),
//                 contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
//                 suffixIcon: Container(
//                   width: 50.w,
//                   decoration: BoxDecoration(
//                     color: Colors.black,
//                     borderRadius:
//                     BorderRadius.horizontal(right: Radius.circular(7.r)),
//                   ),
//                   child: IconButton(
//                     onPressed: () => fetchStories(searchQuery),
//                     icon: const Icon(
//                       Icons.search,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 16.h),
//           if (isLoading)
//             const CircularProgressIndicator()
//           else if (filteredStories.isEmpty)
//             const Center(child: Text('No stories found'))
//           else
//             Expanded(
//               child: GridView.builder(
//                 itemCount: filteredStories.length,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 3,
//                   crossAxisSpacing: 8.w,
//                   mainAxisSpacing: 8.h,
//                 ),
//                 itemBuilder: (context, index) {
//                   final story = filteredStories[index];
//                   return GestureDetector(
//                     onTap: () => viewStory(story.image),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(8.r),
//                         image: DecorationImage(
//                           image: NetworkImage(story.image),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }
//
// class Story {
//   final String id;
//   final String image;
//   final String title;
//
//   Story({
//     required this.id,
//     required this.image,
//     required this.title,
//   });
//
//   factory Story.fromJson(Map<String, dynamic> json) {
//     return Story(
//       id: json['id'] ?? '',
//       image: json['image'] ?? '',
//       title: json['title'] ?? '',
//     );
//   }
// }












// method two




// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// class StorySearchBar extends StatefulWidget {
//   final VoidCallback onClose;
//
//   const StorySearchBar({Key? key, required this.onClose}) : super(key: key);
//
//   @override
//   State<StorySearchBar> createState() => _StorySearchBarState();
// }
//
// class _StorySearchBarState extends State<StorySearchBar> {
//   String searchQuery = '';
//   List<Story> filteredStories = [];
//   bool isLoading = false;
//
//   Future<void> fetchStories(String vendorName) async {
//     setState(() {
//       isLoading = true;
//       filteredStories = [];
//     });
//
//     final url = Uri.parse('https://6le3z7icgf.execute-api.us-east-1.amazonaws.com/prod/stories');
//     final requestBody = jsonEncode({"vendor_name": vendorName});
//
//     try {
//       final response = await http.post(
//         url,
//         headers: {
//           'Content-Type': 'application/json',
//           'Accept': 'application/json',
//         },
//         body: requestBody,
//       );
//
//       if (response.statusCode == 200) {
//         final List<dynamic> data = jsonDecode(response.body);
//         setState(() {
//           filteredStories = data.map((story) => Story.fromJson(story)).toList();
//         });
//       } else {
//         // Handle non-200 responses
//         setState(() {
//           filteredStories = [];
//         });
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('No stories found for "$vendorName".')),
//         );
//       }
//     } catch (e) {
//       // Handle network errors
//       setState(() {
//         filteredStories = [];
//       });
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Failed to fetch stories. Please try again.')),
//       );
//     } finally {
//       setState(() {
//         isLoading = false;
//       });
//     }
//   }
//
//   void viewStory(String imageUrl) {
//     showDialog(
//       context: context,
//       builder: (context) => Dialog(
//         child: Container(
//           width: 300.w,
//           height: 400.h,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: NetworkImage(imageUrl),
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 16.w),
//       padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12.r),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black12,
//             blurRadius: 4.r,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               SizedBox(width: 330.w),
//               GestureDetector(
//                 onTap: widget.onClose,
//                 child: const Icon(
//                   Icons.close,
//                   color: Colors.black,
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 50.h,
//             width: 300.w,
//             child: TextField(
//               onChanged: (value) {
//                 searchQuery = value;
//               },
//               decoration: InputDecoration(
//                 hintText: 'Enter Vendor Name',
//                 hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
//                 border: OutlineInputBorder(
//                   borderSide: const BorderSide(color: Color(0xFF090909)),
//                   borderRadius: BorderRadius.circular(8.r),
//                 ),
//                 contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
//                 suffixIcon: Container(
//                   width: 50.w,
//                   decoration: BoxDecoration(
//                     color: Colors.black,
//                     borderRadius:
//                     BorderRadius.horizontal(right: Radius.circular(7.r)),
//                   ),
//                   child: IconButton(
//                     onPressed: () => fetchStories(searchQuery),
//                     icon: const Icon(
//                       Icons.search,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 16.h),
//           if (isLoading)
//             const CircularProgressIndicator()
//           else if (filteredStories.isEmpty)
//             const Center(child: Text('No stories found'))
//           else
//             Expanded(
//               child: GridView.builder(
//                 itemCount: filteredStories.length,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 3,
//                   crossAxisSpacing: 8.w,
//                   mainAxisSpacing: 8.h,
//                 ),
//                 itemBuilder: (context, index) {
//                   final story = filteredStories[index];
//                   return GestureDetector(
//                     onTap: () => viewStory(story.image),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(8.r),
//                         image: DecorationImage(
//                           image: NetworkImage(story.image),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }
//
// class Story {
//   final String id;
//   final String image;
//   final String title;
//
//   Story({
//     required this.id,
//     required this.image,
//     required this.title,
//   });
//
//   factory Story.fromJson(Map<String, dynamic> json) {
//     return Story(
//       id: json['id'] ?? '',
//       image: json['image'] ?? '',
//       title: json['title'] ?? '',
//     );
//   }
// }







// method three








import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class StorySearchBar extends StatefulWidget {
  final VoidCallback onClose;

  const StorySearchBar({Key? key, required this.onClose}) : super(key: key);

  @override
  State<StorySearchBar> createState() => _StorySearchBarState();
}

class _StorySearchBarState extends State<StorySearchBar> {
  String searchQuery = '';
  List<StoryList> filteredStories = [];
  bool isLoading = false;
  Timer? debounceTimer;

  Future<void> fetchStories(String vendorName) async {
    if (vendorName.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a vendor name.')),
      );
      return;
    }

    setState(() {
      isLoading = true;
      filteredStories = [];
    });

    final url = Uri.parse('https://6le3z7icgf.execute-api.us-east-1.amazonaws.com/prod/stories');
    final requestBody = jsonEncode({"vendor_name": vendorName.trim().toLowerCase()});

    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: requestBody,
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        setState(() {
          filteredStories = data.map((story) => StoryList.fromJson(story)).toList();
        });
        if (filteredStories.isEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('No stories found for "$vendorName".')),
          );
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to fetch stories.')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Network error. Please try again.')),
      );
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

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
              onChanged: (value) {
                if (debounceTimer?.isActive ?? false) debounceTimer?.cancel();
                debounceTimer = Timer(const Duration(milliseconds: 500), () {
                  setState(() {
                    searchQuery = value;
                  });
                  fetchStories(searchQuery);
                });
              },
              decoration: InputDecoration(
                hintText: 'Enter Vendor Name',
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
                    onPressed: () => fetchStories(searchQuery),
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 16.h),
          if (isLoading)
            const CircularProgressIndicator()
          else if (filteredStories.isEmpty)
            const Center(child: Text('No stories found'))
          else
            Expanded(
              child: GridView.builder(
                itemCount: filteredStories.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8.w,
                  mainAxisSpacing: 8.h,
                ),
                itemBuilder: (context, index) {
                  final story = filteredStories[index];
                  return GestureDetector(
                    onTap: () => viewStory(story.image),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        image: DecorationImage(
                          image: NetworkImage(story.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}

class StoryList {
  final String id;
  final String image;
  final String title;

  StoryList({
    required this.id,
    required this.image,
    required this.title,
  });

  factory StoryList.fromJson(Map<String, dynamic> json) {
    return StoryList(
      id: json['id'] ?? '',
      image: json['image'] ?? '',
      title: json['title'] ?? '',
    );
  }
}



