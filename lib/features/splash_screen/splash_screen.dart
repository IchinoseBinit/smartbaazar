import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartbazar/features/auth/controller/login_controller.dart';
import 'package:smartbazar/features/splash_screen/splash_api.dart';
import 'package:smartbazar/features/splash_screen/splash_model.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Start the timer to continue the session after 3 seconds
    Future.delayed(
      const Duration(seconds: 3),
      () async {
        try {
          final loginProvider = ref.read(loginController.notifier);
          await loginProvider.continueSession(context).catchError((e) {
            Navigator.pushReplacementNamed(context, '/login');
          });
        } catch (e) {
          print('Error continuing session: $e');
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final splashApiResponse = ref.watch(getSplashApiProvider);
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xFF41246e), Color(0xFF721844)],
            ),
          ),
          child: Center(
            child: SplashContent(
              splashApiResponse: splashApiResponse,
              ref: ref,
            ),
          ),
        ),
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  final AsyncValue<SplashModel> splashApiResponse;
  final WidgetRef ref;

  const SplashContent({super.key, required this.splashApiResponse, required this.ref});

  @override
  Widget build(BuildContext context) {
    return splashApiResponse.when(
      data: (splashModel) => FadeInImage.assetNetwork(
        placeholder: "assets/images/appLogo.png",
        image: splashModel.logo,
        color: Colors.white,
        fit: BoxFit.contain,
      ),
      loading: () => const CircularProgressIndicator(color: Colors.white),
      error: (error, stack) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('An error occurred!', style: TextStyle(color: Colors.white)),
          TextButton(
            onPressed: () {
              ref.refresh(getSplashApiProvider);
            },
            child: const Text('Retry', style: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
    );
  }
}
