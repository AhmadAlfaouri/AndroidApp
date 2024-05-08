import 'dart:math';

import 'package:ahmad/Login.dart';
import 'package:ahmad/ali.dart';
import 'package:ahmad/first%20page.dart';
import 'package:ahmad/me.dart';
import 'package:ahmad/order.dart';
import 'package:ahmad/phone.dart';
import 'package:ahmad/product.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      routes: {
        "/login": (context) => Login(),
        "/order": (context) => order(),
        "/Signup": (context) => SignUp(),
        "/first": (context) => first(),
        "/product": (context) => product(),
        "/phone": (context) => phone(),
        "/me": (context) => me(),
      },
    );
  }
}
