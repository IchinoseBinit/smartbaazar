class ApiConstants {
  ApiConstants._();

  static String baseUrl = "https://smartbazaar.jianjun-rnd.com.np/api";

  static String loginUrl = "$baseUrl/auth/login";
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
  static String addtoCartUrl = '$baseUrl/api/users/addToCart';
  static String incrementQuantity='$baseUrl/users/addToCart';

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
}
