import 'package:get/get.dart';

import '../controllers/alat_controller.dart';

class AlatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AlatController>(
      () => AlatController(),
    );
  }
}
