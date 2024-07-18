import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/home/model/home_posts_model.dart';

part "home_posts_proivider.g.dart";

@riverpod
Future<HomePosts> homePosts(HomePostsRef ref) async {
  final client = Dio();

  final response = await Future.wait([
    client.get(
      ApiConstants.homeSliderBannerUrl,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'accept': '*/*',
          'Connection': 'Keep-Alive',
          'X-AppApiToken': 'Yala@Techies_Nepal'
        },
      ),
    ),
    client.get(
      ApiConstants.homeSlider1BannerUrl,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'accept': '*/*',
          'Connection': 'Keep-Alive',
          'X-AppApiToken': 'Yala@Techies_Nepal'
        },
      ),
    ),
  ]).then((res) {
    return {
      'sponsored_post': res[1].data['sponsored_posts'],
      'trending': res[1].data['trending'],
      'hot_products': res[0].data['hot_products'],
      'new_products': res[0].data['new_products'],
      'jobs': res[0].data['jobs'],
      'events': res[0].data['events'],
      'b2b_products': res[0].data['b2b_products'],
    };
  });

  return HomePosts.fromJson(response);
}
