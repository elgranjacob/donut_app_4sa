import 'package:flutter/material.dart';

class PancakesTile extends StatelessWidget {
  final String pancakeFlavor;
  final String pancakePrice;
  final dynamic pancakeColor;
  final String imageName;
  final String pancakeStore;
  final Function(String, String) onAddToCart;

  const PancakesTile({
    super.key,
    required this.pancakeFlavor,
    required this.pancakePrice,
    required this.pancakeColor,
    required this.imageName,
    required this.pancakeStore,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          color: pancakeColor[70],
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
                    color: pancakeColor[100],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 14),
                  child: Text(
                    '\$$pancakePrice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: pancakeColor[800],
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
                pancakeFlavor,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: pancakeColor[800],
                ),
              ),
            ),
            Text(
              pancakeStore,
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
                    onPressed: () => onAddToCart(pancakeFlavor, pancakePrice),
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
