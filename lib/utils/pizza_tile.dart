import 'package:flutter/material.dart';

class PizzaTile extends StatelessWidget {
  final String pizzaFlavor;
  final String pizzaPrice;
  final dynamic pizzaColor;
  final String imageName;
  final String pizzaStore;
  final Function(String, String) onAddToCart;

  const PizzaTile({
    super.key,
    required this.pizzaFlavor,
    required this.pizzaPrice,
    required this.pizzaColor,
    required this.imageName,
    required this.pizzaStore,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          color: pizzaColor[70],
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
                    color: pizzaColor[100],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 14),
                  child: Text(
                    '\$$pizzaPrice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: pizzaColor[800],
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
                pizzaFlavor,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: pizzaColor[800],
                ),
              ),
            ),
            Text(
              pizzaStore,
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
                    onPressed: () => onAddToCart(pizzaFlavor, pizzaPrice),
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
