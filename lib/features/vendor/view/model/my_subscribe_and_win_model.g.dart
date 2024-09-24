// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_subscribe_and_win_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MySubscribeAndWinModelImpl _$$MySubscribeAndWinModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MySubscribeAndWinModelImpl(
      content3: (json['content3'] as List<dynamic>?)
          ?.map((e) => ContentBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
      content4: (json['content4'] as List<dynamic>?)
          ?.map((e) => ContentBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      gifts: json['gifts'] as List<dynamic>?,
      sponsorVendors: (json['sponsor_vendors'] as List<dynamic>?)
          ?.map((e) => SponsorVendor.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalWoth: (json['total_woth'] as num?)?.toInt(),
      giftCount: (json['gift_count'] as num?)?.toInt(),
      winners: json['winners'] as List<dynamic>?,
      scratchs: (json['scratchs'] as List<dynamic>?)
          ?.map((e) => Scratch.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MySubscribeAndWinModelImplToJson(
        _$MySubscribeAndWinModelImpl instance) =>
    <String, dynamic>{
      'content3': instance.content3,
      'content4': instance.content4,
      'user': instance.user,
      'gifts': instance.gifts,
      'sponsor_vendors': instance.sponsorVendors,
      'total_woth': instance.totalWoth,
      'gift_count': instance.giftCount,
      'winners': instance.winners,
      'scratchs': instance.scratchs,
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

_$ScratchImpl _$$ScratchImplFromJson(Map<String, dynamic> json) =>
    _$ScratchImpl(
      id: json['id'] as String?,
      bazar: json['bazar'] as String?,
      image: json['image'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$$ScratchImplToJson(_$ScratchImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bazar': instance.bazar,
      'image': instance.image,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'image_url': instance.imageUrl,
    };
