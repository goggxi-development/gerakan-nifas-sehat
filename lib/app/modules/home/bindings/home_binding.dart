import 'package:get/get.dart';
import 'package:hamil_sehat/app/modules/favourite/controllers/favourite_controller.dart';
import 'package:hamil_sehat/app/modules/introduction/controllers/introduction_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.put(FavouriteController());
    Get.put(IntroductionController());
  }
}
