import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/features/create_listing/view/create_new_listing_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_name.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class DottedContainer extends StatelessWidget {
  final String? firstImage;
  final List<Deal>? deals;
  final String vname;

  const DottedContainer(
      {super.key,
      required this.firstImage,
      required this.deals,
      required this.vname});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 10.h,
      ),
      child: SizedBox(
        height: 180.h,
        child: Row(
          children: [
            _buildFirstItem(firstImage!, vname, context),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: deals?.length ?? 0,
                itemBuilder: (context, index) {
                  final data = deals![index];
                  return GestureDetector(
                      onTap: () => _openStoryView(context, index),
                      child: buildDealItemWidget(data: data));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFirstItem(String firstImage, String name, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context, rootNavigator: true).push(
          MaterialPageRoute(
            builder: (context) => const CreateNewListinScreen(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        padding: EdgeInsets.only(
          bottom: 5.h,
        ),
        child: DottedBorder(
          color: Colors.black,
          strokeWidth: 2,
          borderType: BorderType.RRect,
          radius: const Radius.circular(12),
          dashPattern: const [6, 5],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                width: 100.w,
                height: 100.h,
                child: Image.network(
                  firstImage ?? 'https://via.placeholder.com/120',
                  fit: BoxFit.contain,
                ),
              ),
              const Spacer(),
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 13.sp,
                  color: Colors.black,
                ),
              ),
              const Icon(Icons.add),
            ],
          ),
        ),
      ),
    );
  }

  void _openStoryView(BuildContext context, int index) {
    Navigator.of(context, rootNavigator: true).push(
      MaterialPageRoute(
        builder: (context) => VendorStoryScreen(
          deals: deals ?? [],
          initialIndex: index,
          currentIndex: index,
        ),
      ),
    );
  }
}

class buildDealItemWidget extends StatelessWidget {
  const buildDealItemWidget({
    super.key,
    required this.data,
  });

  final Deal data;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 2.w),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: DottedBorder(
        color: const Color(0xffD9D9D9),
        strokeWidth: 2,
        borderType: BorderType.RRect,
        radius: const Radius.circular(12),
        dashPattern: const [6, 5],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Image.network(
              data.image ?? 'https://via.placeholder.com/110',
              height: 90.h,
              width: 90.w,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 30.h),
            SizedBox(
              height: 30.h,
              width: 110.w,
              child: ElevatedButton(
                style: ButtonStyle(
                  padding: WidgetStateProperty.all(EdgeInsets.zero),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  backgroundColor: WidgetStateProperty.all(
                    const Color(0xff362677),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  data.discount_percentage == null
                      ? '0%'
                      : '${data.discount_percentage}%',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12.sp,
                      color: ColorConstant.whiteColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class VendorStoryScreen extends ConsumerStatefulWidget {
  // final String author;
  // final int storyCount;
  // final Story? feedStory;
  final List<Deal> deals;
  final int initialIndex;
  final int currentIndex;
  // final String productid;

  const VendorStoryScreen({
    super.key,
    // required this.author,
    // required this.storyCount,
    required this.deals,
    required this.initialIndex,
    required this.currentIndex,
    // required this.productid,
    // this.feedStory,
  });

  @override
  ConsumerState<VendorStoryScreen> createState() => _VendorStoryScreenState();
}

class _VendorStoryScreenState extends ConsumerState<VendorStoryScreen>
    with TickerProviderStateMixin {
  late PageController _pageController;
  late AnimationController _animationController;
  int _currentStoryIndex = 0;
  bool _isPaused = false;

  // @override
  // void initState() {
  //   _currentStoryIndex = widget.currentIndex;
  //   super.initState();
  // }

  @override
  void initState() {
    super.initState();
    _currentStoryIndex = widget.currentIndex;
    _initializeControllers();

    // Start auto-scroll immediately
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startAutoScroll();
    });
  }

  void _initializeControllers() {
    _pageController = PageController(
      initialPage: widget.initialIndex,
      keepPage: true,
    );

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed && !_isPaused) {
        _moveToNextStory();
      }
    });

    // Add listener to update progress smoothly
    _animationController.addListener(() {
      setState(() {}); // Update UI on animation value change
    });
  }

  void _startAutoScroll() {
    if (!_isPaused && !_animationController.isAnimating) {
      _animationController.reset();
      _animationController.forward(from: 0);
    }
  }

  void _moveToNextStory() {
    if (_currentStoryIndex >= widget.deals.length - 1) {
      Navigator.pop(context);
      return;
    }

    setState(() {
      _currentStoryIndex++;
    });

    _pageController.animateToPage(
      _currentStoryIndex,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );

    _animationController.reset();
    _animationController.forward();
  }

  void _previousStory() {
    // if (images.isEmpty) return; // Prevent division by zero

    if (_currentStoryIndex <= widget.deals.length - 1) {
      Navigator.pop(context);
      return;
    }

    setState(() {
      _currentStoryIndex--;
    });

    _pageController.animateToPage(
      _currentStoryIndex,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );

    _animationController.reset();
    _animationController.forward();
  }

  void _onLongPress(bool isPressed) {
    setState(() {
      _isPaused = isPressed;
    });
    if (isPressed) {
      _animationController.stop();
    } else {
      _animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: GestureDetector(
          onTapUp: (details) {
            final tapPosition = details.localPosition.dx;
            final halfWidth = MediaQuery.of(context).size.width / 2;
            if (tapPosition < halfWidth) {
              _previousStory();
            } else {
              _moveToNextStory();
            }
          },
          onLongPressStart: (_) => _onLongPress(true),
          onLongPressEnd: (_) => _onLongPress(false),
          child: Stack(
            children: [
              PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() => _currentStoryIndex = index);
                },
                physics: const NeverScrollableScrollPhysics(),
                itemCount: widget.deals.length,
                itemBuilder: (context, index) {
                  final deal = widget.deals[index];
                  return _buildStoryItem(deal);
                },
              ),
              _buildProgressIndicator(),
              // _buildActionButtons(),
              // if (_showDialog) _buildDialog(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStoryItem(Deal deal) {
    return Stack(
      children: [
        _buildStoryImage(deal.image ?? ''),
        //_buildAuthorSection(),
      ],
    );
  }

  Widget _buildStoryImage(String imageUrl) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Image.network(
        imageUrl,
        fit: BoxFit.contain,
        alignment: Alignment.center,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes!
                  : null,
            ),
          );
        },
        errorBuilder: (context, object, stackTrace) {
          return const Center(
            child: Icon(
              Icons.image_not_supported,
              color: Colors.grey,
              size: 48,
            ),
          );
        },
      ),
    );
  }

  Widget _buildProgressIndicator() {
    return Positioned(
      top: 30,
      left: 10,
      right: 10,
      child: Container(
        height: 4.0,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: FractionallySizedBox(
          alignment: Alignment.centerLeft, // Add this line
          widthFactor: _animationController.value,
          child: Container(
            height: 4.0,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    _animationController.dispose();
    super.dispose();
  }
}
