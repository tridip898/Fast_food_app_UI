import 'package:flutter/material.dart';

class PizzaTile extends StatelessWidget {
  final String pizzaflavour;
  final String pizzaPrice;
  final pizzaColor;
  final String pizzaImage;
  const PizzaTile({Key? key, required this.pizzaflavour, required this.pizzaPrice, this.pizzaColor, required this.pizzaImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
            color: pizzaColor[100],
            borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          children: [
            //price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: pizzaColor[200],
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),topRight: Radius.circular(12))
                  ),
                    child: Text('\$'+pizzaPrice,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: pizzaColor[800]),)
                )
              ],
            ),
            
            //image
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 36,vertical: 18),
              child: Image.asset(pizzaImage),
            ),
            
            //flavour
            Text(pizzaflavour,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Text("Pizza Hut",style: TextStyle(color: Colors.grey.shade700,fontSize: 16,fontWeight: FontWeight.bold),),
            
            //icon
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite,color: Colors.pink,),
                  Icon(Icons.add,color: Colors.grey.shade700,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
