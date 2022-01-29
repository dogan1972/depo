// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

String value1 = "";

class myTextField1 extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  myTextField1({
    Key? key,
    required TextEditingController controller,
  })  : _controller1 = controller,
        super(key: key);

  final TextEditingController _controller1;

  @override
  State<myTextField1> createState() => _myTextField1State();
}

class _myTextField1State extends State<myTextField1> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (text) {
        setState(() {});
        value1 = text;
      },
      controller: widget._controller1,
      maxLength: 40,
      maxLines: 1,
      style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.w300),
      decoration: const InputDecoration(
        helperText: "Adınız",
        border: OutlineInputBorder(),
      ),
      onSubmitted: (String value) async {
        await showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog();
          },
        );
      },
    );
  }
}
