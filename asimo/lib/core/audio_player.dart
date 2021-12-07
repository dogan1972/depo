import 'package:flutter/material.dart';

class AudioPlayer extends StatelessWidget {
  const AudioPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AssetsAudioPlayer.newPlayer().open(
      Audio("assets/audios/zerda.mp3"),
      autoPlay: true,
      showNotification: true,
    );
  }
}
