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
  bool _countdownStarted = false;
  bool _retryFetching = false; // To control auto-refresh

  @override
  void initState() {
    super.initState();
    _startDotsAnimation();
    PaintingBinding.instance.imageCache.clear();
    PaintingBinding.instance.imageCache.maximumSize = 10;
  }

  void _startDotsAnimation() {
    _timer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
      if (mounted) setState(() {});
    });
  }

  void _startCountdown() {
    if (_countdownStarted) return;
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
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final adsList = ref.watch(fetchAdsProvider);

    if (adsList.isLoading) {
      return _loadingScreen();
    }

    if (adsList.hasError || adsList.value == null || adsList.value!.isEmpty) {
      // Retry fetching if the first attempt returns null
      if (!_retryFetching) {
        _retryFetching = true;
        Future.delayed(const Duration(seconds: 2), () {
          ref.refresh(fetchAdsProvider);
        });
      }

      return _errorScreen();
    }

    return _adScreen(adsList.value!.first.image!);
  }

  Widget _loadingScreen() {
    return GenericSafeArea(
      child: Scaffold(
        body: Center(
          child: Image.asset('assets/images/preloader.gif', width: 150.w, height: 150.h),
        ),
      ),
    );
  }

  Widget _errorScreen() {
    return GenericSafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("No ads available. Retrying..."),
              SizedBox(height: 10.h),
              const CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _adScreen(String imageUrl) {
    return GenericSafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Center(
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                
                placeholder: (context, url) => Image.asset(
                  'assets/images/preloader.gif',
                  width: 150.w,
                  height: 150.h,
                ),
                errorWidget: (context, url, error) {
                  print("Image Load Error: $error");
                  return const Text("Image failed to load");
                },
                imageBuilder: (context, imageProvider) {
                  _startCountdown();
                  return Image(image: imageProvider, fit: BoxFit.cover);
                },
              ),
            ),
            Positioned(
              top: 50.h,
              right: 16.w,
              child: Text(
                _countDown > 0 ? "Ad ends\n in $_countDown s" : "Redirecting...",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color.fromARGB(255, 27, 41, 52),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
