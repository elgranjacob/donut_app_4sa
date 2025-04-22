import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final dynamic donutColor;
  final String imageName;
  final String donutStore;
  final Function(String, String) onAddToCart;

  const DonutTile({
    super.key,
    required this.donutFlavor,
    required this.donutPrice,
    required this.donutColor,
    required this.imageName,
    required this.donutStore,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          color: donutColor[70],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min, // evita que la columna crezca demasiado
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: donutColor[100],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 14),
                  child: Text(
                    '\$$donutPrice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: donutColor[800],
                    ),
                  ),
                ),
              ],
            ),
            Flexible(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Image.asset(imageName, height: 100)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                donutFlavor,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: donutColor[800],
                ),
              ),
            ),
            Text(
              donutStore,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 12),
                  child: const Icon(Icons.favorite_border_outlined, size: 30),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 12),
                  child: IconButton(
                    onPressed: () => onAddToCart(donutFlavor, donutPrice),
                    icon: const Icon(Icons.add, size: 30),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
