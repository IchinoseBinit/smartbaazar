import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/create_listing/api/get_location_provider.dart';
import 'package:smartbazar/features/create_listing/model/places_model.dart';
import 'package:smartbazar/features/create_listing/widget/create_listing_card_widget.dart';

class CityField extends StatefulWidget {
  final Function(Place) onCitySelected; // Callback function

  const CityField({super.key, required this.onCitySelected});

  @override
  State<CityField> createState() => _CityFieldState();
}

class _CityFieldState extends State<CityField> {
  final TextEditingController _controller = TextEditingController();
  List<Place> _cityList = []; // List to store city suggestions
  Timer? _debounce;
  Place? _selectedplace;
  bool? _showresult = false;
  @override
  void initState() {
    super.initState();
    _controller.addListener(_onSearchChanged);
  }

  // Debounce for API calls
  void _onSearchChanged() {
    _showresult = true;
    if (_debounce?.isActive ?? false) _debounce!.cancel();

    _debounce = Timer(const Duration(milliseconds: 300), () {
      String searchText = _controller.text.trim();
      if (searchText.isNotEmpty) _getStreet(searchText);
    });
  }

  Future<void> _getStreet(String name) async {
    try {
      final value = await getpickaddress(name);
      setState(() {
        _cityList = value.places ?? [];
      });
    } catch (e) {
      print('Error fetching street data: $e');
      setState(() {
        _cityList = [];
      });
    }
  }

  void _onCitySelected(Place city) {
    setState(() {
      _cityList = []; // Clear the list of cities
      _controller.text =
          city.description!; // Update the text field with the selected city
      _selectedplace = city;
      _showresult = false;
    });

    // Send selected city to parent widget
    widget.onCitySelected(_selectedplace!);

    // Close the keyboard
    FocusScope.of(context).unfocus();
  }

  @override
  void dispose() {
    _controller.removeListener(_onSearchChanged);
    _controller.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreateListingCardWidget(
          child: Row(
            children: [
              Text(
                'City',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: Colors.black),
              ),
              SizedBox(width: 10.w,),
              Expanded(
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Select a city',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: const Color(0xffADADAD)),
                  ),
                ),
              ),
            ],
          ),
        ),
        if (_showresult!)
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Card(
              elevation: 4.0,
              color: const Color(0xffADADAD),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _cityList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_cityList[index].description!),
                    onTap: () => _onCitySelected(_cityList[index]),
                  );
                },
              ),
            ),
          ),
      ],
    );
  }
}
