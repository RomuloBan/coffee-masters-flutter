import 'package:flutter/material.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Offer(
      title: "My great offer ever",
      description: "Buy 1, get 10 for free",
    );
  }
}

class Offer extends StatelessWidget {
  final String title;
  final String description;

  const Offer({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.amber.shade300,
          elevation: 7,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "images/background.png",
                ),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Text(
                    title,
                    style: Theme.of(context).textTheme.headline5,
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Text(
                    description,
                    style: Theme.of(context).textTheme.headline6,
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
