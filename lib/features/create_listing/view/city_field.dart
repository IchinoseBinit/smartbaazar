import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/create_listing/api/get_dropdown_value_api.dart';
import 'package:smartbazar/features/create_listing/model/dropdown_value_model.dart';
import 'package:smartbazar/features/create_listing/widget/create_listing_card_widget.dart';

class CityField extends StatefulWidget {
  const CityField({super.key});

  @override
  State<CityField> createState() => _CityFieldState();
}

class _CityFieldState extends State<CityField> {
  final TextEditingController _controller = TextEditingController();
  List<CityList> _cities = [];
  List<CityList> _filteredCities = [];
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _controller.removeListener(_onSearchChanged);
    _controller.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    if (_controller.text.isNotEmpty) {
      _fetchCities(_controller.text);
    } else {
      setState(() {
        _filteredCities = [];
      });
    }
  }

  Future<void> _fetchCities(String query) async {
    setState(() {
      _isLoading = true;
    });

    try {
      NewListingRepository repository = NewListingRepository();
      List<CityList> fetchedCities =
          await repository.fetchCities(1); // Fetch first page only
      setState(() {
        _filteredCities = fetchedCities
            .where(
                (city) => city.name.toLowerCase().contains(query.toLowerCase()))
            .toList();
      });
    } catch (e) {
      print('Failed to load cities: $e');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  void _onCitySelected(CityList city) {
    setState(() {
      _controller.text = city.name;
      _filteredCities = [];
      FocusScope.of(context).unfocus(); // Unfocus the text field
    });
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
              const Spacer(),
              Expanded(
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration.collapsed(
                      hintText: 'Select a city',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: const Color(0xffADADAD))),
                ),
              ),
            ],
          ),
        ),
        if (_filteredCities.isNotEmpty)
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Card(
              elevation: 4.0,
              color: Colors.blue.shade50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _filteredCities.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_filteredCities[index].name),
                    onTap: () => _onCitySelected(_filteredCities[index]),
                  );
                },
              ),
            ),
          ),
        if (_isLoading)
          const Center(
            child: CircularProgressIndicator(),
          ),
      ],
    );
  }
}
