import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:smartbazar/features/auth/view/login_screen.dart';

// SplashModel Class
class SplashModel {
  final String logo;

  SplashModel({required this.logo});

  factory SplashModel.fromJson(Map<String, dynamic> json) {
    return SplashModel(logo: json['logo'] ?? '');
  }
}

// API Call Function
Future<SplashModel> fetchSplashData() async {
  final Dio dio = Dio();

  try {
    final response = await dio.get(
      'https://smartbazaar.jianjun-rnd.com.np/api/app_logo_loader',
      options: Options(
        headers: {'X-AppApiToken': 'Yala@Techies_Nepal'},
      ),
    );

    if (response.statusCode == 200 && response.data is Map<String, dynamic>) {
      return SplashModel.fromJson(response.data);
    } else {
      throw Exception('Failed to load splash data');
    }
  } catch (e) {
    throw Exception('Error fetching splash data: $e');
  }
}

// Splash Screen
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Future<SplashModel> splashData;

  @override
  void initState() {
    super.initState();

    // Fetch splash data
    splashData = fetchSplashData();
  }

  void navigateToNextScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
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
            child: FutureBuilder<SplashModel>(
              future: splashData,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator(color: Colors.white);
                } else if (snapshot.hasError) {
                  return _buildError(context);
                } else if (snapshot.hasData) {
                  // Display image and navigate after a delay
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    Future.delayed(const Duration(seconds: 3), () {
                      navigateToNextScreen();
                    });
                  });
                  return _buildImage(snapshot.data!);
                } else {
                  return const Text('No data available',
                      style: TextStyle(color: Colors.white));
                }
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImage(SplashModel splashModel) {
    return FadeInImage.assetNetwork(
      placeholder: "assets/images/appLogo.png",
      image: splashModel.logo,
      color: Colors.white,
      fit: BoxFit.contain,
    );
  }

  Widget _buildError(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('An error occurred!', style: TextStyle(color: Colors.white)),
        TextButton(
          onPressed: () {
            setState(() {
              splashData = fetchSplashData(); // Retry fetching splash data
            });
          },
          child: const Text('Retry', style: TextStyle(color: Colors.blue)),
        ),
      ],
    );
  }
}
