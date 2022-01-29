import 'package:flutter/material.dart';
import 'lists.dart';

class sixAreaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: films.length,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20)),
                      image: DecorationImage(
                        image: AssetImage("assets/images/" + films[index]),
                      )),
                ),
                Container(
                  width: 120,
                  height: 120,
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    child: IconButton(
                        iconSize: 11,
                        onPressed: () {},
                        icon: Icon(Icons.play_arrow)),
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.white),
                        borderRadius: BorderRadius.circular(100)),
                  ),
                )
              ],
            );
          }),
    );
  }
}
