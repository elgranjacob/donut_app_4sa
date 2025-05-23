import 'package:donut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  final Function(String, String) onAddToCart;
  //list of donuts
  final List donutsOnSale = [
    // [donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    [
      "Glazed",
      "Donut World",
      "28",
      Colors.amber,
      'lib/images/glaseada.png'
    ],
    [
      "Chocolate",
      "Sweet Rings",
      "35",
      Colors.brown,
      'lib/images/chocolate.png'
    ],
    [
      "Fresa",
      "Pink Donuts",
      "32",
      Colors.pink,
      'lib/images/fresa.png'
    ],
    [
      "Mora",
      "Dough Dream",
      "38",
      Colors.red,
      'lib/images/mora.png'
    ],
    [
      "Maple",
      "Golden Glaze",
      "40",
      Colors.orange,
      'lib/images/maple.png'
    ],
    [
      "Limon",
      "Zesty Donuts",
      "36",
      Colors.yellow,
      'lib/images/limon.png'
    ],
    [
      "Crema",
      "Oreo Heaven",
      "42",
      Colors.red,
      'lib/images/crema.png'
    ],
    [
      "Caramelo",
      "Fantasy Donuts",
      "34",
      Colors.blue,
      'lib/images/caramelo.png'
    ]
  ];

  DonutTab({super.key, required this.onAddToCart});
//Sliver: scrol presonalizado para listas o diseños grandes
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3, // ajustado aquí
      ),
      itemCount: donutsOnSale.length,
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
      },
    );
  }
}
