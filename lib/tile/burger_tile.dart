import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
  final String burgerflavour;
  final String burgerPrice;
  final burgerColor;
  final String burgerImage;
  const BurgerTile(
      {Key? key,
      required this.burgerflavour,
      required this.burgerPrice,
      this.burgerColor,
      required this.burgerImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            color: burgerColor[100], borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            //price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: burgerColor[200],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          topRight: Radius.circular(12))),
                  padding: EdgeInsets.all(12),
                  child: Text(
                    "\$" + burgerPrice,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: burgerColor[800]),
                  ),
                )
              ],
            ),
            //image
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Image.asset(burgerImage),
            ),

            //flavour
            Text(burgerflavour,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Text("Burger King",style: TextStyle(color: Colors.grey.shade800,fontSize: 15,fontWeight: FontWeight.bold),),

            //love icon + add button
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite,color: Colors.pink,),
                  Icon(Icons.add,color: Colors.grey.shade700,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
