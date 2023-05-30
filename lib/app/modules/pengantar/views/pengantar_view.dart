import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:hamil_sehat/app/components/colors.dart';

import '../controllers/pengantar_controller.dart';

class PengantarView extends GetView<PengantarController> {
  const PengantarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: kPrimary,
      ),
      body: RawScrollbar(
        thumbVisibility: true,
        thickness: 7.sp,
        thumbColor: Colors.grey,
        notificationPredicate: (notification) => true,
        radius: const Radius.circular(20),
        child: ListView(
          padding: const EdgeInsets.all(20),
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          children: [
            Text(
              Get.arguments,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 14.sp,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
