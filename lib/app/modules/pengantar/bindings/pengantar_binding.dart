import 'package:get/get.dart';

import '../controllers/pengantar_controller.dart';

class PengantarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PengantarController>(
      () => PengantarController(),
    );
  }
}
