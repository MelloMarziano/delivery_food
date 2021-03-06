import 'package:food_delivery/bindings/cart_binding.dart';
import 'package:food_delivery/bindings/detail_binding.dart';
import 'package:food_delivery/bindings/home_binding.dart';
import 'package:food_delivery/bindings/main_binding.dart';
import 'package:food_delivery/screens/cart_screen.dart';
import 'package:food_delivery/screens/detail_screen.dart';
import 'package:food_delivery/screens/home_screen.dart';
import 'package:food_delivery/screens/main_screen.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.MAIN,
      page: () => MainScreen(),
      binding: MainPageBinding(),
      transition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 600),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomeScreen(),
      binding: HomePageBinding(),
      transition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 600),
    ),
    GetPage(
      name: AppRoutes.DETAIL,
      page: () => DetailScreen(),
      binding: DetailPageBinding(),
      transition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 600),
    ),
    GetPage(
      name: AppRoutes.CARTPAGE,
      page: () => CartPage(),
      binding: CartPageBinding(),
      transition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 600),
    ),
  ];
}
