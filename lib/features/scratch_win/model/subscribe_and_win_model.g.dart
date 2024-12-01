// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscribe_and_win_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscribeAndWinModelImpl _$$SubscribeAndWinModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscribeAndWinModelImpl(
      content1: (json['content1'] as List<dynamic>?)
          ?.map((e) => ContentBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
      content2: (json['content2'] as List<dynamic>?)
          ?.map((e) => ContentBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
      content3: (json['content3'] as List<dynamic>)
          .map((e) => ContentBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
      content4: (json['content4'] as List<dynamic>)
          .map((e) => ContentBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
      scratchs: (json['scratchs'] as List<dynamic>)
          .map((e) => Scratch.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalGifts: (json['total_gifts'] as num).toInt(),
      totalGiftWorth: (json['total_gift_worth'] as num).toInt(),
      participantsCount: json['participants_count'] as String?,
      sponsorVendors: (json['sponsor_vendors'] as List<dynamic>)
          .map((e) => SponsorVendor.fromJson(e as Map<String, dynamic>))
          .toList(),
      gifts: (json['gifts'] as List<dynamic>)
          .map((e) => Gift.fromJson(e as Map<String, dynamic>))
          .toList(),
      winners: (json['winners'] as List<dynamic>)
          .map((e) => Winner.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubscribeAndWinModelImplToJson(
        _$SubscribeAndWinModelImpl instance) =>
    <String, dynamic>{
      'content1': instance.content1,
      'content2': instance.content2,
      'content3': instance.content3,
      'content4': instance.content4,
      'scratchs': instance.scratchs,
      'total_gifts': instance.totalGifts,
      'total_gift_worth': instance.totalGiftWorth,
      'participants_count': instance.participantsCount,
      'sponsor_vendors': instance.sponsorVendors,
      'gifts': instance.gifts,
      'winners': instance.winners,
    };

_$ContentBlockImpl _$$ContentBlockImplFromJson(Map<String, dynamic> json) =>
    _$ContentBlockImpl(
      title: json['title'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$ContentBlockImplToJson(_$ContentBlockImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
    };

_$ScratchImpl _$$ScratchImplFromJson(Map<String, dynamic> json) =>
    _$ScratchImpl(
      id: json['id'] as String?,
      bazar: json['bazar'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$ScratchImplToJson(_$ScratchImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bazar': instance.bazar,
      'image': instance.image,
    };

_$SponsorVendorImpl _$$SponsorVendorImplFromJson(Map<String, dynamic> json) =>
    _$SponsorVendorImpl(
      name: json['name'] as String?,
      photo: json['photo'] as String?,
    );

Map<String, dynamic> _$$SponsorVendorImplToJson(_$SponsorVendorImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'photo': instance.photo,
    };

_$GiftImpl _$$GiftImplFromJson(Map<String, dynamic> json) => _$GiftImpl(
      name: json['name'] as String?,
      userId: json['user_id'] as String?,
      worth: json['worth'] as String?,
      image: json['image'] as String?,
      vendorName:
          VendorName.fromJson(json['vendor_name'] as Map<String, dynamic>),
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$$GiftImplToJson(_$GiftImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'user_id': instance.userId,
      'worth': instance.worth,
      'image': instance.image,
      'vendor_name': instance.vendorName,
      'image_url': instance.imageUrl,
    };

_$VendorNameImpl _$$VendorNameImplFromJson(Map<String, dynamic> json) =>
    _$VendorNameImpl(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$VendorNameImplToJson(_$VendorNameImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$WinnerImpl _$$WinnerImplFromJson(Map<String, dynamic> json) => _$WinnerImpl(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$WinnerImplToJson(_$WinnerImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
