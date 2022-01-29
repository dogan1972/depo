import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
            child: ElevatedButton(
                onPressed: () async {
                  await Share.share("özet");
                },
                child: Text("Paylaş"))),
      ),
    );
  }
}
