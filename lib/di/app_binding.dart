import 'package:get/get.dart';
import 'package:petadop/presentation/controller/home_controller.dart';

class AppBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController(),permanent: true);
  }

}