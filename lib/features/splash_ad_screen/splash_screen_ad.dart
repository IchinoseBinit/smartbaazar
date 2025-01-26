import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/ads_screen/api/ad_api.dart';
import 'package:smartbazar/features/button_nav_bar/cusom_btn_bar/custom_bottom_nav.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class AdSplashScreen extends ConsumerStatefulWidget {
  const AdSplashScreen({super.key});
  @override
  ConsumerState<AdSplashScreen> createState() => _AdSplashScreenState();
}

class _AdSplashScreenState extends ConsumerState<AdSplashScreen> {
  int _countDown = 6;
  Timer? _timer;

  void _startCountdown() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_countDown > 0) {
        if (mounted) setState(() => _countDown--); // Ensure widget is mounted before calling setState
      } else {
        timer.cancel();
        if (mounted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) =>   MainScreen()),
          );
        }
      }
    });
  }

  void _startDotsAnimation() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
   
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel timer in dispose to avoid leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final adsList = ref.watch(fetchAdsProvider);
    if (_timer == null) _startDotsAnimation();

    return GenericSafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Center(
              child: adsList.isLoading
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/preloader.gif', width: 150.w, height: 150.h),
                      ],
                    )
                  : adsList.value?.isNotEmpty == true
                      ? CachedNetworkImage(
                          imageUrl: adsList.value!.first.image!,
                          fit: BoxFit.cover,
                          placeholder: (context, url) => Image.asset('assets/images/preloader.gif', width: 150.w, height: 150.h),
                          errorWidget: (context, url, error) => const Text("Error loading ad"),
                          imageBuilder: (context, imageProvider) {
                            _startCountdown();
                            return Image(image: imageProvider, fit: BoxFit.cover);
                          },
                        )
                      : const Text("No ads available"),
            ),
            Positioned(
              top: 50.h,
              right: 16.w,
              child: Text(
                _countDown > 0 ? "Ad ends\n in $_countDown s" : "Redirecting...",
                textAlign: TextAlign.center,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Color.fromARGB(255, 27, 41, 52)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
