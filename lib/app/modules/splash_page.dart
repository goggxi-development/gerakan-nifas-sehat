import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hamil_sehat/app/components/colors.dart';
import 'package:hamil_sehat/app/routes/app_pages.dart';
import 'package:hive/hive.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key, required this.boxData});

  final Box<dynamic> boxData;

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      if (widget.boxData.get('user') == null) {
        Get.offAllNamed(AppPages.INITIAL);
      } else {
        Get.offAllNamed(Routes.INTRODUCTION);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/figure.png",
            height: .35.sh,
            width: 1.sw,
          ),
          30.verticalSpace,
          const Text(
            "SELAMAT DATANG",
            style: TextStyle(fontSize: 20, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          4.verticalSpace,
          const Text(
            '(GNS)\n"Gerak Nifas Sehat"',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          4.verticalSpace,
          const Text(
            'By: Gefi Nursetiawanti\nPoltekkes Kemenkes Tasikmalaya',
            style: TextStyle(fontSize: 12, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
