import 'package:coffee_masters_flutter/datamanager.dart';
import 'package:coffee_masters_flutter/pages/menupage.dart';
import 'package:coffee_masters_flutter/pages/offerspage.dart';
import 'package:coffee_masters_flutter/pages/orderpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Masters',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var dataManager = DataManager();
  var selectedIndex = 0;
  Widget currentWidgetPage = const Text("Menu");

  @override
  Widget build(BuildContext context) {
    switch (selectedIndex) {
      case 0:
        currentWidgetPage = MenuPage(
          dataManager: dataManager,
        );
        break;
      case 1:
        currentWidgetPage = const OffersPage();
        break;
      case 2:
        currentWidgetPage = OrderPage(
          dataManager: dataManager,
        );
        break;
    }
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Image.asset("images/logo.png")),
      ),
      body: currentWidgetPage,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (newIndex) {
            setState(() {
              selectedIndex = newIndex;
            });
          },
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Colors.amber.shade200,
          unselectedItemColor: Colors.brown.shade50,
          items: const [
            BottomNavigationBarItem(
              label: "Menu",
              icon: Icon(Icons.coffee),
            ),
            BottomNavigationBarItem(
              label: "Offers",
              icon: Icon(Icons.local_offer),
            ),
            BottomNavigationBarItem(
              label: "Order",
              icon: Icon(Icons.shopping_cart_checkout_outlined),
            ),
          ]),
    );
  }
}
