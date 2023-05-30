import 'package:get/get.dart';
import 'package:hamil_sehat/app/modules/home/controllers/home_controller.dart';
import 'package:hive_flutter/hive_flutter.dart';

class FavouriteController extends GetxController {
  final count = 0.obs;
  final homeC = Get.find<HomeController>();

  final box = Hive.openBox("gerakanNifases");

  void increment() => count.value++;
}
