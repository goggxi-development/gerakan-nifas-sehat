import 'package:get/get.dart';

class DetailGerakanController extends GetxController {
  final isFavourite = false.obs;
  final count = 0.obs;
  void increment() => count.value++;
}
