import 'package:donut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  final Function(String, String) onAddToCart; 
  //list of donuts
  final List donutsOnSale = [
  // [donutFlavor, donutStore, donutPrice, donutColor, imageName ]
  ["Glazed", "Donut World", "28", Colors.amber, 'lib/images/glazed_donut.png'],
  ["Chocolate", "Sweet Rings", "35", Colors.brown, 'lib/images/glazed_donut.png'],
  ["Fresa", "Pink Donuts", "32", Colors.pink, 'lib/images/glazed_donut.png'],
  ["Mora", "Dough Dream", "38", Colors.red, 'lib/images/glazed_donut.png'],
  ["Maple", "Golden Glaze", "40", Colors.orange, 'lib/images/glazed_donut.png'],
  ["Limon", "Zesty Donuts", "36", Colors.yellow, 'lib/images/glazed_donut.png'],
  ["Crema", "Oreo Heaven", "42", Colors.black, 'lib/images/glazed_donut.png'],
  ["Caramelo", "Fantasy Donuts", "34", Colors.blue, 'lib/images/glazed_donut.png']
];

  DonutTab({super.key, required this.onAddToCart});
//Sliver: scrol presonalizado para listas o diseños grandes
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        //Número de columnas
        //crossaxis: eje opuesto
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            //Proporción de aspecto ancho y largo
            childAspectRatio: 1/1.5),
        //Cuantos elementos    
        itemCount: 4,
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
