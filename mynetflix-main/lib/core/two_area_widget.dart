import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class twoAreaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          width: MediaQuery.of(context).size.width,
          color: Colors.black26,
          child: Text(
            "MEZOPOTAMYA",
            style: GoogleFonts.pinyonScript(fontSize: 60),
          ),
        ),
        Container(
            alignment: Alignment.topCenter,
            width: MediaQuery.of(context).size.width,
            color: Colors.black26,
            child: Text(
              "Living Lab & Sanlıurfa",
              style: GoogleFonts.pinyonScript(fontSize: 40),
            ))
      ],
    );
  }
}
