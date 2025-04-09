import 'package:donut_app_4sa/utils/pizza_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  final Function(String, String) onAddToCart; 
  //list of donuts
  final List pizzasOnSale = [
  // [ PizzaFlavor, pizzaStore, pizzaPrice, pizzaColor, imageName ]
  ["Pepperoni", "Pizza Galaxy", "89", Colors.redAccent, "lib/images/pepperoni_pizza.png"],
  ["Margherita", "La Italia", "75", Colors.greenAccent, "lib/images/margherita_pizza.png"],
  ["BBQ Chicken", "Smoky Crust", "95", Colors.deepOrange, "lib/images/bbq_chicken_pizza.png"],
  ["Hawaiian", "Tropic Slice", "82", Colors.orangeAccent, "lib/images/hawaiian_pizza.png"],
  ["Four Cheese", "Cheesy Heaven", "88", Colors.yellowAccent, "lib/images/four_cheese_pizza.png"],
  ["Veggie Supreme", "Green Oven", "78", Colors.lightGreen, "lib/images/veggie_supreme_pizza.png"],
  ["Meat Lovers", "Carnivore's Choice", "99", Colors.brown, "lib/images/meat_lovers_pizza.png"],
  ["Truffle Mushroom", "Gourmet Pies", "105", Colors.grey, "lib/images/truffle_pizza.png"],
];


  PizzaTab({super.key, required this.onAddToCart});
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
          return PizzaTile(
              pizzaFlavor: pizzasOnSale[index][0],
              pizzaStore: pizzasOnSale[index][1],
              pizzaPrice: pizzasOnSale[index][2],
              pizzaColor: pizzasOnSale[index][3],
              imageName: pizzasOnSale[index][4],
              onAddToCart: onAddToCart,
              );

        });
  }
}