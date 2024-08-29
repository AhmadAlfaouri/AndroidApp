import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails({super.key, required String title, required String price, required String image});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}
class _ProductDetailsState extends State<ProductDetails> {

  int productPrice = 5000; //from Api
  String productName = 'bed'; //from Api
  String productImage = 'images/123456.jpg'; //from Api
  String productDescription = 'A sweet and juicy tropical fruit'
      ' that is rich in vitamins and antioxidants.'; //from Api
  var comment;
  double rating = 0.0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 30.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment:
        CrossAxisAlignment.stretch,
        children: [
          Text("product Details",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,),),
          Image.asset(productImage),
          SizedBox(height: 10),
          Text(
            productName,
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
          Text(
            "${productPrice} S.P",
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.star),
                  SizedBox(width: 6),
                  Text("3.5"),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            "Description: $productDescription",
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
                itemPadding:
                EdgeInsets.symmetric(
                    horizontal: 4.0),
                itemBuilder: (context, _) =>
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                onRatingUpdate: (value) {
                  rating = value;
                  print(value);
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
              comment = text;
            },
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
