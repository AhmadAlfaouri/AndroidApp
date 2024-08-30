// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Shopping Cart'),
//         ),
//         body: ProductsGrid(),
//       ),
//     );
//   }
// }

// class ProductsGrid extends StatefulWidget {
//   @override
//   _ProductsGridState createState() => _ProductsGridState();
// }

// class _ProductsGridState extends State<ProductsGrid> {
//   List<Map<String, dynamic>> products = [
//     {
//       'name': 'Bed',
//       'price': 5000,
//       'image': 'images/123456.jpg',
//       'isAdded': false,
//     },
//     // ... Add more products
//   ];

//   void _addToCart(int index) {
//     setState(() {
//       products[index]['isAdded'] = true;
//     });
//   }

//   void _removeFromCart(int index) {
//     setState(() {
//       products[index]['isAdded'] = false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       itemCount: products.length,
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         childAspectRatio: 3 / 2,
//         mainAxisSpacing: 10,
//         crossAxisSpacing: 10,
//       ),
//       itemBuilder: (BuildContext context, int index) {
//         return Card(
//           color: Colors.black.withOpacity(0.7),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Expanded(
//                 child: Container(
//                   width: 175,
//                   height: 100,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: Image.asset(
//                     products[index]['image'],
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 0),
//                 child: Row(
//                   children: [
//                     Text(
//                       products[index]['name'],
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 17,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Row(
//                 children: [
//                   Text(
//                     '${products[index]['price']} s.p',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 17,
//                     ),
//                   ),
//                   SizedBox(
//                     width: 60,
//                   ),
//                   InkWell(
//                     onTap: () {
//                       if (products[index]['isAdded']) {
//                         _removeFromCart(index);
//                       } else {
//                         _addToCart(index);
//                       }
//                     },
//                     child: Stack(
//                       children: [
//                         IconButton(
//                           onPressed: () {
//                             if (products[index]['isAdded']) {
//                               _removeFromCart(index);
//                             } else {
//                               _addToCart(index);
//                             }
//                           },
//                           icon: Icon(
//                             Icons.shopping_cart_rounded,
//                           ),
//                           color: Colors.white,
//                           iconSize: 20,
//                         ),
//                         if (products[index]['isAdded'])
//                           Container(
//                             decoration: BoxDecoration(
//                               color: Colors.black.withOpacity(0.5),
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                             child: Center(
//                               child: Text(
//                                 '1',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 10,
//                                 ),
//                               ),
//                             ),
//                           ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }