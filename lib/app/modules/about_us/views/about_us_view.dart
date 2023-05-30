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
            children: [
              SizedBox(width: MediaQuery.of(context).size.width),
              const Text(
                "Aplikasi android gerak nifas sehat (GNS) adalah aplikasi berbasis android yang menyediakan informasi kesehatan dimanakah fitur didalamnya terdapat pengetahuan senam nifas, gerakan senam nifas ini untuk ibu yang persalinanya normal\n\n",
                textAlign: TextAlign.center,
              ),
              const Text(
                "Aplikasi ini di buat oleh Gefi Nursetiawanti berkolaborasi dengan programmer\n\n",
                textAlign: TextAlign.center,
              ),
              const Text("Sumber Buku:", textAlign: TextAlign.center),
              const Text(
                "Zubaidah, Rusdiana, Norfitri R, Pusparina I. 2021. Asuhan Keperawatan Nifas\n\n",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text("Sumber Jurnal:", textAlign: TextAlign.center),
              const Text(
                "Zakiyyah, M. et al. Pendidikan Kesehatan Dan Pelatihan Senam Nifas. Jurnal Pengabdian Kepada Masyarakat. 2018\n\n",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text("Pembimbing :", textAlign: TextAlign.center),
              const Text(
                "1. Siti Saadah Mardiah, S.SiT., MPH",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(
                "2. Nita Nurvita, SST,  M.Keb\n\n",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text("Ahli materi :", textAlign: TextAlign.center),
              const Text(
                "1. Sariestya Rismawati, SST., M.Keb\n\n",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text("Ahli media :", textAlign: TextAlign.center),
              const Text(
                "1. I Eka mulyana., M.Kom\n\n",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/wa.png",
                    height: 30.w,
                    width: 30.w,
                  ),
                  const Text("  081333311617", textAlign: TextAlign.center),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/ig.png",
                    height: 30.w,
                    width: 30.w,
                  ),
                  const Text("  gefi_n", textAlign: TextAlign.center),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
