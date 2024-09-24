import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/auth/widgets/general_elevated_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/vendor/view/added_disputes_screen.dart';
import 'package:smartbazar/features/vendor/view/api/dispute_api.dart';
import 'package:smartbazar/features/vendor/view/model/dispute_model.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class DisputesScreen extends ConsumerWidget {
  const DisputesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final disputeAsyncValue = ref.watch(getDisputeResponseProvider);

    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F1F1),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Column(
            children: [
              // Header Section
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Row(
                  children: [
                    const Icon(Icons.mic),
                    SizedBox(width: 8.w),
                    Text(
                      'Disputes',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Text(
                        'Go back',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff888888),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(thickness: 2.w, color: const Color(0xffD9D9D9)),
              SizedBox(height: 10.h),

              // Tab View for Disputes
              Expanded(
                child: disputeAsyncValue.when(
                  data: (disputeData) {
                    return DefaultTabController(
                      length: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const TabBar(
                            tabAlignment: TabAlignment.start,
                            isScrollable: true,
                            dividerColor: Color(0xffD9D9D9),
                            tabs: [
                              Tab(text: 'Disputes Received'),
                              Tab(text: 'Disputes Filed'),
                            ],
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                // Disputes Received Tab
                                buildDisputeList(disputeData.disputesReceived),
                                // Disputes Filed Tab
                                buildDisputeList(disputeData.disputesFiled),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (error, stack) => Center(child: Text('Error: $error')),
                ),
              ),

              // Add New Dispute Button
              GeneralEelevatedButton(
                text: 'Add New',
                onPresssed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const AddNewDisputes()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDisputeList(List<Dispute>? disputes) {
    if (disputes == null || disputes.isEmpty) {
      return const Center(
        child: Text('No Disputes Available'),
      );
    }

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: SingleChildScrollView(
        child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, int index) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: DisputesDetails(dispute: disputes[index]),
          ),
          separatorBuilder: (context, index) => SizedBox(height: 14.h),
          itemCount: disputes.length,
        ),
      ),
    );
  }
}

class DisputesDetails extends StatelessWidget {
  final Dispute dispute;

  const DisputesDetails({
    super.key,
    required this.dispute,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xff00000040).withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Vendor Name and Dispute ID
          Text(
            dispute.vendorName ?? 'Unknown Vendor',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 3.h),
          Text(
            'Dispute ID: ${dispute.id ?? 'N/A'}',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 7.w),

          // Issue and Message
          Card(
            color: Colors.white,
            child: ExpansionTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dispute.issue ?? 'No issue specified',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    dispute.message ?? 'No message provided',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
              children: [
                // Status and Proof
                Text(
                  'Status: ${dispute.status == '0' ? 'Pending' : 'Resolved'}',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Text(
                      'Proof:',
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    GeneralTextButton(
                      height: 35.h,
                      fgColor: Colors.white,
                      bgColor: const Color(0xffADADAD),
                      title: 'Image',
                      onPressed: () {
                        if (dispute.imageUrl != null) {
                          print('Image URL>>>>>>>>>>>>>>>>>>>>: ${dispute.imageUrl}');
                          // Display image or open URL logic
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  FullScreenImage(imageUrl: dispute.imageUrl!),
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FullScreenImage extends StatelessWidget {
  final String imageUrl;

  const FullScreenImage({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: Image.network(
              imageUrl,
              fit: BoxFit.contain,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) {
                  return child; // The image has finished loading.
                }
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            (loadingProgress.expectedTotalBytes ?? 1)
                        : null,
                  ),
                ); // Show CircularProgressIndicator while the image loads.
              },
              errorBuilder: (context, error, stackTrace) {
                return const Center(
                  child: Text(
                    'Failed to load image',
                    style: TextStyle(color: Colors.white),
                  ),
                );
              },
            ),
          ),
          Positioned(
            top: 40,
            right: 20,
            child: IconButton(
              icon: const Icon(Icons.close, color: Colors.white, size: 30),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}

