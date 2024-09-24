import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/brand_bazar/api/brand_bazar_api.dart';

class BrandBazarWidget extends ConsumerStatefulWidget {
  const BrandBazarWidget({super.key});

  @override
  ConsumerState<BrandBazarWidget> createState() => _BrandBazarWidgetState();
}

class _BrandBazarWidgetState extends ConsumerState<BrandBazarWidget> {
  late PageController _pageController;
  Timer? _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  void startAutoSlide(int bannerCount) {
    // Set a timer to auto-slide every 3 seconds
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_pageController.hasClients && bannerCount > 1) {
        if (_currentPage < bannerCount - 1) {
          // Animate to the next page
          _currentPage++;
          _pageController.animateToPage(
            _currentPage,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
        } else {
          // Jump directly back to the first page without animation
          _currentPage = 0;
          _pageController.jumpToPage(_currentPage);
        }
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final brandBazarData = ref.watch(getBrandBazaarResponseProvider);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          border: Border.all(width: 2.w, color: const Color(0xffADADAD)),
        ),
        child: Column(
          children: [
            Text(
              'Brand Bazar',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 1.h),
            Text(
              'Shop for genuine products and grab the branded deals',
              style: TextStyle(
                color: Colors.black,
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20.h),
            // Fetch and display trend banners
            brandBazarData.when(
              data: (brandBazarModel) {
                final brandbazarLogos = brandBazarModel.data.brandbazarLogos;

                if (brandbazarLogos == null || brandbazarLogos.isEmpty) {
                  return const Text('No trend banners available');
                }

                // Set the desired number of logos to display
                const bannerCount = 5;

                // Use modulo to repeat the logos if the list is shorter than bannerCount
                return SizedBox(
                  height: 32.h,
                  child: ListView.separated(
                    padding: EdgeInsets.only(left: 20.w),
                    scrollDirection: Axis.horizontal,
                    itemCount: bannerCount,
                    itemBuilder: (BuildContext context, int index) {
                      // Repeat logos if the list is smaller than 5
                      final banner =
                          brandbazarLogos[index % brandbazarLogos.length];
                      return Container(
                        height: 32.h,
                        width: 32.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.r),
                          image: DecorationImage(
                            image: NetworkImage(banner.brandLogo!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(width: 16.h);
                    },
                  ),
                );
              },
              loading: () => const CircularProgressIndicator(),
              error: (error, stack) => Text('Error: $error'),
            ),
            SizedBox(height: 11.h),
            // Fetch and display advertisement banners
            brandBazarData.when(
              data: (brandBazarModel) {
                final advertisements = brandBazarModel.data.advertisements;

                if (advertisements == null || advertisements.isEmpty) {
                  return const Text('No advertisements available');
                }

                // Dynamically calculate banner count based on the fetched data
                final bannerCount = advertisements.length;

                // Start the auto-slide once data is available
                if (_timer == null) {
                  startAutoSlide(bannerCount);
                }

                return SizedBox(
                  height: 56.h, // Adjusted height for the banner
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: bannerCount,
                    itemBuilder: (context, index) {
                      final ad = advertisements[index];
                      return InkWell(
                        onTap: () {
                          // Handle link navigation if needed
                        },
                        child: Container(
                          width: 382.w, // Adjust width for the ad
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.r),
                            image: DecorationImage(
                              image: NetworkImage(ad.image!),
                              fit: BoxFit
                                  .contain, // Ensures the image fits properly
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
              loading: () => const CircularProgressIndicator(),
              error: (error, stack) => Text('Error: $error'),
            ),
          ],
        ),
      ),
    );
  }
}
