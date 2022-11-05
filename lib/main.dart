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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Greet(),
    );
  }
}
