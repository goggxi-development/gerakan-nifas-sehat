import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hamil_sehat/app/components/colors.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayerWidget extends StatefulWidget {
  const YoutubePlayerWidget({super.key, required this.videoUrl});

  final String videoUrl;

  @override
  State<YoutubePlayerWidget> createState() => _YoutubePlayerWidgetState();
}

class _YoutubePlayerWidgetState extends State<YoutubePlayerWidget> {
  late final YoutubePlayerController _controller;
  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.videoUrl) ?? '',
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        enableCaption: false,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      onEnterFullScreen: () {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.landscapeRight,
          DeviceOrientation.landscapeLeft,
        ]);
      },
      onExitFullScreen: () {
        SystemChrome.setEnabledSystemUIMode(
          SystemUiMode.manual,
          overlays: [
            SystemUiOverlay.bottom,
            SystemUiOverlay.top,
          ],
        );
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
        ]);
      },
      player: YoutubePlayer(
        controller: _controller,
        progressColors: const ProgressBarColors(
          playedColor: kPrimary,
          handleColor: kPrimary,
        ),
        showVideoProgressIndicator: true,
        progressIndicatorColor: kPrimary,
      ),
      builder: (_, player) => player,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
