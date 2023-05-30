import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamil_sehat/app/data/user_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class IntroductionController extends GetxController with StateMixin {
  final count = 0.obs;
  late ScrollController scroolController;
  late Box userBox;
  final isTop = true.obs;

  UserModel user = UserModel(name: "a", usia: 12, kelahiranKe: 2, alamat: "a");
  @override
  void onInit() async {
    super.onInit();
    change(null, status: RxStatus.loading());
    await Hive.openBox('user');
    userBox = Hive.box('user');
    if (userBox.get('user') != null) {
      var data = await userBox.getAt(0);
      user = UserModel(
          name: data['name'],
          usia: data['umur'],
          kelahiranKe: data['kelahiranKe'],
          alamat: data['alamat']);
      change(null, status: RxStatus.success());
    }
    scroolController = ScrollController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      scroolController.addListener(() {
        if (scroolController.position.atEdge) {
          isTop.value = scroolController.position.pixels == 0;
          if (isTop.value) {
            isTop.value = true;
          } else {
            isTop.value = false;
          }
        }
      });
    });
  }

  @override
  void onClose() {
    super.onClose();
    scroolController.dispose();
  }

  void increment() => count.value++;
}
