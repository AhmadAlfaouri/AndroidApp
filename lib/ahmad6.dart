// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/product.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// class ahmad6 extends StatefulWidget {
//   const ahmad6({super.key});

//   @override
//   State<ahmad6> createState() => _ahmad6State();
// }

// class _ahmad6State extends State<ahmad6> {
//   bool showConfirmation = false;
//   bool isahmad = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
//       Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//               decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 212, 196, 163),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               width: 180,
//               height: 195,
//               child: Column(children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                         InkWell(
//                             onTap: () {
//                               showDialog(
//                                 context: context,
//                                 builder: (BuildContext context) {
//                                   double rating = 0;
//                                   String comment = '';
//                                   return AlertDialog(
//                                     title: Text("product Details"),
//                                     content: SingleChildScrollView(
//                                       child: Column(
//                                         mainAxisSize: MainAxisSize.min,
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.stretch,
//                                         children: [
//                                           Image.asset('images/123456.jpg'),
//                                           SizedBox(height: 10),
//                                           Text(
//                                             "Mango",
//                                             style: TextStyle(fontSize: 18),
//                                           ),
//                                           SizedBox(height: 10),
//                                           Text(
//                                             "5000 s.p",
//                                             style: TextStyle(fontSize: 16),
//                                           ),
//                                           SizedBox(
//                                             height: 10,
//                                           ),
//                                           Column(
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               Row(
//                                                 children: [
//                                                   Icon(Icons.star),
//                                                   SizedBox(width: 6),
//                                                   Text("3.5"),
//                                                 ],
//                                               ),
//                                             ],
//                                           ),
//                                           SizedBox(height: 10),
//                                           Text(
//                                             "Description: A sweet and juicy tropical fruit that is rich in vitamins and antioxidants.",
//                                             style: TextStyle(fontSize: 14),
//                                           ),
//                                           SizedBox(height: 10),
//                                           Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.center,
//                                             children: [
//                                               RatingBar.builder(
//                                                 initialRating: rating,
//                                                 minRating: 1,
//                                                 direction: Axis.horizontal,
//                                                 allowHalfRating: true,
//                                                 itemCount: 5,
//                                                 itemSize: 30.0,
//                                                 itemPadding:
//                                                     EdgeInsets.symmetric(
//                                                         horizontal: 4.0),
//                                                 itemBuilder: (context, _) =>
//                                                     Icon(
//                                                   Icons.star,
//                                                   color: Colors.amber,
//                                                 ),
//                                                 onRatingUpdate: (value) {
//                                                   rating = value;
//                                                   print(value);
//                                                 },
//                                               ),
//                                             ],
//                                           ),
//                                           SizedBox(height: 10),
//                                           TextField(
//                                             decoration: InputDecoration(
//                                               labelText: "Add a comment",
//                                               border: OutlineInputBorder(),
//                                             ),
//                                             onChanged: (text) {
//                                               comment = text;
//                                             },
//                                           ),
//                                           SizedBox(
//                                             height: 5,
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     actions: <Widget>[
//                                       TextButton(
//                                         onPressed: () {
//                                           Navigator.of(context).pop();
//                                         },
//                                         child: Text('Close'),
//                                       ),
//                                       TextButton(
//                                         onPressed: () {
//                                           Navigator.of(context).pop();
//                                         },
//                                         child: Text('Add Comment'),
//                                       ),
//                                     ],
//                                   );
//                                 },
//                               );
//                             },
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 color: Color.fromARGB(255, 212, 196, 163),
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                               width: 175,
//                               height: 170,
//                               child: Column(
//                                 children: [
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Container(
//                                         width: 175,
//                                         height: 100,
//                                         decoration: BoxDecoration(
//                                           borderRadius:
//                                               BorderRadius.circular(10),
//                                         ),
//                                         child: Image.asset(
//                                           'images/123456.jpg',
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(left: 0),
//                                     child: Row(
//                                       children: [
//                                         Text(
//                                           "bed",
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 17,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   Row(
//                                     children: [
//                                       Text('5000 s.p',
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 17,
//                                           )),
//                                       SizedBox(
//                                         width: 60,
//                                       ),
//                                       InkWell(
//                                         onTap: () {
//                                           showDialog(
//                                             context: context,
//                                             builder: (BuildContext context) {
//                                               return AlertDialog(
//                                                 title: Text("Add to Cart"),
//                                                 content: Text(
//                                                     "Do you want to add this product to your cart?"),
//                                                 actions: <Widget>[
//                                                   TextButton(
//                                                     onPressed: () {
//                                                       Navigator.of(context)
//                                                           .pop();
//                                                     },
//                                                     child: Text('No'),
//                                                   ),
//                                                   TextButton(
//                                                     onPressed: () {
//                                                       setState(() {
//                                                         showConfirmation =
//                                                             false;
//                                                       });
//                                                       Navigator.push(
//                                                         context,
//                                                         MaterialPageRoute(
//                                                           builder: (context) =>
//                                                               product(),
//                                                         ),
//                                                       );
//                                                     },
//                                                     child: Text('Yes'),
//                                                   ),
//                                                 ],
//                                               );
//                                             },
//                                           );
//                                         },
//                                         child: Stack(
//                                           children: [
//                                             IconButton(
//                                               onPressed: () {
//                                                 setState(() {
//                                                   isahmad = true;
//                                                 });
//                                               },
//                                               icon: Icon(
//                                                   Icons.shopping_cart_rounded),
//                                               color: Colors.white,
//                                               iconSize: 20,
//                                             ),
//                                             if (isahmad)
//                                               Container(
//                                                 decoration: BoxDecoration(
//                                                   color: Colors.black
//                                                       .withOpacity(0.5),
//                                                   borderRadius:
//                                                       BorderRadius.circular(50),
//                                                 ),
//                                                 padding: EdgeInsets.all(10),
//                                                 child: Text(
//                                                   'Add',
//                                                   style: TextStyle(
//                                                     color: Colors.white,
//                                                   ),
//                                                 ),
//                                               ),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),)
//     ]));
//   }
// }
