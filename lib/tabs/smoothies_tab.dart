import 'package:donut_app_4sa/utils/smoothie_tile.dart';
import 'package:flutter/material.dart';

class SmoothiesTab extends StatelessWidget {
  final Function(String, String) onAddToCart; 
  //list of donuts
  final List smoothiesOnSale = [
  // [ SmoothieFlavor, smoothieStore, smoothiePrice, smoothieColor, imageName ]
  ["Strawberry Banana", "Smoothie Shack", "45", Colors.pinkAccent, "lib/images/strawberry_banana.png"],
  ["Mango Madness", "Tropic Blends", "50", Colors.orangeAccent, "lib/images/mango_madness.png"],
  ["Berry Blast", "Frozen Fruits", "48", Colors.purpleAccent, "lib/images/berry_blast.png"],
  ["Green Detox", "Nature Smoothies", "52", Colors.green, "lib/images/green_detox.png"],
  ["Pineapple Paradise", "Juicy Island", "47", Colors.yellowAccent, "lib/images/pineapple_paradise.png"],
  ["Choco Banana", "Energy Bar", "49", Colors.brown, "lib/images/choco_banana.png"],
  ["Peachy Keen", "Peach Blendz", "46", Colors.deepOrangeAccent, "lib/images/peachy_keen.png"],
  ["Blue Magic", "Smoothie World", "53", Colors.lightBlueAccent, "lib/images/blue_magic.png"],
];


  SmoothiesTab({super.key, required this.onAddToCart});
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
          return SmoothieTile(
              smoothieFlavor: smoothiesOnSale[index][0],
              smoothieStore: smoothiesOnSale[index][1],
              smoothiePrice: smoothiesOnSale[index][2],
              smoothieColor: smoothiesOnSale[index][3],
              imageName: smoothiesOnSale[index][4],
              onAddToCart: onAddToCart,
              );

        });
  }
}