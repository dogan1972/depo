import 'package:flutter/material.dart';

class sevenAreaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Container(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.home),
                color: Colors.white,
              ),
            ),
            Container(
              child: Text("Home"),
            )
          ],
        ),
        Column(
          children: [
            Container(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.face),
                color: Colors.white,
              ),
            ),
            Container(
              child: Text("Smile"),
            )
          ],
        ),
        Column(
          children: [
            Container(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.download),
                color: Colors.white,
              ),
            ),
            Container(
              child: Text("Downloads"),
            )
          ],
        ),
      ],
    );
  }
}
