// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostModelImpl _$$PostModelImplFromJson(Map<String, dynamic> json) =>
    _$PostModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      result: json['result'] == null
          ? null
          : PostResult.fromJson(json['result'] as Map<String, dynamic>),
      extra: json['extra'] == null
          ? null
          : ExtraModel.fromJson(json['extra'] as Map<String, dynamic>),
      widgetSimilarPosts: json['widgetSimilarPosts'] == null
          ? null
          : WidgetSimilarPosts.fromJson(
              json['widgetSimilarPosts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PostModelImplToJson(_$PostModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'result': instance.result,
      'extra': instance.extra,
      'widgetSimilarPosts': instance.widgetSimilarPosts,
    };

_$WidgetSimilarPostsImpl _$$WidgetSimilarPostsImplFromJson(
        Map<String, dynamic> json) =>
    _$WidgetSimilarPostsImpl(
      posts: PostPagination.fromJson(json['posts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WidgetSimilarPostsImplToJson(
        _$WidgetSimilarPostsImpl instance) =>
    <String, dynamic>{
      'posts': instance.posts,
    };

_$PostPaginationImpl _$$PostPaginationImplFromJson(Map<String, dynamic> json) =>
    _$PostPaginationImpl(
      current_page: (json['current_page'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => PostResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PostPaginationImplToJson(
        _$PostPaginationImpl instance) =>
    <String, dynamic>{
      'current_page': instance.current_page,
      'data': instance.data,
    };

_$PostResultImpl _$$PostResultImplFromJson(Map<String, dynamic> json) =>
    _$PostResultImpl(
      id: (json['id'] as num?)?.toInt(),
      countryCode: json['countryCode'] as String?,
      userId: json['userId'] as String?,
      categoryId: json['categoryId'] as String?,
      postTypeId: json['postTypeId'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      price: json['price'] as String?,
      discountedPrice: json['discountedPrice'] as String?,
      trending: json['trending'] as String?,
      stock: json['stock'] as String?,
      user_photo_url: json['user_photo_url'] as String,
      minOrder: json['minOrder'] as String?,
      sampPrice: json['sampPrice'] as String?,
      textOne: json['textOne'] as String?,
      textTwo: json['textTwo'] as String?,
      avaTo: json['avaTo'] as String?,
      negotiable: json['negotiable'] as String?,
      contactName: json['contactName'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      phoneHidden: json['phoneHidden'] as String?,
      address: json['address'] as String?,
      cityId: json['cityId'] as String?,
      lat: json['lat'] as String?,
      lon: json['lon'] as String?,
      ipAddr: json['ipAddr'] as String?,
      length: json['length'] as String?,
      width: json['width'] as String?,
      weight: json['weight'] as String?,
      height: json['height'] as String?,
      pickup: json['pickup'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      hyperDel: json['hyperDel'] as String?,
      sellerDel: json['sellerDel'] as String?,
      acceptTerms: json['acceptTerms'] as String?,
      acceptMarketingOffers: json['acceptMarketingOffers'] as String?,
      isPermanent: json['isPermanent'] as String?,
      reviewed: json['reviewed'] as String?,
      featured: json['featured'] as String?,
      archived: json['archived'] as String?,
      archivedAt: json['archivedAt'] as String?,
      deletionMailSentAt: json['deletionMailSentAt'] as String?,
      fbProfile: json['fbProfile'] as String?,
      partner: json['partner'] as String?,
      b2bPricing: json['b2bPricing'] as String?,
      offer: json['offer'] as String?,
      wow: json['wow'] as String?,
      sku: json['sku'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      slug: json['slug'] as String?,
      createdAtFormatted: json['createdAtFormatted'] as String?,
      userPhotoUrl: json['userPhotoUrl'] as String?,
      commentCount: (json['commentCount'] as num?)?.toInt(),
      extra: json['extra'] == null
          ? null
          : ExtraModel.fromJson(json['extra'] as Map<String, dynamic>),
      ratings: json['ratings'] == null
          ? null
          : Ratings.fromJson(json['ratings'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : usermodel.fromJson(json['user'] as Map<String, dynamic>),
      user_details: json['user_details'] == null
          ? null
          : UserDetailsProduct.fromJson(
              json['user_details'] as Map<String, dynamic>),
      pictures: (json['pictures'] as List<dynamic>?)
          ?.map((e) => Picture.fromJson(e as Map<String, dynamic>))
          .toList(),
      postType: json['postType'] == null
          ? null
          : PostType.fromJson(json['postType'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
      rating_comment: (json['rating_comment'] as List<dynamic>)
          .map((e) => RatingComment.fromJson(e as Map<String, dynamic>))
          .toList(),
      live_prizes: (json['live_prizes'] as List<dynamic>?)
              ?.map((e) => LivePrize.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      deals: (json['deals'] as List<dynamic>?)
              ?.map((e) => Shop.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      shop: (json['shop'] as List<dynamic>?)
              ?.map((e) => Shop.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      feed_post: (json['feed_post'] as List<dynamic>?)
              ?.map((e) => FeedPost.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PostResultImplToJson(_$PostResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'countryCode': instance.countryCode,
      'userId': instance.userId,
      'categoryId': instance.categoryId,
      'postTypeId': instance.postTypeId,
      'title': instance.title,
      'description': instance.description,
      'tags': instance.tags,
      'price': instance.price,
      'discountedPrice': instance.discountedPrice,
      'trending': instance.trending,
      'stock': instance.stock,
      'user_photo_url': instance.user_photo_url,
      'minOrder': instance.minOrder,
      'sampPrice': instance.sampPrice,
      'textOne': instance.textOne,
      'textTwo': instance.textTwo,
      'avaTo': instance.avaTo,
      'negotiable': instance.negotiable,
      'contactName': instance.contactName,
      'email': instance.email,
      'phone': instance.phone,
      'phoneHidden': instance.phoneHidden,
      'address': instance.address,
      'cityId': instance.cityId,
      'lat': instance.lat,
      'lon': instance.lon,
      'ipAddr': instance.ipAddr,
      'length': instance.length,
      'width': instance.width,
      'weight': instance.weight,
      'height': instance.height,
      'pickup': instance.pickup,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'hyperDel': instance.hyperDel,
      'sellerDel': instance.sellerDel,
      'acceptTerms': instance.acceptTerms,
      'acceptMarketingOffers': instance.acceptMarketingOffers,
      'isPermanent': instance.isPermanent,
      'reviewed': instance.reviewed,
      'featured': instance.featured,
      'archived': instance.archived,
      'archivedAt': instance.archivedAt,
      'deletionMailSentAt': instance.deletionMailSentAt,
      'fbProfile': instance.fbProfile,
      'partner': instance.partner,
      'b2bPricing': instance.b2bPricing,
      'offer': instance.offer,
      'wow': instance.wow,
      'sku': instance.sku,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'slug': instance.slug,
      'createdAtFormatted': instance.createdAtFormatted,
      'userPhotoUrl': instance.userPhotoUrl,
      'commentCount': instance.commentCount,
      'extra': instance.extra,
      'ratings': instance.ratings,
      'user': instance.user,
      'user_details': instance.user_details,
      'pictures': instance.pictures,
      'postType': instance.postType,
      'city': instance.city,
      'rating_comment': instance.rating_comment,
      'live_prizes': instance.live_prizes,
      'deals': instance.deals,
      'shop': instance.shop,
      'feed_post': instance.feed_post,
    };

_$CityImpl _$$CityImplFromJson(Map<String, dynamic> json) => _$CityImpl(
      id: (json['id'] as num).toInt(),
      countryCode: json['country_code'] as String,
      name: json['name'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      population: json['population'] as String,
      timeZone: json['time_zone'] as String,
      active: json['active'] as String,
    );

Map<String, dynamic> _$$CityImplToJson(_$CityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country_code': instance.countryCode,
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'population': instance.population,
      'time_zone': instance.timeZone,
      'active': instance.active,
    };

_$LivePrizeImpl _$$LivePrizeImplFromJson(Map<String, dynamic> json) =>
    _$LivePrizeImpl(
      id: json['id'] as String?,
      name: json['name'] as String,
      photo: json['photo'] as String?,
      subscribers: (json['subscribers'] as num?)?.toInt(),
      image: json['image'] as String?,
      gift_qty: json['gift_qty'] as String?,
      total_worth: json['total_worth'] as String?,
    );

Map<String, dynamic> _$$LivePrizeImplToJson(_$LivePrizeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photo': instance.photo,
      'subscribers': instance.subscribers,
      'image': instance.image,
      'gift_qty': instance.gift_qty,
      'total_worth': instance.total_worth,
    };

_$ShopImpl _$$ShopImplFromJson(Map<String, dynamic> json) => _$ShopImpl(
      id: json['id'] as String,
      image: json['image'] as String,
      discountPercentage: (json['discount_percentage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ShopImplToJson(_$ShopImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'discount_percentage': instance.discountPercentage,
    };

_$RatingsImpl _$$RatingsImplFromJson(Map<String, dynamic> json) =>
    _$RatingsImpl(
      rating: json['rating'] == null
          ? null
          : Rating.fromJson(json['rating'] as Map<String, dynamic>),
      avg_rating: (json['avg_rating'] as num?)?.toInt(),
      ratingCounts:
          RatingCounts.fromJson(json['ratingCounts'] as Map<String, dynamic>),
      ratingPercentages: RatingCounts.fromJson(
          json['ratingPercentages'] as Map<String, dynamic>),
      totalRatings: (json['totalRatings'] as num).toInt(),
      averageRating: (json['averageRating'] as num).toDouble(),
    );

Map<String, dynamic> _$$RatingsImplToJson(_$RatingsImpl instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'avg_rating': instance.avg_rating,
      'ratingCounts': instance.ratingCounts,
      'ratingPercentages': instance.ratingPercentages,
      'totalRatings': instance.totalRatings,
      'averageRating': instance.averageRating,
    };

_$RatingCommentImpl _$$RatingCommentImplFromJson(Map<String, dynamic> json) =>
    _$RatingCommentImpl(
      name: json['name'] as String,
      photo: json['photo'] as String,
      comment: json['comment'] as String,
      ratingStar: json['ratingstar'] as String,
    );

Map<String, dynamic> _$$RatingCommentImplToJson(_$RatingCommentImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'photo': instance.photo,
      'comment': instance.comment,
      'ratingstar': instance.ratingStar,
    };

_$RatingImpl _$$RatingImplFromJson(Map<String, dynamic> json) => _$RatingImpl(
      id: json['id'] as String,
      postId: json['post_id'] as String,
      userId: json['user_id'] as String,
      rating: json['rating'] as String,
      parentId: json['parent_id'] as String?,
      comment: json['comment'] as String?,
      replyComment: json['reply_comment'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$RatingImplToJson(_$RatingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'post_id': instance.postId,
      'user_id': instance.userId,
      'rating': instance.rating,
      'parent_id': instance.parentId,
      'comment': instance.comment,
      'reply_comment': instance.replyComment,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$PostTypeImpl _$$PostTypeImplFromJson(Map<String, dynamic> json) =>
    _$PostTypeImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$PostTypeImplToJson(_$PostTypeImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$VendorUserDetailImpl _$$VendorUserDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$VendorUserDetailImpl(
      user_id: json['user_id'] as String?,
      membership_plan_id: json['membership_plan_id'] as String?,
      membership_status: json['membership_status'] as String?,
      membership_id: json['membership_id'] as String?,
      membership_title: json['membership_title'] as String?,
      membership_color: json['membership_color'] as String?,
      photo: json['photo'] as String?,
      name: json['name'] as String?,
      storyCount: (json['storyCount'] as num?)?.toInt(),
      sponsored: json['sponsored'] as bool?,
      has_sponsored_gifts: json['has_sponsored_gifts'] as bool?,
      shortestDistance: (json['shortestDistance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$VendorUserDetailImplToJson(
        _$VendorUserDetailImpl instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'membership_plan_id': instance.membership_plan_id,
      'membership_status': instance.membership_status,
      'membership_id': instance.membership_id,
      'membership_title': instance.membership_title,
      'membership_color': instance.membership_color,
      'photo': instance.photo,
      'name': instance.name,
      'storyCount': instance.storyCount,
      'sponsored': instance.sponsored,
      'has_sponsored_gifts': instance.has_sponsored_gifts,
      'shortestDistance': instance.shortestDistance,
    };

_$RatingCountsImpl _$$RatingCountsImplFromJson(Map<String, dynamic> json) =>
    _$RatingCountsImpl(
      five: (json['5'] as num?)?.toInt(),
      four: (json['4'] as num?)?.toInt(),
      three: (json['3'] as num?)?.toInt(),
      two: (json['2'] as num?)?.toInt(),
      one: (json['1'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RatingCountsImplToJson(_$RatingCountsImpl instance) =>
    <String, dynamic>{
      '5': instance.five,
      '4': instance.four,
      '3': instance.three,
      '2': instance.two,
      '1': instance.one,
    };

_$usermodelImpl _$$usermodelImplFromJson(Map<String, dynamic> json) =>
    _$usermodelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      username: json['username'] as String,
      createdAtFormatted: json['created_at_formatted'] as String,
      photoUrl: json['photo_url'] as String,
      storyCount: (json['story_count'] as num).toInt(),
    );

Map<String, dynamic> _$$usermodelImplToJson(_$usermodelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'created_at_formatted': instance.createdAtFormatted,
      'photo_url': instance.photoUrl,
      'story_count': instance.storyCount,
    };

_$UserDetailsProductImpl _$$UserDetailsProductImplFromJson(
        Map<String, dynamic> json) =>
    _$UserDetailsProductImpl(
      name: json['name'] as String,
      photo: json['photo'] as String,
      userPhotoUrl: json['user_photo_url'] as String,
      hasSponsoredGifts: json['has_sponsored_gifts'] as bool,
      livePrizes: (json['livePrizes'] as num).toInt(),
      productCount: (json['productCount'] as num).toInt(),
      storyCount: (json['storyCount'] as num).toInt(),
      subscribers: (json['subscribers'] as num).toInt(),
      distance: (json['distance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$UserDetailsProductImplToJson(
        _$UserDetailsProductImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'photo': instance.photo,
      'user_photo_url': instance.userPhotoUrl,
      'has_sponsored_gifts': instance.hasSponsoredGifts,
      'livePrizes': instance.livePrizes,
      'productCount': instance.productCount,
      'storyCount': instance.storyCount,
      'subscribers': instance.subscribers,
      'distance': instance.distance,
    };

_$MembershipPlanImpl _$$MembershipPlanImplFromJson(Map<String, dynamic> json) =>
    _$MembershipPlanImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      color: json['color'] as String?,
    );

Map<String, dynamic> _$$MembershipPlanImplToJson(
        _$MembershipPlanImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'color': instance.color,
    };

_$PictureImpl _$$PictureImplFromJson(Map<String, dynamic> json) =>
    _$PictureImpl(
      id: (json['id'] as num?)?.toInt(),
      postId: json['postId'] as String?,
      filename: json['filename'] as String?,
      image_url: json['image_url'] as String?,
    );

Map<String, dynamic> _$$PictureImplToJson(_$PictureImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'filename': instance.filename,
      'image_url': instance.image_url,
    };

_$ExtraModelImpl _$$ExtraModelImplFromJson(Map<String, dynamic> json) =>
    _$ExtraModelImpl(
      fields: json['fields'] == null
          ? null
          : Fields.fromJson(json['fields'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ExtraModelImplToJson(_$ExtraModelImpl instance) =>
    <String, dynamic>{
      'fields': instance.fields,
    };

_$FieldsImpl _$$FieldsImplFromJson(Map<String, dynamic> json) => _$FieldsImpl(
      headers: json['headers'] as Map<String, dynamic>?,
      original: json['original'] == null
          ? null
          : Original.fromJson(json['original'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FieldsImplToJson(_$FieldsImpl instance) =>
    <String, dynamic>{
      'headers': instance.headers,
      'original': instance.original,
    };

_$OriginalImpl _$$OriginalImplFromJson(Map<String, dynamic> json) =>
    _$OriginalImpl(
      message: json['message'] as String?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => FieldDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OriginalImplToJson(_$OriginalImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'result': instance.result,
    };

_$FieldDetailsImpl _$$FieldDetailsImplFromJson(Map<String, dynamic> json) =>
    _$FieldDetailsImpl(
      id: (json['id'] as num?)?.toInt(),
      belongsTo: json['belongs_to'] as String?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      max: (json['max'] as num?)?.toInt(),
      defaultValue:
          const DefaultValueConverter().fromJson(json['default_value']),
      required: json['required'] as String?,
      useAsFilter: json['use_as_filter'] as String?,
      help: json['help'] as String?,
      active: json['active'] as String?,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => FieldOption.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FieldDetailsImplToJson(_$FieldDetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'belongs_to': instance.belongsTo,
      'name': instance.name,
      'type': instance.type,
      'max': instance.max,
      'default_value':
          const DefaultValueConverter().toJson(instance.defaultValue),
      'required': instance.required,
      'use_as_filter': instance.useAsFilter,
      'help': instance.help,
      'active': instance.active,
      'options': instance.options,
    };

_$FieldOptionImpl _$$FieldOptionImplFromJson(Map<String, dynamic> json) =>
    _$FieldOptionImpl(
      id: (json['id'] as num?)?.toInt(),
      fieldId: json['field_id'] as String?,
      value: json['value'] as String?,
      parentId: json['parent_id'] as String?,
    );

Map<String, dynamic> _$$FieldOptionImplToJson(_$FieldOptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'field_id': instance.fieldId,
      'value': instance.value,
      'parent_id': instance.parentId,
    };

_$ColorOptionImpl _$$ColorOptionImplFromJson(Map<String, dynamic> json) =>
    _$ColorOptionImpl(
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$ColorOptionImplToJson(_$ColorOptionImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$AvailableColorImpl _$$AvailableColorImplFromJson(Map<String, dynamic> json) =>
    _$AvailableColorImpl(
      name: json['name'] as String,
      type: json['type'] as String,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => Option.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AvailableColorImplToJson(
        _$AvailableColorImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'options': instance.options,
    };

_$SimilarItemsImpl _$$SimilarItemsImplFromJson(Map<String, dynamic> json) =>
    _$SimilarItemsImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      price: json['price'] as String?,
      pictures: (json['pictures'] as List<dynamic>?)
          ?.map((e) => Picture.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SimilarItemsImplToJson(_$SimilarItemsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'pictures': instance.pictures,
    };

_$OptionImpl _$$OptionImplFromJson(Map<String, dynamic> json) => _$OptionImpl(
      fieldId: json['field_id'] as String?,
      value: json['value'] as String?,
      depth: json['depth'] as String?,
    );

Map<String, dynamic> _$$OptionImplToJson(_$OptionImpl instance) =>
    <String, dynamic>{
      'field_id': instance.fieldId,
      'value': instance.value,
      'depth': instance.depth,
    };
