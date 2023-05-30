import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';

class MusicController extends GetxController {
  final AudioPlayer audioPlayer = AudioPlayer();
  final isMusicPlayed = false.obs;

  @override
  void onClose() {
    super.onClose();
    audioPlayer.stop();
    isMusicPlayed.value = false;
  }
}
