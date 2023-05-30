import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:hamil_sehat/app/components/colors.dart';
import 'package:hamil_sehat/app/components/main_text_field.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: kPrimary,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return Scaffold(
      backgroundColor: kPrimary,
      floatingActionButton: Obx(
        () => FloatingActionButton(
          onPressed: () {
            controller.isButtonActive.value
                ? controller.registerUser(
                    controller.nameController.text,
                    int.parse(controller.umurController.text),
                    int.parse(controller.kelahiranKeController.text),
                    controller.alamatController.text,
                  )
                : {};
          },
          backgroundColor:
              !controller.isButtonActive.value ? Colors.grey : Colors.white,
          foregroundColor: kPrimary,
          child: const Icon(Icons.arrow_forward),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 130.h),
            Center(
              child: Image.asset(
                "assets/images/figure.png",
                height: .35.sh,
                width: 1.sw,
              ),
            ),
            95.verticalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 14.0.sp,
                      color: Colors.white,
                    ),
                    children: const <TextSpan>[
                      TextSpan(text: 'Nama'),
                      TextSpan(text: ' *', style: TextStyle(color: Colors.red)),
                    ],
                  ),
                ),
                5.verticalSpace,
                MainTextField(
                  hint: 'Masukan Nama',
                  textEditingController: controller.nameController,
                  keyboardType: TextInputType.text,
                ),
                12.verticalSpace,
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 14.0.sp,
                      color: Colors.white,
                    ),
                    children: const <TextSpan>[
                      TextSpan(text: 'Usia'),
                      TextSpan(text: ' *', style: TextStyle(color: Colors.red)),
                    ],
                  ),
                ),
                5.verticalSpace,
                MainTextField(
                  hint: 'Masukan Usia',
                  keyboardType: TextInputType.number,
                  textEditingController: controller.umurController,
                ),
                12.verticalSpace,
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 14.0.sp,
                      color: Colors.white,
                    ),
                    children: const <TextSpan>[
                      TextSpan(text: 'Kelahiran Ke'),
                      TextSpan(text: ' *', style: TextStyle(color: Colors.red)),
                    ],
                  ),
                ),
                5.verticalSpace,
                MainTextField(
                  hint: 'Masukan Kelahiran Ke',
                  keyboardType: TextInputType.number,
                  textEditingController: controller.kelahiranKeController,
                ),
                12.verticalSpace,
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 14.0.sp,
                      color: Colors.white,
                    ),
                    children: const <TextSpan>[
                      TextSpan(text: 'Alamat'),
                      TextSpan(text: ' *', style: TextStyle(color: Colors.red)),
                    ],
                  ),
                ),
                5.verticalSpace,
                MainTextField(
                  hint: 'Masukan alamat',
                  keyboardType: TextInputType.text,
                  textEditingController: controller.alamatController,
                ),
              ],
            ).paddingSymmetric(horizontal: 50.w),
            100.verticalSpace,
          ],
        ),
      ),
    );
  }
}
