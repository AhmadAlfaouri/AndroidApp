import 'package:happylaef/models/cart.dart';
import 'package:happylaef/peru.dart';
import 'package:happylaef/product.dart';
import 'package:happylaef/screens/checkout.dart';
import 'package:happylaef/screens/home.dart';
import 'package:happylaef/wallet.dart';
import 'package:happylaef/ya.dart';
import 'package:flutter/material.dart';
import 'package:happylaef/chair.dart';
import 'package:provider/provider.dart';
import 'package:happylaef/first%20page.dart';
import 'package:happylaef/splash.scrren.dart';
import 'package:happylaef/Signup.dart';
import 'package:happylaef/me.dart';
import 'package:happylaef/order.dart';
import 'package:happylaef/phone.dart';
import 'package:happylaef/Login.dart';
import 'package:provider/provider.dart';

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
     
    );
  }
}
