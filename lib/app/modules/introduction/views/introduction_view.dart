import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:hamil_sehat/app/components/colors.dart';
import 'package:hamil_sehat/app/components/text_data.dart';

import '../../../routes/app_pages.dart';
import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  const IntroductionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Obx(
        () => FloatingActionButton(
          onPressed: () {
            controller.isTop.value ? {} : Get.offAllNamed(Routes.HOME);
          },
          backgroundColor: controller.isTop.value ? Colors.grey : kPrimary,
          child: const Icon(Icons.arrow_forward),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: SafeArea(
        child: controller.obx(
          (state) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              50.verticalSpace,
              Text(
                "Hi, ${controller.user.name}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.sp,
                ),
              ),
              10.verticalSpace,
              SizedBox(
                height: 0.7.sh,
                child: RawScrollbar(
                  thumbVisibility: true,
                  thickness: 4.sp,
                  thumbColor: kPrimary,
                  controller: controller.scroolController,
                  notificationPredicate: (notification) => true,
                  radius: const Radius.circular(20),
                  child: ListView(
                      controller: controller.scroolController,
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      children: [
                        Text(
                          newIntroductionText,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 14.sp,
                            height: 1.5,
                          ),
                        ).paddingOnly(right: 20.w),
                      ]),
                ),
              ),
            ],
          ).paddingOnly(left: 38.w, right: 20.w),
        ),
      ),
    );
  }
}
