import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:hamil_sehat/app/data/gerakan_nifas_model.dart';
import 'package:hamil_sehat/app/music_controller.dart';
import 'package:hamil_sehat/app/routes/app_pages.dart';
import 'package:hive/hive.dart';

import '../../../components/colors.dart';
import '../controllers/favourite_controller.dart';

class FavouriteView extends GetView<FavouriteController> {
  FavouriteView({Key? key}) : super(key: key);
  final MusicController musicController = Get.find<MusicController>();
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
                      if (!musicController.isMusicPlayed.value) {
                        musicController.audioPlayer
                            .play(
                              AssetSource("music/bgmusic.mpeg"),
                            )
                            .then(
                              (value) =>
                                  musicController.isMusicPlayed.value = true,
                            );
                      } else {
                        musicController.audioPlayer.pause().then(
                              (value) =>
                                  musicController.isMusicPlayed.value = false,
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
                            musicController.isMusicPlayed.value
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
          sliver: GetBuilder<FavouriteController>(
            init: FavouriteController(),
            initState: (_) {
              controller.update();
            },
            builder: (_) {
              return FutureBuilder(
                future: controller.box,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasError) {
                      return SliverFillRemaining(
                        child: Center(
                          child: Text(snapshot.error.toString()),
                        ),
                      );
                    } else {
                      var gerakanNifas = Hive.box('gerakanNifases');
                      return SliverList.builder(
                        itemCount: gerakanNifas.length,
                        itemBuilder: (context, index) {
                          GerakanNifasModel gerakanNifasModel =
                              gerakanNifas.getAt(index);
                          return Visibility(
                            visible: gerakanNifasModel.isFavourite ?? false,
                            child: Card(
                              margin: EdgeInsets.only(bottom: 10.h),
                              color: kPrimary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: InkWell(
                                onTap: () async {
                                  var data = await Get.toNamed(
                                    Routes.DETAIL_GERAKAN,
                                    arguments: index,
                                  );
                                  if (data == null) {
                                    controller.update();
                                  }
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
                                          gerakanNifasModel.title,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.sp,
                                          ),
                                        ),
                                      ),
                                      10.horizontalSpace,
                                      IconButton(
                                        onPressed: () {
                                          gerakanNifasModel.isFavourite =
                                              !gerakanNifasModel.isFavourite!;
                                          gerakanNifas.putAt(
                                              index, gerakanNifasModel);
                                          controller.update();
                                        },
                                        icon: Icon(
                                          Icons.favorite,
                                          color: mainOrange,
                                          size: 28.h,
                                        ),
                                      ),
                                      10.horizontalSpace,
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    }
                  } else {
                    return const SliverFillRemaining(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
