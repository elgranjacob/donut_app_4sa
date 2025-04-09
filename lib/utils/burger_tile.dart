import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
  final String burgerFlavor;
  final String burgerPrice;
  final dynamic burgerColor;
  final String imageName;
  final String burgerStore;
  final Function(String, String) onAddToCart; // Función pasada desde DonutTab

  const BurgerTile(
      {super.key,
      required this.burgerFlavor,
      required this.burgerPrice,
      required this.burgerColor,
      required this.imageName,
      required this.burgerStore,
      required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          color: burgerColor[70],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: burgerColor[100],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text(
                    '\$$burgerPrice',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: burgerColor[800]),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Image.asset(imageName),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                burgerFlavor,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: burgerColor[800]),
              ),
            ),
            Text(
              burgerStore,
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            Row(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Icon(
                      Icons.favorite_border_outlined,
                      size: 50,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 275),
                    child: IconButton(
                      onPressed: () {
                        onAddToCart(
                            burgerFlavor, burgerPrice); // Llamamos a la función
                      },
                      icon: Icon(
                        Icons.add,
                        size: 40,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}