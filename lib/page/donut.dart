import 'package:flutter/material.dart';

import '../tile/donut_tile.dart';

class DonutTab extends StatelessWidget {

  List donutsOnSale=[
    //[donut flavour,price,color,imageName]
    ["Chocolate Donut","25",Colors.blueAccent,"lib/image/chocolate_donut.png"],
    ["Strawberry Donut","35",Colors.red,"lib/image/strawberry_donut.png"],
    ["Ice-Cream Donut","30",Colors.orangeAccent,"lib/image/icecream_donut.png"],
    ["BlackForest Donut","40",Colors.deepPurpleAccent,"lib/image/blackforest_donut.png"],
    ["Vanilla Donut","20",Colors.brown,"lib/image/vanilla_donus.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1/1.5),
        itemBuilder: (context,index){
      return DonutTile(
        donutFlavour: donutsOnSale[index][0],
        donutPrice: donutsOnSale[index][1],
        donutColor: donutsOnSale[index][2],
        donutImage: donutsOnSale[index][3],
      );
    });
  }
}
