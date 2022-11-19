import 'package:flutter/material.dart';

class FriedTile extends StatelessWidget {
  final String friedFlavour;
  final String friedPrice;
  final friedColor;
  final String friedImage;
  const FriedTile({Key? key, required this.friedFlavour, required this.friedPrice, this.friedColor, required this.friedImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: friedColor[100],
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          children: [
            //price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: friedColor[200],
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),topRight: Radius.circular(12))
                  ),
                    padding: EdgeInsets.all(10),
                    child: Text('\$'+ friedPrice,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: friedColor[800]),)
                )
              ],
            ),
            
            //image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0,vertical: 18),
              child: Image.asset(friedImage),
            ),
            
            //flavor
            Text(friedFlavour,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Text("KFC",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey.shade700),),
            
            SizedBox(height: 10,),
            
            //icon
            Padding(
              padding: EdgeInsets.only(left: 8,right: 8),
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
