
import 'package:donut_app_4sa/tabs/burger_tab.dart';
import 'package:donut_app_4sa/tabs/donut_tab.dart';
import 'package:donut_app_4sa/tabs/pancakes_tab.dart';
import 'package:donut_app_4sa/tabs/pizza_tab.dart';
import 'package:donut_app_4sa/tabs/smoothies_tab.dart';
import 'package:donut_app_4sa/utils/my_tab.dart';
import 'package:flutter/material.dart';
import 'package:donut_app_4sa/utils/shopping_cart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title});

  @override
  State<HomePage> createState() => _HomePageSatate();
}

class _HomePageSatate extends State<HomePage> {
  List<Widget> myTabs = [
    Column(
      children: [
        const MyTab(
          iconPath: 'lib/icons/donut.png',
        ),
        Text('Donut')
      ],
    ),
    Column(
      children: [
        const MyTab(
          iconPath: 'lib/icons/burger.png',
        ),
        Text('Burger')
      ],
    ),
    Column(
      children: [
        const MyTab(
          iconPath: 'lib/icons/smoothie.png',
        ),
        Text('Smoothie')
      ],
    ),
    Column(
      children: [
        const MyTab(
          iconPath: 'lib/icons/pancakes.png',
        ),
        Text('Pancakes')
      ],
    ),
    Column(
      children: [
        const MyTab(
          iconPath: 'lib/icons/pizza.png',
        ),
        Text('Pizza')
      ],
    ),
  ];

  List<Map<String, dynamic>> cartItems = [];

  // Función para añadir al carrito
  void addToCart(String flavor, String price) {
    setState(() {
      cartItems.add({
        'flavor': flavor,
        'price': price,
      });
    });
  }

  // Función para calcular el total del carrito
  double getCartTotal() {
    double total = 0;
    for (var item in cartItems) {
      total += double.parse(item['price']);
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: myTabs.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,

            //left menu icon
            leading: Icon(
              Icons.menu,
              color: Colors.grey[800],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: Icon(Icons.person),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              children: <Widget>[
                //1. Texto principal (MainText)
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    children: [
                      Text(
                        'I want to ',
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        'Eat',
                        style: TextStyle(
                            //Tamaño de letra
                            fontSize: 32,
                            //Negritas
                            fontWeight: FontWeight.bold,
                            //Subrayado
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                ),
                //2. Pestañas (TabBar)
                TabBar(tabs: myTabs),
                //3. Contenido de pestañas (TabBarView)
                Expanded(
                  child: TabBarView(
                    children: [
                      DonutTab(onAddToCart: addToCart),
                      BurgerTab(),
                      SmothiesTab(),
                      SmothiesTab(),
                      PizzaTab(),
                    ],
                  ),
                ),

                // Carrito de compras
                ShoppingCart(
                  cartItems: cartItems,
                  total: getCartTotal(),
                ),
              ],
            ),
          ),
        ));
  }
}
