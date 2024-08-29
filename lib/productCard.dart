import 'package:ahmad/Wallet.dart';
import 'package:ahmad/home.dart';
import 'package:ahmad/model/prouducts_models.dart';
import 'package:ahmad/orderpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cartPage.dart';
import 'productDetails.dart';
import 'model/CartProvider.dart';

class ProductCard extends StatefulWidget {
  final String title;
  final String image;
  final String price;

  const ProductCard({
    super.key,
    required this.title,
    required this.image,
    required this.price,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool showConfirmation = false;
   List pages = [
    {
      'title': 'Home',
      'page': Home(),
    },
    {
      'title': 'Cart',
      'page': CartPage(),
    },
    {
      'title': 'Order',
      'page': orderpage(),
    },
      {
      'title': 'wallet',
      'page': WalletHomePage(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              content: ProductDetails(
                title: widget.title,
                image: widget.image,
                price: widget.price,
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Close'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Add Comment'),
                ),
              ],
            );
          },
        );
      },
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 193, 111, 18),
              Color.fromARGB(255, 255, 255, 255)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Image.asset(
                widget.image,
                fit: BoxFit.cover,
                width: double.infinity,  // تأكد من أن الصورة تأخذ عرض الكارد بالكامل
                height: 100,  // يمكنك تعديل هذا لضبط ارتفاع الصورة
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                widget.title,
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    '${widget.price} s.p',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Add to Cart"),
                            content: Text(
                                "Do you want to add this product to your cart?"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('No'),
                              ),
                              TextButton(
                                onPressed: () {
                                  Provider.of<CartProvider>(context, listen: false)
                                      .addProduct(
                                    ProductsModel(
                                      title: widget.title,
                                      image: widget.image,
                                      price: widget.price,
                                    ),
                                  );
                                  Navigator.of(context).pop();
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) => CartPage(),
                                    ),
                                  );
                                },
                                child: Text('Yes'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Container(
                      height: 35.0,
                      width: 130.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.amberAccent[700],
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add_shopping_cart),
                          SizedBox(width: 5.0),
                          Text("Add"),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProductsView extends StatelessWidget {
  final String image;
  final String title;
  final String price;

  const ProductsView({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return ProductCard(
      title: title,
      image: image,
      price: price,
    );
  }
}