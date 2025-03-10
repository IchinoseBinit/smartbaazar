import 'package:flutter/material.dart';
import 'package:smartbazar/features/favourite_list/api/favourite_list_api.dart';
import 'package:smartbazar/features/favourite_list/model/favourite_product_list.dart';

class FavouriteScreen extends StatefulWidget {
  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  List<FavouriteProduct> favouriteList = []; // List to hold products
  bool isLoading = false;
  int pageNum = 1; // Current page number

  // Fetch data function
  Future<void> fetchFavouriteData() async {
    setState(() {
      isLoading = true;
    });

    try {
      final result = await getFavouriteList(context, pagenum: pageNum);
      if (result.data?.savedProducts?.data != null) {
        setState(() {
          favouriteList.addAll(result.data!.savedProducts!.data!); // Append new data
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print('Error fetching data: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchFavouriteData(); // Fetch initial data
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite Products'),
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (scrollInfo) {
          if (!isLoading &&
              scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
            // If we've reached the end of the list and no data is being loaded, fetch more
            setState(() {
              pageNum++;
            });
            fetchFavouriteData();
          }
          return true;
        },
        child: ListView.builder(
          itemCount: favouriteList.length + 1, // +1 for the loading indicator
          itemBuilder: (context, index) {
            if (index == favouriteList.length) {
              // Show loading indicator at the bottom of the list
              return isLoading
                  ? Center(child: CircularProgressIndicator())
                  : SizedBox.shrink(); // Empty space if not loading
            }

            final product = favouriteList[index];

            return ListTile(
              title: Text(product.title ?? 'No Title'),
              subtitle: Text(product.description ?? 'No Description'),
              trailing: Text(product.price ?? 'No Price'),
              leading: Image.network(product.image ?? '', width: 50, height: 50),
            );
          },
        ),
      ),
    );
  }
}
