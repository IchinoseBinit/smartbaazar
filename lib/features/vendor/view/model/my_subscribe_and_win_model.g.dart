// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_subscribe_and_win_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MySubscribeAndWinModelImpl _$$MySubscribeAndWinModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MySubscribeAndWinModelImpl(
      content3: (json['content3'] as List<dynamic>?)
          ?.map((e) => Content3.fromJson(e as Map<String, dynamic>))
          .toList(),
      content4: (json['content4'] as List<dynamic>?)
          ?.map((e) => Content4.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      gifts: (json['gifts'] as List<dynamic>?)
          ?.map((e) => Gift.fromJson(e as Map<String, dynamic>))
          .toList(),
      sponsorVendors: (json['sponsor_vendors'] as List<dynamic>?)
          ?.map((e) => SponsorVendor.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalWorth: (json['total_woth'] as num?)?.toInt(),
      giftCount: (json['gift_count'] as num?)?.toInt(),
      winners: (json['winners'] as List<dynamic>?)
          ?.map((e) => Winner.fromJson(e as Map<String, dynamic>))
          .toList(),
      scratches: (json['scratchs'] as List<dynamic>?)
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
      'total_woth': instance.totalWorth,
      'gift_count': instance.giftCount,
      'winners': instance.winners,
      'scratchs': instance.scratches,
    };

_$Content3Impl _$$Content3ImplFromJson(Map<String, dynamic> json) =>
    _$Content3Impl(
      title: json['title'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$Content3ImplToJson(_$Content3Impl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
    };

_$Content4Impl _$$Content4ImplFromJson(Map<String, dynamic> json) =>
    _$Content4Impl(
      title: json['title'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$Content4ImplToJson(_$Content4Impl instance) =>
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
      userId: json['user_id'] as String?,
      giftId: json['gift_id'] as String?,
      status: json['status'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      giftDetails: json['gifts'] == null
          ? null
          : GiftDetails.fromJson(json['gifts'] as Map<String, dynamic>),
      vendor: json['vendors'] == null
          ? null
          : Vendor.fromJson(json['vendors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GiftImplToJson(_$GiftImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'gift_id': instance.giftId,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'gifts': instance.giftDetails,
      'vendors': instance.vendor,
    };

_$GiftDetailsImpl _$$GiftDetailsImplFromJson(Map<String, dynamic> json) =>
    _$GiftDetailsImpl(
      name: json['name'] as String?,
      image: json['image'] as String?,
      worth: json['worth'] as String?,
      createdAt: json['created_at'] as String?,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$$GiftDetailsImplToJson(_$GiftDetailsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'worth': instance.worth,
      'created_at': instance.createdAt,
      'image_url': instance.imageUrl,
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
      userId: json['user_id'] as String?,
      giftId: json['gift_id'] as String?,
      status: json['status'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      giftWorth: json['gift_worth'] == null
          ? null
          : GiftWorth.fromJson(json['gift_worth'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : WinnerName.fromJson(json['name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WinnerImplToJson(_$WinnerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'gift_id': instance.giftId,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'gift_worth': instance.giftWorth,
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

_$WinnerNameImpl _$$WinnerNameImplFromJson(Map<String, dynamic> json) =>
    _$WinnerNameImpl(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$WinnerNameImplToJson(_$WinnerNameImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
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
