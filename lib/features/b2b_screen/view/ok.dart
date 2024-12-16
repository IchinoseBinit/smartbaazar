  // SizedBox(
  //                 height: 130.h,
  //                 width: double.infinity,
  //                 // Use Expanded for better layout management
  //                 child: TabBarView(
  //                   controller: tabController,
  //                   children: [
  //                     Column(
  //                       mainAxisAlignment: MainAxisAlignment.start,
  //                       crossAxisAlignment: CrossAxisAlignment.start,
  //                       children: [
  //                         asyncbajarValue.when(
  //                           data: (data) {
  //                             return SizedBox(
  //                               height: 130,
  //                               child: ListView.builder(
  //                                   padding: EdgeInsets.zero,
  //                                   shrinkWrap: true,
  //                                   scrollDirection: Axis.horizontal,
  //                                   itemCount: data.global.length,
  //                                   itemBuilder: (context, index) {
  //                                     LogoData res = data.global[index];

  //                                     if (index == 0) {
  //                                       return StoryAddWidget(
  //                                           index: index,
  //                                           brandname: res.brandName

  //                                           // showgift: false,
  //                                           );
  //                                     } else if (index >= 1 && index <= 2) {
  //                                       return StoryAddWidget(
  //                                         index: index,
  //                                         showgift: true,
  //                                       );
  //                                     }
  //                                     return StoryAddWidget(index: index);
  //                                   }),
  //                             );
  //                           },
  //                           error: (error, stackTrace) {
  //                             return Text(error.toString());
  //                           },
  //                           loading: () {
  //                             return const CircularProgressIndicator();
  //                           },
  //                         ),
  //                       ],
  //                     ),
  //                     Column(
  //                       mainAxisAlignment: MainAxisAlignment.start,
  //                       crossAxisAlignment: CrossAxisAlignment.start,
  //                       children: [
  //                         asyncbajarValue.when(
  //                           data: (data) {
  //                             return SizedBox(
  //                               height: 130,
  //                               child: ListView.builder(
  //                                   padding: EdgeInsets.zero,
  //                                   shrinkWrap: true,
  //                                   scrollDirection: Axis.horizontal,
  //                                   itemCount: data.domestic.length,
  //                                   itemBuilder: (context, index) {
  //                                     LogoData res = data.domestic[index];

  //                                     if (index == 0) {
  //                                       return StoryAddWidget(
  //                                           index: index,
  //                                           brandname: res.brandName

  //                                           // showgift: false,
  //                                           );
  //                                     } else if (index >= 1 && index <= 2) {
  //                                       return StoryAddWidget(
  //                                         index: index,
  //                                         showgift: true,
  //                                       );
  //                                     }
  //                                     return StoryAddWidget(index: index);
  //                                   }),
  //                             );
  //                           },
  //                           error: (error, stackTrace) {
  //                             return Text(error.toString());
  //                           },
  //                           loading: () {
  //                             return const CircularProgressIndicator();
  //                           },
  //                         ),
  //                       ],
  //                     ),
  //                     Column(
  //                       mainAxisAlignment: MainAxisAlignment.start,
  //                       crossAxisAlignment: CrossAxisAlignment.start,
  //                       children: [
  //                         asyncbajarValue.when(
  //                           data: (data) {
  //                             return SizedBox(
  //                               height: 130,
  //                               child: ListView.builder(
  //                                   padding: EdgeInsets.zero,
  //                                   shrinkWrap: true,
  //                                   scrollDirection: Axis.horizontal,
  //                                   itemCount: data.spotlight.length,
  //                                   itemBuilder: (context, index) {
  //                                     LogoData res = data.domestic[index];

  //                                     if (index == 0) {
  //                                       return StoryAddWidget(
  //                                           index: index,
  //                                           brandname: res.brandName

  //                                           // showgift: false,
  //                                           );
  //                                     } else if (index >= 1 && index <= 2) {
  //                                       return StoryAddWidget(
  //                                         index: index,
  //                                         showgift: true,
  //                                       );
  //                                     }
  //                                     return StoryAddWidget(index: index);
  //                                   }),
  //                             );
  //                           },
  //                           error: (error, stackTrace) {
  //                             return Text(error.toString());
  //                           },
  //                           loading: () {
  //                             return const CircularProgressIndicator();
  //                           },
  //                         ),
  //                       ],
  //                     ),
  //                   ],
  //                 ),
  //               ),