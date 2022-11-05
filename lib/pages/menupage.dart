import 'package:coffee_masters_flutter/datamodel.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      ProductItem(
        product: Product(
          id: 1,
          name: "Dummy Product",
          price: 1.25,
          image: "images/black_coffee.png",
        ),
        onAdd: () {},
      ),
      ProductItem(
        product: Product(
          id: 1,
          name: "Capuccino",
          price: 1.25,
          image: "images/black_coffee.png",
        ),
        onAdd: () {},
      )
    ]);
  }
}

class ProductItem extends StatelessWidget {
  final Product product;
  final Function onAdd;
  const ProductItem({super.key, required this.product, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Card(
        elevation: 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/black_coffee.png"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 8),
                      child: Text(product.name,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20.0, top: 8, bottom: 8),
                      child: Text("\$${product.price}"),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          onAdd(product);
                        },
                        child: const Text("Add"),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
