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
  static String getCart = '$baseUrl/i/users/cart';
  static String getProductDetails = '$baseUrl/posts';
  static String addtoCartUrl = '$baseUrl/api/users/addToCart';
}
