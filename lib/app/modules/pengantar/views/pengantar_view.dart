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
