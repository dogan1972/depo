import 'package:asimo/core/youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:asimo/core/tabbarasimo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Asimo',
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.share)),
              SizedBox(
                width: 1,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.apps))
            ],
            title: Text("Kivroş Asımın Dünyası"),
          ),
          body: AsimoTabControllers()),
    );
  }
}
