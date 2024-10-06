class ApiConstants {
  ApiConstants._();

  static String baseUrl = "https://smartbazaar.jianjun-rnd.com.np/api";
  static String imgUrl = "https://smartbazaar.jianjun-rnd.com.np/storage/";

  static String loginUrl = "$baseUrl/auth/login";
  static String refreshTokenUrl = "$baseUrl/auth/refresh-token";

  static String sponsoredUrl = "$baseUrl/homeSections/home1";
  static String signUpUrl = '$baseUrl/users';
  static String forgetPasswordUrl = '$baseUrl/auth/password/email';
  static String homeSliderBannerUrl = '$baseUrl/homeSections/';
  static String homeSlider1BannerUrl = '$baseUrl/homeSections/home1';
  static String homeSlider2BannerUrl = '$baseUrl/homeSections/home2';
  static String homeScreenSearchBar = '$baseUrl/homeSections/search_suggest/';

  static String reportComplainUrl = '$baseUrl/posts';
  //cart item
  static String getCart = '$baseUrl/users/cart';
  static String getProductDetails = '$baseUrl/posts';
  static String addtoCartUrl = '$baseUrl/users/addToCart';
  static String incrementQuantity = '$baseUrl/users/addToCart';

  //favourite list
  static String favouriteListUrl = '$baseUrl/savedPosts';
  static String saveFavouriteListingUrl = '$baseUrl/savedPosts';
  static String removeFavouriteListingUrl = '$baseUrl/savedPosts';

  //create new listing
  static String fetchType = '$baseUrl/postTypes';
  static String fetchCategoryList = '$baseUrl/categories';
  static String fetchProductType = '$baseUrl/packages';
  static String fetchCities = '$baseUrl/countries/NP/cities';

  //vendor profile
  static String getVendorProfileDataByUserName = '$baseUrl/users/vendorname';
  static String getVendorProfileDataByID = '$baseUrl/users/vendor';
  //subscribe and win everyday
  static String getSubscribeAndWinUrl = '$baseUrl/users/scwn';
  static String getMySubscriptionUrl = '$baseUrl/subscription';
// terms and condition
  static String getTermsAndConditionUrl = '$baseUrl/pages/terms';
  //privacy policy
  static String getPrivacyPolicyUrl = '$baseUrl/pages/privacy';
  //faq
  static String getFAQUrl = '$baseUrl/pages/faq';
//contact us
  static String getContactUsUrl = '$baseUrl/contact';

  //message thread
  static String getMessageThreadUrl = '$baseUrl/threads';
  static String getMessageListUrl = '$baseUrl/threads';
  //my order and returns
  static String getMyOrderUrl = '$baseUrl/myorders';
  static String getMyReturnsUrl = '$baseUrl/myreturns';
//advertisement
  static String getUsersAdvertisementUrl = '$baseUrl/users/advertisements';
  static String storeAdvertisementUrl = '$baseUrl/users/store_advertisement';

  //online transaction
  static String getOnlineTransactionResponseUrl =
      '$baseUrl/users/payment_record';
}
