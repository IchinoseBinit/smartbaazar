import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/favourite_list/api/favourite_list_api.dart';
import 'package:smartbazar/features/favourite_list/model/favourite_product_list.dart';
import 'package:smartbazar/scratch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/favourite_list/api/favourite_list_api.dart';
import 'package:smartbazar/features/favourite_list/model/favourite_product_list.dart';
import 'package:smartbazar/features/favourite_list/view/favourite_listing_skeleton.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';


class FavouriteListingScreen extends StatefulWidget {
  @override
  _FavouriteListingScreenState createState() => _FavouriteListingScreenState();
}

class _FavouriteListingScreenState extends State<FavouriteListingScreen> {
  List<FavouriteProduct> favouriteList = [];
  bool isLoading = false;
  int pageNum = 1;
  ScrollController _scrollController = ScrollController();

  // Fetch data function
  Future<void> fetchFavouriteData() async {
    setState(() {
      isLoading = true;
    });

    try {
      final result = await getFavouriteList(context, pagenum: pageNum);
      if (result.data?.savedProducts?.data != null) {
        setState(() {
          favouriteList.addAll(result.data!.savedProducts!.data!);
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print('Error fetching data: $e');
    }
  }

  // Listen for scroll changes to detect when user reaches the bottom
  void _scrollListener() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      if (!isLoading) {
        // If we're not already loading, increment the page number and fetch more data
        setState(() {
          pageNum++;
        });
        fetchFavouriteData();
      }
    }
  }

  @override
  void initState() {
    super.initState();
    fetchFavouriteData(); // Initial data fetch
    _scrollController.addListener(_scrollListener); // Add scroll listener
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener); // Clean up scroll listener
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(

          children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.shopping_cart,
                        size: 25,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'Favourite Listing',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      const Spacer(),
                      const Icon(
                        size: 15,
                        Icons.arrow_back_ios,
                        color: Color(0xffADADAD),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Go back',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff888888)),
                        ),
                      )
                    ],
                  ),
                ),
                     const Divider(
                  thickness: 2,
                  color: Color(0xffD9D9D9),
                ),
                const SizedBox(
                  height: 20,
                ),
            ...favouriteList.map((product) {
              return ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        if (index >= favouriteList.length) {
                          // Prevent accessing out-of-bounds index
                          return const SizedBox.shrink();
                        }
                        final item = favouriteList[index];
                        return FavouriteListProductDetails(item: item);
                      },
                      separatorBuilder: (context, index) => SizedBox(
                        height: 16.h,
                      ),
                      itemCount: favouriteList.length,
                    );
            }).toList(),
            if (isLoading) CircularProgressIndicator(), // Show loading indicator at the bottom
          ],
        ),
      ),
    );
  }
}

class FavouriteListProductDetails extends ConsumerStatefulWidget {
  // final bool isSelected;
  // final ValueChanged<bool> onSelected;
  final FavouriteProduct item;

  const FavouriteListProductDetails({
    // required this.isSelected,
    // required this.onSelected,
    super.key,
    required this.item,
  });

  @override
  ConsumerState<FavouriteListProductDetails> createState() =>
      _FavouriteListProductDetailsState();
}

class _FavouriteListProductDetailsState
    extends ConsumerState<FavouriteListProductDetails> {
  bool _isChecked = false;
  final bool _isClicked = false;

  // @override
  // void initState() {
  //   super.initState();
  //   _isChecked = widget.isSelected;
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.w),
      child: Card(
        elevation: 6,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    ProductDetailScreen(productId: widget.item.id!),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 10.h),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: const Color(0xffFFFFFF),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.2),
                  spreadRadius: 10,
                  blurRadius: 10,
                  offset: const Offset(1, 0),
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Checkbox(
                    //   value: true,
                    //   onChanged: (value) {},
                    // ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _isChecked = !_isChecked;
                        });
                      },
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: _isChecked ? const Color(0xff362677) : null,
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: _isChecked
                                  ? const Color(0xff362677)
                                  : const Color(0xffD9D9D9),
                              width: 1.0),
                        ),
                        child: _isChecked
                            ? const Icon(
                                Icons.check,
                                size: 12.0,
                                color: Colors.white,
                              )
                            : null,
                      ),
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 15.h, left: 8.w, right: 8.w, bottom: 20.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: const Color(0xffF6F1F1),
                      ),
                      child: widget.item.image != null &&
                              widget.item.image!.isNotEmpty
                          ? Image.network(
                              widget.item.image!,
                              height: 70.h,
                            )
                          : const Icon(Icons.image_not_supported,
                              size: 70), // Placeholder icon
                    ),

                    SizedBox(
                      width: 20.w,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Text(
                          widget.item.title!,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Column(
                          children: [
                            if (widget.item.discountedPrice != null &&
                                widget.item.discountedPrice!.isNotEmpty) ...[
                              SizedBox(width: 10.w),
                              Text(
                                'Rs${widget.item.price ?? ''}',
                                style: TextStyle(
                                    color: const Color(0xffB5B5B5),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.lineThrough),
                              ),
                            ],
                            if (widget.item.discountedPrice != null &&
                                widget.item.discountedPrice!.isNotEmpty)
                              Text(
                                'Rs${widget.item.discountedPrice!}',
                                style: TextStyle(
                                    color: const Color(0xff36383C),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700),
                              )
                            else
                              Text(
                                'Rs${widget.item.price ?? ''}',
                                style: TextStyle(
                                    color: const Color(0xff36383C),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                          ],
                        )
                      ],
                    )),
                    //  const Spacer(),
                    SizedBox(
                      width: 10.w,
                    ),
                    GestureDetector(
                      onTap: () async {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            final screenWidth =
                                MediaQuery.of(context).size.width;

                            return StatefulBuilder(
                              builder: (BuildContext context,
                                  StateSetter setStateDialog) {
                                return AlertDialog(
                                    insetPadding: const EdgeInsets.all(12),
                                    clipBehavior: Clip.hardEdge,
                                    backgroundColor: Colors.white,
                                    title: SizedBox(
                                      width: screenWidth,
                                      child: Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.topRight,
                                            // right: 8,
                                            // top: 8,
                                            child: GestureDetector(
                                              onTap: () =>
                                                  Navigator.of(context).pop(),
                                              child: const Icon(
                                                Icons.close,
                                                color: Colors.black54,
                                                size: 24,
                                              ),
                                            ),
                                          ),
                                          const Icon(
                                            Icons.report,
                                            color: Color(0xFF781740),
                                            size: 100,
                                          ),
                                          Text(
                                            "Are you sure you want to perform this action?",
                                            style: TextStyle(
                                              color: const Color(0xff362677),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.sp,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          const Divider(),
                                        ],
                                      ),
                                    ),
                                    actions: [
                                      GeneralTextButton(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        marginH: 0,
                                        fgColor: Colors.white,
                                        bgColor: const Color(0xff362677),
                                        title: 'Yes',
                                        onPressed: () async {
                                          try {
                                            // Show a loading dialog while deleting
                                            showDialog(
                                              context: context,
                                              barrierDismissible: false,
                                              builder: (context) {
                                                return const Center(
                                                    child:
                                                        CircularProgressIndicator());
                                              },
                                            );

                                            // Call the delete function
                                            await ref.read(
                                                deleteFavouriteProductProvider(
                                                        widget.item.id!)
                                                    .future);

                                            // Close the loading dialog
                                            if (Navigator.of(context)
                                                .canPop()) {
                                              Navigator.of(context,
                                                      rootNavigator: true)
                                                  .pop();
                                            }

                                            // Show success message
                                            if (mounted) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                const SnackBar(
                                                  content: Text(
                                                      'Item deleted successfully'),
                                                  backgroundColor: Colors.grey,
                                                ),
                                              );
                                            }

                                            // Invalidate provider to refresh the list
                                            // ref.invalidate(
                                            //     getFavouriteListProvider);

                                            // Close the confirmation dialog
                                            if (Navigator.of(context)
                                                .canPop()) {
                                              Navigator.of(context,
                                                      rootNavigator: true)
                                                  .pop();
                                            }
                                          } catch (e) {
                                            // Close the loading dialog if an error occurs
                                            if (Navigator.of(context)
                                                .canPop()) {
                                              Navigator.of(context,
                                                      rootNavigator: true)
                                                  .pop();
                                            }

                                            // Show error message
                                            if (mounted) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                      'Failed to delete item: $e'),
                                                  backgroundColor: Colors.grey,
                                                ),
                                              );
                                            }
                                          }
                                        },
                                      ),
                                      SizedBox(height: 15.h),
                                      GeneralTextButton(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        marginH: 0,
                                        fgColor: Colors.white,
                                        bgColor: const Color(0xffADADAD),
                                        title: 'No',
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ]
                                    // :
                                    //  [
                                    //     GeneralTextButton(
                                    //       width: MediaQuery.of(context).size.width,
                                    //       marginH: 0,
                                    //       fgColor: Colors.white,
                                    //       bgColor: const Color(0xff362677),
                                    //       title: 'OK',
                                    //       onPressed: () {
                                    //         Navigator.of(context).pop();
                                    //       },
                                    //     ),
                                    //   ],
                                    );
                              },
                            );
                          },
                        );
                        // Show deleting message
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //   const SnackBar(
                        //       content: Text('Deleting item...'),
                        //       backgroundColor: Colors.grey),
                        // );
                      },
                      child: SvgPicture.asset(deleteIcon),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
