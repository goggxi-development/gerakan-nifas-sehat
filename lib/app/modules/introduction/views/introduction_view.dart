import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:hamil_sehat/app/components/colors.dart';

import '../../../routes/app_pages.dart';
import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  const IntroductionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Obx(
        () => AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          height: controller.isTop.value ? 0 : 50,
          child: FloatingActionButton(
            onPressed: () {
              controller.isTop.value ? {} : Get.offAllNamed(Routes.HOME);
            },
            backgroundColor: controller.isTop.value ? Colors.grey : kPrimary,
            child: const Icon(Icons.arrow_forward),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Container(
        padding: const EdgeInsets.all(16),
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
        child: SafeArea(
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
                20.verticalSpace,
                SizedBox(
                  height: 0.65.sh,
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
                          "KEBIJAKAN PENGUNA",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ).paddingOnly(bottom: 10),
                        Text(
                          "Dengan menggunakan aplikasi ini pengguna menyetujui kebijakan penggunaan yang berlaku dalam aplikasi Ibu Nifas Pintar.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 14.sp,
                          ),
                        ).paddingOnly(bottom: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "A. ",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Pengguna wajib menyertakan data identitas yang sesuai dengan data diri pengguna.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            )
                          ],
                        ).paddingOnly(bottom: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "B. ",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Penggunaan Aplikasi Gerak Senam Nifas diharapkan sesuai dengan prosedur yang telah dijelaskan oleh petugas kesehatan yang bekerjasama  dengan tim Gerak Senam Nifas.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            )
                          ],
                        ).paddingOnly(bottom: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "C. ",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Harap diperhatikan bahwa aplikasi ini hanya sebagai panduan, jika ada hal-hal yang tidak sesuai harap konsultasikan dengan petugas kesehatan atau dokter Anda.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            )
                          ],
                        ).paddingOnly(bottom: 10),
                        Text(
                          "Terimakasih.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ).paddingOnly(bottom: 20),
                        Text(
                          "TENTANG",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ).paddingOnly(bottom: 10),
                        Text(
                          "Aplikasi Ini dibuat agar dapat membantu masyarakat khususnya Ibu nifas untuk mengetahui Gerak Senam Nifas adalah aplikasi yang dapat digunakan untuk memantau kesiapan ibu setelah proses melahirkan. Terdapat tiga menu utama dalam aplikasi Ibu Nifas Pintar yaitu Edukasi, Keluhan, dan Data Kesiapan. Pada menu pengantar, pengguna dapat melihat pengetahuan tentang hal-hal penting yang perlu diketahui oleh ibu yang akan melakukan senam nifas setelah melahirkan. Selanjutnya, ada menu Gerakan Gerakan senam nifas untuk mendampingi ibu nifas. Menu selanjutnya adalah tutorial senam nifas untuk mendampingi ibu yang akan melakukan senam nifas.\n\nttd,\n\n\n\nTim Gerak senam nifas.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 14.sp,
                          ),
                        ).paddingOnly(bottom: 10),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
