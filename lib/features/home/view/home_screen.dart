import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/home/controller/sponsored_controller.dart';
import 'package:smartbazar/features/home/model/sponsored_model.dart';
import 'package:smartbazar/features/view/product_deatials_screen.dart';
import 'package:smartbazar/features/widgets/banner_widget.dart';
import 'package:smartbazar/features/widgets/brand_bazar_widget.dart';
import 'package:smartbazar/features/widgets/custom_drawer_widget.dart';
import 'package:smartbazar/features/widgets/item_description_widget.dart';
import 'package:smartbazar/features/widgets/product_model.dart';
import 'package:smartbazar/features/widgets/service_container_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  List<Product> product = [
    // Your list of products
    Product(
      name: 'Acer Aspire 5 A515-56-32DK Intel Core i3 11th Gen/15.6 FHD',
    ),
    Product(
      name: 'Dell Aspire 5 A515-56-32DK Intel Core i3 11th Gen/15.6 FHD',
    ),
    Product(
      name: 'Acer Aspire 5 A515-56-32DK Intel Core i3 11th Gen/15.6 FHD',
    ),
    Product(
      name: 'Leneov Aspire 5 A515-56-32DK Intel Core i3 11th Gen/15.6 FHD',
    ),
  ];
  List<Product> filteredProducts = [];

//   @override
  void initState() {
    filteredProducts = product;
    super.initState();
  }

  void filterProducts(String query) {
    setState(() {
      if (query.isNotEmpty) {
        filteredProducts = product
            .where((product) =>
                product.name.toLowerCase().contains(query.toLowerCase()))
            .toList();
      } else {
        filteredProducts = product;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final sponsoreData = ref.watch(sponsoredController);
    return GenericSafeArea(
      color: Colors.white,
      child: Scaffold(
        key: _key,
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xffF6F1F1),
        appBar: AppBar(
          toolbarHeight: 85.h,
          leadingWidth: 30.h,
          titleSpacing: 5,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: SvgPicture.asset(drawerIcon),
            onPressed: () {
              _key.currentState!.openDrawer();
            },
          ),
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SizedBox(
                  height: 33.h,
                  child: TextFormField(
                    onChanged: (query) {
                      filterProducts(query);
                    },
                    decoration: InputDecoration(
                        hintText: 'Search...',
                        prefixIconConstraints: BoxConstraints(minWidth: 40.w),
                        hintStyle: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xffBFBFBF)),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(top: 5.h, left: 8.w),
                          child: Icon(
                            Icons.search,
                            size: 20.sp,
                          ),
                        ),
                        suffixIcon: Container(
                          width: 70.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(25.r),
                                topRight: Radius.circular(25.r)),
                            color: Color(0xff362677),
                          ),
                          child: Icon(
                            Icons.search,
                            size: 30.sp,
                            color: Colors.white,
                          ),
                        ),
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r))),
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Container(
                height: 30.h,
                width: 30.h,
                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 1.w,
                    )),
                child: SvgPicture.asset(openCart),
              ),
            ],
          ),
        ),
        drawer: const CustomDrawer(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(
                          horizontal: 26.w, vertical: 24.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.r),
                            topRight: Radius.circular(30.r)),
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xff362677),
                            Color(0xff781740),
                          ],
                        ),
                      ),
                      child: Text(
                        'Redefing shopping,\n trade and much more.',
                        style: TextStyle(fontSize: 24.sp, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      color: const Color(0xff19328D),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 20.w,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                'Buy & sell anything.\n you\'ll forget everything else.',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12.sp),
                              ),
                            ],
                          ),
                          Image.asset(ImageConstant.shoppingImage)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    ServiceContainer(),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'SPONSORED LISTINGS',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    SizedBox(
                      height: 292.h,
                      child: ListView.separated(
                        primary: false,
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(left: 5.w),
                        shrinkWrap: true,
                        itemCount: filteredProducts.length,
                        itemBuilder: (context, index) {
                          final product = filteredProducts[index];
                          return ItemDescriptionWidget(
                            // product: product,
                            // onTap: (product) {
                            //   Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //           builder: (_) => ProductDetailsScreen(
                            //                 product: product,
                            //               )));
                            // },
                            product: product,
                            onTap: (SponsoredModel) {}, sponsoredModel: null,
                            // productName: product.name,
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 12.h,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const BannerWidget(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tranding',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    // SizedBox(
                    // height: 291.h,
                    // child: ListView.separated(
                    //   primary: false,
                    //   physics: BouncingScrollPhysics(),
                    //   scrollDirection: Axis.horizontal,
                    //   padding: EdgeInsets.only(left: 5.w),
                    //   shrinkWrap: true,
                    //     itemCount: filteredProducts.length,
                    //     itemBuilder: (context, index) => ItemDescriptionWidget(
                    //       onTap: (SponsoredModel) {}, product: product,
                    //       // product: filteredProducts[index],
                    //       // onTap: (p) {
                    //       //   Navigator.push(
                    //       //       context,
                    //       //       MaterialPageRoute(
                    //       //           builder: (_) =>
                    //       //               ProductDetailsScreen(product: p)));
                    //       // },
                    //     ),
                    //     separatorBuilder: (BuildContext context, int index) {
                    //       return SizedBox(
                    //         width: 12.h,
                    //       );
                    //     },
                    //   ),
                    // ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              BannerWidget(),
              SizedBox(
                height: 20.h,
              ),
              BrandBazarWidget(),
              SizedBox(
                height: 12.h,
              ),
              BannerWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
