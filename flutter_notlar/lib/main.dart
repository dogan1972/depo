import 'package:flutter/material.dart';

import 'core/listeler.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        title: 'Flutter Notlar',
        home: Scaffold(
            backgroundColor: Colors.white,
            body: ListView.builder(
              itemCount: flutterNotlar.length,
              itemBuilder: (context, index) {
                return _cardItem(index);
              },
            )));
  }
}

Widget _cardItem(int index) => Card(
      child: ListTile(
        title: Text(
          flutterNotlar[index],
        ),
      ),
    );
