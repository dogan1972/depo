import 'package:flutter/material.dart';

import 'noktawidget.dart';

class threeAreaWidget extends StatelessWidget {
  const threeAreaWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Text("Drama"),
        ),
        noktawidget(),
        Container(
          child: Text("Aksiyon"),
        ),
        noktawidget(),
        Container(
          child: Text("Savaş"),
        ),
        noktawidget(),
        Container(
          child: Text("Belgesel"),
        ),
        noktawidget(),
        Container(
          child: Text("Korku"),
        ),
        noktawidget(),
        Container(
          child: Text("Çocuk"),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
