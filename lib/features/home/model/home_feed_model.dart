class FeedStoryResponse {
  final FeedStory feedStory;
  final String msg;

  FeedStoryResponse({required this.feedStory, required this.msg});

  factory FeedStoryResponse.fromJson(Map<String, dynamic> json) {
    return FeedStoryResponse(
      feedStory: FeedStory.fromJson(json['data']['feedstory']),
      msg: json['msg'],
    );
  }
}

class FeedStory {
  final List<Post> posts;

  FeedStory({required this.posts});

  factory FeedStory.fromJson(Map<String, dynamic> json) {
    var list = json['posts'] as List;
    List<Post> postsList = list.map((i) => Post.fromJson(i)).toList();
    return FeedStory(posts: postsList);
  }
}

class Post {
  final String vendorId;
  final String vendorName;
  final String vendorImage;
  final int storyCount;
  final bool hasSponsoredGifts;
  final String id;
  final String title;
  final String image;
  final int similarProductCount;
  final int commentCount;
  final int averageRating;
  final double? discountPercentage;

  Post({
    required this.vendorId,
    required this.vendorName,
    required this.vendorImage,
    required this.storyCount,
    required this.hasSponsoredGifts,
    required this.id,
    required this.title,
    required this.image,
    required this.similarProductCount,
    required this.commentCount,
    required this.averageRating,
    this.discountPercentage,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      vendorId: json['vendor_id'],
      vendorName: json['vendor_name'],
      vendorImage: json['vendor_image'],
      storyCount: json['story_count'],
      hasSponsoredGifts: json['has_sponsored_gifts'],
      id: json['id'],
      title: json['title'],
      image: json['image'],
      similarProductCount: json['similarproductcount'],
      commentCount: int.tryParse(json['comment_count']) ?? 0,
      averageRating: json['average_rating'],
      discountPercentage: json['discount_percentage'] != null
          ? json['discount_percentage'].toDouble()
          : null,
    );
  }
}
