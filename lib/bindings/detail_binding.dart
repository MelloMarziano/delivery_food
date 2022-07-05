import 'package:food_delivery/controllers/home_controller.dart';
import 'package:get/get.dart';

class DetailPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
