import 'package:flutter/material.dart';
import 'package:my_farm/core/shopping.dart';
import 'package:my_farm/main.dart';

void main() => runApp(ProductApp());

class ProductApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
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
            child: productsBody(),
          ),
        ),
      ),
    );
  }
}

class productsBody extends StatelessWidget {
  const productsBody({
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              alignment: AlignmentDirectional(0.0, 0.8),
              width: MediaQuery.of(context).size.width / 3,
              height: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/products/product1.png"),
                ),
              ),
              child: Text("30'LUK KOLİ"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 120,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ShoppingApp()));
                },
                child: Text("Sipariş Ver"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              alignment: AlignmentDirectional(0.0, 0.8),
              width: MediaQuery.of(context).size.width / 3,
              height: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/products/product2.png"),
                ),
              ),
              child: Text("10'LUK SEPET"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 120,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Sipariş Ver"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              alignment: AlignmentDirectional(0.0, 0.8),
              width: MediaQuery.of(context).size.width / 3,
              height: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/products/product3.png"),
                ),
              ),
              child: Text("10'LUK KOLİ"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 120,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Sipariş Ver"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
