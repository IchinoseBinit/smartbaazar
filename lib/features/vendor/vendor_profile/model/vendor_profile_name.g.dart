// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_profile_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendorProfileImpl _$$VendorProfileImplFromJson(Map<String, dynamic> json) =>
    _$VendorProfileImpl(
      subscribed: (json['subscribed'] as num?)?.toInt(),
      vendor: json['vendor'] == null
          ? null
          : Vendor.fromJson(json['vendor'] as Map<String, dynamic>),
      vendor_card: json['vendor_card'] == null
          ? null
          : VendorCard.fromJson(json['vendor_card'] as Map<String, dynamic>),
      vendor_about: json['vendor_about'] == null
          ? null
          : VendorAbout.fromJson(json['vendor_about'] as Map<String, dynamic>),
      deals: (json['deals'] as List<dynamic>?)
          ?.map((e) => Deal.fromJson(e as Map<String, dynamic>))
          .toList(),
      all_VendorProfileProducts:
          (json['all_VendorProfileProducts'] as List<dynamic>?)
              ?.map((e) => BrandNewModel.fromJson(e as Map<String, dynamic>))
              .toList(),
      feedPosts: (json['feedPosts'] as List<dynamic>?)
          ?.map((e) => FeedPost.fromJson(e as Map<String, dynamic>))
          .toList(),
      live_prizes: (json['live_prizes'] as List<dynamic>?)
          ?.map((e) => FeedPost.fromJson(e as Map<String, dynamic>))
          .toList(),
      brandnew: (json['brandnew'] as List<dynamic>?)
          ?.map((e) => BrandNewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      used: (json['used'] as List<dynamic>?)
          ?.map((e) => BrandNewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      services: (json['services'] as List<dynamic>?)
          ?.map((e) => BrandNewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      jobs: (json['jobs'] as List<dynamic>?)
          ?.map((e) => BrandNewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      events: (json['events'] as List<dynamic>?)
          ?.map((e) => BrandNewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      b2b: (json['b2b'] as List<dynamic>?)
          ?.map((e) => BrandNewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      grocery: (json['grocery'] as List<dynamic>?)
          ?.map((e) => BrandNewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      scratch_banner: json['scratch_banner'] as String?,
      advertisements: (json['advertisements'] as List<dynamic>?)
          ?.map((e) => Advertisement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VendorProfileImplToJson(_$VendorProfileImpl instance) =>
    <String, dynamic>{
      'subscribed': instance.subscribed,
      'vendor': instance.vendor,
      'vendor_card': instance.vendor_card,
      'vendor_about': instance.vendor_about,
      'deals': instance.deals,
      'all_VendorProfileProducts': instance.all_VendorProfileProducts,
      'feedPosts': instance.feedPosts,
      'live_prizes': instance.live_prizes,
      'brandnew': instance.brandnew,
      'used': instance.used,
      'services': instance.services,
      'jobs': instance.jobs,
      'events': instance.events,
      'b2b': instance.b2b,
      'grocery': instance.grocery,
      'scratch_banner': instance.scratch_banner,
      'advertisements': instance.advertisements,
    };

_$BrandNewModelImpl _$$BrandNewModelImplFromJson(Map<String, dynamic> json) =>
    _$BrandNewModelImpl(
      id: json['id'] as String,
      country_code: json['country_code'] as String,
      user_id: json['user_id'] as String,
      category_id: json['category_id'] as String,
      post_type_id: json['post_type_id'] as String,
      title: json['title'] as String,
      story_display_days: json['story_display_days'] as String?,
      b2b_pricing: json['b2b_pricing'] as String?,
      image: json['image'] as String,
      post_type: json['post_type'] as String,
      username: json['username'] as String,
      offers: json['offers'] as String?,
      price: json['price'] as String?,
      wow: json['wow'] as String?,
      city: json['city'] as String?,
      similarVendorProfileProductCount:
          (json['similarVendorProfileProductCount'] as num?)?.toInt(),
      discounted_price: json['discounted_price'] as String?,
      shortestDistance: (json['shortestDistance'] as num?)?.toDouble(),
      commentcount: (json['commentcount'] as num?)?.toInt(),
      discount_percentage: (json['discount_percentage'] as num?)?.toInt(),
      avg_rating: (json['avg_rating'] as num?)?.toInt(),
      userdetails: json['userdetails'] == null
          ? null
          : UserDetailsModel.fromJson(
              json['userdetails'] as Map<String, dynamic>),
      savedByLoggedUser: (json['savedByLoggedUser'] as List<dynamic>?)
          ?.map((e) => FezzedSaved.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BrandNewModelImplToJson(_$BrandNewModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country_code': instance.country_code,
      'user_id': instance.user_id,
      'category_id': instance.category_id,
      'post_type_id': instance.post_type_id,
      'title': instance.title,
      'story_display_days': instance.story_display_days,
      'b2b_pricing': instance.b2b_pricing,
      'image': instance.image,
      'post_type': instance.post_type,
      'username': instance.username,
      'offers': instance.offers,
      'price': instance.price,
      'wow': instance.wow,
      'city': instance.city,
      'similarVendorProfileProductCount':
          instance.similarVendorProfileProductCount,
      'discounted_price': instance.discounted_price,
      'shortestDistance': instance.shortestDistance,
      'commentcount': instance.commentcount,
      'discount_percentage': instance.discount_percentage,
      'avg_rating': instance.avg_rating,
      'userdetails': instance.userdetails,
      'savedByLoggedUser': instance.savedByLoggedUser,
    };

_$FezzedSavedImpl _$$FezzedSavedImplFromJson(Map<String, dynamic> json) =>
    _$FezzedSavedImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      postId: json['postId'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$FezzedSavedImplToJson(_$FezzedSavedImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'postId': instance.postId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$UserDetailsModelImpl _$$UserDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserDetailsModelImpl(
      user_id: json['user_id'] as String,
      membership_plan_id: json['membership_plan_id'] as String?,
      membership_status: json['membership_status'] as String?,
      membership_id: json['membership_id'] as String?,
      membership_title: json['membership_title'] as String?,
      membership_color: json['membership_color'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      photo: json['photo'] as String?,
      name: json['name'] as String,
      storyCount: (json['storyCount'] as num?)?.toInt(),
      sponsored: json['sponsored'] as bool?,
      has_sponsored_gifts: json['has_sponsored_gifts'] as bool?,
      shortestDistance: (json['shortestDistance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$UserDetailsModelImplToJson(
        _$UserDetailsModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'membership_plan_id': instance.membership_plan_id,
      'membership_status': instance.membership_status,
      'membership_id': instance.membership_id,
      'membership_title': instance.membership_title,
      'membership_color': instance.membership_color,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'photo': instance.photo,
      'name': instance.name,
      'storyCount': instance.storyCount,
      'sponsored': instance.sponsored,
      'has_sponsored_gifts': instance.has_sponsored_gifts,
      'shortestDistance': instance.shortestDistance,
    };

_$VendorImpl _$$VendorImplFromJson(Map<String, dynamic> json) => _$VendorImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      photo: json['photo'] as String?,
      about: json['about'] as String?,
      phone: json['phone'] as String?,
      phone_hidden: json['phone_hidden'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      opening_hours: json['opening_hours'] as String?,
      users_location: json['users_location'] as String?,
      branch_location: json['branch_location'] as String?,
      shortestDistance: (json['shortestDistance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$VendorImplToJson(_$VendorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photo': instance.photo,
      'about': instance.about,
      'phone': instance.phone,
      'phone_hidden': instance.phone_hidden,
      'username': instance.username,
      'email': instance.email,
      'opening_hours': instance.opening_hours,
      'users_location': instance.users_location,
      'branch_location': instance.branch_location,
      'shortestDistance': instance.shortestDistance,
    };

_$VendorCardImpl _$$VendorCardImplFromJson(Map<String, dynamic> json) =>
    _$VendorCardImpl(
      name: json['name'] as String?,
      photo: json['photo'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      subscribers: (json['subscribers'] as num?)?.toInt(),
      phone: json['phone'] as String?,
      profile_url: json['profile_url'] as String?,
      storycount: (json['storycount'] as num?)?.toInt(),
      prize_worth: (json['prize_worth'] as num?)?.toInt(),
      has_sponsored_gifts: json['has_sponsored_gifts'] as bool?,
      nearestbranch: json['nearestbranch'] as String?,
      membership_id: json['membership_id'] as String?,
      membership_title: json['membership_title'] as String?,
      membership_color: json['membership_color'] as String?,
      subscribed: (json['subscribed'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$VendorCardImplToJson(_$VendorCardImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'photo': instance.photo,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'subscribers': instance.subscribers,
      'phone': instance.phone,
      'profile_url': instance.profile_url,
      'storycount': instance.storycount,
      'prize_worth': instance.prize_worth,
      'has_sponsored_gifts': instance.has_sponsored_gifts,
      'nearestbranch': instance.nearestbranch,
      'membership_id': instance.membership_id,
      'membership_title': instance.membership_title,
      'membership_color': instance.membership_color,
      'subscribed': instance.subscribed,
    };

_$VendorAboutImpl _$$VendorAboutImplFromJson(Map<String, dynamic> json) =>
    _$VendorAboutImpl(
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      bio: json['bio'] as String?,
      opening_hours: json['opening_hours'] as String?,
      nearestbranch: json['nearestbranch'] as String?,
    );

Map<String, dynamic> _$$VendorAboutImplToJson(_$VendorAboutImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'email': instance.email,
      'bio': instance.bio,
      'opening_hours': instance.opening_hours,
      'nearestbranch': instance.nearestbranch,
    };

_$DealImpl _$$DealImplFromJson(Map<String, dynamic> json) => _$DealImpl(
      id: json['id'] as String?,
      image: json['image'] as String?,
      discount_percentage: (json['discount_percentage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$DealImplToJson(_$DealImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'discount_percentage': instance.discount_percentage,
    };

_$FeedPostImpl _$$FeedPostImplFromJson(Map<String, dynamic> json) =>
    _$FeedPostImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      photo: json['photo'] as String?,
      subscribers: (json['subscribers'] as num?)?.toInt(),
      image: json['image'] as String?,
      caption: json['caption'] as String?,
      created_at: json['created_at'] as String?,
    );

Map<String, dynamic> _$$FeedPostImplToJson(_$FeedPostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photo': instance.photo,
      'subscribers': instance.subscribers,
      'image': instance.image,
      'caption': instance.caption,
      'created_at': instance.created_at,
    };

_$VendorProfileProductImpl _$$VendorProfileProductImplFromJson(
        Map<String, dynamic> json) =>
    _$VendorProfileProductImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      tags: json['tags'] as String?,
      price: json['price'] as String?,
      negotiable: json['negotiable'] as String?,
      contact_name: json['contact_name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      phone_hidden: json['phone_hidden'] as String?,
      address: json['address'] as String?,
      city_id: json['city_id'] as String?,
      lon: json['lon'] as String?,
      lat: json['lat'] as String?,
      length: json['length'] as String?,
      width: json['width'] as String?,
      weight: json['weight'] as String?,
      height: json['height'] as String?,
      pickup: json['pickup'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      city: json['city'] as String?,
      similarVendorProfileProductCount:
          (json['similarVendorProfileProductCount'] as num?)?.toInt(),
      commentcount: (json['commentcount'] as num?)?.toInt(),
      avg_rating: (json['avg_rating'] as num?)?.toDouble(),
      UserDetailsModel: json['UserDetailsModel'] == null
          ? null
          : VendorProfileProductUserDetailsModel.fromJson(
              json['UserDetailsModel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VendorProfileProductImplToJson(
        _$VendorProfileProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'tags': instance.tags,
      'price': instance.price,
      'negotiable': instance.negotiable,
      'contact_name': instance.contact_name,
      'email': instance.email,
      'phone': instance.phone,
      'phone_hidden': instance.phone_hidden,
      'address': instance.address,
      'city_id': instance.city_id,
      'lon': instance.lon,
      'lat': instance.lat,
      'length': instance.length,
      'width': instance.width,
      'weight': instance.weight,
      'height': instance.height,
      'pickup': instance.pickup,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'city': instance.city,
      'similarVendorProfileProductCount':
          instance.similarVendorProfileProductCount,
      'commentcount': instance.commentcount,
      'avg_rating': instance.avg_rating,
      'UserDetailsModel': instance.UserDetailsModel,
    };

_$VendorProfileProductUserDetailsModelImpl
    _$$VendorProfileProductUserDetailsModelImplFromJson(
            Map<String, dynamic> json) =>
        _$VendorProfileProductUserDetailsModelImpl(
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
          nearestBranch: json['nearestBranch'] as String?,
        );

Map<String, dynamic> _$$VendorProfileProductUserDetailsModelImplToJson(
        _$VendorProfileProductUserDetailsModelImpl instance) =>
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
      'nearestBranch': instance.nearestBranch,
    };
