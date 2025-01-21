import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartbazar/features/b2b_screen/view/b2b_screen.dart';
import 'package:smartbazar/features/brand_bazar/brand_bazar_screen.dart';
import 'package:smartbazar/features/events_screen/view/events_screen.dart';
import 'package:smartbazar/features/grocessary_screen/view/grocary_screen.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/jobs_screen/view/jobs_screen.dart';
import 'package:smartbazar/features/services_screen/service_screen.dart';
import 'package:smartbazar/features/socio_screen/view/socio_screen.dart';
import 'package:smartbazar/features/used_screen/view/used_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';

final List<Map<String, dynamic>> services = [
  {'label': 'Low Price Guarantee', 'id': 1},
  {'label': 'Launch Offer', 'id': 2},
  {'label': 'Seasonal offer', 'id': 3},
  {'label': 'Promotional', 'id': 4},
  {'label': 'Clearance sale', 'id': 5},
  {'label': 'Festival sale', 'id': 5},
];
Padding nolistingfound() {
  return const Padding(
    padding: EdgeInsets.only(top: 10, left: 10),
    child: SizedBox(child: Text("No listing found")),
  );
}

final List<Map<String, dynamic>> items = [
  {
    'icon': 'assets/icon/b2bIcon.svg',
    'label': 'TradeHub',
    'screen': const B2bScreen()
  },
  {
    'icon': 'assets/icon/loading.svg',
    'label': 'Everything',
    'screen': const HomeScreen()
  },
  {
    'icon': 'assets/icon/brandBazarIcon.svg',
    'label': 'Brandbazaar',
    'screen': const BrandBazarScreen()
  },
  {
    'icon': 'assets/icon/usedIcon.svg',
    'label': 'Used',
    'screen': const UsedScreen()
  },
  {
    'icon': 'assets/icon/openCartIcon.svg',
    'label': 'SocioShop',
    'screen': const SocioShopScreen()
  },
  {
    'icon': 'assets/icon/box.svg',
    'label': 'ServiceHub',
    'screen': const ServicesScreen()
  },
  {
    'icon': 'assets/icon/vectors.svg',
    'label': 'Job',
    'screen': const JobssScreen()
  },
  {
    'icon': 'assets/icon/groceryIcon.svg',
    'label': 'Grocery',
    'screen': const GrocarysScreen()
  },
  {
    'icon': 'assets/icon/eventIcon.svg',
    'label': 'Events',
    'screen': const EventsScreen()
  },
];
final bottomNavIndexProvider = StateProvider<int>((ref) => 0);

const String baseAsset = "assets/icon";
const String drawerIcon = "$baseAsset/drawerIcon.svg";
const String openCart = "$baseAsset/openCartIcon.svg";
const String logoIcon = "$baseAsset/logo.svg";
const String b2bIcon = "$baseAsset/b2bIcon.svg";
const String brandBazarIcon = "$baseAsset/brandBazarIcon.svg";
const String servicesIcon = "$baseAsset/servicesIcon.svg";
const String usedIcon = "$baseAsset/usedIcon.svg";
const String groceryIcon = "$baseAsset/groceryIcon.svg";
const String jobIcon = "$baseAsset/jobIcon.svg";
   const String domesticicon = '$baseAsset/domestic_brand.png';
  const String globalicon = '$baseAsset/global_brand.png';
  const String spotlighticon = '$baseAsset/spotlight_seller.png';
  const String vendorprofile = '$baseAsset/vendor.png';



const String eventIcon = "$baseAsset/eventIcon.svg";
const String contactSellerIcon = "$baseAsset/contactSellerIcon.svg";
const String whatsAppIcon = "$baseAsset/whatsAppIcon.svg";
const String messagesIcon = "$baseAsset/messagesIcon.svg";
const String phoneIcon = "$baseAsset/phoneIcon.svg";
const String tagIcon = "$baseAsset/tagIcon.svg";
const String invoiceIcon = "$baseAsset/invoiceIcon.svg";
const String deleteIcon = "$baseAsset/deleteIcon.svg";
const String payementIcon = "$baseAsset/paymentIcon.svg";
const String createListingIcon = "$baseAsset/createListingIcon.svg";
const String dropDownIcon = "$baseAsset/dropDownIcon.svg";
const String userIcon = "$baseAsset/userIcon.svg";
const String iIcon = "$baseAsset/iIcon.svg";
const String homeIcon = "$baseAsset/homeIcon.svg";
const String listIcon = "$baseAsset/list.svg";
const String qrIcon = "$baseAsset/qrIcon.svg";
const String heartIcon = "$baseAsset/heartIcon.svg";
const String appleIcon = '$baseAsset/appleIcon.svg';
const String addidasIcon = '$baseAsset/addidasIcon.svg';
const String flameIcon = '$baseAsset/flameIcon.svg';
const String viberIcon = '$baseAsset/viberIcon.svg';
const String fileIcon = '$baseAsset/fileIcon.svg';

class ImageConstant {
  static String basePath = 'assets/images';
  static String appLogo = '$basePath/appLogo.png';
  static String shoppingImage = '$basePath/shoppingImage.png';
  static String laptopImage = '$basePath/laptopImage.png';
  static String personImage = '$basePath/personImage.png';
  static String upayaImage = '$basePath/upayaImage.png';
  static String visitStore = '$basePath/visitStoreImage.png';
  static String scartchWinImage = '$basePath/scratchWinImage.png';
  static String vendorCard = '$basePath/vendorCard.png';
  static String cardImage = '$basePath/cardImage.png';
  static String flameIcon = '$basePath/flameIcon.png';
  static String adidasLogo = '$basePath/adidasLogo.png';
  static String ticketCard = '$basePath/ticketCard.png';
  static String samasungImage = '$basePath/samasungImage.png';
  static String appleImage = '$basePath/appleImage.png';
  static String adBoostImage = '$basePath/adBoostImage.png';
  static String pageNotFound = '$basePath/pageNotFoundImage.png';
  static String facebookShareImage = '$basePath/facebookShare.png';
  static String subscribeImage = '$basePath/subscribe.png';
 

}


// // RouteGenerator class
// class RouteGenerator {
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     final args = settings.arguments;

//     switch (settings.name) {
//       case '/brandbazr':
//         return MaterialPageRoute(builder: (context) => BrandBazarScreen());
//       case '/tradehub':
//         return MaterialPageRoute(builder: (context) => B2bScreen());
//       case '/used':
//         return MaterialPageRoute(builder: (context) => UsedScreen());
//       case '/socio':
//         return MaterialPageRoute(builder: (context) => SocioShopScreen());
//       case '/service':
//         return MaterialPageRoute(builder: (context) => ServicesScreen());
//       case '/jobs':
//         return MaterialPageRoute(builder: (context) => JobssScreen());
//       case '/grocery':
//         return MaterialPageRoute(builder: (context) => GrocarysScreen());
//       case '/vendorprofile':
//         if (args is Map<String, dynamic>) {
//           final int vid = args['id'];
//           final String vendorName = args['vname'];
//           return MaterialPageRoute(
//             builder: (context) => VendorHomeScreen(vid: vid, vendorName: vendorName),
//           );
//         }
//         return _errorRoute(); // If arguments are not correct
//       default:
//         return MaterialPageRoute(builder: (context) => HomeScreen()); // Default route
//     }
//   }

//   static Route<dynamic> _errorRoute() {
//     return MaterialPageRoute(builder: (context) => Scaffold(
//       appBar: AppBar(title: Text("Error")),
//       body: Center(child: Text("Page not found")),
//     ));
//   }
// }
