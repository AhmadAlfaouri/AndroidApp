import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'categoryCard.dart';
import 'productCard.dart';
import 'model/prouducts_models.dart';
import 'basicHome.dart';
import 'Chairpage.dart';
import 'Couchpage.dart';
import 'Perupage.dart';
import 'Tablepage.dart';
import 'Wardrobe.dart';

class Bedpage extends StatefulWidget {
  const Bedpage({super.key});

  @override
  State<Bedpage> createState() => _BedpageState();
}

class _BedpageState extends State<Bedpage> {
  List<ProductsModel> product = [
    ProductsModel(image: 'images/bed 1.jpg', title: 'Bed', price: '2200'),
    ProductsModel(image: 'images/bed 2.jpg', title: 'Bed', price: '2500'),
    ProductsModel(image: 'images/bed 3.jpg', title: 'Bed', price: '2600'),
    ProductsModel(image: 'images/bed 4.jpg', title: 'Bed', price: '2700'),
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
          'Bed',
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
                        price: product[index].price);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
