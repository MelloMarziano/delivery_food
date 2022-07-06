import 'package:food_delivery/controllers/cart_controller.dart';
import 'package:get/get.dart';

class CartPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartController());
  }
}
