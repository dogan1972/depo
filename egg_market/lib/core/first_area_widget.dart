import 'package:egg_market/core/constant.dart';
import 'package:flutter/material.dart';

class firstAreaWidget extends StatelessWidget {
  const firstAreaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: myProducts.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                alignment: Alignment.center,
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                    image: DecorationImage(
                      image: AssetImage("assets/images/" + myProducts[index]),
                    )),
              ),
            ],
          );
        },
      ),
    );
  }
}
