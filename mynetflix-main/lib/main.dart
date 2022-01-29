import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mynetflix/core/three_area_widget.dart';
import 'core/first_area_widget.dart';
import 'core/five_area_widget.dart';
import 'core/four_area_widget.dart';
import 'core/seven_area_widget.dart';
import 'core/six_area_widget.dart';
import 'core/two_area_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'MyNetFlix',
      home: Scaffold(body: Home()),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100), topRight: Radius.circular(100)),
        gradient: LinearGradient(
            colors: [Colors.black12, Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
        image: DecorationImage(
            image: AssetImage("assets/images/avatar.jpg"), fit: BoxFit.cover),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            firstAreaWidget(),
            Column(
              children: [
                twoAreaWidget(),
                threeAreaWidget(),
                fourAreaWidget(),
                fiveAreaWidget(),
              ],
            ),
            sixAreaWidget(),
            sevenAreaWidget()
          ],
        ),
      ),
    );
  }
}
