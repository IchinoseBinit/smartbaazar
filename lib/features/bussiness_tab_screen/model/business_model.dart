import 'package:smartbazar/features/home/api/buy_or_now_provider.dart';

class BusinessResponse {
  final List<Business>? business;
  final List<GlobalModel>? brandNew;
  final List<GlobalModel>? used;
  final List<GlobalModel>? services;
  final List<GlobalModel>? jobs;
  final List<GlobalModel>? events;
  final List<GlobalModel>? b2b;
  final List<GlobalModel>? grocery;

  BusinessResponse({
    this.business,
    this.brandNew,
    this.used,
    this.services,
    this.jobs,
    this.events,
    this.b2b,
    this.grocery,
  });

  factory BusinessResponse.fromJson(Map<String, dynamic> json) {
    return BusinessResponse(
      business: (json['business'] as List?)
          ?.map((e) => Business.fromJson(e))
          .toList(),
      brandNew: (json['brand_new'] as List?)
          ?.map((e) => GlobalModel.fromJson(e))
          .toList(),
      used: (json['used'] as List?)
          ?.map((e) => GlobalModel.fromJson(e))
          .toList(),
      services: (json['services'] as List?)
          ?.map((e) => GlobalModel.fromJson(e))
          .toList(),
      jobs: (json['jobs'] as List?)
          ?.map((e) => GlobalModel.fromJson(e))
          .toList(),
      events: (json['events'] as List?)
          ?.map((e) => GlobalModel.fromJson(e))
          .toList(),
      b2b: (json['b2b'] as List?)
          ?.map((e) => GlobalModel.fromJson(e))
          .toList(),
      grocery: (json['grocery'] as List?)
          ?.map((e) => GlobalModel.fromJson(e))
          .toList(),
    );
  }
}

class Business {
  final String? vendorId;
  final String? vendorName;
  final String? vendorUsername;
  final String? logo;
  final String? location;
  final String? contact;
  final String? totalConnections;
  final String? dealsCircle;
  final String? storyCount;
  final String? totalPrizeWorth;
  final bool? hasSponsoredGifts;
  final String? membershipId;
  final String? membershipTitle;

  Business({
    this.vendorId,
    this.vendorName,
    this.vendorUsername,
    this.logo,
    this.location,
    this.contact,
    this.totalConnections,
    this.dealsCircle,
    this.storyCount,
    this.totalPrizeWorth,
    this.hasSponsoredGifts,
    this.membershipId,
    this.membershipTitle,
  });

  factory Business.fromJson(Map<String, dynamic> json) {
    return Business(
      vendorId: json['vendor_id'],
      vendorName: json['vendor_name'],
      vendorUsername: json['vendor_username'],
      logo: json['logo'],
      location: json['location'],
      contact: json['contact'],
      totalConnections: json['total_connections'],
      dealsCircle: json['deals_circle'],
      storyCount: json['story_count'],
      totalPrizeWorth: json['total_prize_worth'],
      hasSponsoredGifts: json['has_sponsored_gifts'],
      membershipId: json['membership_id'],
      membershipTitle: json['membership_title'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'vendor_id': vendorId,
      'vendor_name': vendorName,
      'vendor_username': vendorUsername,
      'logo': logo,
      'location': location,
      'contact': contact,
      'total_connections': totalConnections,
      'deals_circle': dealsCircle,
      'story_count': storyCount,
      'total_prize_worth': totalPrizeWorth,
      'has_sponsored_gifts': hasSponsoredGifts,
      'membership_id': membershipId,
      'membership_title': membershipTitle,
    };
  }
}
