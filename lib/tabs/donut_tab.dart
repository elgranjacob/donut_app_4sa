import 'package:donut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  final Function(String, String) onAddToCart; 
  //list of donuts
  final List donutsOnSale = [
  // [ DonutFlavor, donutStore, donutPrice, donutColor, imageName ]
  ["Glazed", "Donut World", "28", Colors.amber, "lib/images/donuts/glazed_donut.png"],
  ["Chocolate Sprinkle", "Sweet Rings", "35", Colors.brown, "lib/images/donuts/chocolate_sprinkle.png"],
  ["Strawberry Frosted", "Pink Donuts", "32", Colors.pinkAccent, "lib/images/donuts/strawberry_frosted.png"],
  ["Blueberry Bliss", "Dough Dream", "38", Colors.blueAccent, "lib/images/donuts/blueberry_donut.png"],
  ["Maple Glaze", "Golden Glaze", "40", Colors.orange, "lib/images/donuts/maple_glaze.png"],
  ["Lemon Zest", "Zesty Donuts", "36", Colors.yellow, "lib/images/donuts/lemon_donut.png"],
  ["Cookies & Cream", "Oreo Heaven", "42", Colors.black54, "lib/images/donuts/cookies_cream.png"],
  ["Cotton Candy", "Fantasy Donuts", "34", Colors.lightBlueAccent, "lib/images/donuts/cotton_candy.png"],
];

  DonutTab({super.key, required this.onAddToCart});
//Sliver: scrol presonalizado para listas o diseños grandes
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        //Número de columnas
        //crossaxis: eje opuesto
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            //Proporción de aspecto ancho y largo
            childAspectRatio: 1 / 1.5),
        //Cuantos elementos    
        itemCount: 8,
        padding: const EdgeInsets.all(12),
        itemBuilder: (context, index) {
          return DonutTile(
              donutFlavor: donutsOnSale[index][0],
              donutStore: donutsOnSale[index][1],
              donutPrice: donutsOnSale[index][2],
              donutColor: donutsOnSale[index][3],
              imageName: donutsOnSale[index][4],
              onAddToCart: onAddToCart,
              );

        });
  }
}
