import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
  final String burgerFlavor;
  final String burgerPrice;
  final dynamic burgerColor;
  final String imageName;
  final String burgerStore;
  final Function(String, String) onAddToCart;

  const BurgerTile({
    super.key,
    required this.burgerFlavor,
    required this.burgerPrice,
    required this.burgerColor,
    required this.imageName,
    required this.burgerStore,
    required this.onAddToCart,
  });

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
          mainAxisSize: MainAxisSize.min, // evita que la columna crezca demasiado
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: burgerColor[100],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 14),
                  child: Text(
                    '\$$burgerPrice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: burgerColor[800],
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
                burgerFlavor,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: burgerColor[800],
                ),
              ),
            ),
            Text(
              burgerStore,
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
                    onPressed: () => onAddToCart(burgerFlavor, burgerPrice),
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
