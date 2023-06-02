import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:hamil_sehat/app/components/colors.dart';

import '../controllers/alat_controller.dart';

class AlatView extends GetView<AlatController> {
  const AlatView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: kPrimary,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage("assets/images/lg0.png"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              white.withOpacity(0.07),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Text(
              "Alat Yang Diperlukan",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 14.sp,
                height: 1.5,
                fontWeight: FontWeight.bold,
              ),
            ).paddingOnly(right: 20.w),
            20.verticalSpace,
            Text(
              "1. Matras",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 14.sp,
                height: 1.5,
              ),
            ).paddingOnly(right: 20.w),
            20.verticalSpace,
            Image.asset(
              "assets/images/matras.png",
              height: 0.3.sh,
              width: 0.8.sw,
            ),
            10.verticalSpace,
            Text(
              "2. Bantal",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 14.sp,
                height: 1.5,
              ),
            ).paddingOnly(right: 20.w),
            Image.asset(
              "assets/images/bantal.png",
              height: 0.3.sh,
              width: 0.8.sw,
            ),
          ],
        ),
      ),
    );
  }
}
