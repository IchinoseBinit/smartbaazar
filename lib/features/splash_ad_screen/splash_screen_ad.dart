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
  bool _countdownStarted = false; // Prevent multiple countdowns

  @override
  void initState() {
    super.initState();
    _startDotsAnimation(); // Move to initState() to avoid multiple calls
  }

void _startDotsAnimation() {
  _timer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
    if (mounted) setState(() {}); // Trigger rebuild (for UI updates if needed)
  });
}

  void _startCountdown() {
    if (_countdownStarted) return; // Prevent multiple timers
    _countdownStarted = true;

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_countDown > 0) {
        if (mounted) setState(() => _countDown--);
      } else {
        timer.cancel();
        if (mounted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => MainScreen()),
          );
        }
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel timer in dispose to avoid memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final adsList = ref.watch(fetchAdsProvider);

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
                            _startCountdown(); // Ensure it starts only once
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
