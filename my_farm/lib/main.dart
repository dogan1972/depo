import 'package:flutter/material.dart';
import 'package:my_farm/core/products.dart';
import 'package:my_farm/core/shopping.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'ÜRÜN YUMURTA ÇİFTLİĞİ',
      home: Scaffold(
        appBar: AppBar(
          leading: Container(
              width: 50,
              child: IconButton(onPressed: () {}, icon: Icon(Icons.menu))),
          actions: [
            Row(
              children: [
                farmBarWidget(),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/chicken.png"),
                    ),
                  ),
                )
              ],
            ),
          ],
          title: Text('ÜRÜN YUMURTA ÇİFTLİĞİ'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: farmBody(),
          ),
        ),
      ),
    );
  }
}

class farmBarWidget extends StatelessWidget {
  //App Bar'da kullanılan resim ve logolar
  const farmBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional(0.0, -0.5),
      child: Text(
        "ÜRÜN YUMURTA ÇİFTLİĞİ",
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      width: MediaQuery.of(context).size.width - 80,
      height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/farm.png"),
        ),
      ),
    );
  }
}

class farmBody extends StatelessWidget {
  const farmBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height + 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/farm.png"),
        ),
      ),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 3,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/egg_omlet.png"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 120,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProductApp()));
                },
                child: Text("Ürünlerimiz"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 120,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Evlere Servis"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 120,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Toptan Satış"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
