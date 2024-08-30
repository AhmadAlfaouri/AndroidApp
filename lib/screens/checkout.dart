import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:happylaef/models/products.dart';
import 'package:happylaef/models/cart.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CheckOut"),
          centerTitle: true,
        ),
        body: Consumer<Cart>(
          builder: (context, cart, child) {
            return ListView.builder(
              itemCount: cart.basketItem.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text("${cart.basketItem[index].name}"),
                    trailing: IconButton(
                      onPressed: () {
                        cart.remove(cart.basketItem[index]);
                      },
                      icon: Icon(Icons.recycling),
                    ),
                  ),
                );
              },
            );
          },
        ));
  }
}
