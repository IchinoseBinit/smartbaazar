class SponsoredModel {
  List<SponsoredPosts>? sponsoredPosts;
  List<Trending>? trending;

  SponsoredModel({this.sponsoredPosts, this.trending});

  SponsoredModel.fromJson(Map<String, dynamic> json) {
    if (json['sponsored_posts'] != null) {
      sponsoredPosts = <SponsoredPosts>[];
      json['sponsored_posts'].forEach((v) {
        sponsoredPosts!.add(SponsoredPosts.fromJson(v));
      });
    }
    if (json['trending'] != null) {
      trending = <Trending>[];
      json['trending'].forEach((v) {
        trending!.add(Trending.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (sponsoredPosts != null) {
      data['sponsored_posts'] =
          sponsoredPosts!.map((v) => v.toJson()).toList();
    }
    if (trending != null) {
      data['trending'] = trending!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SponsoredPosts {
  String? id;
  String? countryCode;
  String? userId;
  String? categoryId;
  String? postTypeId;
  String? title;
  String? description;
  String? tags;
  String? price;
  String? negotiable;
  String? contactName;
  String? email;
  String? phone;
  String? phoneHidden;
  String? address;
  String? cityId;
  String? lon;
  String? lat;
  String? ipAddr;
  String? length;
  String? width;
  String? weight;
  String? height;
  String? pickup;
  String? longitude;
  String? latitude;
  String? hyperDel;
  String? sellerDel;
  String? visits;
  String? emailToken;
  String? phoneToken;
  String? tmpToken;
  String? verifiedEmail;
  String? verifiedPhone;
  String? acceptTerms;
  String? acceptMarketingOffers;
  String? isPermanent;
  String? reviewed;
  String? featured;
  String? archived;
  String? archivedAt;
  String? archivedManually;
  String? deletionMailSentAt;
  String? fbProfile;
  String? partner;
  String? discountedPrice;
  String? trending;
  String? stock;
  String? minOrder;
  String? sampPrice;
  String? textOne;
  String? textTwo;
  String? avaTo;
  String? branded;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;
  String? image;
  int? avgRating;
  List<String>? savedByLoggedUser;

  SponsoredPosts(
      {this.id,
      this.countryCode,
      this.userId,
      this.categoryId,
      this.postTypeId,
      this.title,
      this.description,
      this.tags,
      this.price,
      this.negotiable,
      this.contactName,
      this.email,
      this.phone,
      this.phoneHidden,
      this.address,
      this.cityId,
      this.lon,
      this.lat,
      this.ipAddr,
      this.length,
      this.width,
      this.weight,
      this.height,
      this.pickup,
      this.longitude,
      this.latitude,
      this.hyperDel,
      this.sellerDel,
      this.visits,
      this.emailToken,
      this.phoneToken,
      this.tmpToken,
      this.verifiedEmail,
      this.verifiedPhone,
      this.acceptTerms,
      this.acceptMarketingOffers,
      this.isPermanent,
      this.reviewed,
      this.featured,
      this.archived,
      this.archivedAt,
      this.archivedManually,
      this.deletionMailSentAt,
      this.fbProfile,
      this.partner,
      this.discountedPrice,
      this.trending,
      this.stock,
      this.minOrder,
      this.sampPrice,
      this.textOne,
      this.textTwo,
      this.avaTo,
      this.branded,
      this.deletedAt,
      this.createdAt,
      this.updatedAt,
      this.image,
      this.avgRating,
      this.savedByLoggedUser});

  SponsoredPosts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    countryCode = json['country_code'];
    userId = json['user_id'];
    categoryId = json['category_id'];
    postTypeId = json['post_type_id'];
    title = json['title'];
    description = json['description'];
    tags = json['tags'];
    price = json['price'];
    negotiable = json['negotiable'];
    contactName = json['contact_name'];
    email = json['email'];
    phone = json['phone'];
    phoneHidden = json['phone_hidden'];
    address = json['address'];
    cityId = json['city_id'];
    lon = json['lon'];
    lat = json['lat'];
    ipAddr = json['ip_addr'];
    length = json['length'];
    width = json['width'];
    weight = json['weight'];
    height = json['height'];
    pickup = json['pickup'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    hyperDel = json['hyper_del'];
    sellerDel = json['seller_del'];
    visits = json['visits'];
    emailToken = json['email_token'];
    phoneToken = json['phone_token'];
    tmpToken = json['tmp_token'];
    verifiedEmail = json['verified_email'];
    verifiedPhone = json['verified_phone'];
    acceptTerms = json['accept_terms'];
    acceptMarketingOffers = json['accept_marketing_offers'];
    isPermanent = json['is_permanent'];
    reviewed = json['reviewed'];
    featured = json['featured'];
    archived = json['archived'];
    archivedAt = json['archived_at'];
    archivedManually = json['archived_manually'];
    deletionMailSentAt = json['deletion_mail_sent_at'];
    fbProfile = json['fb_profile'];
    partner = json['partner'];
    discountedPrice = json['discounted_price'];
    trending = json['trending'];
    stock = json['stock'];
    minOrder = json['min_order'];
    sampPrice = json['samp_price'];
    textOne = json['text_one'];
    textTwo = json['text_two'];
    avaTo = json['ava_to'];
    branded = json['branded'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    image = json['image'];
    avgRating = json['avg_rating'];
    // if (json['savedByLoggedUser'] != null) {
    //   savedByLoggedUser = [];
    //   json['savedByLoggedUser'].forEach((v) {
    //     savedByLoggedUser!.add(Null.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['country_code'] = countryCode;
    data['user_id'] = userId;
    data['category_id'] = categoryId;
    data['post_type_id'] = postTypeId;
    data['title'] = title;
    data['description'] = description;
    data['tags'] = tags;
    data['price'] = price;
    data['negotiable'] = negotiable;
    data['contact_name'] = contactName;
    data['email'] = email;
    data['phone'] = phone;
    data['phone_hidden'] = phoneHidden;
    data['address'] = address;
    data['city_id'] = cityId;
    data['lon'] = lon;
    data['lat'] = lat;
    data['ip_addr'] = ipAddr;
    data['length'] = length;
    data['width'] = width;
    data['weight'] = weight;
    data['height'] = height;
    data['pickup'] = pickup;
    data['longitude'] = longitude;
    data['latitude'] = latitude;
    data['hyper_del'] = hyperDel;
    data['seller_del'] = sellerDel;
    data['visits'] = visits;
    data['email_token'] = emailToken;
    data['phone_token'] = phoneToken;
    data['tmp_token'] = tmpToken;
    data['verified_email'] = verifiedEmail;
    data['verified_phone'] = verifiedPhone;
    data['accept_terms'] = acceptTerms;
    data['accept_marketing_offers'] = acceptMarketingOffers;
    data['is_permanent'] = isPermanent;
    data['reviewed'] = reviewed;
    data['featured'] = featured;
    data['archived'] = archived;
    data['archived_at'] = archivedAt;
    data['archived_manually'] = archivedManually;
    data['deletion_mail_sent_at'] = deletionMailSentAt;
    data['fb_profile'] = fbProfile;
    data['partner'] = partner;
    data['discounted_price'] = discountedPrice;
    data['trending'] = trending;
    data['stock'] = stock;
    data['min_order'] = minOrder;
    data['samp_price'] = sampPrice;
    data['text_one'] = textOne;
    data['text_two'] = textTwo;
    data['ava_to'] = avaTo;
    data['branded'] = branded;
    data['deleted_at'] = deletedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['image'] = image;
    data['avg_rating'] = avgRating;
    // if (this.savedByLoggedUser != null) {
    //   data['savedByLoggedUser'] =
    //       this.savedByLoggedUser!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class Trending {
  String? id;
  String? countryCode;
  String? userId;
  String? categoryId;
  String? postTypeId;
  String? title;
  String? description;
  String? tags;
  String? price;
  String? negotiable;
  String? contactName;
  String? email;
  String? phone;
  String? phoneHidden;
  String? address;
  String? cityId;
  String? lon;
  String? lat;
  String? ipAddr;
  String? length;
  String? width;
  String? weight;
  String? height;
  String? pickup;
  String? longitude;
  String? latitude;
  String? hyperDel;
  String? sellerDel;
  String? visits;
  String? emailToken;
  String? phoneToken;
  String? tmpToken;
  String? verifiedEmail;
  String? verifiedPhone;
  String? acceptTerms;
  String? acceptMarketingOffers;
  String? isPermanent;
  String? reviewed;
  String? featured;
  String? archived;
  String? archivedAt;
  String? archivedManually;
  String? deletionMailSentAt;
  String? fbProfile;
  String? partner;
  String? discountedPrice;
  String? trending;
  String? stock;
  String? minOrder;
  String? sampPrice;
  String? textOne;
  String? textTwo;
  String? avaTo;
  String? branded;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;
  String? image;
  int? avgRating;
  List<String>? savedByLoggedUser;

  Trending(
      {this.id,
      this.countryCode,
      this.userId,
      this.categoryId,
      this.postTypeId,
      this.title,
      this.description,
      this.tags,
      this.price,
      this.negotiable,
      this.contactName,
      this.email,
      this.phone,
      this.phoneHidden,
      this.address,
      this.cityId,
      this.lon,
      this.lat,
      this.ipAddr,
      this.length,
      this.width,
      this.weight,
      this.height,
      this.pickup,
      this.longitude,
      this.latitude,
      this.hyperDel,
      this.sellerDel,
      this.visits,
      this.emailToken,
      this.phoneToken,
      this.tmpToken,
      this.verifiedEmail,
      this.verifiedPhone,
      this.acceptTerms,
      this.acceptMarketingOffers,
      this.isPermanent,
      this.reviewed,
      this.featured,
      this.archived,
      this.archivedAt,
      this.archivedManually,
      this.deletionMailSentAt,
      this.fbProfile,
      this.partner,
      this.discountedPrice,
      this.trending,
      this.stock,
      this.minOrder,
      this.sampPrice,
      this.textOne,
      this.textTwo,
      this.avaTo,
      this.branded,
      this.deletedAt,
      this.createdAt,
      this.updatedAt,
      this.image,
      this.avgRating,
      this.savedByLoggedUser});

  Trending.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    countryCode = json['country_code'];
    userId = json['user_id'];
    categoryId = json['category_id'];
    postTypeId = json['post_type_id'];
    title = json['title'];
    description = json['description'];
    tags = json['tags'];
    price = json['price'];
    negotiable = json['negotiable'];
    contactName = json['contact_name'];
    email = json['email'];
    phone = json['phone'];
    phoneHidden = json['phone_hidden'];
    address = json['address'];
    cityId = json['city_id'];
    lon = json['lon'];
    lat = json['lat'];
    ipAddr = json['ip_addr'];
    length = json['length'];
    width = json['width'];
    weight = json['weight'];
    height = json['height'];
    pickup = json['pickup'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    hyperDel = json['hyper_del'];
    sellerDel = json['seller_del'];
    visits = json['visits'];
    emailToken = json['email_token'];
    phoneToken = json['phone_token'];
    tmpToken = json['tmp_token'];
    verifiedEmail = json['verified_email'];
    verifiedPhone = json['verified_phone'];
    acceptTerms = json['accept_terms'];
    acceptMarketingOffers = json['accept_marketing_offers'];
    isPermanent = json['is_permanent'];
    reviewed = json['reviewed'];
    featured = json['featured'];
    archived = json['archived'];
    archivedAt = json['archived_at'];
    archivedManually = json['archived_manually'];
    deletionMailSentAt = json['deletion_mail_sent_at'];
    fbProfile = json['fb_profile'];
    partner = json['partner'];
    discountedPrice = json['discounted_price'];
    trending = json['trending'];
    stock = json['stock'];
    minOrder = json['min_order'];
    sampPrice = json['samp_price'];
    textOne = json['text_one'];
    textTwo = json['text_two'];
    avaTo = json['ava_to'];
    branded = json['branded'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    image = json['image'];
    avgRating = json['avg_rating'];
    // if (json['savedByLoggedUser'] != String) {
    //   savedByLoggedUser = <Null>[];
    //   json['savedByLoggedUser'].forEach((v) {
    //     savedByLoggedUser!.add(new Null.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['country_code'] = countryCode;
    data['user_id'] = userId;
    data['category_id'] = categoryId;
    data['post_type_id'] = postTypeId;
    data['title'] = title;
    data['description'] = description;
    data['tags'] = tags;
    data['price'] = price;
    data['negotiable'] = negotiable;
    data['contact_name'] = contactName;
    data['email'] = email;
    data['phone'] = phone;
    data['phone_hidden'] = phoneHidden;
    data['address'] = address;
    data['city_id'] = cityId;
    data['lon'] = lon;
    data['lat'] = lat;
    data['ip_addr'] = ipAddr;
    data['length'] = length;
    data['width'] = width;
    data['weight'] = weight;
    data['height'] = height;
    data['pickup'] = pickup;
    data['longitude'] = longitude;
    data['latitude'] = latitude;
    data['hyper_del'] = hyperDel;
    data['seller_del'] = sellerDel;
    data['visits'] = visits;
    data['email_token'] = emailToken;
    data['phone_token'] = phoneToken;
    data['tmp_token'] = tmpToken;
    data['verified_email'] = verifiedEmail;
    data['verified_phone'] = verifiedPhone;
    data['accept_terms'] = acceptTerms;
    data['accept_marketing_offers'] = acceptMarketingOffers;
    data['is_permanent'] = isPermanent;
    data['reviewed'] = reviewed;
    data['featured'] = featured;
    data['archived'] = archived;
    data['archived_at'] = archivedAt;
    data['archived_manually'] = archivedManually;
    data['deletion_mail_sent_at'] = deletionMailSentAt;
    data['fb_profile'] = fbProfile;
    data['partner'] = partner;
    data['discounted_price'] = discountedPrice;
    data['trending'] = trending;
    data['stock'] = stock;
    data['min_order'] = minOrder;
    data['samp_price'] = sampPrice;
    data['text_one'] = textOne;
    data['text_two'] = textTwo;
    data['ava_to'] = avaTo;
    data['branded'] = branded;
    data['deleted_at'] = deletedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['image'] = image;
    data['avg_rating'] = avgRating;
    // if (this.savedByLoggedUser != null) {
    //   data['savedByLoggedUser'] =
    //       this.savedByLoggedUser!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}
