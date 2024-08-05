import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:smartbazar/features/home/api/home_posts_proivider.dart';
import 'package:smartbazar/features/home/model/home_posts_model.dart';

class BannerWidget extends ConsumerWidget {
  const BannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<HomePosts> homePostsData = ref.watch(homePostsProvider);
    final value = homePostsData.valueOrNull?.advertisements;
    return Skeletonizer(
      enabled: homePostsData.isLoading || value == null,
      child: Container(
        height: 72.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: value == null
              ? null
              : DecorationImage(
                  image: NetworkImage(
                    value![new Random().nextInt(value.length)].image,
                  ),
                ),
        ),
      ),
    );
  }
}
