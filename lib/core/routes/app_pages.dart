import 'package:get/get.dart';
import 'package:petadop/core/model/pet_model.dart';
import 'package:petadop/presentation/ui/detail/detail_screen.dart';

import 'app_routes.dart';

Duration get transitionDuration => const Duration(milliseconds:400);

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.detail,
      page: () {
        DetailScreen detailScreen = Get.arguments;
        return detailScreen;
      },
      transition: Transition.fadeIn,
      transitionDuration: transitionDuration,
    ),
  ];
}