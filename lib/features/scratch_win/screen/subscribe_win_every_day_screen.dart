import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/scratch_win/api/subscribe_and_win_api.dart';
import 'package:smartbazar/features/scratch_win/model/subscribe_and_win_model.dart';
import 'package:smartbazar/features/terms_condition/view/terms_condtion_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class SubscribeAndWinEveryDay extends ConsumerWidget {
  const SubscribeAndWinEveryDay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(getSubscribeAndWinProvider);

    return GenericSafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 35.h,
        ),
        backgroundColor: const Color(0xffF6F1F1),
        body: asyncValue.when(
          data: (data) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 50.h, left: 45.w, right: 35.w, bottom: 55.h),
                        decoration: BoxDecoration(
                          color: const Color(0xff362677),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Subscribe AND WIN\nEVERDAY\nBANNER',
                              style: TextStyle(
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              'ALL GIFTS WILL BE\nDISPLAYED IN THE BANNER',
                              style: TextStyle(
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: -30,
                        left: 20.w,
                        child: Row(
                          children: [
                            GiftDescriptionContainer(
                              title: 'Total Gifts Worth',
                              value: 'Rs ${data.totalGiftWorth}',
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            GiftDescriptionContainer(
                              title: 'Total Participants',
                              value: data.participantsCount!,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            GiftDescriptionContainer(
                              title: 'Total Gifts',
                              value: '${data.totalGifts}',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      children: [
                        SubscribeWinContainer(
                          title: data.content2!.isNotEmpty
                              ? data.content2 != null &&
                                      data.content2!.isNotEmpty
                                  ? data.content2![0].title ??
                                      'What is Subscribe and Win?'
                                  : 'What is Subscribe and Win?'
                              : 'What is Subscribe and Win?',
                          subTitle: data.content2!.isNotEmpty
                              ? data.content2 != null &&
                                      data.content2!.isNotEmpty
                                  ? data.content2![0].content ?? 'No Content'
                                  : 'Description not available'
                              : 'Description not available',
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SubscribeWinContainer(
                          title: data.content3.isNotEmpty
                              ? data.content3.isNotEmpty
                                  ? (data.content3[0].title ?? 'Default Title')
                                  : 'How to Participate?'
                              : 'How to Participate?',
                          subTitle: data.content3.isNotEmpty
                              ? data.content3.isNotEmpty
                                  ? (data.content3[0].content ??
                                      'Description not available')
                                  : 'Description not available'
                              : 'Description not available',
                          widget: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 25.h,
                                    width: 25.w,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xffFF282F)),
                                    child: Icon(
                                      Icons.heart_broken,
                                      color: Colors.white,
                                      size: 10.h,
                                    ),
                                    // child: SvgPicture.asset(
                                    //   heartIcon,
                                    //   colorFilter: ColorFilter.mode(
                                    //       Colors.white, BlendMode.srcIn),
                                    // ),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    "Follow any Vendors'\npage to enable hit\nnow button",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.card_giftcard,
                                    color: const Color(0xff0338C0),
                                    size: 20.h,
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    "Get a scratch card\n to try your luck\n and win",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        GiftWinnerContianerWidget(
                          gifts: data.gifts,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        TodayGiftWinnerTextWidget(
                          winners: data.winners,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(
                                  width: 1.w, color: const Color(0xffADADAD))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Text(
                                  "Price Sponser",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Center(
                                child: Container(
                                  width: 46.w,
                                  height: 2.h,
                                  color: const Color(0xff0138C2),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                      data.sponsorVendors.length, (index) {
                                    final sponsor = data.sponsorVendors[index];
                                    return Column(
                                      children: [
                                        sponsor.photo != null
                                            ? Image.network(
                                                sponsor.photo!,
                                                width: 30.w,
                                                height: 30.h,
                                                fit: BoxFit.cover,
                                              )
                                            : Container(
                                                width: 30.w,
                                                height: 30.h,
                                                color: Colors
                                                    .grey, // Placeholder if no photo
                                              ),
                                        SizedBox(height: 4.h),
                                        Text(sponsor.name ?? 'No Name'),
                                      ],
                                    );
                                  }),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              const Divider(
                                color: Color(0xffADADAD),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Mileage for Prize Sponsors",
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Container(
                                width: 90.w,
                                height: 3.h,
                                color: const Color(0xff0138C2),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "promotion, Facebook & Instagram boost that will be reached out to millions of viewers all over Nepal. Associate Prize Sponsors' name shall be announced in Nephop Ko Shreepech as prize sponsors. Nephop Ko Shreepech is a rap/ hiphop TV reality show broadcasted in Image Channel every Tuesday & Wednesday, 8 to 9 pm. The show has more than 6 million youtube views every week. Hence, this is a very effective platform for sponsors to promote their brand, products and services.",
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "promotion, Facebook & Instagram boost that will be reached out to millions of viewers all over Nepal. Associate Prize Sponsors' name shall be announced in Nephop Ko Shreepech as prize sponsors. Nephop Ko Shreepech is a rap/ hiphop TV reality show broadcasted in Image Channel every Tuesday & Wednesday, 8 to 9 pm. The show has more than 6 million youtube views every week. Hence, this is a very effective platform for sponsors to promote their brand, products and services.",
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                height: 22.h,
                              ),
                              Center(
                                child: GeneralTextButton(
                                  // marginH: 0,
                                  height: 35.h,
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  title: 'Become a Prize Sponsor',
                                  fgColor: Colors.white,
                                  bgColor: const Color(0xff362677),
                                  borderRadius: 10.r,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) =>
                                                const TermsConditionScreen()));
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(child: Text('Error: $error')),
        ),
      ),
    );
  }
}

class GiftWinnerContianerWidget extends StatelessWidget {
  final List<Gift> gifts;

  const GiftWinnerContianerWidget({
    super.key,
    required this.gifts,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xffF6F1F1),
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Gift and Prices",
              style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Center(
            child: Container(
              width: 46.w,
              height: 2.h,
              color: const Color(0xff0138C2),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columnSpacing: 12.0.h,
              dividerThickness: 1.0,
              headingRowHeight: 50.0.h,
              border: const TableBorder(
                top: BorderSide(color: Colors.grey, width: 1.0),
                bottom: BorderSide(color: Colors.grey, width: 1.0),
                left: BorderSide(color: Colors.grey, width: 1.0),
                right: BorderSide(color: Colors.grey, width: 1.0),
                verticalInside: BorderSide(color: Colors.grey, width: 1.0),
                horizontalInside: BorderSide(color: Colors.grey, width: 1.0),
              ),
              columns: const [
                DataColumn(label: Text('SN', textAlign: TextAlign.center)),
                DataColumn(label: Text('Gift', textAlign: TextAlign.center)),
                DataColumn(
                    label: Text('Worth\n in Rs.', textAlign: TextAlign.center)),
                DataColumn(label: Text('Image', textAlign: TextAlign.center)),
                DataColumn(label: Text('Sponsor', textAlign: TextAlign.center)),
                //  DataColumn(label: Text('Win Date',textAlign: TextAlign.center)),
              ],
              rows: gifts.map((gift) {
                return DataRow(
                  cells: [
                    DataCell(SizedBox(
                        width: 20.w,
                        child: Text('${gifts.indexOf(gift) + 1}'))),
                    DataCell(
                      SizedBox(
                        width: 100.w, // Adjust width as needed
                        child: Text(
                          gift.name!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    DataCell(Text('${gift.worth?.toString()}')),
                    DataCell(
                      Image.network(
                        gift.imageUrl!,
                        width: 50.w,
                        height: 50.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    DataCell(SizedBox(
                      width: 100.w, // Adjust width as needed
                      child: Text(
                        gift.vendorName.name!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )),
                    // DataCell(Text(gift.winDate)),
                  ],
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 10.h),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10.r),
//           border: Border.all(width: 1.w, color: const Color(0xffADADAD))),
//       child: Column(
//         children: [
//           Text(
//             "Gifts and Prices",
//             style: TextStyle(
//                 fontSize: 12.sp,
//                 color: Colors.black,
//                 fontWeight: FontWeight.w700),
//           ),
//           SizedBox(
//             height: 2.h,
//           ),

//           Container(
//             width: 46.w,
//             height: 2.h,
//             color: const Color(0xff0138C2),
//           ),
//           SizedBox(
//             height: 10.h,
//           ),
//           ...gifts.map((gift) => TodayGiftWinnerTextWidget()).toList(),
// const Row(
//   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   children: [
//     TodayGiftWinnerTextWidget(),
//     TodayGiftWinnerTextWidget(),
//     TodayGiftWinnerTextWidget(),
//     TodayGiftWinnerTextWidget(),
//   ],
// ),
// SizedBox(
//   height: 10.h,
// ),
// const Row(
//   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   children: [
//     TodayGiftWinnerTextWidget(),
//     TodayGiftWinnerTextWidget(),
//     TodayGiftWinnerTextWidget(),
//     TodayGiftWinnerTextWidget(),
//   ],
// ),
// SizedBox(
//   height: 10.h,
// ),
// const Row(
//   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   children: [
//     TodayGiftWinnerTextWidget(),
//     TodayGiftWinnerTextWidget(),
//     TodayGiftWinnerTextWidget(),
//     TodayGiftWinnerTextWidget(),
//   ],
// ),
//         ],
//       ),
//     );
//   }
// }

// class WinnerItem extends StatelessWidget {
//   final Winner winner;

//   const WinnerItem({
//     super.key,
//     required this.winner,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           winner.name!,
//           style: TextStyle(
//               fontSize: 10.sp,
//               fontWeight: FontWeight.w700,
//               color: Colors.black),
//         ),
//       ],
//     );
//   }
// }

class TodayGiftWinnerTextWidget extends StatelessWidget {
  final List<Winner> winners;

  const TodayGiftWinnerTextWidget({
    super.key,
    required this.winners,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xffF6F1F1),
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Center(
            child: Text(
              "Today's Winner",
              style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Center(
            child: Container(
              width: 46.w,
              height: 2.h,
              color: const Color(0xff0138C2),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          winners.isEmpty
              ? Center(
                  child: Text(
                    'No winners today',
                    style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                )
              : Column(
                  children: winners.map((winner) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 8.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            winner.name!,
                            style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          // Uncomment and adjust if you have gift worth info
                          // Text(
                          //   'Gift Rs ${winner.giftWorth}',
                          //   style: TextStyle(
                          //       fontSize: 10.sp,
                          //       fontWeight: FontWeight.w700,
                          //       color: Colors.black),
                          // ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
        ],
      ),
    );
  }
}

class GiftDescriptionContainer extends StatelessWidget {
  final String title;
  final String value;
  const GiftDescriptionContainer({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 14.h, left: 14.w, right: 6.w, bottom: 12.h),
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 12.sp,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }
}

class SubscribeWinContainer extends StatelessWidget {
  final String title;
  final String subTitle;
  final Widget? widget;

  const SubscribeWinContainer({
    super.key,
    this.widget,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    // Remove the JSON prefix and fix HTML tags
    String cleanedHtml = subTitle
        .replaceFirst(r'{"en":"', '') // Remove the {"en":" prefix
        .replaceAll(r'\r\n', '') // Remove \r\n
        .replaceAll(r'<\/li>', '')
        .replaceAll(r'<\/ul>', '')
        .replaceAll(r'}', '')
        .replaceFirst(r'"', ''); // Remove the ending quote
    String cleanedTitle = title
        .replaceFirst(r'{"en":"', '')
        .replaceAll(r'}', '')
        .replaceFirst(r'"', '');
    return Container(
      padding: EdgeInsets.only(top: 9.h, left: 10.w, right: 6.w, bottom: 14.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(width: 1.w, color: const Color(0xffADADAD))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            cleanedTitle,
            style: TextStyle(
              fontSize: 12.sp,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 5.h),
          Container(
            width: 46.w,
            height: 2.h,
            color: const Color(0xff0138C2),
          ),
          SizedBox(height: 10.h),
          Html(
            data: cleanedHtml,
            style: {
              "p": Style(
                fontSize: FontSize(12.sp),
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
              "ul": Style(
                padding: HtmlPaddings.symmetric(horizontal: 16.0),
                listStyleType: ListStyleType.disc,
              ),
              "li": Style(
                fontSize: FontSize(12.sp),
                color: Colors.black,
                fontWeight: FontWeight.w400,
                margin: Margins.only(bottom: 8.h),
              ),
              "b": Style(
                fontWeight: FontWeight.bold,
                color: const Color(0xff0138C2),
              ),
            },
          ),
          if (widget != null) ...[
            SizedBox(height: 10.h),
            widget!,
          ],
        ],
      ),
    );
  }
}
