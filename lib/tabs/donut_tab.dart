import 'package:donut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  //list of donuts
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    ["Ice Cream", "Krispy Kreme","36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "Juanito Donut","45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "Jacob Donut","84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "Bimbo Donut","95", Colors.brown, "lib/images/chocolate_donut.png"],
  ];
  DonutTab({super.key});
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
        itemCount: 4,
        padding: const EdgeInsets.all(2),
        itemBuilder: (context, index) {
          return DonutTile(
              donutFlavor: donutsOnSale[index][0],
              donutStore: donutsOnSale[index][1],
              donutPrice: donutsOnSale[index][2],
              donutColor: donutsOnSale[index][3],
              imageName: donutsOnSale[index][4]);
        });
  }
}
