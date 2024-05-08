import 'package:flutter/material.dart';

class test extends StatefulWidget {
  const test({super.key});

  @override
  //   List soso [
  //   {
  //     "name": "soso",
  //      "price":"55555"
  //   },
  //   {
      
  //     }
    
  // ]
  State<test> createState() => _testState();
}

class _testState extends State<test> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: ListView.builder(itemBuilder: (context, index) =>Container(


      ) ,),
    );
  }
}