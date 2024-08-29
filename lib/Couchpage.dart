import 'package:ahmad/Bedpage.dart';
import 'package:ahmad/Chairpage.dart';
import 'package:ahmad/Perupage.dart';

import 'package:ahmad/Tablepage.dart';
import 'package:ahmad/Wardrobe.dart';
import 'package:ahmad/basicHome.dart';
import 'package:ahmad/categoryCard.dart';
import 'package:ahmad/model/prouducts_models.dart';
import 'package:ahmad/productCard.dart';
import 'package:flutter/material.dart';

class Couchpage extends StatefulWidget {
  const Couchpage({super.key});
  @override
  State<Couchpage> createState() => _CouchpageState();
}

class _CouchpageState extends State<Couchpage> {
  List<ProductsModel> product = [
    ProductsModel(image: 'images/couch 1.jpg', title: 'table', price: '5000'),
    ProductsModel(image: 'images/couch 2.jpg', title: 'table', price: '6520'),
    ProductsModel(image: 'images/couch 3.jpg', title: 'table', price: '4500'),
    ProductsModel(image: 'images/couch 4.jpg', title: 'table', price: '4500'),
  ];
  @override
  Widget build(BuildContext context) {
    List<CategoryCard> categories = [
      CategoryCard(
          title: 'ALL',
          function: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => BasicHome()));
          }),
      CategoryCard(
          title: 'Bed',
          function: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => Bedpage()));
          }),
      CategoryCard(
          title: 'Chair',
          function: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => Chairpage()));
          }),
      CategoryCard(
          title: 'Wardrobe',
          function: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => Wardrobe()));
          }),
      CategoryCard(
          title: 'Couch',
          function: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => Couchpage()));
          }),
      CategoryCard(
          title: 'Peru',
          function: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => Perupage()));
          }),
      CategoryCard(
          title: 'Table',
          function: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => tablepage()));
          }),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 193, 111, 18),
        centerTitle: true,
        title: Text(
          'Couash',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 22.0,
          horizontal: 5,
        ),
        child: Column(
          children: [
            Container(
              //width: 150,
              height: 70,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: categories.length,
                  itemBuilder: (context, i) {
                    return categories[i];
                  }),
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 15,
                    childAspectRatio: 1,
                  ),
                  itemCount: product.length,
                  itemBuilder: (context, index) {
                    return ProductsView(
                      image: product[index].image,
                      title: product[index].title,
                      price: product[index].price,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
