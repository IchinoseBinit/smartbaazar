import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartbazar/constant/color_constant.dart';

class LocationWidget extends StatefulWidget {
  final double longitude;
  final double latitude;
  final double shortestdistance;

  const LocationWidget(
      {Key? key,
      required this.latitude,
      required this.longitude,
      required this.shortestdistance})
      : super(key: key);

  @override
  _LocationWidgetState createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  String _address = "Fetching location...";

  @override
  void initState() {
    super.initState();
    _fetchAddress();
  }

  Future<void> _fetchAddress() async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        widget.latitude,
        widget.longitude,
      );
      if (placemarks.isNotEmpty) {
        Placemark place = placemarks.first;
        if (mounted) {
          setState(() {
            _address =
                "${place.locality ?? 'Unknown'}, ${place.administrativeArea ?? 'Unknown'}";
          });
        }
      } else {
        if (mounted) {
          setState(() {
            _address = "Location not available";
          });
        }
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _address = "Location not found";
        });
      }
    }
  }

  @override
  void dispose() {
    // Clean up resources if needed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      padding: const EdgeInsets.all(5),
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(colors: [Colors.white, Color(0xFFf3f3f3)]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Deliver to",
                    style: headerstyle.copyWith(
                      color: Colors.black87,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Container(
                    width: 300.w,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xffD9D9D9)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.location_on),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              _address,
                              style: headerstyle.copyWith(
                                color: ColorConstant.blackColor,
                                fontFamily: GoogleFonts.quicksand().fontFamily,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 1, // Restrict text to a single line
                              overflow: TextOverflow
                                  .ellipsis, // Add ellipsis when text overflows
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset("assets/images/point.png"),
                      ],
                    ),
                  ),
                ],
              ),
              Image.asset("assets/images/pathao.png"),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 10.w,
              ),
              const Icon(Icons.location_on),
              SizedBox(
                width: 5.w,
              ),
              Text("${widget.shortestdistance.toStringAsFixed(2)} KM"),
              SizedBox(
                width: 10.w,
              ),
              Image.asset('assets/images/clock.png'),
              SizedBox(
                width: 5.w,
              ),
              const Text("24 to 48 hours"),
              const Spacer(),
              Image.asset("assets/images/upaye.png"),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}
