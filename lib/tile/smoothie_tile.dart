import 'package:flutter/material.dart';

class SmoothieTile extends StatelessWidget {
  final String smoothieFlavour;
  final String smoothiePrice;
  final smoothieColor;
  final String smoothieImage;
  const SmoothieTile(
      {Key? key,
      required this.smoothieFlavour,
      required this.smoothiePrice,
      this.smoothieColor,
      required this.smoothieImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            color: smoothieColor[100], borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            //price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: smoothieColor[400],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            topRight: Radius.circular(12))),
                    padding: EdgeInsets.all(12),
                    child: Text(
                      '\$' + smoothiePrice,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: smoothieColor[900]),
                    ))
              ],
            ),

            //image
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              child: Image.asset(smoothieImage),
            ),

            //flavor
            Text(
              smoothieFlavour,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Juice Bar",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.grey.shade700),
            ),

            //icon
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.pink,
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.grey.shade700,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
