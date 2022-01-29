// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class logoWidget extends StatelessWidget {
  const logoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 50,
      height: 50,
      child: Image(image: AssetImage("assets/logo/cute_chicken.png")),
    );
  }
}
