import 'package:flutter/material.dart';

import '../tile/burger_tile.dart';

class BurgerTab extends StatelessWidget {
  List burgerOnSale = [
    [
      "Cheese Burger",
      "200",
      Colors.orangeAccent,
      "lib/burger_image/cheeseburger.png"
    ],
    ["Beaf Burger", "300", Colors.red, "lib/burger_image/beafburger.png"],
    [
      "Chicken Burger",
      "250",
      Colors.purple,
      "lib/burger_image/chickenburger.png"
    ],
    ["Hamburger", "220", Colors.lightGreen, "lib/burger_image/ham_burger.png"],
    [
      "Mushroom Burger",
      "240",
      Colors.grey,
      "lib/burger_image/mushroomburger.png"
    ],
    ["Veggie Burger", "180", Colors.blue, "lib/burger_image/vegburger.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: burgerOnSale.length,
        padding: EdgeInsets.all(10),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1/1.5),
        itemBuilder: (context, index) {
          return BurgerTile(
            burgerflavour: burgerOnSale[index][0],
            burgerPrice: burgerOnSale[index][1],
            burgerColor: burgerOnSale[index][2],
            burgerImage: burgerOnSale[index][3],
          );
        });
  }
}
