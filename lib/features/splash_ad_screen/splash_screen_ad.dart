import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/ads_screen/api/ad_api.dart';
import 'package:smartbazar/features/auth/view/bottom_navigation_bar.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class AdSplashScreen extends ConsumerStatefulWidget {
  const AdSplashScreen({super.key});

  @override
  ConsumerState<AdSplashScreen> createState() => _AdSplashScreenState();
}

class _AdSplashScreenState extends ConsumerState<AdSplashScreen> {
  int _countDown = 5;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startCountdown();
  }

  void startCountdown() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        setState(() {
          if (_countDown > 0) {
            _countDown--;
          } else {
            timer.cancel();
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const BottomNavigationScreen(),
              ),
            );
          }
        });
      },
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final adsList = ref.watch(fetchAdsProvider);

    return GenericSafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 100.h),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  Text(
                    "Ad ends\n in $_countDown s",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color.fromARGB(255, 27, 41, 52),
                    ),
                  ),
                ],
              ),
            ),
            adsList.isLoading
                ? const Center(child: CircularProgressIndicator())
                : adsList.value != null && adsList.value!.isNotEmpty
                    ? Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 50.h),
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          width: double.infinity,
                          height: 100.h,
                          child: CachedNetworkImage(
                            errorListener: (value) =>
                                const Text("Loading......"),
                            imageUrl: adsList.value!.first.image!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    : const Text('No ads available'),
          ],
        ),
      ),
    );
  }
}
