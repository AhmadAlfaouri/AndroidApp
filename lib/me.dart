import 'package:flutter/material.dart';
import 'package:happylaef/first%20page.dart';
// import 'package:happylaef/login.dart';

class me extends StatefulWidget {
  const me({super.key});

  @override
  State<me> createState() => _meState();
}

class _meState extends State<me> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 193, 111, 18),
          onTap: (value) {
            setState(() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => first()),
              );
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_rounded), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          ]),
    );
  }
}
