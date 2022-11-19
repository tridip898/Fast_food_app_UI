import 'package:donut_app_ui/tile/smoothie_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  List smoothieOnSale = [
    [
      "Lemon Smoothie",
      "120",
      Colors.lightGreenAccent,
      "lib/smoothie_image/lemon_smoothie.png"
    ],
    [
      "Mix Smoothie",
      "150",
      Colors.brown,
      "lib/smoothie_image/mix_fruit_smoothie.png"
    ],
    [
      "Banana Smoothie",
      "100",
      Colors.yellow,
      "lib/smoothie_image/banana_smoothie.png"
    ],
    [
      "Mango Smoothie",
      "130",
      Colors.orange,
      "lib/smoothie_image/mango_smoothie.png"
    ],
    [
      "Orange Smoothie",
      "120",
      Colors.deepOrange,
      "lib/smoothie_image/orange_smoothie.png"
    ],
    [
      "Pineapple Smoothie",
      "120",
      Colors.redAccent,
      "lib/smoothie_image/pineApple_smoothie.png"
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: smoothieOnSale.length,
        padding: EdgeInsets.all(10),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1/1.5),
        itemBuilder: (context, index) {
          return SmoothieTile(
              smoothieFlavour: smoothieOnSale[index][0],
              smoothiePrice: smoothieOnSale[index][1],
              smoothieColor: smoothieOnSale[index][2],
              smoothieImage: smoothieOnSale[index][3]);
        });
  }
}
