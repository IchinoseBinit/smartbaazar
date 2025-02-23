import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartbazar/features/feed-form_screen/api/products_feed_dropdown_api.dart';
import 'package:smartbazar/features/feed-form_screen/model/products_feed_dropdown.dart';

class Practice extends ConsumerStatefulWidget {
  final int vid;

  const Practice({super.key, required this.vid});

  @override
  ConsumerState<Practice> createState() => _PracticeState();
}

class _PracticeState extends ConsumerState<Practice> {
  List<String> selectedIds = []; // Local list to store selected product IDs as strings

  @override
  Widget build(BuildContext context) {
    final productsFeedAsync = ref.watch(getProductsFeedDropdownProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Multi-Select Dropdown')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            productsFeedAsync.when(
              data: (productsFeed) {
                final products = productsFeed.products ?? [];

                if (products.isEmpty) {
                  return Text("No products available");
                }

                return TextFormField(
                  readOnly: true,
                  decoration: InputDecoration(
                    labelText: 'Select Products',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.arrow_drop_down),
                  ),
                  onTap: () async {
                    final selected = await showDialog<List<String>>(
                      context: context,
                      builder: (context) => MultiSelectDialog(
                        products: products,
                        initiallySelected: selectedIds,
                      ),
                    );

                    if (selected != null) {
                      setState(() {
                        selectedIds = selected;
                      });
                    }
                  },
                );
              },
              loading: () => CircularProgressIndicator(),
              error: (e, _) => Text('Error: $e'),
            ),
            SizedBox(height: 20),
            Text('Selected IDs: ${selectedIds.join(", ")}'),
          ],
        ),
      ),
    );
  }
}

class MultiSelectDialog extends StatefulWidget {
  final List<Product> products;
  final List<String> initiallySelected;

  const MultiSelectDialog({
    Key? key,
    required this.products,
    required this.initiallySelected,
  }) : super(key: key);

  @override
  _MultiSelectDialogState createState() => _MultiSelectDialogState();
}

class _MultiSelectDialogState extends State<MultiSelectDialog> {
  late List<String> selectedIds;

  @override
  void initState() {
    super.initState();
    selectedIds = List.from(widget.initiallySelected);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Select Products'),
      content: SingleChildScrollView(
        child: Column(
          children: widget.products.map((product) {
            final String productId = product.id ?? ""; // Keep as String

            return CheckboxListTile(
              title: Text(product.title ?? "Unknown"),
              value: selectedIds.contains(productId),
              onChanged: (bool? checked) {
                setState(() {
                  if (checked == true) {
                    selectedIds.add(productId);
                  } else {
                    selectedIds.remove(productId);
                  }
                });
              },
            );
          }).toList(),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () => Navigator.pop(context, selectedIds),
          child: Text('OK'),
        ),
      ],
    );
  }
}
