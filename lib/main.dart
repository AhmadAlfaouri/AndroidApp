import 'package:ahmad/LineChartSample.dart';
import 'package:ahmad/Signup.dart';
import 'package:ahmad/Tablepage.dart';
import 'package:ahmad/Wallet.dart';
import 'package:ahmad/addproduct.dart';
import 'package:ahmad/dashbordd.dart';
import 'package:ahmad/deletproduct.dart';
import 'package:ahmad/model/CartProvider.dart';
import 'package:ahmad/splash.scrren.dart';
import 'package:ahmad/updetproduct.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'basicHome.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: MyApp(),
    ),
    
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LineChartSample(),
    );
}
