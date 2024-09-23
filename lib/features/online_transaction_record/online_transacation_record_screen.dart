import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/online_transaction_record/api/online_transaction_api.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

import 'package:smartbazar/features/online_transaction_record/model/online_transaction_model.dart';

class OnlineTransactionRecordScreen extends ConsumerStatefulWidget {
  const OnlineTransactionRecordScreen({super.key});

  @override
  ConsumerState<OnlineTransactionRecordScreen> createState() =>
      _OnlineTransactionRecordScreenState();
}

class _OnlineTransactionRecordScreenState
    extends ConsumerState<OnlineTransactionRecordScreen> {
  // Separate pagination states for each tab
  int allTransactionsPage = 1;
  int holdTransactionsPage = 1;
  int releaseTransactionsPage = 1;

  final int pageSize = 5; // Items per page

  // Function to get a paginated subset of transactions
  List<Payment> getPaginatedTransactions(
      List<Payment> transactions, int currentPage) {
    int startIndex = (currentPage - 1) * pageSize;
    int endIndex = startIndex + pageSize;

    if (startIndex >= transactions.length) {
      return []; // Return empty list if start index exceeds total transactions
    }

    return transactions.sublist(
      startIndex,
      endIndex > transactions.length ? transactions.length : endIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    final asyncTransactionData =
        ref.watch(getOnlineTransactionResponseProvider);

    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F1F1),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: asyncTransactionData.when(
            data: (transactionData) {
              final allTransactions = transactionData.data.allPayments;
              final holdTransactions = transactionData.data.holdPayments;
              final releaseTransactions =
                  transactionData.data.releasePayments.cast<Payment>();

              return Column(
                children: [
                  _buildHeader(),
                  Divider(thickness: 2.w, color: const Color(0xffD9D9D9)),
                  SizedBox(height: 10.h),
                  Expanded(
                    child: DefaultTabController(
                      length: 3, // Number of tabs
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const TabBar(
                            isScrollable: true,
                            dividerColor: Color(0xffD9D9D9),
                            tabs: [
                              Tab(text: 'All Transaction'),
                              Tab(text: 'Hold Transaction'),
                              Tab(text: 'Release Transaction'),
                            ],
                          ),
                          Expanded(
                            child: TabBarView(
                              physics: const ScrollPhysics(),
                              children: [
                                // All Transactions Tab
                                _buildPaginatedTab(
                                    allTransactions, allTransactionsPage,
                                    (newPage) {
                                  setState(() => allTransactionsPage = newPage);
                                }),
                                // Hold Transactions Tab
                                _buildPaginatedTab(
                                    holdTransactions, holdTransactionsPage,
                                    (newPage) {
                                  setState(
                                      () => holdTransactionsPage = newPage);
                                }),
                                // Release Transactions Tab
                                _buildPaginatedTab(releaseTransactions,
                                    releaseTransactionsPage, (newPage) {
                                  setState(
                                      () => releaseTransactionsPage = newPage);
                                }),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stackTrace) => Center(child: Text('Error: $error')),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Row(
        children: [
          const Icon(Icons.money),
          SizedBox(width: 8.w),
          Text(
            'Online Transaction Record',
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
          )
        ],
      ),
    );
  }

  // Build a paginated view for each tab
  Widget _buildPaginatedTab(
      List<Payment> transactions, int currentPage, Function(int) updatePage) {
    List<Payment> paginatedTransactions =
        getPaginatedTransactions(transactions, currentPage);
    int totalPages = (transactions.length / pageSize).ceil();

    return Column(
      children: [
        Expanded(
          child: _buildTransactionList(paginatedTransactions),
        ),
        _buildPaginationControls(currentPage, totalPages, updatePage),
      ],
    );
  }

  // Widget to build the paginated transaction list
  Widget _buildTransactionList(List<Payment> transactions) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final payment = transactions[index]; // Get the transaction data
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: OnlineTransactionRecordWidget(
                      payment: payment), // Pass data
                );
              },
              separatorBuilder: (context, index) => SizedBox(height: 14.h),
              itemCount: transactions.length,
            ),
            SizedBox(height: 20.h),
            Divider(thickness: 2.w, color: const Color(0xffD9D9D9)),
          ],
        ),
      ),
    );
  }

  // Pagination controls for each tab
  // Widget _buildPaginationControls(
  //     int currentPage, int totalPages, Function(int) updatePage) {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       ElevatedButton(
  //         style: ButtonStyle(
  //           splashFactory: NoSplash.splashFactory,
  //           backgroundColor: WidgetStateProperty.all(
  //               const Color(0xff362677) ?? Colors.transparent),
  //           side: WidgetStateProperty.all<BorderSide>(
  //             BorderSide(
  //               color: const Color(0xff362677),
  //               width: 1,
  //             ),
  //           ),
  //           shape: WidgetStateProperty.all<RoundedRectangleBorder>(
  //             RoundedRectangleBorder(
  //               borderRadius: BorderRadius.circular(10.r),
  //             ),
  //           ),
  //         ),
  //         onPressed: currentPage > 1
  //             ? () => updatePage(currentPage - 1)
  //             : null, // Disable if on first page
  //         child: const Text('Previous',style: TextStyle(color: Colors.white),),
  //       ),
  //       SizedBox(width: 20.w),
  //       Text('Page $currentPage of $totalPages',
  //           style: TextStyle(fontSize: 14.sp)),
  //       SizedBox(width: 20.w),
  //       ElevatedButton(
  //         onPressed: currentPage < totalPages
  //             ? () => updatePage(currentPage + 1)
  //             : null, // Disable if on last page
  //         child: const Text('Next'),
  //       ),
  //     ],
  //   );
  // }
}

Widget _buildPaginationControls(
    int currentPage, int totalPages, Function(int) updatePage) {
  int maxPagesToShow = 5; // Maximum number of page numbers to show at a time
  int startPage = 1;
  int endPage = totalPages;

  // Calculate the start and end page based on the current page
  if (totalPages > maxPagesToShow) {
    if (currentPage <= 3) {
      startPage = 1;
      endPage = maxPagesToShow;
    } else if (currentPage + 2 >= totalPages) {
      startPage = totalPages - maxPagesToShow + 1;
      endPage = totalPages;
    } else {
      startPage = currentPage - 2;
      endPage = currentPage + 2;
    }
  }

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // Previous Button
      IconButton(
        icon: Icon(
          Icons.chevron_left,
          size: 35.w,
        ),
        onPressed: currentPage > 1
            ? () => updatePage(currentPage - 1)
            : null, // Disable if on the first page
      ),
      SizedBox(width: 5.w),
      // Page Numbers
      Row(
        children: List.generate(endPage - startPage + 1, (index) {
          int pageNumber = startPage + index;
          bool isCurrentPage = pageNumber == currentPage;

          return GestureDetector(
            onTap: () => updatePage(pageNumber),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              child: Container(
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isCurrentPage
                      ? const Color(0xff362677)
                      : Colors.transparent, // White background for active page
                  border: Border.all(
                    color: const Color(0xff362677),
                    width: 1.w,
                  ),
                ),
                child: Text(
                  '$pageNumber',
                  style: TextStyle(
                    color: isCurrentPage
                        ? Colors.white // Highlight text color for active page
                        : Colors.black,
                    fontWeight:
                        isCurrentPage ? FontWeight.bold : FontWeight.normal,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
      SizedBox(width: 5.w),
      // Next Button
      IconButton(
        icon: Icon(
          Icons.chevron_right,
          size: 35.w,
        ),
        onPressed: currentPage < totalPages
            ? () => updatePage(currentPage + 1)
            : null, // Disable if on the last page
      ),
    ],
  );
}

class OnlineTransactionRecordWidget extends StatelessWidget {
  final Payment payment; // Accept Payment object

  const OnlineTransactionRecordWidget({
    super.key,
    required this.payment, // Make it required
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                payment.userId ?? 'Unknown User', // Use dynamic data
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Rs ${payment.amount}', // Dynamic amount
                style: TextStyle(
                  fontSize: 16.sp,
                  color: const Color(0xff36383C),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(height: 3.h),
          Text(
            'Transaction ID: ${payment.transactionId}', // Dynamic transaction ID
            style: TextStyle(
              fontSize: 10.sp,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8.h),
          Container(
            padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 10.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: const Color(0xffF6F1F1),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product Amount',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Rs ${payment.amount}', // Dynamic product amount
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: const Color(0xff36383C),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery Amount',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Rs ${payment.delCost}', // Dynamic delivery amount
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: const Color(0xff36383C),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Status: ${payment.status}', // Dynamic status
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Order ID: ${payment.orderId}', // Dynamic order ID
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
