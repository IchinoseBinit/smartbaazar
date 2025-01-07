import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_places_flutter/google_places_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_places_flutter/model/place_type.dart';
import 'package:google_places_flutter/model/prediction.dart';
import 'package:smartbazar/features/b2b_screen/view/b2b_screen.dart';
import 'package:smartbazar/features/brand_bazar/brand_bazar_screen.dart';
import 'package:smartbazar/features/bussiness_tab_screen/view/business_tab_screen.dart';
import 'package:smartbazar/features/create_listing/view/create_new_listing_screen.dart';
import 'package:smartbazar/features/events_screen/view/events_screen.dart';
import 'package:smartbazar/features/grocessary_screen/view/grocary_screen.dart';
import 'package:smartbazar/features/home/api/get_story_provider.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/hot_deals/view/hot_vew_screen.dart';
import 'package:smartbazar/features/jobs_screen/view/jobs_screen.dart';
import 'package:smartbazar/features/pending_approval/pending_approval.dart';
import 'package:smartbazar/features/proceed_pay/view/proceed_to_pay_screen.dart';
import 'package:smartbazar/features/services_screen/service_screen.dart';
import 'package:smartbazar/features/socio_screen/view/socio_screen.dart';
import 'package:smartbazar/features/splash_screen/splash_screen.dart';
import 'package:smartbazar/features/used_screen/view/used_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_profile_screen.dart';
import 'package:smartbazar/features/vendor/view/my_listing_screen.dart';

void main() {
  const FlutterErrorDetails(exception: PrintHandler);
  runApp(const ProviderScope(child: MyApp()));
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
            // textTheme: GoogleFonts.quicksandTextTheme(
            //   Theme.of(context).textTheme,
            // ),
            fontFamily: GoogleFonts.quicksand().fontFamily,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: SplashScreen()),
    );
  }
}

class AutoCompleteExample extends StatefulWidget {
  @override
  _AutoCompleteExampleState createState() => _AutoCompleteExampleState();
}

class _AutoCompleteExampleState extends State<AutoCompleteExample> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Location"),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Search for a Location in Nepal',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            // TextField for Location Search
            GooglePlaceAutoCompleteTextField(
              textEditingController: controller,
              googleAPIKey:
                  "AIzaSyDFBSV8xaOPkKKf7xTaw7xEE1KqClJ5OFI", // Replace with your actual API key
              debounceTime: 800, // Default debounce time
              inputDecoration: InputDecoration(
                hintText: "Type to search...",
                hintStyle: TextStyle(color: Colors.grey),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
              countries: ["np"], // Filter for Nepal locations
              isLatLngRequired: true, // Fetch latitude and longitude
              getPlaceDetailWithLatLng: (Prediction prediction) {
                // Print latitude and longitude of the selected place
                print(
                    "Place Details: Latitude: ${prediction.lat}, Longitude: ${prediction.lng}");
              },
              itemClick: (Prediction prediction) {
                setState(() {
                  controller.text = prediction.description ?? "";
                  controller.selection = TextSelection.fromPosition(
                    TextPosition(offset: controller.text.length),
                  );
                });
              },
              itemBuilder: (context, index, Prediction prediction) {
                return Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: Colors.grey.shade300)),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.location_on, color: Colors.blue),
                      SizedBox(width: 10),
                      Expanded(
                          child: Text(prediction.description ?? "",
                              style: TextStyle(fontSize: 16))),
                    ],
                  ),
                );
              },
              seperatedBuilder: const Divider(), // Optional separator
              isCrossBtnShown: true, // Show a close button in the search field
              containerHorizontalPadding: 10,
              placeType: PlaceType.address, // Place type filter
            ),
            SizedBox(height: 20),
            // Display selected location info
            if (controller.text.isNotEmpty)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.blue),
                        SizedBox(width: 10),
                        Expanded(
                            child: Text(controller.text,
                                style: TextStyle(fontSize: 16))),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
