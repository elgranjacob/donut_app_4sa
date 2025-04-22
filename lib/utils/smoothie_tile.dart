import 'package:flutter/material.dart';

class SmoothieTile extends StatelessWidget {
  final String smoothieFlavor;
  final String smoothiePrice;
  final dynamic smoothieColor;
  final String imageName;
  final String smoothieStore;
  final Function(String, String) onAddToCart;

  const SmoothieTile({
    super.key,
    required this.smoothieFlavor,
    required this.smoothiePrice,
    required this.smoothieColor,
    required this.imageName,
    required this.smoothieStore,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          color: smoothieColor[70],
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
                    color: smoothieColor[100],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 14),
                  child: Text(
                    '\$$smoothiePrice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: smoothieColor[800],
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
                smoothieFlavor,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: smoothieColor[800],
                ),
              ),
            ),
            Text(
              smoothieStore,
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
                    onPressed: () => onAddToCart(smoothieFlavor, smoothiePrice),
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
