import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController mytext1 = TextEditingController();
  String sourceText = "";
  TextEditingController mytext2 = TextEditingController();
  String lastText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Copy & Paste with Dart"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: mytext1,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              ElevatedButton(
                  onPressed: () {
                    //Clipboard.setData(ClipboardData(text: mytext1.text));
                    sourceText = mytext1.text;
                  },
                  child: const Text("Kopyala")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      mytext2.text = mytext2.text + sourceText;
                      lastText = mytext2.text + sourceText;
                    });
                  },
                  child: Text("Yapıştır"))
            ]),
            TextField(
              controller: mytext2,
            ),
            Container(
              width: 500,
              height: 50,
              color: Colors.orange,
              child: Text(sourceText),
            ),
            Container(
              width: 500,
              height: 50,
              color: Colors.blue,
              child: Text(lastText),
            ),
          ],
        ),
      ),
    );
  }
}
