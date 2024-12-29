// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscribe_and_win_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscribeAndWinModelImpl _$$SubscribeAndWinModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscribeAndWinModelImpl(
      content3: (json['content3'] as List<dynamic>?)
          ?.map((e) => Content.fromJson(e as Map<String, dynamic>))
          .toList(),
      content4: (json['content4'] as List<dynamic>?)
          ?.map((e) => Content.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      gifts: (json['gifts'] as List<dynamic>?)
          ?.map((e) => Gift.fromJson(e as Map<String, dynamic>))
          .toList(),
      sponsorVendors: (json['sponsorVendors'] as List<dynamic>?)
          ?.map((e) => SponsorVendor.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalWorth: (json['totalWorth'] as num?)?.toInt(),
      giftCount: (json['giftCount'] as num?)?.toInt(),
      winners: (json['winners'] as List<dynamic>?)
          ?.map((e) => Winner.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubscribeAndWinModelImplToJson(
        _$SubscribeAndWinModelImpl instance) =>
    <String, dynamic>{
      'content3': instance.content3,
      'content4': instance.content4,
      'user': instance.user,
      'gifts': instance.gifts,
      'sponsorVendors': instance.sponsorVendors,
      'totalWorth': instance.totalWorth,
      'giftCount': instance.giftCount,
      'winners': instance.winners,
    };

_$ContentImpl _$$ContentImplFromJson(Map<String, dynamic> json) =>
    _$ContentImpl(
      title: json['title'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$ContentImplToJson(_$ContentImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      photo: json['photo'] as String?,
      name: json['name'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'photo': instance.photo,
      'name': instance.name,
      'username': instance.username,
    };

_$GiftImpl _$$GiftImplFromJson(Map<String, dynamic> json) => _$GiftImpl(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      giftId: json['giftId'] as String?,
      status: json['status'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      gifts: json['gifts'] == null
          ? null
          : GiftDetails.fromJson(json['gifts'] as Map<String, dynamic>),
      vendors: json['vendors'] == null
          ? null
          : Vendor.fromJson(json['vendors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GiftImplToJson(_$GiftImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'giftId': instance.giftId,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'gifts': instance.gifts,
      'vendors': instance.vendors,
    };

_$GiftDetailsImpl _$$GiftDetailsImplFromJson(Map<String, dynamic> json) =>
    _$GiftDetailsImpl(
      name: json['name'] as String?,
      image: json['image'] as String?,
      worth: json['worth'] as String?,
      createdAt: json['createdAt'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$GiftDetailsImplToJson(_$GiftDetailsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'worth': instance.worth,
      'createdAt': instance.createdAt,
      'imageUrl': instance.imageUrl,
    };

_$VendorImpl _$$VendorImplFromJson(Map<String, dynamic> json) => _$VendorImpl(
      photo: json['photo'] as String?,
      name: json['name'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$$VendorImplToJson(_$VendorImpl instance) =>
    <String, dynamic>{
      'photo': instance.photo,
      'name': instance.name,
      'username': instance.username,
    };

_$SponsorVendorImpl _$$SponsorVendorImplFromJson(Map<String, dynamic> json) =>
    _$SponsorVendorImpl(
      name: json['name'] as String?,
      photo: json['photo'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$$SponsorVendorImplToJson(_$SponsorVendorImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'photo': instance.photo,
      'username': instance.username,
    };

_$WinnerImpl _$$WinnerImplFromJson(Map<String, dynamic> json) => _$WinnerImpl(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      giftId: json['giftId'] as String?,
      status: json['status'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      giftWorth: json['giftWorth'] == null
          ? null
          : GiftWorth.fromJson(json['giftWorth'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : Name.fromJson(json['name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WinnerImplToJson(_$WinnerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'giftId': instance.giftId,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'giftWorth': instance.giftWorth,
      'name': instance.name,
    };

_$GiftWorthImpl _$$GiftWorthImplFromJson(Map<String, dynamic> json) =>
    _$GiftWorthImpl(
      worth: json['worth'] as String?,
    );

Map<String, dynamic> _$$GiftWorthImplToJson(_$GiftWorthImpl instance) =>
    <String, dynamic>{
      'worth': instance.worth,
    };

_$NameImpl _$$NameImplFromJson(Map<String, dynamic> json) => _$NameImpl(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$NameImplToJson(_$NameImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
