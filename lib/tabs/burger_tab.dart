import 'package:donut_app_4sa/utils/burger_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  final Function(String, String) onAddToCart; 
  //list of donuts
  final List burgersOnSale = [
  // [ BurgerFlavor, burgerStore, burgerPrice, burgerColor, imageName ]
  ["Cheeseburger", "Big Bite Burgers", "59", Colors.amber, "lib/images/cheeseburger.png"],
  ["Double Bacon", "Burger Palace", "75", Colors.redAccent, "lib/images/double_bacon.png"],
  ["Veggie Delight", "Green Buns", "52", Colors.green, "lib/images/veggie_burger.png"],
  ["Spicy Inferno", "Fire Grill", "68", Colors.deepOrange, "lib/images/spicy_burger.png"],
  ["BBQ Ranch", "Smoke House", "79", Colors.brown, "lib/images/bbq_ranch.png"],
  ["Classic Beef", "Burger Bros", "64", Colors.deepPurple, "lib/images/classic_beef.png"],
  ["Mushroom Melt", "Shroom & Bun", "72", Colors.grey, "lib/images/mushroom_burger.png"],
  ["Hawaiian Style", "Tropic Burger", "70", Colors.orangeAccent, "lib/images/hawaiian_burger.png"],
];
  BurgerTab({super.key, required this.onAddToCart});
//Sliver: scrol presonalizado para listas o diseños grandes
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        //Número de columnas
        //crossaxis: eje opuesto
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            //Proporción de aspecto ancho y largo
            childAspectRatio: 1 / 2),
        //Cuantos elementos    
        itemCount: 8,
        padding: const EdgeInsets.all(12),
        itemBuilder: (context, index) {
          return BurgerTile(
              burgerFlavor: burgersOnSale[index][0],
              burgerStore: burgersOnSale[index][1],
              burgerPrice: burgersOnSale[index][2],
              burgerColor: burgersOnSale[index][3],
              imageName: burgersOnSale[index][4],
              onAddToCart: onAddToCart,
              );

        });
  }
}
