import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_places_flutter/google_places_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartbazar/features/auth/view/scan_screen.dart';
import 'package:smartbazar/features/b2b_screen/view/b2b_screen.dart';
import 'package:smartbazar/features/button_nav_bar/cusom_btn_bar/custom_bottom_nav.dart';
import 'package:smartbazar/features/favourite_list/view/favourite_listing_screen.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/hot_deals/view/hot_vew_screen.dart';
import 'package:smartbazar/features/my_order/view/my_order_details_screen.dart';
import 'package:smartbazar/features/my_order/view/my_order_screen.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/splash_screen/splash_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod/riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  // Set custom HttpOverrides globally
  HttpOverrides.global = MyHttpOverrides();

  runApp(const ProviderScope(child: MyApp()));
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class MyApp extends StatefulWidget {
  static GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
  static ProviderContainer globalRef = ProviderContainer();

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 690),
      splitScreenMode: true,
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: GoogleFonts.quicksand().fontFamily,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home:
            SplashScreen()
          ),
    );
  }
}

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _controller = TextEditingController();
  List<String> suggestions = [
    'Laptop',
    'Shoes',
    'Smartphone',
    'Headphones',
    'Smartwatch',
    'Tablet',
    'Backpack',
    'Jacket'
  ];
  List<String> filteredSuggestions = [];

  @override
  void initState() {
    super.initState();
    filteredSuggestions = suggestions;
  }

  void _filterSuggestions(String query) {
    setState(() {
      filteredSuggestions = suggestions
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Search Bar
                TextField(
                  controller: _controller,
                  onChanged: _filterSuggestions,
                  decoration: InputDecoration(
                    labelText: 'Search',
                    hintText: 'Search products',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ],
            ),
          ),
          // Only show the suggestions list if it's not empty
          if (_controller.text.isNotEmpty && filteredSuggestions.isNotEmpty)
            Positioned(
              left: 16.0,
              right: 16.0,
              top: 75.0, // Adjusted to position below the TextField
              child: Material(
                color: Colors.white,
                elevation: 3,
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  height: 200,
                  child: ListView.builder(
                    itemCount: filteredSuggestions.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(filteredSuggestions[index]),
                        onTap: () {
                          // Handle selection
                          print('Selected: ${filteredSuggestions[index]}');
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
          // Positioned container with "data" text
          Positioned.fill(
            left: 16.0,
            right: 16.0,
            top: 80.0, // Adjusted to position below the suggestions list
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "data",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 150,
                    itemBuilder: (context, index) {
                      return Text("${index}");
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SavedPost {
  final String id;
  final String userId;
  final String postId;
  final String createdAt;
  final String updatedAt;

  SavedPost({
    required this.id,
    required this.userId,
    required this.postId,
    required this.createdAt,
    required this.updatedAt,
  });

  /// Factory constructor for JSON deserialization
  factory SavedPost.fromJson(Map<String, dynamic> json) {
    return SavedPost(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      postId: json['post_id'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );
  }

  /// Converts the object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'post_id': postId,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}
