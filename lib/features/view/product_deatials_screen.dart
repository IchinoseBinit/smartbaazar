import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:share_plus/share_plus.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/rich_text_widget.dart';
import 'package:smartbazar/features/favourite_list/api/add_product_to_favourite_list_api.dart';
import 'package:smartbazar/features/favourite_list/api/favourite_list_api.dart';
import 'package:smartbazar/features/home/model/product_details_model.dart';
import 'package:smartbazar/features/report_complain/view/report_complain_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/dummy_home_screen.dart';
import 'package:smartbazar/features/view/api/add_to_cart_provider.dart';
import 'package:smartbazar/features/view/api/product_details_provider.dart';

import 'package:smartbazar/general_widget/general_safe_area.dart';

final currentIndexProvider = StateProvider<int>((ref) => 0);

// ignore: must_be_immutable
class ProductDetailScreen extends ConsumerWidget {
  List<String> itemsList = [];

  final String productId;
  ProductDetailScreen({super.key, required this.productId});

  int currentIndex = 0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favouriteListAsyncValue = ref.watch(getFavouriteListProvider);

    final productDetailsAsyncValue =
        ref.watch(productDetailsProvider(productId));
    final currentIndex = ref.watch(currentIndexProvider);
    print("the inner data is $productDetailsAsyncValue");

    // final AsyncValue<PostResponse> getdetails=ref
    return GenericSafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffF6F1F1),
      body: productDetailsAsyncValue.when(
        data: (data) {
          print("simi $data");
          // print("ramk ${data.title.split('/')[0]}");

          return favouriteListAsyncValue.when(
            data: (favouritelist) {
              // print(
              //     "data.pictures is ${ApiConstants.imgUrl}${data.pictures?[0].filename}");
              for (int i = 0; i < data.pictures!.length; i++) {
                itemsList
                    .add("${ApiConstants.imgUrl}${data.pictures?[i].filename}");
              }
              // print("nibba is $itemsList");
              final isFavorite = favouritelist.data!.savedProducts!.data
                  ?.any((item) => item.id == productId);
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const Icon(Icons.arrow_back_ios)),
                            Container(
                                padding: EdgeInsets.all(12.h),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: isFavorite!
                                        ? Colors.yellow
                                        : const Color(0xffFFFFFF)),
                                child: SvgPicture.asset(invoiceIcon))
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Column(
                          children: [
                            CarouselSlider(
                              options: CarouselOptions(
                                  height: 220.0,
                                  viewportFraction: 1.5,
                                  initialPage: 0,
                                  scrollDirection: Axis.horizontal,
                                  // autoPlay: true,
                                  onPageChanged: (index, _) {
                                    ref.read(currentIndexProvider.state).state =
                                        index;

                                    // setState(() {
                                    //   currentIndex = index;
                                    // });
                                  }),
                              items: itemsList
                                  .map(
                                    (item) => itemsList.isEmpty
                                        ? const SizedBox()
                                        : SizedBox(
                                            height: 200,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Image.network(item),
                                          ),
                                  )
                                  .toList(),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            //           Row(
                            //   mainAxisAlignment: MainAxisAlignment.center,
                            //   children: List.generate(itemsList.length, (index) {
                            //     return Container(
                            //       height: 10,
                            //       width: 10,
                            //       margin: const EdgeInsets.symmetric(horizontal: 3),
                            //       decoration: BoxDecoration(
                            //         color: currentIndex == index ? Colors.grey : Colors.white,
                            //         shape: BoxShape.circle,
                            //       ),
                            //     );
                            //   }),
                            // ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.r),
                                  topRight: Radius.circular(30.r)),
                              color: Colors.white),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 30.h, left: 30.w, right: 17.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      data.title!,
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 12.w,
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(4.h),
                                          decoration: BoxDecoration(
                                              color: const Color(0xffD9D9D9),
                                              borderRadius:
                                                  BorderRadius.circular(4.r)),
                                          child: Text(
                                            'Brand New',
                                            style: TextStyle(
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w500,
                                                color: const Color(0xff000000)),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "NPR ${data.price}",
                                          style: TextStyle(fontSize: 16.sp),
                                        ),
                                        const Spacer(),
                                        InkWell(
                                          onTap: () async {
                                            print("id is ${data.id}");
                                            // await  _apiService
                                            //     .addToCart(data.);
                                            ApiService().addToCart(data.id.toString(),);
                                            CustomDialougeBox()
                                                .addToCart(context);
                                          },
                                          child: Container(
                                            padding: EdgeInsets.only(
                                                left: 13.w,
                                                right: 15.w,
                                                top: 4.h,
                                                bottom: 7.h),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30.r),
                                                color: const Color(0xff362677)),
                                            child: Column(
                                              children: [
                                                Icon(
                                                  Icons.add,
                                                  size: 15.h,
                                                  color: Colors.white,
                                                ),
                                                Text(
                                                  'Add to cart',
                                                  style: TextStyle(
                                                      fontSize: 10.sp,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            CustomDialougeBox()
                                                .alertMessage(context);
                                          },
                                          child: Container(
                                            padding: EdgeInsets.only(
                                                left: 14.w,
                                                right: 14.w,
                                                top: 13.h,
                                                bottom: 9.h),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30.r),
                                                color: const Color(0xff362677)),
                                            child: Text(
                                              'Buy Now',
                                              style: TextStyle(
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              data.discounted_price ?? '',
                                              style: const TextStyle(
                                                  decoration: TextDecoration
                                                      .lineThrough),
                                            ),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                  left: 11.w,
                                                  top: 2.h,
                                                  bottom: 2.w,
                                                  right: 20),
                                              color: const Color(0xff362677),
                                              child: const Text(
                                                '-40% Off',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Wrap(
                                      children: [
                                        Text(
                                          data.pickup == null
                                              ? ""
                                              : data.pickup!,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            RatingBar.builder(
                                              initialRating: 4,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemSize: 12,
                                              itemPadding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 1.0),
                                              itemBuilder: (context, _) =>
                                                  const Icon(Icons.star,
                                                      color:
                                                          Color(0xfff781740)),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),
                                            SizedBox(
                                              width: 2.w,
                                            ),
                                            Text(
                                              "(4)",
                                              style: TextStyle(
                                                  fontSize: 9.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color:
                                                      const Color(0xff888888)),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              width: 30.w,
                                            ),
                                            Column(
                                              children: [
                                                IconButton(
                                                    onPressed: () {
                                                      final firstPicture = data
                                                              .pictures!
                                                              .isNotEmpty
                                                          ? data.pictures!.first
                                                          : null;
                                                      final pictureUrl =
                                                          firstPicture
                                                                  ?.getUrl() ??
                                                              '';
                                                      Share.share(
                                                        'Check out this product: ${data.title}\n\nPrice: NPR ${data.price}\n\n$pictureUrl',
                                                        subject:
                                                            'Check out this product on OurApp',
                                                      );
                                                    },
                                                    icon: const Icon(
                                                        Icons.share)),
                                                Text(
                                                  'Share',
                                                  style: TextStyle(
                                                      fontSize: 10.sp,
                                                      color: const Color(
                                                          0xff000000)),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 30.w,
                                            ),
                                            Column(
                                              children: [
                                                IconButton(
                                                  onPressed: () async {
                                                    try {
                                                      // Call the API to add the product to favorites
                                                      await ref.read(
                                                          addToFavoritesProvider(
                                                                  data.user_id!,
                                                                  productId)
                                                              .future);
                                                      // Show a Snackbar indicating success
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        const SnackBar(
                                                          content: Text(
                                                              'Product added to your favorites!'),
                                                          duration: Duration(
                                                              seconds: 2),
                                                        ),
                                                      );
                                                    } catch (e) {
                                                      // Handle any errors
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        const SnackBar(
                                                          content: Text(
                                                              'Failed to add product to favorites.'),
                                                          duration: Duration(
                                                              seconds: 2),
                                                        ),
                                                      );
                                                    }
                                                  },
                                                  icon: const Icon(Icons
                                                      .bookmark_border_outlined),
                                                ),
                                                Text(
                                                  'Save',
                                                  style: TextStyle(
                                                      fontSize: 10.sp,
                                                      color: const Color(
                                                          0xff000000)),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 30.w,
                                            ),
                                            Column(
                                              children: [
                                                IconButton(
                                                  icon:
                                                      const Icon(Icons.report),
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                ReportComplainScreen(
                                                                  productId:
                                                                      productId,
                                                                  productName:
                                                                      data.title!,
                                                                )));
                                                  },
                                                ),
                                                Text(
                                                  'Complain',
                                                  style: TextStyle(
                                                      fontSize: 10.sp,
                                                      color: const Color(
                                                          0xff000000)),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 10.h),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.visibility,
                                          color: Color(0xff888888),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          '${data.visits}K Views',
                                          style: TextStyle(
                                              color: const Color(0xff888888),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        const Icon(
                                          Icons.location_on_outlined,
                                          color: Color(0xff888888),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          data.pickup == null
                                              ? ""
                                              : data.pickup!.split(',')[2],
                                          style: TextStyle(
                                              color: const Color(0xff888888),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Container()
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(contactSellerIcon),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Text(
                                          'Contact Seller',
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w700,
                                              color: const Color(0xff000000)),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(phoneIcon),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Text(
                                          'Call',
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xff000000)),
                                        ),
                                        const Spacer(),
                                        SvgPicture.asset(messagesIcon),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Text(
                                          'Message',
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xff000000)),
                                        ),
                                        const Spacer(),
                                        SvgPicture.asset(whatsAppIcon),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Text(
                                          'Whatsapp',
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xff000000)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                  ],
                                ),
                              ),
                              TabBarItems(
                                weight: data.weight ?? "N/A",
                                stock: data.stock == null ? "" : data.stock!,
                                description: data.description!,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              GeneralTextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DummyVendorHomeScreen(
                                                  vendorName: data.user!.name!,
                                                )));
                                  },
                                  marginH: 1,
                                  width: MediaQuery.of(context).size.width,
                                  prefixImage: ImageConstant.visitStore,
                                  bgColor: const Color(0xff362677),
                                  fgColor: Colors.white,
                                  isSmallText: true,
                                  title: 'Visit Store'),
                              SizedBox(
                                height: 20.h,
                              ),
                              const ScratchWinContainer(),
                              SizedBox(
                                height: 10.h,
                              ),
                              ProductAdditionalDetialsWidget(
                                  inbox: data.category == null
                                      ? ""
                                      : data.category?.name ?? 'N/A',
                                  brandname: data.title!.split('/')[0]),
                              ProductAvilableColorsWidget(
                                color: data.colorOptions == null
                                    ? []
                                    : data.colorOptions ??
                                        [
                                          const ColorOption(
                                              id: 2, value: "Black")
                                        ],
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              ProductTagListWidget(
                                tags: data.tags!,
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              const BuyNowProdcutMinuteWidget(),
                              SizedBox(
                                height: 15.h,
                              ),
                              data.widgetSimilarPosts == null
                                  ? const SizedBox()
                                  : SimilarListingProduct(
                                      items: data.widgetSimilarPosts!,
                                    ),
                            ],
                          )),
                    ),
                  )
                ],
              );
            },
            error: (error, stackTrace) => Center(child: Text('Error: $error')),
            loading: () => const Center(child: CircularProgressIndicator()),
          );
        },
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    ));
  }
}

class TabBarItems extends StatelessWidget {
  final String weight;
  final String stock;
  final String description;

  const TabBarItems(
      {Key? key,
      required this.weight,
      required this.stock,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        width: double.infinity, // Adjust width as needed
        height: 370, // Adjust height as needed
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              const TabBar(
                tabs: [
                  Tab(
                    text: 'Listing Details',
                  ),
                  Tab(
                    text: 'Reviews',
                  ),
                ],
              ),
              // SizedBox(height: 10), // Adjust as needed
              Expanded(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 11.w, vertical: 13.h),
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1.w, color: const Color(0xff000000))),
                  constraints: const BoxConstraints.expand(),
                  child: TabBarView(
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichTextWidget(
                                  subtitle: "$weight kg",
                                  subtitleStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp,
                                      color: Colors.black),
                                  title: 'Net Weight: ',
                                  titleStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.sp,
                                      color: Colors.black),
                                  onPressed: () {}),
                              RichTextWidget(
                                  subtitle: stock,
                                  subtitleStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp,
                                      color: Colors.black),
                                  title: 'Available Quantity: ',
                                  titleStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.sp,
                                      color: Colors.black),
                                  onPressed: () {})
                            ],
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Container(
                            child: Text(
                              maxLines: 10,
                              description,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Text('0 comments'), Text('sort by')],
                            ),
                            const Divider(),
                            SizedBox(
                              height: 10.h,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 10.w, vertical: 10.h),
                                hintText: 'Add comment...',
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 1.0, color: Colors.black),
                                    borderRadius: BorderRadius.circular(10.r)),
                              ),
                            )
                            // CustomTextFieldWidget(icon: , hintText: hintText)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ScratchWinContainer extends StatelessWidget {
  const ScratchWinContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 6.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(width: 1.w, color: const Color(0xffF5BF05))),
        child: Row(
          children: [
            Image.asset(
              ImageConstant.scartchWinImage,
            ),
            Expanded(
              child: RichTextWidget(
                  title: "Visit our virtual store ",
                  // titleStyle: TextStyle(
                  //     fontSize: 10.sp,
                  //     fontWeight: FontWeight.w700),
                  subtitle: "Subscribe us to win FREE prizes & get our deals",
                  subtitleStyle: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                  onPressed: () {}),
            )
          ],
        ),
      ),
    );
  }
}

class ProductAdditionalDetialsWidget extends StatelessWidget {
  final String inbox;
  final String brandname;

  const ProductAdditionalDetialsWidget(
      {Key? key, required this.inbox, required this.brandname})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {'title': "What's in the box?", 'description': inbox ?? 'N/A'},
      {'title': "Brand", 'description': brandname ?? 'N/A'},
      {'title': "Model", 'description': brandname ?? 'N/A'},
    ];
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                drawerIcon,
                colorFilter:
                    const ColorFilter.mode(Colors.black, BlendMode.srcIn),
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                'Additional Details',
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
              )
            ],
          ),
          SizedBox(
            height: 12.h,
          ),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 2.4,
            ),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(left: 5.w, right: 5.w),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                  decoration: BoxDecoration(
                      color: const Color(0xffEDECEC),
                      borderRadius: BorderRadius.circular(8.r)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          maxLines: 1,
                          items[index]['title'],
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(
                              0xff000000,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        items[index]['description'],
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(
                            0xff000000,
                          ),
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ProductAvilableColorsWidget extends StatelessWidget {
  List<ColorOption> color;
  ProductAvilableColorsWidget({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    print("bibash is ${color.length}");
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 9.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: const Color(0xffEDECEC)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Available Colours',
              style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff000000)),
            ),
            SizedBox(
              height: 5.h,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: color.length > 5 ? 3 : color.length,
              itemBuilder: (context, index) {
                final data = color[index];
                return Row(
                  children: [
                    const Icon(
                      Icons.check,
                      size: 25,
                      color: Color(0xff000000),
                    ),
                    SizedBox(width: 2.w),
                    Text(data.value!,
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff000000)))
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class ProductTagListWidget extends StatelessWidget {
  final List<String> tags;

  const ProductTagListWidget({
    super.key,
    required this.tags,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                  tagIcon), // Ensure the path to your SVG is correct
              SizedBox(width: 5.w),
              Text(
                'Tags',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff000000),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          SizedBox(height: 15.h),

          // Use ListView.builder to display tags
          SizedBox(
            height: 40.h, // Adjust the height as needed
            child: ListView.builder(
              itemCount: tags.isEmpty
                  ? 1
                  : tags.length, // Show a placeholder if the list is empty
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                // If tags list is empty, display a placeholder message
                if (tags.isEmpty) {
                  return Center(
                    child: Text(
                      'No Tags Available',
                      style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                    ),
                  );
                }

                String data = tags[index].isEmpty ? "Item" : tags[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Chip(
                    label: Text(data),
                    backgroundColor: Colors.grey.shade200,
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

class BuyNowProdcutMinuteWidget extends StatelessWidget {
  const BuyNowProdcutMinuteWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(width: 1.5.w, color: const Color(0xffADADAD))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.h, bottom: 5.h, left: 12.w),
              child: Text(
                'Buy now within minute',
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff000000)),
              ),
            ),
            const Divider(
              thickness: 1.5,
              color: Color(0xffADADAD),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                children: [
                  const Icon(
                    Icons.check,
                    size: 25,
                    color: Color(0xff000000),
                  ),
                  SizedBox(width: 2.w),
                  Expanded(
                    child: Text(
                        'Confirm your personal information & contact details.',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff000000))),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              child: Row(
                children: [
                  const Icon(
                    Icons.check,
                    size: 25,
                    color: Color(0xff000000),
                  ),
                  SizedBox(width: 2.w),
                  Text('Enter your shipping address',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff000000)))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SimilarListingProduct extends StatelessWidget {
  final List<SimilarItems> items;

  const SimilarListingProduct({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'SIMILAR LISTING',
                style: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w700),
              ),
              Text(
                'View all',
                style: TextStyle(
                    fontSize: 10.sp,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 200.h, // Specify a height for the ListView
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (context, index) {
                SimilarItems data = items[index];
                List<Picture> pics = data.pictures!;
                print("sim ${ApiConstants.imgUrl}${pics.first.filename}");
                return InkWell(
                  onTap: () {
                    print("id is ${data.id}");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailScreen(
                              productId: data.id.toString()),
                        ));
                  },
                  child: Container(
                    width: 150.w, // Specify a width for each item
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (data.pictures!.isNotEmpty)
                          SizedBox(
                            height: 100.h, // Fixed height for the image
                            child: Image.network(
                              "${ApiConstants.imgUrl}${pics.first.filename}",
                              fit: BoxFit.cover,
                            ),
                          ),
                        SizedBox(height: 8.h),
                        Text(
                          data.title!,
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis, // Prevent overflow
                        ),
                        Text(
                          data.price!,
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.black54,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
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

class CustomDialougeBox {
  Future alertMessage(
    BuildContext context,
  ) async {
    return showDialog(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Sucessful!',
                style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff362677)),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Congratulations, your order has been placed sucessfully! Please check your email or view My Orders for order details. Click here to Track Your Order.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 40.h,
                width: 40.w,
                decoration: const BoxDecoration(
                    color: Color(0xff362677), shape: BoxShape.circle),
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 24,
                  weight: 50,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future addToCart(
    BuildContext context,
  ) async {
    return showDialog(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Sucessful!',
                style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff362677)),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Product added to the cart sucessfully!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              SizedBox(
                height: 5.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const AddToCartScreen()));
                },
                child: Text(
                  'View Cart',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 40.h,
                width: 40.w,
                decoration: const BoxDecoration(
                    color: Color(0xff362677), shape: BoxShape.circle),
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 24,
                  weight: 50,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
