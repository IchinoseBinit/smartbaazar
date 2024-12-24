class PostType {
  final int id;
  final String name;
  final String? lft;
  final String? rgt;
  final String? depth;
  final String active;

  PostType({
    required this.id,
    required this.name,
    this.lft,
    this.rgt,
    this.depth,
    required this.active,
  });

  factory PostType.fromJson(Map<String, dynamic> json) {
    return PostType(
      id: json['id'],
      name: json['name'],
      lft: json['lft'],
      rgt: json['rgt'],
      depth: json['depth'],
      active: json['active'],
    );
  }
}

class GetOnlyData {
  final String id;
  final String countryCode;
  final String userId;
  final String categoryId;
  final String postTypeId;
  final String title;
  final String description;
  final String tags;
  final String price;
  final String? negotiable;
  final String contactName;
  final String email;
  final String phone;
  final String? phoneHidden;
  final String? address;
  final String cityId;
  final String lon;
  final String lat;
  final String? ipAddr;
  final String length;
  final String width;
  final String weight;
  final String height;
  final String pickup;
  final String? longitude;
  final String? latitude;
  final String hyperDel;
  final String? sellerDel;
  final String visits;
  final String? emailToken;
  final String? phoneToken;
  final String tmpToken;
  final String verifiedEmail;
  final String verifiedPhone;
  final String acceptTerms;
  final String acceptMarketingOffers;
  final String isPermanent;
  final String reviewed;
  final String featured;
  final String archived;
  final String? archivedAt;
  final String archivedManually;
  final String? deletionMailSentAt;
  final String? fbProfile;
  final String? partner;
  final String discountedPrice;
  final String trending;
  final String stock;
  final String minOrder;
  final String sampPrice;
  final String textOne;
  final String textTwo;
  final String avaTo;
  final String branded;
  final String? wow;
  final String offers;
  final String? storyDisplayDays;
  final String? barcode;
  final List<Map<String, String>> b2bPricing;
  final String? deletedAt;
  final String createdAt;
  final String updatedAt;
  final String image;
  final String postType;
  final String username;
  final String city;
  final List savedByLoggedUser;

  GetOnlyData({
    required this.id,
    required this.countryCode,
    required this.userId,
    required this.categoryId,
    required this.postTypeId,
    required this.title,
    required this.description,
    required this.tags,
    required this.price,
    this.negotiable,
    required this.contactName,
    required this.email,
    required this.phone,
    this.phoneHidden,
    this.address,
    required this.cityId,
    required this.lon,
    required this.lat,
    this.ipAddr,
    required this.length,
    required this.width,
    required this.weight,
    required this.height,
    required this.pickup,
    this.longitude,
    this.latitude,
    required this.hyperDel,
    this.sellerDel,
    required this.visits,
    this.emailToken,
    this.phoneToken,
    required this.tmpToken,
    required this.verifiedEmail,
    required this.verifiedPhone,
    required this.acceptTerms,
    required this.acceptMarketingOffers,
    required this.isPermanent,
    required this.reviewed,
    required this.featured,
    required this.archived,
    this.archivedAt,
    required this.archivedManually,
    this.deletionMailSentAt,
    this.fbProfile,
    this.partner,
    required this.discountedPrice,
    required this.trending,
    required this.stock,
    required this.minOrder,
    required this.sampPrice,
    required this.textOne,
    required this.textTwo,
    required this.avaTo,
    required this.branded,
    this.wow,
    required this.offers,
    this.storyDisplayDays,
    this.barcode,
    required this.b2bPricing,
    this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.image,
    required this.postType,
    required this.username,
    required this.city,
    required this.savedByLoggedUser,
  });

  factory GetOnlyData.fromJson(Map<String, dynamic> json) {
    var b2bPricingList = (json['b2b_pricing'] as List)
        .map((item) => Map<String, String>.from(item))
        .toList();

    return GetOnlyData(
      id: json['id'],
      countryCode: json['country_code'],
      userId: json['user_id'],
      categoryId: json['category_id'],
      postTypeId: json['post_type_id'],
      title: json['title'],
      description: json['description'],
      tags: json['tags'],
      price: json['price'],
      negotiable: json['negotiable'],
      contactName: json['contact_name'],
      email: json['email'],
      phone: json['phone'],
      phoneHidden: json['phone_hidden'],
      address: json['address'],
      cityId: json['city_id'],
      lon: json['lon'],
      lat: json['lat'],
      ipAddr: json['ip_addr'],
      length: json['length'],
      width: json['width'],
      weight: json['weight'],
      height: json['height'],
      pickup: json['pickup'],
      longitude: json['longitude'],
      latitude: json['latitude'],
      hyperDel: json['hyper_del'],
      sellerDel: json['seller_del'],
      visits: json['visits'],
      emailToken: json['email_token'],
      phoneToken: json['phone_token'],
      tmpToken: json['tmp_token'],
      verifiedEmail: json['verified_email'],
      verifiedPhone: json['verified_phone'],
      acceptTerms: json['accept_terms'],
      acceptMarketingOffers: json['accept_marketing_offers'],
      isPermanent: json['is_permanent'],
      reviewed: json['reviewed'],
      featured: json['featured'],
      archived: json['archived'],
      archivedAt: json['archived_at'],
      archivedManually: json['archived_manually'],
      deletionMailSentAt: json['deletion_mail_sent_at'],
      fbProfile: json['fb_profile'],
      partner: json['partner'],
      discountedPrice: json['discounted_price'],
      trending: json['trending'],
      stock: json['stock'],
      minOrder: json['min_order'],
      sampPrice: json['samp_price'],
      textOne: json['text_one'],
      textTwo: json['text_two'],
      avaTo: json['ava_to'],
      branded: json['branded'],
      wow: json['wow'],
      offers: json['offers'],
      storyDisplayDays: json['story_display_days'],
      barcode: json['barcode'],
      b2bPricing: b2bPricingList,
      deletedAt: json['deleted_at'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      image: json['image'],
      postType: json['post_type'],
      username: json['username'],
      city: json['city'],
      savedByLoggedUser: List.from(json['savedByLoggedUser'] ?? []),
    );
  }
}
