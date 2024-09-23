import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/favourite_list/api/favourite_list_api.dart';
import 'package:smartbazar/features/favourite_list/model/favourite_product_list.dart';
import 'package:smartbazar/features/favourite_list/view/favourite_listing_skeleton.dart';

class FavouriteListingScreen extends ConsumerWidget {
  const FavouriteListingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favouriteListAsyncValue = ref.watch(getFavouriteListProvider);

    return Scaffold(
      backgroundColor: const Color(0xFFF6F1F1),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
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
              favouriteListAsyncValue.when(
                data: (favouriteListResponse) {
                  final favouriteList =
                      favouriteListResponse.data!.savedProducts?.data ?? [];
                  if (favouriteList.isEmpty) {
                    return const Center(child: Text('No favourites found.'));
                  }
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
                },
                loading: () => ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>
                      const FavouriteListSkeleton(),
                  separatorBuilder: (context, index) => SizedBox(height: 16.h),
                  itemCount: 6, // Number of skeleton items
                ),
                error: (error, stack) => Text('Error: $error'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FavouriteListProductDetails extends ConsumerStatefulWidget {
  // final bool isSelected;
  // final ValueChanged<bool> onSelected;
 final Product item;

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
        elevation: 8,
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
                      child: Image.network(
                        widget.item.image!,
                        height: 70.h,
                      )),
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
                        final deleteResult = ref.read(
                            deleteFavouriteProductProvider(widget.item.id!));
                        deleteResult.when(
                          data: (_) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Item deleted successfully')),
                            );
                            ref.invalidate(getFavouriteListProvider);
                          },
                          loading: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Deleting item...')),
                            );
                          },
                          error: (error, stack) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content:
                                      Text('Failed to delete item: $error')),
                            );
                          },
                        );
                      },
                      child: SvgPicture.asset(deleteIcon)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
