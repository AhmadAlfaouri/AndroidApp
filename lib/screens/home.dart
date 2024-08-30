import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:happylaef/models/cart.dart';
import 'package:happylaef/models/products.dart';
import 'package:happylaef/screens/checkout.dart';
class Home extends StatelessWidget {
  Home({super.key});

  List<Product> items = [
    Product(name: "ProBook", price: 550.0),
    Product(name: "Pavilion", price: 350.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return CheckOut();
                          }));
                        },
                        icon: Icon(
                          Icons.add_shopping_cart,
                          size: 35,
                        )),
                    Container(
                      width: 18.5,
                      height: 18.5,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.red[400], shape: BoxShape.circle),
                      child: Consumer<Cart>(builder: (context, cart, child) {
                        return Text("${cart.count}");
                      }),
                    )
                  ],
                ),
              ),
              Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Consumer<Cart>(
              builder: (context, cart, child) {
              return Text("${cart.count}");
              },
              ),
              ),
            ],
          )
        ],
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, i) {
            return Card(
              child: Consumer<Cart>(
                builder: (context, cart, child) {
                  return ListTile(
                    title: Text("${items[i].name}"),
                    trailing: IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        cart.add(items[i]);
                      },
                    )
                  );
                },
              ),
            );
          }),
    );
  }
}
