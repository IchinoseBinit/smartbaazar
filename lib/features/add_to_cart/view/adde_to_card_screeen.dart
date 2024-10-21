import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/add_to_cart/api/cart_item_api.dart';
import 'package:smartbazar/features/add_to_cart/model/cart_item_model.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/order_details/view/order_details_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class AddToCartScreen extends ConsumerStatefulWidget {
  const AddToCartScreen({super.key});

  @override
  ConsumerState<AddToCartScreen> createState() => _AddToCartScreenState();
}

class _AddToCartScreenState extends ConsumerState<AddToCartScreen> {
  double subtotal = 0.0;
  Map<String, bool> selectedVendors = {};
  List<bool> selectedItems = [];
  String? lastSelectedVendorId;

  void updateSubtotal(List<CartItem> cartItems, List<bool> selectedItems) {
    setState(() {
      subtotal = 0.0;
      for (int i = 0; i < cartItems.length; i++) {
        if (selectedItems[i]) {
          final double price = double.tryParse(cartItems[i].price) ?? 0.0;
          final int quantity = int.tryParse(cartItems[i].qty) ?? 0;
          subtotal += price * quantity;
        }
      }
    });
  }

  void incrementQuantity(CartItem item) async {
    final response = await CartItemApi.incrementQuantity(item.postId!);

    if (response.statusCode == 200) {
      ref.invalidate(getCartItemProvider);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to update cart.')),
      );
    }
  }

  void decrementQuantity(CartItem item) async {
    final response = await CartItemApi.decrementQuantity(item.postId!);

    if (response.statusCode == 200) {
      ref.invalidate(getCartItemProvider);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to update cart.')),
      );
    }
  }

  void proceedToCheckout(List<CartItem> cartItems, List<bool> selectedItems) {
    List<String> selectedProductIds = [];
    List<String?> selectedVendorIds = [];

    for (int i = 0; i < cartItems.length; i++) {
      if (selectedItems[i]) {
        selectedProductIds.add(cartItems[i].id);
        selectedVendorIds.add(cartItems[i].vendorId);
      }
    }

    if (selectedProductIds.isNotEmpty && selectedVendorIds.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => OrderDetailsScreen(
            selectedProductIds: selectedProductIds,
            selectedVendorIds: selectedVendorIds,
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select items to proceed')),
      );
    }
  }

  Map<String, List<CartItem>> groupItemsByVendor(List<CartItem> cartItems) {
    Map<String, List<CartItem>> groupedItems = {};
    for (var item in cartItems) {
      if (groupedItems.containsKey(item.vendorId)) {
        groupedItems[item.vendorId]!.add(item);
      } else {
        groupedItems[item.vendorId!] = [item];
      }
    }
    return groupedItems;
  }

  void updateItemSelection(CartItem item, bool isSelected) {
    final cartItemsAsyncValue = ref.watch(getCartItemProvider);
    cartItemsAsyncValue.whenData((data) {
      final cartItems = data['cart'] as List<CartItem>? ?? [];
      final index = cartItems.indexOf(item);
      if (index != -1) {
        setState(() {
          // Deselect all items from previously selected vendors
          for (String key in selectedVendors.keys) {
            if (key != item.vendorId) {
              selectedVendors[key] = false;
              final groupedItems = groupItemsByVendor(cartItems);
              final vendorItems = groupedItems[key] ?? [];
              for (var vendorItem in vendorItems) {
                final vendorIndex = cartItems.indexOf(vendorItem);
                selectedItems[vendorIndex] = false;
              }
            }
          }

          // Select or deselect the current item
          selectedItems[index] = isSelected;

          // Update the vendor selection
          final vendorId = item.vendorId;
          final groupedItems = groupItemsByVendor(cartItems);
          final vendorItems = groupedItems[vendorId] ?? [];
          final allSelected = vendorItems
              .every((element) => selectedItems[cartItems.indexOf(element)]);
          selectedVendors[vendorId!] = allSelected;
        });
        updateSubtotal(cartItems, selectedItems);
      }
    });
  }

  void updateVendorSelection(String vendorId, bool isSelected) {
    setState(() {
      // Deselect all items from previously selected vendors
      for (String key in selectedVendors.keys) {
        if (key != vendorId) {
          selectedVendors[key] = false;
          final cartItemsAsyncValue = ref.watch(getCartItemProvider);
          cartItemsAsyncValue.whenData((data) {
            final cartItems = data['cart'] as List<CartItem>? ?? [];
            final groupedItems = groupItemsByVendor(cartItems);
            final vendorItems = groupedItems[key] ?? [];
            for (var vendorItem in vendorItems) {
              final vendorIndex = cartItems.indexOf(vendorItem);
              selectedItems[vendorIndex] = false;
            }
          });
        }
      }

      // Select or deselect the current vendor
      selectedVendors[vendorId] = isSelected;
      final cartItemsAsyncValue = ref.watch(getCartItemProvider);
      cartItemsAsyncValue.whenData((data) {
        final cartItems = data['cart'] as List<CartItem>? ?? [];
        final groupedItems = groupItemsByVendor(cartItems);
        final vendorItems = groupedItems[vendorId] ?? [];
        for (var vendorItem in vendorItems) {
          final vendorIndex = cartItems.indexOf(vendorItem);
          selectedItems[vendorIndex] = isSelected;
        }
        updateSubtotal(cartItems,
            selectedItems); // Call updateSubtotal with the list of cart items and selected items
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final cartItemsAsyncValue = ref.watch(getCartItemProvider);
    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F1F1),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.shopping_cart,
                        size: 25,
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        'Cart',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ));
                        },
                        child: Row(
                          children: [
                            const Icon(
                              size: 15,
                              Icons.arrow_back_ios,
                              color: Color(0xffADADAD),
                            ),
                            Text(
                              'Continue Shopping',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff888888),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const Divider(thickness: 2, color: Color(0xffD9D9D9)),
                const SizedBox(height: 20),
                cartItemsAsyncValue.when(
                  data: (data) {
                    final cartItems = data['cart'] as List<CartItem>? ?? [];
                    final vendors = data['vendors'] as List<Vendor>? ?? [];

                    if (selectedItems.isEmpty) {
                      selectedItems =
                          List<bool>.filled(cartItems.length, false);
                    }

                    final groupedItems = groupItemsByVendor(cartItems);

                    return ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: groupedItems.keys.length,
                      itemBuilder: (context, index) {
                        final vendorId = groupedItems.keys.elementAt(index);
                        final vendorItems = groupedItems[vendorId]!;
                        final vendor = vendors.firstWhere(
                          (v) => v.id == vendorId,
                          orElse: () => Vendor(id: '0', name: 'Unknown'),
                        );

                        return Padding(
                          padding: EdgeInsets.only(bottom: 16.h),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 6.w, vertical: 10.h),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: const Color(0xffFFFFFF),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.2),
                                  spreadRadius: 10,
                                  blurRadius: 10,
                                  offset: const Offset(1, 0),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        // Safely handle the potential null value
                                        bool currentSelection = selectedVendors[
                                                vendorId] ??
                                            false; // Default to false if null
                                        updateVendorSelection(
                                            vendorId, !currentSelection);
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 15,
                                          height: 15,
                                          decoration: BoxDecoration(
                                            color: selectedVendors[vendorId] ==
                                                    true
                                                ? const Color(0xff362677)
                                                : null,
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color:
                                                  selectedVendors[vendorId] ==
                                                          true
                                                      ? const Color(0xff362677)
                                                      : const Color(0xffD9D9D9),
                                              width: 1.0,
                                            ),
                                          ),
                                          child:
                                              selectedVendors[vendorId] == true
                                                  ? const Icon(
                                                      Icons.check,
                                                      size: 12.0,
                                                      color: Colors.white,
                                                    )
                                                  : null,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7.w,
                                    ),
                                    Text(
                                      vendor.name,
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color(0xffADADAD),
                                    ),
                                    const Spacer(),
                                    InkWell(
                                      child: SvgPicture.asset(deleteIcon),
                                    ),
                                  ],
                                ),
                                ListView.separated(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: vendorItems.length,
                                  itemBuilder: (context, vendorItemIndex) {
                                    final cartItem =
                                        vendorItems[vendorItemIndex];

                                    return AddToCartPRoductDetails(
                                      cartItem: cartItem,
                                      vendors: vendors,
                                      isSelected: selectedItems[
                                          cartItems.indexOf(cartItem)],
                                      onDecrement: () =>
                                          decrementQuantity(cartItem),
                                      onIncrement: () =>
                                          incrementQuantity(cartItem),
                                      onSelected: (isSelected) {
                                        updateItemSelection(
                                            cartItem, isSelected);
                                      },
                                    );
                                  },
                                  separatorBuilder: (context, index) =>
                                      SizedBox(height: 8.h),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  loading: () => const CircularProgressIndicator(),
                  error: (err, stack) => Text('Error: $err'),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Sub Total',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff36383C),
                            ),
                          ),
                          Text(
                            'Rs $subtotal',
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff36383C),
                            ),
                          ),
                        ],
                      ),
                      GeneralTextButton(
                        marginH: 0,
                        fgColor: Colors.white,
                        bgColor: const Color(0xff362677),
                        title: 'Checkout',
                        onPressed: () {
                          cartItemsAsyncValue.whenData((data) {
                            proceedToCheckout(
                              data['cart'] as List<CartItem>? ?? [],
                              selectedItems,
                            );
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AddToCartPRoductDetails extends StatefulWidget {
  final CartItem cartItem;
  final List<Vendor> vendors;
  final bool isSelected;
  final ValueChanged<bool> onSelected;
  // final VoidCallback onDelete;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const AddToCartPRoductDetails({
    required this.cartItem,
    required this.vendors,
    required this.isSelected,
    required this.onSelected,
    required this.onDecrement,
    // required this.onDelete,
    required this.onIncrement,
    super.key,
  });

  @override
  State<AddToCartPRoductDetails> createState() =>
      _AddToCartPRoductDetailsState();
}

class _AddToCartPRoductDetailsState extends State<AddToCartPRoductDetails> {
  late bool _isChecked;
  // bool _isClicked = false;

  String getVendorName(String vendorId) {
    final vendor = widget.vendors.firstWhere(
      (v) => v.id == vendorId,
      orElse: () {
        return Vendor(id: '0', name: 'Unknown');
      },
    );
    return vendor.name;
  }

  @override
  void initState() {
    super.initState();
    _isChecked = widget.isSelected;
  }

  @override
  void didUpdateWidget(AddToCartPRoductDetails oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Update local state if the widget's state changes
    if (oldWidget.isSelected != widget.isSelected) {
      setState(() {
        _isChecked = widget.isSelected;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.w),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 10.h),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: const Color(0xffFFFFFF),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.2),
              spreadRadius: 10,
              blurRadius: 10,
              offset: const Offset(1, 0),
            ),
          ],
        ),
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Checkbox(
                //   value: true,
                //   onChanged: (value) {},
                // ),
                GestureDetector(
                  // onTap: () {
                  //   setState(() {
                  //     _isChecked = !_isChecked;
                  //   });
                  // },
                  onTap: () {
                    setState(() {
                      _isChecked = !_isChecked;
                    });
                    widget.onSelected(_isChecked);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                        color: _isChecked ? const Color(0xff362677) : null,

                        // color: _isChecked ? const Color(0xff362677) : null,
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: _isChecked
                                // color: _isChecked
                                ? const Color(0xff362677)
                                : const Color(0xffD9D9D9),
                            width: 1.0),
                      ),
                      // child: _isChecked
                      child: _isChecked
                          ? const Icon(
                              Icons.check,
                              size: 12.0,
                              color: Colors.white,
                            )
                          : null,
                    ),
                  ),
                ),
                SizedBox(
                  width: 7.w,
                ),
                Container(
                    padding: EdgeInsets.only(
                        top: 15.h, left: 8.w, right: 8.w, bottom: 20.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: const Color(0xffF6F1F1),
                    ),
                    child: Image.network(
                      widget.cartItem.image,
                      height: 70.h,
                    )),
                SizedBox(
                  width: 20.w,
                ),
                Expanded(
                    child: Column(
                  children: [
                    Text(
                      widget.cartItem.name,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                  ],
                ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Rs ${widget.cartItem.price}',
                  style: TextStyle(
                      color: const Color(0xff36383C),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        widget.onDecrement();
                      },
                      icon: const Icon(
                        Icons.remove,
                        size: 15,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Center(
                      child: Text(
                        widget.cartItem.qty,
                        style: TextStyle(
                            color: const Color(0xff36383C),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.add,
                        size: 15,
                      ),
                      onPressed: () {
                        widget.onIncrement();
                      },
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
