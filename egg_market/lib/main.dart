// ignore_for_file: sized_box_for_whitespace, camel_case_types, prefer_const_constructors

import 'package:egg_market/core/depo.dart';
import 'package:egg_market/core/first_area_widget.dart';
import 'package:egg_market/core/logo_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TextEditingController _controller1;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();
    _controller1 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'ÜRÜN YUMURTA',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          actions: const [logoWidget()],
          title: const Text('ÜRÜN YUMURTA MARKET'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                firstAreaWidget(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Koli Adedi :",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Text('$_counter', style: TextStyle(fontSize: 20)),
                    Container(
                      width: 35,
                      height: 35,
                      child: FloatingActionButton(
                        onPressed: _incrementCounter,
                        tooltip: 'Increment',
                        child: const Icon(
                          Icons.add,
                          size: 25,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    myTextField1(
                      controller: _controller1,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
