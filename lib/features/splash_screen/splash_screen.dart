import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/auth/controller/login_controller.dart';
import 'package:smartbazar/features/splash_screen/splash_api.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    final loginProvider = ref.watch(loginController.notifier);
    loginProvider.continueSession(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    final splashApiResponse = ref.watch(getSplashApiProvider);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF41246e), // Dark purple
              Color(0xFF721844), // Dark red
            ],
          ),
        ),
        child: Center(
          child: Container(
            color: Colors.transparent,
         child:   splashApiResponse.when(
            data: (splashModel) {
              return FadeInImage.assetNetwork(
                placeholder: "assets/images/appLogo.png",
                image: splashModel.logo,
                height: 550, // Set height as needed
                width: 350,
                color: Colors.white,
              );
            },
            loading: () => const CircularProgressIndicator(),
            error: (error, stack) => Text('Error: $error'),
          )
          ),
        ),
      ),
    );
  }
}
