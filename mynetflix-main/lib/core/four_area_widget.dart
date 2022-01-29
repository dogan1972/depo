import 'package:flutter/material.dart';

class fourAreaWidget extends StatelessWidget {
  const fourAreaWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 10,
        ),
        Stack(
          children: [
            Container(
              width: 100,
              height: 50,
              alignment: Alignment.topCenter,
              child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            ),
            Container(
              width: 100,
              height: 40,
              alignment: Alignment.bottomCenter,
              child: Text(
                "Benim Listem",
                style: TextStyle(fontSize: 11),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              width: 100,
              height: 40,
              color: Colors.white,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.play_arrow, color: Colors.black)),
            ),
            Container(
              width: 100,
              height: 40,
              alignment: Alignment.center,
              child: Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "Oynat",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                alignment: Alignment.center,
                width: 50,
                height: 25,
                child: IconButton(
                    iconSize: 25, onPressed: () {}, icon: Icon(Icons.info))),
            Container(
              width: 30,
              height: 30,
              alignment: Alignment.center,
              child: Text(
                "Bilgi",
                style: TextStyle(fontSize: 11),
              ),
            )
          ],
        ),
        SizedBox(
          width: 20,
        )
      ],
    );
  }
}
