import 'package:flutter/material.dart';

import '../tile/frd_chkn_tile.dart';

class FriedChickenTab extends StatelessWidget {
  List friedOnSale=[
    ["Cripsy Chicken","100",Colors.red,"lib/fried_chkn_image/cripsy_ckn.png"],
    ["Bucket Chicken","500",Colors.teal,"lib/fried_chkn_image/bucket_ckn.png"],
    ["Chicken Wings","80",Colors.purple,"lib/fried_chkn_image/chicken-wings.png"],
    ["Chicken Lolipop","90",Colors.blue,"lib/fried_chkn_image/ckn_lolipop.png"],
    ["Hot Fried Chicken","100",Colors.brown,"lib/fried_chkn_image/hot_fried_ckn.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: friedOnSale.length,
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1/1.5), itemBuilder: (context,index){
      return FriedTile(
        friedFlavour: friedOnSale[index][0],
        friedPrice: friedOnSale[index][1],
        friedColor: friedOnSale[index][2],
        friedImage: friedOnSale[index][3],
      );
    });
  }
}
