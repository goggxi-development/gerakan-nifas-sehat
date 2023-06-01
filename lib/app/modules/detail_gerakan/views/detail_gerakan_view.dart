import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:hamil_sehat/app/components/images.dart';
import 'package:hamil_sehat/app/components/youtube_player.dart';
import 'package:hamil_sehat/app/utils/insert_data.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../components/colors.dart';
import '../../../data/gerakan_nifas_model.dart';
import '../controllers/detail_gerakan_controller.dart';

class DetailGerakanView extends GetView<DetailGerakanController> {
  const DetailGerakanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimary,
        elevation: 0,
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: Hive.openBox('gerakanNifases'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              var gerakanNifas = Hive.box('gerakanNifases');
              GerakanNifasModel gerakanNifasModel =
                  gerakanNifas.getAt(Get.arguments);
              controller.isFavourite.value =
                  gerakanNifasModel.isFavourite ?? false;
              return SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => YoutubePlayerWidget(
                                videoUrl: gerakanNifasModel.media,
                              ),
                            ),
                          );
                        },
                        child: SizedBox(
                          height: 0.3.sh,
                          width: 1.sw,
                          child: Stack(
                            children: [
                              ImageApp(
                                height: 0.3.sh,
                                width: 1.sw,
                                radius: 20,
                                url: YoutubePlayer.getThumbnail(
                                  videoId: YoutubePlayer.convertUrlToId(
                                          gerakanNifasModel.media) ??
                                      '',
                                ),
                              ),
                              Center(
                                child: Icon(
                                  Icons.play_circle_outline_outlined,
                                  size: 52.sp,
                                  color: mainOrange,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    20.verticalSpace,
                    Card(
                      margin: EdgeInsets.only(bottom: 10.h),
                      color: kPrimary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Visibility(
                              visible:
                                  gerakanNifasModel.title == gerakanNifasAll
                                      ? false
                                      : true,
                              child: Row(
                                children: [
                                  Text(
                                    "Hari\nKe-${Get.arguments}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold),
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
                                controller.isFavourite.toggle();
                                gerakanNifas.putAt(
                                  Get.arguments,
                                  GerakanNifasModel(
                                    title: gerakanNifasModel.title,
                                    description: gerakanNifasModel.description,
                                    media: gerakanNifasModel.media,
                                    number: gerakanNifasModel.number,
                                    isFavourite: controller.isFavourite.value,
                                  ),
                                );
                              },
                              icon: Obx(
                                () => Icon(
                                  controller.isFavourite.value
                                      ? Icons.favorite
                                      : Icons.favorite_outline_outlined,
                                  color: controller.isFavourite.value
                                      ? mainOrange
                                      : white,
                                  size: 28.h,
                                ),
                              ),
                            ),
                            10.horizontalSpace,
                          ],
                        ),
                      ),
                    ),
                    20.verticalSpace,
                    Text(
                      gerakanNifasModel.description,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14.sp,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              );
            }
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
