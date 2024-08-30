// import 'package:flutter/material.dart';

// class mohamad extends StatelessWidget {
//   final String name;
//   final int price;

//   mohamad({required this.name, required this.price});
  
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Product Page',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }


// class MyHomePage extends StatefulWidget {
  
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   List<Mohamad> cartItems = [];
//   bool showConfirmation = false;
//   final String proudact = '';
//   final String name = "Mango";
//   final double price = 5000;

//   void addToCart(Mohamad mohamad) {
//     setState(() {
//       cartItems.add(mohamad);
//       showConfirmation = true;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.only(left: 20),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Row(
//                   children: [
//                     Column(
//                       children: [
//                         Container(
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10)),
//                             child: Column(
//                               children: [
//                                 Container(
//                                     decoration: BoxDecoration(
//                                         color:
//                                             Color.fromARGB(255, 212, 196, 163),
//                                         borderRadius:
//                                             BorderRadius.circular(10)),
//                                     width: 175,
//                                     height: 170,
//                                     child: Column(
//                                       children: [
//                                         Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           children: [
//                                             Container(
//                                               width: 175,
//                                               height: 100,
//                                               decoration: BoxDecoration(
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           10)),
//                                               child: Image.asset(
//                                                 'images/123456.jpg',
//                                               ),
//                                             )
//                                           ],
//                                         ),
//                                         Padding(
//                                           padding:
//                                               const EdgeInsets.only(left: 0),
//                                           child: Row(
//                                             children: [
//                                               Text(
//                                                 "Mango",
//                                                 style: TextStyle(
//                                                     color: Colors.white,
//                                                     fontSize: 17),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                         Row(
//                                           children: [
//                                             Text('5000 s.p',
//                                                 style: TextStyle(
//                                                     color: Colors.white,
//                                                     fontSize: 17)),
//                                             SizedBox(
//                                               width: 60,
//                                             ),
//                                             InkWell(
//                                               onTap: () {
//                                                 showDialog(
//                                                   context: context,
//                                                   builder:
//                                                       (BuildContext context) {
//                                                     return AlertDialog(
//                                                       title:
//                                                           Text("Add to Cart"),
//                                                       content: Text(
//                                                           "Do you want to add this product to your cart?"),
//                                                       actions: <Widget>[
//                                                         TextButton(
//                                                           onPressed: () {
//                                                             Navigator.of(
//                                                                     context)
//                                                                 .pop();
//                                                           },
//                                                           child: Text('No'),
//                                                         ),
//                                                         TextButton(
//                                                           onPressed: () {
//                                                             setState(() {
//                                                               showConfirmation =
//                                                                   false;
//                                                             });
//                                                             Navigator.push(
//                                                               context,
//                                                               MaterialPageRoute(
//                                                                 builder:
//                                                                     (context) =>
//                                                                         mohamad(
//                                                                   name: 'Mango',
//                                                                   price: 5000,
//                                                                 ),
//                                                               ),
//                                                             );
//                                                           },
//                                                           child: Text('Yes'),
//                                                         ),
//                                                       ],
//                                                     );
//                                                   },
//                                                 );
//                                               },
//                                               child: Stack(
//                                                 children: [
//                                                   IconButton(
//                                                     onPressed: () {
//                                                       setState(() {
//                                                         showConfirmation = true;
//                                                       });
//                                                     },
//                                                     icon: Icon(Icons
//                                                         .shopping_cart_rounded),
//                                                     color: Colors.white,
//                                                     iconSize: 20,
//                                                   ),
//                                                   if (showConfirmation)
//                                                     Container(
//                                                       decoration: BoxDecoration(
//                                                         color: Colors.black
//                                                             .withOpacity(0.5),
//                                                         borderRadius:
//                                                             BorderRadius
//                                                                 .circular(50),
//                                                       ),
//                                                       padding:
//                                                           EdgeInsets.all(10),
//                                                       child: Text(
//                                                         'Add',
//                                                         style: TextStyle(
//                                                             color:
//                                                                 Colors.white),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     )
//                                   ),
//                                  ],
//                                )
//                              ),
//                            ],
//                          ),
//                        ],
//                      ),
//                 SizedBox(
//                   width: 20,
//                 ),
//                 Column(
//                   children: [
//                     Container(
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10)),
//                         child: Column(
//                           children: [
//                             Container(
//                                 decoration: BoxDecoration(
//                                     color: Color.fromARGB(255, 212, 196, 163),
//                                     borderRadius: BorderRadius.circular(10)),
//                                 width: 175,
//                                 height: 170,
//                                 child: Column(
//                                   children: [
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       children: [
//                                         Container(
//                                           width: 175,
//                                           height: 100,
//                                           decoration: BoxDecoration(
//                                               borderRadius:
//                                                   BorderRadius.circular(10)),
//                                           child: Image.asset(
//                                             'images/123456.jpg',
//                                           ),
//                                         )
//                                       ],
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.only(left: 0),
//                                       child: Row(
//                                         children: [
//                                           Text(
//                                             "Mango",
//                                             style: TextStyle(
//                                                 color: Colors.white,
//                                                 fontSize: 17),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Row(
//                                       children: [
//                                         Text('5000 s.p',
//                                             style: TextStyle(
//                                                 color: Colors.white,
//                                                 fontSize: 17)),
//                                         SizedBox(
//                                           width: 60,
//                                         ),
//                                         InkWell(
//                                           onTap: () {
//                                             showDialog(
//                                               context: context,
//                                               builder: (BuildContext context) {
//                                                 return AlertDialog(
//                                                   title: Text("Add to Cart"),
//                                                   content: Text(
//                                                       "Do you want to add this product to your cart?"),
//                                                   actions: <Widget>[
//                                                     TextButton(
//                                                       onPressed: () {
//                                                         Navigator.of(context)
//                                                             .pop();
//                                                       },
//                                                       child: Text('No'),
//                                                     ),
//                                                     TextButton(
//                                                       onPressed: () {
//                                                         // Add the logic for adding the product to the cart
//                                                         setState(() {
//                                                           showConfirmation =
//                                                               false;
//                                                         });
//                                                         Navigator.push(
//                                                           context,
//                                                           MaterialPageRoute(
//                                                             builder:
//                                                                 (context) =>
//                                                                     mohamad(
//                                                               name: 'Mango',
//                                                               price: 5000,
//                                                             ),
//                                                           ),
//                                                         );
//                                                       },
//                                                       child: Text('Yes'),
//                                                     ),
//                                                   ],
//                                                 );
//                                               },
//                                             );
//                                           },
//                                           child: Stack(
//                                             children: [
//                                               IconButton(
//                                                 onPressed: () {
//                                                   setState(() {
//                                                     showConfirmation = true;
//                                                   });
//                                                 },
//                                                 icon: Icon(Icons
//                                                     .shopping_cart_rounded),
//                                                 color: Colors.white,
//                                                 iconSize: 20,
//                                               ),
//                                               if (showConfirmation)
//                                                 Container(
//                                                   decoration: BoxDecoration(
//                                                     color: Colors.black
//                                                         .withOpacity(0.5),
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             50),
//                                                   ),
//                                                   padding: EdgeInsets.all(10),
//                                                   child: Text(
//                                                     'Add',
//                                                     style: TextStyle(
//                                                         color: Colors.white),
//                                         ),
//                                      ),
//                                     ],
//                                    ),
//                                   ),
//                                  ],
//                                 ),
//                               ],
//                             )
//                           ),
//                         ],
//                       )
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Mohamad {
//   final String name;
//   final double price;
//   Mohamad({required this.name, required this.price});
// }
