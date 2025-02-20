// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as String?,
      user_id: json['user_id'] as String?,
      category_id: json['category_id'] as String?,
      post_type_id: json['post_type_id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      tags: json['tags'] as String?,
      price: json['price'] as String?,
      negotiable: json['negotiable'] as String?,
      contact_name: json['contact_name'] as String?,
      pickup: json['pickup'] as String?,
      visits: json['visits'] as String?,
      email_token: json['email_token'] as String?,
      image: json['image'] as String?,
      avg_rating: (json['avg_rating'] as num?)?.toDouble(),
      savedByLoggedUser: json['savedByLoggedUser'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'category_id': instance.category_id,
      'post_type_id': instance.post_type_id,
      'title': instance.title,
      'description': instance.description,
      'tags': instance.tags,
      'price': instance.price,
      'negotiable': instance.negotiable,
      'contact_name': instance.contact_name,
      'pickup': instance.pickup,
      'visits': instance.visits,
      'email_token': instance.email_token,
      'image': instance.image,
      'avg_rating': instance.avg_rating,
      'savedByLoggedUser': instance.savedByLoggedUser,
    };
