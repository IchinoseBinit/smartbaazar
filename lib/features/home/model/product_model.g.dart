// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      price: json['price'] as String,
      image: json['image'] as String,
      visits: json['visits'] as String,
      avg_rating: (json['avg_rating'] as num?)?.toDouble() ?? 0,
      contact_name: json['contact_name'] as String,
      pickup: json['pickup'] as String?,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'image': instance.image,
      'visits': instance.visits,
      'avg_rating': instance.avg_rating,
      'contact_name': instance.contact_name,
      'pickup': instance.pickup,
    };
