import 'package:coffee_masters_flutter/offerspage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Greet extends StatefulWidget {
  const Greet({super.key});

  @override
  State<Greet> createState() => _GreetState();
}

class _GreetState extends State<Greet> {
  var name = "";
  @override
  Widget build(BuildContext context) {
    var greetStyle = const TextStyle(fontSize: 24);
    return Column(children: [
      Row(
        children: [
          Text(
            "Hello $name",
            style: greetStyle,
          ),
          Text(
            "!!!",
            style: greetStyle,
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: TextField(
          onChanged: (value) => setState(() {
            name = value;
          }),
        ),
      ),
    ]);
  }
}

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("Hello Flutter");
  }
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Image.asset("images/logo.png")),
      ),
      body: const OffersPage(),
      bottomNavigationBar: BottomNavigationBar(items: const [
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
