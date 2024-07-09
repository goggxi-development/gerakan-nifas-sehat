import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hamil_sehat/app/components/colors.dart';
import 'package:hamil_sehat/app/modules/web_page.dart';

import '../controllers/about_us_controller.dart';

class AboutUsView extends GetView<AboutUsController> {
  const AboutUsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage("assets/images/lg0.png"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              white.withOpacity(0.2),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: SafeArea(
          child: ListView(
            children: [
              SizedBox(width: MediaQuery.of(context).size.width),
              const ExpansionTile(
                initiallyExpanded: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                title: Text(
                  "Deskripsi Aplikasi",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  ListTile(
                    subtitle: Text(
                      "Aplikasi android gerak nifas sehat (GNS) adalah aplikasi berbasis android yang menyediakan informasi kesehatan dimanakah fitur didalamnya terdapat pengetahuan senam nifas, gerakan senam nifas ini untuk ibu yang persalinanya normal\n\nAplikasi ini di buat oleh Gefi Nursetiawanti berkolaborasi dengan Muhammad Hisammudin\n",
                    ),
                  ),
                ],
              ),
              const ExpansionTile(
                initiallyExpanded: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                title: Text(
                  "Sumber buku",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  ListTile(
                    subtitle: Text(
                      "1. Zubaidah, Rusdiana, Norfitri R, Pusparina I. 2021. Asuhan Keperawatan Nifas\n\n2. Zakiyyah, M. et al. Pendidikan Kesehatan Dan Pelatihan Senam Nifas. Jurnal Pengabdian Kepada Masyarakat. 2018\n",
                    ),
                  ),
                ],
              ),
              const ExpansionTile(
                initiallyExpanded: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                title: Text(
                  "Pembimbing",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  ListTile(
                    subtitle: Text(
                      "1. Siti Saadah Mardiah, S.SiT., MPH\n\n2. Nita Nurvita, SST,  M.Keb\n",
                    ),
                  ),
                ],
              ),
              const ExpansionTile(
                initiallyExpanded: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                title: Text(
                  "Ahli Materi",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  ListTile(
                    subtitle: Text("1. Sariestya Rismawati, SST., M.Keb\n"),
                  ),
                ],
              ),
              const ExpansionTile(
                initiallyExpanded: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                title: Text(
                  "Ahli Media",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  ListTile(
                    subtitle: Text("1. I Eka mulyana., M.Kom\n"),
                  ),
                ],
              ),
              ExpansionTile(
                initiallyExpanded: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                title: const Text(
                  "Kontak",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/wa.png",
                        width: 28,
                        height: 28,
                      ),
                      const Text(' 081333311617'),
                    ],
                  ).paddingOnly(left: 16, bottom: 10),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/ig.png",
                        width: 28,
                        height: 28,
                      ),
                      const Text(' gefi_n'),
                    ],
                  ).paddingOnly(left: 16, bottom: 20),
                ],
              ),
              ListTile(
                title: const Text("Kebijakan Privasi"),
                onTap: () {
                  Get.to(
                    const WebViewPage(
                      url:
                          'https://rumahbeku-morut-app.web.app/external-gns-privacy-policy',
                      title: '',
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
