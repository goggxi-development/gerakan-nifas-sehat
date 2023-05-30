import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/about_us_controller.dart';

class AboutUsView extends GetView<AboutUsController> {
  const AboutUsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: MediaQuery.of(context).size.width),
              Text(
                "Aplikasi android gerak nifas sehat (GNS) adalah aplikasi berbasis android yang menyediakan informasi kesehatan dimanakah fitur didalamnya terdapat pengetahuan senam nifas, gerakan senam nifas ini untuk ibu yang persalinanya normal\n\n",
                style: TextStyle(fontSize: 14.sp),
              ),
              Text(
                "Aplikasi ini di buat oleh Gefi Nursetiawanti berkolaborasi dengan programmer\n\n",
                style: TextStyle(fontSize: 14.sp),
              ),
              Text(
                "Sumber Buku:",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14.sp),
              ),
              Text(
                "Zubaidah, Rusdiana, Norfitri R, Pusparina I. 2021. Asuhan Keperawatan Nifas\n\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
              ),
              Text("Sumber Jurnal:",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14.sp)),
              Text(
                "Zakiyyah, M. et al. Pendidikan Kesehatan Dan Pelatihan Senam Nifas. Jurnal Pengabdian Kepada Masyarakat. 2018\n\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
              ),
              Text("Pembimbing :",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14.sp)),
              Text(
                "1. Siti Saadah Mardiah, S.SiT., MPH",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
              ),
              Text(
                "2. Nita Nurvita, SST,  M.Keb\n\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
              ),
              Text("Ahli materi :",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14.sp)),
              Text(
                "1. Sariestya Rismawati, SST., M.Keb\n\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
              ),
              Text("Ahli media :",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14.sp)),
              Text(
                "1. I Eka mulyana., M.Kom\n\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/wa.png",
                    height: 30.w,
                    width: 30.w,
                  ),
                  Text("  081333311617",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14.sp)),
                ],
              ).paddingOnly(bottom: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/ig.png",
                    height: 30.w,
                    width: 30.w,
                  ),
                  Text("  gefi_n",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14.sp)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
