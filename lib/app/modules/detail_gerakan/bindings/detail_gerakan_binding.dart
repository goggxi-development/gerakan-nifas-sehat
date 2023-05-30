import 'package:get/get.dart';

import '../controllers/detail_gerakan_controller.dart';

class DetailGerakanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailGerakanController>(
      () => DetailGerakanController(),
    );
  }
}
