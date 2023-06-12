import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hamil_sehat/app/data/gerakan_nifas_model.dart';
import 'package:hamil_sehat/app/modules/splash_page.dart';
import 'package:hamil_sehat/app/music_controller.dart';
import 'package:hamil_sehat/app/utils/insert_data.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'app/components/colors.dart';
import 'app/data/user_model.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await GetStorage.init();
  Hive.registerAdapter(GerakanNifasModelAdapter());
  Hive.registerAdapter(UserModelAdapter());
  await Hive.openBox('user');
  final boxData = Hive.box('user');
  await Hive.openBox('gerakanNifases');
  Hive.box('gerakanNifases');
  await Hive.openBox("opened");
  final openedData = Hive.box("opened");
  final box = GetStorage();

  box.writeIfNull('opened', 0);

  openedData.put(0, 0);

  if (box.read('opened') == 0) {
    insertInitialData();
    box.write('opened', 1);
  }

  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  ).then(
    (value) {
      return runApp(
        ScreenUtilInit(
          designSize: const Size(392, 852),
          builder: (_, __) {
            SystemChrome.setSystemUIOverlayStyle(
              const SystemUiOverlayStyle(
                statusBarColor: kPrimary,
                statusBarIconBrightness: Brightness.light,
              ),
            );
            return GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
              child: GetMaterialApp(
                debugShowCheckedModeBanner: false,
                title: "GNS",
                home: SplashPage(boxData: boxData),
                getPages: AppPages.routes,
                onInit: () {
                  Get.put<MusicController>(MusicController());
                },
              ),
            );
          },
        ),
      );
    },
  );
}
