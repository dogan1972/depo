import 'package:flutter/material.dart';
import 'package:my_farm/main.dart';
import 'package:share_plus/share_plus.dart';

final TextEditingController _controller1 = TextEditingController();
final TextEditingController _controller2 = TextEditingController();
final TextEditingController _controller3 = TextEditingController();
final TextEditingController _controller4 = TextEditingController();

String value1 = "";
String value2 = "";
String value3 = "";
String value4 = "";

void main() => runApp(ShoppingApp());

class ShoppingApp extends StatelessWidget {
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
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height + 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/farm.png"),
              ),
            ),
            child: shopWrapWidget(),
          ),
        ),
      ),
    );
  }
}

class shopWrapWidget extends StatefulWidget {
  const shopWrapWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<shopWrapWidget> createState() => _shopWrapWidgetState();
}

class _shopWrapWidgetState extends State<shopWrapWidget> {
  @override
  Widget build(BuildContext context) {
    setState(() {});
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Text("SİPARİŞ BİLGİ GİRİŞİ"),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width - 100,
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller1,
              autocorrect: false,
              textInputAction: TextInputAction.done,
              autofocus: false,
              maxLines: 1,
              onChanged: (String text1) {
                value1 = text1;
              },
              onSubmitted: (String text1) {
                value1 = text1;
              },
              decoration: InputDecoration(
                  //icon: Icon(Icons.mail),
                  //suffixIcon: Icon(Icons.add),
                  filled: true,
                  fillColor: Colors.yellow.shade100,
                  hintText: "Adınız Soyadınız",
                  labelText: "Adınız Soyadınız",
                  labelStyle: TextStyle(
                    fontSize: 15,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width - 100,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller2,
              textInputAction: TextInputAction.done,
              autofocus: false,
              maxLines: 1,
              onChanged: (String text2) {
                value2 = text2;
              },
              onSubmitted: (String text2) {
                value2 = text2;
              },
              decoration: InputDecoration(
                  //icon: Icon(Icons.mail),
                  //suffixIcon: Icon(Icons.add),
                  filled: true,
                  fillColor: Colors.yellow.shade100,
                  hintText: "Teslimat Adresiniz",
                  labelText: "Teslimat Adresiniz",
                  labelStyle: TextStyle(
                    fontSize: 15,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width - 100,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller3,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              autofocus: false,
              maxLines: 1,
              onChanged: (String text3) {
                value3 = text3;
              },
              onSubmitted: (String text3) {
                value3 = text3;
              },
              decoration: InputDecoration(
                  //icon: Icon(Icons.mail),
                  //suffixIcon: Icon(Icons.add),
                  filled: true,
                  fillColor: Colors.yellow.shade100,
                  hintText: "Telefon Numaranız",
                  labelText: "Telefon Numaranız",
                  labelStyle: TextStyle(
                    fontSize: 15,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width - 100,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller4,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              autofocus: false,
              maxLines: 1,
              onChanged: (String text4) {
                value4 = text4;
              },
              onSubmitted: (String text4) {
                value4 = text4;
              },
              decoration: InputDecoration(
                  //icon: Icon(Icons.mail),
                  //suffixIcon: Icon(Icons.add),
                  filled: true,
                  fillColor: Colors.yellow.shade100,
                  hintText: "Sipariş Miktarı",
                  labelText: "Sipariş Miktarı",
                  labelStyle: TextStyle(
                    fontSize: 15,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
            ),
          ),
        ),
        IconButton(
            onPressed: () async {
              setState(() {});
              await showDialog<void>(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Sipariş Özeti : \n Adı Soyadı:" +
                        value1 +
                        "\n Teslimat Adresi:" +
                        value2 +
                        " \n Telefonu:" +
                        value3 +
                        "\n Sipariş Miktarı:" +
                        value4 +
                        " Koli"),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          setState(() {});
                          Navigator.pop(context);
                        },
                        child: const Text("OK"),
                      ),
                    ],
                  );
                },
              );
            },
            icon: Icon(Icons.playlist_add_check)),
        ElevatedButton(
            onPressed: () async {
              await Share.share("Sipariş Özeti : \n Adı Soyadı:" +
                  value1 +
                  "\n Teslimat Adresi:" +
                  value2 +
                  " \n Telefonu:" +
                  value3 +
                  "\n Sipariş Miktarı:" +
                  value4 +
                  " Koli");
            },
            child: Text("Whatsapp ile Paylaş")),
      ],
    );
  }
}
