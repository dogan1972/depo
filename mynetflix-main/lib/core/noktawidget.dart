import 'package:flutter/material.dart';

class noktawidget extends StatelessWidget {
  const noktawidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 5,
      height: 5,
      decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
    );
  }
}
