import 'package:flutter/material.dart';

class fiveAreaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: AlignmentDirectional(-0.9, 0.0),
          child: Text(
            "En Çok izlenen Filmler",
            style: TextStyle(fontSize: 18),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
