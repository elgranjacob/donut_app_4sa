import 'package:donut_app_4sa/utils/pancakes_tile.dart';
import 'package:flutter/material.dart';

class PancakesTab extends StatelessWidget {
  final Function(String, String) onAddToCart; 
  //list of donuts
  final List pancakesOnSale = [
  // [ PancakeFlavor, pancakeStore, pancakePrice, pancakeColor, imageName ]
  ["Classic Maple", "Stack House", "48", Colors.brown, "lib/images/classic_maple.png"],
  ["Blueberry Burst", "Pancake Paradise", "53", Colors.blueAccent, "lib/images/blueberry_pancake.png"],
  ["Chocolate Chip", "ChocoStacks", "56", Colors.red, "lib/images/chocolate_chip_pancake.png"],
  ["Banana Nut", "Nutty Bites", "51", Colors.yellow, "lib/images/banana_nut_pancake.png"],
  ["Strawberry Swirl", "Berry Fluffy", "50", Colors.pinkAccent, "lib/images/strawberry_pancake.png"],
  ["Lemon Ricotta", "Sunny Stacks", "57", Colors.amberAccent, "lib/images/lemon_ricotta_pancake.png"],
  ["Cinnamon Roll", "Sweet Stackers", "60", Colors.orangeAccent, "lib/images/cinnamon_roll_pancake.png"],
  ["Peanut Butter", "Flapjack Hub", "54", Colors.deepOrange, "lib/images/peanut_butter_pancake.png"],
];


  PancakesTab({super.key, required this.onAddToCart});
//Sliver: scrol presonalizado para listas o diseños grandes
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3, // ajustado aquí
      ),
      itemCount: pancakesOnSale.length,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return PancakesTile(
          pancakeFlavor: pancakesOnSale[index][0],
          pancakeStore: pancakesOnSale[index][1],
          pancakePrice: pancakesOnSale[index][2],
          pancakeColor: pancakesOnSale[index][3],
          imageName: pancakesOnSale[index][4],
          onAddToCart: onAddToCart,
        );
      },
    );
  }
}
