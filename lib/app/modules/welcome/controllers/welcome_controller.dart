import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../routes/app_pages.dart';

class WelcomeController extends GetxController {
  final count = 0.obs;
  final nameController = TextEditingController();
  final umurController = TextEditingController();
  final kelahiranKeController = TextEditingController();
  final alamatController = TextEditingController();
  final isButtonActive = false.obs;

  late Box userBox;
  @override
  void onInit() async {
    super.onInit();
    await Hive.openBox('user').then((value) => userBox = Hive.box('user'));
    nameController.addListener(() {
      if (nameController.text.isNotEmpty &&
          umurController.text.isNotEmpty &&
          kelahiranKeController.text.isNotEmpty &&
          alamatController.text.isNotEmpty) {
        isButtonActive.value = true;
      } else {
        isButtonActive.value = false;
      }
    });
    umurController.addListener(() {
      if (nameController.text.isNotEmpty &&
          umurController.text.isNotEmpty &&
          kelahiranKeController.text.isNotEmpty &&
          alamatController.text.isNotEmpty) {
        isButtonActive.value = true;
      } else {
        isButtonActive.value = false;
      }
    });
    alamatController.addListener(() {
      if (nameController.text.isNotEmpty &&
          umurController.text.isNotEmpty &&
          kelahiranKeController.text.isNotEmpty &&
          alamatController.text.isNotEmpty) {
        isButtonActive.value = true;
      } else {
        isButtonActive.value = false;
      }
    });
    kelahiranKeController.addListener(() {
      if (nameController.text.isNotEmpty &&
          umurController.text.isNotEmpty &&
          kelahiranKeController.text.isNotEmpty &&
          alamatController.text.isNotEmpty) {
        isButtonActive.value = true;
      } else {
        isButtonActive.value = false;
      }
    });
  }

  void registerUser(
      String name, int umur, int kelahiranKe, String alamat) async {
    await userBox.put(
      'user',
      {
        'name': name,
        'umur': umur,
        'kelahiranKe': kelahiranKe,
        'alamat': alamat,
      },
    ).then((value) => Get.offAllNamed(Routes.INTRODUCTION));
  }
}
