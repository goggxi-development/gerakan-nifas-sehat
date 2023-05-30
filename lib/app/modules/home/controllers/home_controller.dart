import 'package:get/get.dart';
import 'package:hamil_sehat/app/modules/introduction/controllers/introduction_controller.dart';

class HomeController extends GetxController {
  final currentPage = 0.obs;

  final introductionC = Get.find<IntroductionController>();
}
