import 'package:asimo/core/youtube_player.dart';
import 'package:asimo/core/youtube_player2.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class AsimoTabControllers extends StatelessWidget {
  const AsimoTabControllers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.photo_camera),
                text: "Fotoğraflar",
              ),
              Tab(
                icon: Icon(Icons.video_camera_back),
                text: "Videolar",
              ),
              Tab(
                icon: Icon(Icons.play_circle_fill),
                text: "Klipler",
              ),
              Tab(
                icon: Icon(Icons.queue_music),
                text: "Müzikler",
              ),
            ],
          ),
          title: const Text("Asım'ın Dünyası"),
        ),
        body: TabBarView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 500,
                    height: 400,
                    child: Image.asset("assets/images/asim_foto.jpeg")),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 500,
                    height: 400,
                    child: Image.asset("assets/images/asimasyon.gif")),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 480,
                  height: 300,
                  child: YoutubeOynat2(),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.play_circle_fill),
                  iconSize: 50,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //AudioPlayer(),
                Icon(Icons.queue_music),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
