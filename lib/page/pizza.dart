import 'package:flutter/material.dart';

import '../tile/pizza_tile.dart';

class PizzaTab extends StatelessWidget {

  List pizzaOnSale=[
    ["Cheese Pizza","400",Colors.lightGreen,"lib/pizza_image/cheese_pizza.png"],
    ["Chicken Pizza","500",Colors.purple,"lib/pizza_image/chicken_pizza.png"],
    ["BBQ Pizza","550",Colors.orangeAccent,"lib/pizza_image/bbq_pizza.png"],
    ["Pepperoni Pizza","600",Colors.teal,"lib/pizza_image/pepperoni_pizza.png"],
    ["Veg Pizza","400",Colors.red,"lib/pizza_image/veg_pizza.png"],
    ["Meat Pizza","700",Colors.lightGreen,"lib/pizza_image/meat_pizza.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: pizzaOnSale.length,
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1/1.5), itemBuilder: (context,index){
      return PizzaTile(
        pizzaflavour: pizzaOnSale[index][0],
        pizzaPrice: pizzaOnSale[index][1],
        pizzaColor: pizzaOnSale[index][2],
        pizzaImage: pizzaOnSale[index][3],
      );
    });
  }
}
