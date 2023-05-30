import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:hamil_sehat/app/components/colors.dart';
import 'package:hamil_sehat/app/data/gerakan_nifas_model.dart';
import 'package:hamil_sehat/app/modules/about_us/views/about_us_view.dart';
import 'package:hamil_sehat/app/modules/favourite/views/favourite_view.dart';
import 'package:hamil_sehat/app/music_controller.dart';
import 'package:hamil_sehat/app/routes/app_pages.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../components/text_data.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text(
              "Keluar Aplikasi",
              style: TextStyle(color: Colors.black),
            ),
            content: const Text(
              "Apakah anda yakin ingin keluar dari aplikasi?",
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Tidak",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  SystemNavigator.pop();
                },
                child: const Text(
                  "Ya",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
        );
        return true;
      },
      child: Scaffold(
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                controller.currentPage.value = 0;
              },
              child: Container(
                height: 50.w,
                width: 50.w,
                decoration: BoxDecoration(
                  color: kPrimary,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Obx(
                  () => Icon(
                    controller.currentPage.value == 0
                        ? Icons.home
                        : Icons.home_outlined,
                    color:
                        controller.currentPage.value == 0 ? mainOrange : white,
                    size: 28.sp,
                  ),
                ),
              ),
            ),
            10.horizontalSpace,
            Container(
              height: 50.w,
              width: 120.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: kPrimary,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Obx(
                    () => GestureDetector(
                      onTap: () {
                        controller.currentPage.value = 1;
                      },
                      child: Icon(
                        controller.currentPage.value == 1
                            ? Icons.article
                            : Icons.article_outlined,
                        color: controller.currentPage.value == 1
                            ? mainOrange
                            : white,
                        size: 28.sp,
                      ),
                    ),
                  ),
                  Center(
                    child: Obx(
                      () => GestureDetector(
                        onTap: () {
                          controller.currentPage.value = 2;
                        },
                        child: Icon(
                          controller.currentPage.value == 2
                              ? Icons.favorite
                              : Icons.favorite_border_outlined,
                          color: controller.currentPage.value == 2
                              ? mainOrange
                              : white,
                          size: 28.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            10.horizontalSpace,
            Container(
              height: 50.w,
              width: 50.w,
              decoration: BoxDecoration(
                color: kPrimary,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: IconButton(
                onPressed: () {
                  controller.currentPage.value = 3;
                },
                icon: Obx(
                  () => Icon(
                    controller.currentPage.value == 3
                        ? Icons.info_rounded
                        : Icons.info_outline_rounded,
                    color:
                        controller.currentPage.value == 3 ? mainOrange : white,
                    size: 28.sp,
                  ),
                ),
              ),
            ),
          ],
        ).paddingOnly(bottom: 10.h, top: 10.h),
        body: Obx(
          () {
            if (controller.currentPage.value == 0) {
              return IntoducionWidget(
                homeController: controller,
              );
            } else if (controller.currentPage.value == 1) {
              return const HomeWidget();
            } else if (controller.currentPage.value == 2) {
              return FavouriteView();
            } else {
              return const AboutUsView();
            }
          },
        ),
      ),
    );
  }
}

class IntoducionWidget extends GetView<MusicController> {
  const IntoducionWidget({super.key, required this.homeController});
  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        50.verticalSpace,
        Text(
          "Hi, ${homeController.introductionC.user.name}",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24.sp,
          ),
        ).paddingSymmetric(horizontal: 20.w),
        10.verticalSpace,
        Expanded(
          child: RawScrollbar(
            thumbVisibility: true,
            thickness: 4.sp,
            thumbColor: kPrimary,
            notificationPredicate: (notification) => true,
            radius: const Radius.circular(20),
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              children: [
                Text(
                  introductionText,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14.sp,
                    height: 1.5,
                  ),
                ).paddingOnly(right: 20.w),
                Card(
                  margin: EdgeInsets.zero,
                  color: kPrimary,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: InkWell(
                    onTap: () {
                      controller.audioPlayer.pause();
                      controller.isMusicPlayed.value = false;
                      Get.toNamed(
                        Routes.PENGANTAR,
                        arguments: manfaatSenamNifas,
                      );
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/lg0.png",
                          height: 80.w,
                          width: 80.w,
                        ),
                        10.horizontalSpace,
                        Expanded(
                          child: Text(
                            "Manfaat Senam Nifas",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                        10.horizontalSpace,
                        const Icon(
                          Icons.arrow_forward_outlined,
                          color: white,
                        ),
                        10.horizontalSpace,
                      ],
                    ),
                  ),
                ).paddingOnly(bottom: 10.h),
                Card(
                  margin: EdgeInsets.zero,
                  color: kPrimary,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: InkWell(
                    onTap: () {
                      controller.audioPlayer.pause();
                      controller.isMusicPlayed.value = false;
                      Get.toNamed(
                        Routes.PENGANTAR,
                        arguments: tujuanSenamNifas,
                      );
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/lg0.png",
                          height: 80.w,
                          width: 80.w,
                        ),
                        10.horizontalSpace,
                        Expanded(
                          child: Text(
                            "Tujuan Senam Nifas",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                        10.horizontalSpace,
                        const Icon(
                          Icons.arrow_forward_outlined,
                          color: white,
                        ),
                        10.horizontalSpace,
                      ],
                    ),
                  ),
                ).paddingOnly(bottom: 10.h),
                Card(
                  margin: EdgeInsets.zero,
                  color: kPrimary,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: InkWell(
                    onTap: () {
                      controller.audioPlayer.pause();
                      controller.isMusicPlayed.value = false;
                      Get.toNamed(Routes.ALAT);
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/lg0.png",
                          height: 80.w,
                          width: 80.w,
                        ),
                        10.horizontalSpace,
                        Expanded(
                          child: Text(
                            "Alat Yang Diperlukan",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                        10.horizontalSpace,
                        const Icon(
                          Icons.arrow_forward_outlined,
                          color: white,
                        ),
                        10.horizontalSpace,
                      ],
                    ),
                  ),
                ).paddingOnly(bottom: 10.h),
                Card(
                  margin: EdgeInsets.zero,
                  color: kPrimary,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: InkWell(
                    onTap: () {
                      controller.audioPlayer.pause();
                      controller.isMusicPlayed.value = false;
                      Get.toNamed(
                        Routes.PENGANTAR,
                        arguments: halYangPerluDiperhatikan,
                      );
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/lg0.png",
                          height: 80.w,
                          width: 80.w,
                        ),
                        10.horizontalSpace,
                        Expanded(
                          child: Text(
                            "Hal Yang Perlu Diperhatikan",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                        10.horizontalSpace,
                        const Icon(
                          Icons.arrow_forward_outlined,
                          color: white,
                        ),
                        10.horizontalSpace,
                      ],
                    ),
                  ),
                ).paddingOnly(bottom: 10.h),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class HomeWidget extends GetView<MusicController> {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          expandedHeight: 0.5.sh,
          flexibleSpace: FlexibleSpaceBar(
            background: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Image.asset(
                    "assets/images/bg.png",
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          sliver: SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: kPrimary,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      "assets/images/soundwaves.png",
                      height: 0.1.sh,
                      width: 1.sw,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (!controller.isMusicPlayed.value) {
                        controller.audioPlayer
                            .play(
                              AssetSource("music/bgmusic.mpeg"),
                            )
                            .then(
                              (value) => controller.isMusicPlayed.value = true,
                            );
                      } else {
                        controller.audioPlayer.pause().then(
                              (value) => controller.isMusicPlayed.value = false,
                            );
                      }
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 0.15.sw,
                        height: 0.1.sh,
                        child: Obx(
                          () => Icon(
                            controller.isMusicPlayed.value
                                ? Icons.pause_circle_outline
                                : Icons.play_circle_outline,
                            size: 48.sp,
                            color: mainOrange,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          sliver: FutureBuilder(
            future: Hive.openBox('gerakanNifases'),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return const SliverFillRemaining(
                    child: Center(
                      child: Text("error"),
                    ),
                  );
                } else {
                  var gerakanNifas = Hive.box('gerakanNifases');
                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        GerakanNifasModel nifasModel =
                            gerakanNifas.getAt(index);
                        return Card(
                          margin: EdgeInsets.only(bottom: 10.h),
                          color: kPrimary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: InkWell(
                            onTap: () {
                              Get.toNamed(
                                Routes.DETAIL_GERAKAN,
                                arguments: index,
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                children: [
                                  Text(
                                    "Hari\nKe-${index + 1}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  10.horizontalSpace,
                                  const Icon(
                                    Icons.arrow_forward_outlined,
                                    color: white,
                                  ),
                                  10.horizontalSpace,
                                  Expanded(
                                    child: Text(
                                      nifasModel.title,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      childCount: gerakanNifas.length,
                    ),
                  );
                }
              }

              return const SliverFillRemaining(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
