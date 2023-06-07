import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:hamil_sehat/app/data/gerakan_nifas_model.dart';
import 'package:hamil_sehat/app/music_controller.dart';
import 'package:hamil_sehat/app/routes/app_pages.dart';
import 'package:hamil_sehat/app/utils/insert_data.dart';
import 'package:hive/hive.dart';

import '../../../components/colors.dart';
import '../controllers/favourite_controller.dart';

class FavouriteView extends GetView<FavouriteController> {
  FavouriteView({Key? key}) : super(key: key);
  final MusicController musicController = Get.find<MusicController>();
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: CustomScrollView(
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
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.only(bottom: 30, top: 25),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    "assets/images/sound.png",
                    width: context.width,
                    fit: BoxFit.fitWidth,
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
                        List list = gerakanNifas.values.toList();
                        list.sort((a, b) => a.number.compareTo(b.number));
                        return SliverList.builder(
                          itemCount: list.length,
                          itemBuilder: (context, index) {
                            final gerakanNifasModel =
                                list[index] as GerakanNifasModel;
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
                                        Visibility(
                                          visible: gerakanNifasModel.title ==
                                                  gerakanNifasAll
                                              ? false
                                              : true,
                                          child: Row(
                                            children: [
                                              Text(
                                                "Hari\nKe-$index ",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              10.horizontalSpace,
                                            ],
                                          ),
                                        ),
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
                                            gerakanNifas.put(
                                              gerakanNifasModel.id,
                                              gerakanNifasModel,
                                            );
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
      ),
    );
  }
}
