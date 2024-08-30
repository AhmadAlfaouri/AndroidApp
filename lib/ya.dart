import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Product {
  final String name;
  final String image;
  final double price;
  final double rating; // خاصية جديدة للتقييم
  final String description; // خاصية جديدة للوصف

  Product({
    required this.name,
    required this.image,
    required this.price,
    required this.rating, // تم إضافة التقييم كمعلمة مطلوبة
    required this.description, // تم إضافة الوصف كمعلمة مطلوبة
  });
}

class ya extends StatefulWidget {
  final Product product;

  const ya({required this.product});

  @override
  _yaState createState() => _yaState();
}

class _yaState extends State<ya> {
  double rating = 0;
  String comment = '';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.product.name),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(widget.product.image),
            SizedBox(height: 10),
            Text(
              '\$${widget.product.price}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.star),
                    SizedBox(width: 6),
                    Text("${widget.product.rating}"), // استخدم التقييم من الكائن product
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              widget.product.description, // استخدم الوصف من الكائن product
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RatingBar.builder(
                  initialRating: rating,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 30.0,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (value) {
                    setState(() {
                      rating = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: "Add a comment",
                border: OutlineInputBorder(),
              ),
              onChanged: (text) {
                setState(() {
                  comment = text;
                });
              },
            ),
            SizedBox(height: 5),
          ],
        ),
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
  }
}

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(product.image),
          Text(product.name),
          Text('\$${product.price}'),
        ],
      ),
    );
  }
}

class ProductListPage extends StatelessWidget {
  final List<Product> products;

  const ProductListPage({required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            leading: Image.asset(product.image),
            trailing: Text('\$${product.price}'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ya(product: product),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
