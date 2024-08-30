// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/Login.dart';
// import 'package:flutter_application_1/bed.dart';
// import 'package:flutter_application_1/first%20page.dart';
// import 'package:flutter_application_1/order.dart';
// import 'package:flutter_application_1/product.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// class ahmad4 extends StatefulWidget {
//   const ahmad4({super.key});

//   @override
//   State<ahmad4> createState() => _ahmad4State();
// }

// class _ahmad4State extends State<ahmad4> {
//   int selectedIndex = 1;
//   void _onTabTapped(int index) {
//     setState(() {
//       selectedIndex = index;
//       if (index == 0) {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => product()));
//       } else if (index == 2) {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => order()));
//       }
//     });
//   }

//   List<Widget> pages = const [order(), product()];
//   String comment = "This is a comment.";
//   String addedComment = '';
//   String newName = '';
//   String newPhoneNumber = '';
//   String newaddress = '';
//   String newemail = '';
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   bool isAdded = false;
//   bool isahmad = false;
//   bool isali = false;
//   bool isabd = false;
//   bool isnoor = false;
//   bool isproduct = false;
//   bool isla = false;
//   bool isomr = false;
//   bool isno = false;
//   bool isoo = false;
//   bool isww = false;
//   bool showConfirmation = false;
//   String enteredUsername = '';
//   String enteredemail = '';
//   String enteredaddress = '';
//   String enteredphonenumber = '';
//   final name = '';
//   final price = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         key: _scaffoldKey,
//         appBar: AppBar(
//           backgroundColor: const Color.fromARGB(255, 117, 65, 25),
//           actions: [
//             IconButton(
//               icon: Icon(
//                 Icons.menu,
//                 color: Colors.white,
//               ),
//               onPressed: () {
//                 _scaffoldKey.currentState!.openDrawer();
//               },
//             ),
//           ],
//           leading: IconButton(
//             icon: Icon(
//               Icons.search,
//               color: Colors.white,
//               size: 40,
//             ),
//             onPressed: () {
//               Navigator.push(
//                   context, MaterialPageRoute(builder: (context) => first()));
//             },
//           ),
//           title: TextField(
//             style: TextStyle(
//               color: Colors.white,
//             ),
//             cursorColor: const Color.fromARGB(255, 255, 255, 255),
//             decoration: InputDecoration(
//                 hintText: '',
//                 fillColor: Color.fromARGB(255, 255, 255, 255),
//                 hoverColor: Colors.white),
//           ),
//         ),
//         drawer: Drawer(
//           backgroundColor: const Color.fromARGB(255, 255, 253, 222),
//           child: ListView(
//             padding: EdgeInsets.zero,
//             children: [
//               Container(
//                 height: 150,
//                 width: 100,
//                 color: const Color.fromARGB(255, 117, 65, 25),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 25),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Container(
//                             height: 100,
//                             width: 100,
//                             child: CircleAvatar(
//                               backgroundColor: Colors.white,
//                               child: Text(
//                                 enteredUsername.isNotEmpty
//                                     ? enteredUsername[0].toUpperCase()
//                                     : '',
//                                 style: TextStyle(
//                                     fontSize: 40.0, color: Colors.black),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               ListTile(
//                 leading: Icon(Icons.person),
//                 title: Text('Name: $enteredUsername'),
//                 trailing: IconButton(
//                   icon: Icon(Icons.edit),
//                   onPressed: () {
//                     showDialog(
//                       context: context,
//                       builder: (context) {
//                         return AlertDialog(
//                           title: Text('Enter new name'),
//                           content: TextFormField(
//                             onChanged: (value) {
//                               newName = value;
//                             },
//                           ),
//                           actions: <Widget>[
//                             ElevatedButton(
//                               onPressed: () {
//                                 setState(() {
//                                   enteredUsername = newName;
//                                 });
//                                 Navigator.of(context).pop();
//                               },
//                               child: Text('Save'),
//                             ),
//                           ],
//                         );
//                       },
//                     );
//                   },
//                 ),
//               ),
//               ListTile(
//                 leading: Icon(Icons.phone),
//                 title: Text('Phone Number: $enteredphonenumber'),
//                 trailing: IconButton(
//                   icon: Icon(Icons.edit),
//                   onPressed: () {
//                     showDialog(
//                       context: context,
//                       builder: (context) {
//                         return AlertDialog(
//                           title: Text('Enter new phone number'),
//                           content: TextFormField(
//                             onChanged: (value) {
//                               newPhoneNumber = value;
//                             },
//                           ),
//                           actions: <Widget>[
//                             ElevatedButton(
//                               onPressed: () {
//                                 setState(() {
//                                   enteredphonenumber = newPhoneNumber;
//                                 });
//                                 Navigator.of(context).pop();
//                               },
//                               child: Text('Save'),
//                             ),
//                           ],
//                         );
//                       },
//                     );
//                   },
//                 ),
//               ),
//               ListTile(
//                 leading: Icon(Icons.email),
//                 title: Text('Email: $enteredemail'),
//                 trailing: IconButton(
//                   icon: Icon(Icons.edit),
//                   onPressed: () {
//                     showDialog(
//                       context: context,
//                       builder: (context) {
//                         return AlertDialog(
//                           title: Text('Enter new email'),
//                           content: TextFormField(
//                             onChanged: (value) {
//                               newemail = value;
//                             },
//                           ),
//                           actions: <Widget>[
//                             ElevatedButton(
//                               onPressed: () {
//                                 setState(() {
//                                   enteredemail = newemail;
//                                 });
//                                 Navigator.of(context).pop();
//                               },
//                               child: Text('Save'),
//                             ),
//                           ],
//                         );
//                       },
//                     );
//                   },
//                 ),
//               ),
//               ListTile(
//                 leading: Icon(Icons.location_on),
//                 title: Text('Address: $enteredaddress'),
//                 trailing: IconButton(
//                   icon: Icon(Icons.edit),
//                   onPressed: () {
//                     showDialog(
//                       context: context,
//                       builder: (context) {
//                         return AlertDialog(
//                           title: Text('Enter new address'),
//                           content: TextFormField(
//                             onChanged: (value) {
//                               newaddress = value;
//                             },
//                           ),
//                           actions: <Widget>[
//                             ElevatedButton(
//                               onPressed: () {
//                                 setState(() {
//                                   enteredaddress = newaddress;
//                                 });
//                                 Navigator.of(context).pop();
//                               },
//                               child: Text('Save'),
//                             ),
//                           ],
//                         );
//                       },
//                     );
//                   },
//                 ),
//               ),
//               SizedBox(
//                 height: 525,
//               ),
//               Row(
//                 children: [
//                   SizedBox(
//                     width: 100,
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => Login()),
//                       );
//                     },
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       width: 100,
//                       height: 40,
//                       child: Icon(
//                         Icons.logout,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         body: SingleChildScrollView(
//           child: SafeArea(
//               child: Column(
//             children: [
//               Container(
//                   height: 100,
//                   width: 500,
//                   child: ListView(children: [
//                     SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Padding(
//                         padding: const EdgeInsets.only(top: 20),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: <Widget>[
//                             Container(
//                               alignment: Alignment.center,
//                               width: 50,
//                               height: 40,
//                               decoration: BoxDecoration(
//                                 color: Color.fromARGB(255, 126, 71, 3),
//                                 borderRadius: BorderRadius.only(
//                                   topRight: Radius.circular(10),
//                                   bottomLeft: Radius.circular(10),
//                                 ),
//                               ),
//                               child: Text(
//                                 "All",
//                                 style: TextStyle(
//                                     color: Colors.white, fontSize: 25),
//                               ),
//                             ),
//                             SizedBox(width: 10),
//                             Column(
//                               children: [
//                                 GestureDetector(
//                                   onTap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                             builder: (context) => bed()));
//                                   },
//                                   child: Container(
//                                     alignment: Alignment.center,
//                                     width: 50,
//                                     height: 40,
//                                     decoration: BoxDecoration(
//                                       color: Color.fromARGB(255, 193, 111, 18),
//                                       borderRadius: BorderRadius.only(
//                                         topRight: Radius.circular(10),
//                                         bottomLeft: Radius.circular(10),
//                                       ),
//                                     ),
//                                     child: Text(
//                                       'bed',
//                                       style: TextStyle(
//                                           color: Colors.white, fontSize: 15),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(width: 10),
//                             Column(
//                               children: [
//                                 Container(
//                                     alignment: Alignment.center,
//                                     width: 70,
//                                     height: 40,
//                                     decoration: BoxDecoration(
//                                       color: Color.fromARGB(255, 193, 111, 18),
//                                       borderRadius: BorderRadius.only(
//                                         topRight: Radius.circular(10),
//                                         bottomLeft: Radius.circular(10),
//                                       ),
//                                     ),
//                                     child: TextButton(
//                                         onPressed: () {
//                                           setState(() {
//                                             Navigator.push(
//                                                 context,
//                                                 MaterialPageRoute(
//                                                     builder: (context) =>
//                                                         first()));
//                                           });
//                                         },
//                                         child: Text("Wardrobe"))),
//                               ],
//                             ),
//                             SizedBox(width: 10),
//                             Column(
//                               children: [
//                                 GestureDetector(
//                                   onTap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                             builder: (context) => first()));
//                                   },
//                                   child: Container(
//                                     alignment: Alignment.center,
//                                     width: 50,
//                                     height: 40,
//                                     decoration: BoxDecoration(
//                                       color: Color.fromARGB(255, 193, 111, 18),
//                                       borderRadius: BorderRadius.only(
//                                         topRight: Radius.circular(10),
//                                         bottomLeft: Radius.circular(10),
//                                       ),
//                                     ),
//                                     child: Text(
//                                       'bed',
//                                       style: TextStyle(
//                                           color: Colors.white, fontSize: 15),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(width: 10),
//                             Column(
//                               children: [
//                                 GestureDetector(
//                                   onTap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                             builder: (context) => first()));
//                                   },
//                                   child: Container(
//                                     alignment: Alignment.center,
//                                     width: 50,
//                                     height: 40,
//                                     decoration: BoxDecoration(
//                                       color: Color.fromARGB(255, 193, 111, 18),
//                                       borderRadius: BorderRadius.only(
//                                         topRight: Radius.circular(10),
//                                         bottomLeft: Radius.circular(10),
//                                       ),
//                                     ),
//                                     child: Text(
//                                       'bed',
//                                       style: TextStyle(
//                                           color: Colors.white, fontSize: 15),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(width: 10),
//                             Column(
//                               children: [
//                                 GestureDetector(
//                                   onTap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                             builder: (context) => first()));
//                                   },
//                                   child: Container(
//                                     alignment: Alignment.center,
//                                     width: 50,
//                                     height: 40,
//                                     decoration: BoxDecoration(
//                                       color: Color.fromARGB(255, 193, 111, 18),
//                                       borderRadius: BorderRadius.only(
//                                         topRight: Radius.circular(10),
//                                         bottomLeft: Radius.circular(10),
//                                       ),
//                                     ),
//                                     child: Text(
//                                       'bed',
//                                       style: TextStyle(
//                                           color: Colors.white, fontSize: 15),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(width: 10),
//                             Column(
//                               children: [
//                                 GestureDetector(
//                                   onTap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                             builder: (context) => first()));
//                                   },
//                                   child: Container(
//                                     alignment: Alignment.center,
//                                     width: 50,
//                                     height: 40,
//                                     decoration: BoxDecoration(
//                                       color: Color.fromARGB(255, 193, 111, 18),
//                                       borderRadius: BorderRadius.only(
//                                         topRight: Radius.circular(10),
//                                         bottomLeft: Radius.circular(10),
//                                       ),
//                                     ),
//                                     child: Text(
//                                       'bed',
//                                       style: TextStyle(
//                                           color: Colors.white, fontSize: 15),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(width: 10),
//                             Column(
//                               children: [
//                                 GestureDetector(
//                                   onTap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                             builder: (context) => first()));
//                                   },
//                                   child: Container(
//                                     alignment: Alignment.center,
//                                     width: 50,
//                                     height: 40,
//                                     decoration: BoxDecoration(
//                                       color: Color.fromARGB(255, 193, 111, 18),
//                                       borderRadius: BorderRadius.only(
//                                         topRight: Radius.circular(10),
//                                         bottomLeft: Radius.circular(10),
//                                       ),
//                                     ),
//                                     child: Text(
//                                       'bed',
//                                       style: TextStyle(
//                                           color: Colors.white, fontSize: 15),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(width: 10),
//                             Column(
//                               children: [
//                                 GestureDetector(
//                                   onTap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                             builder: (context) => first()));
//                                   },
//                                   child: Container(
//                                     alignment: Alignment.center,
//                                     width: 50,
//                                     height: 40,
//                                     decoration: BoxDecoration(
//                                       color: Color.fromARGB(255, 193, 111, 18),
//                                       borderRadius: BorderRadius.only(
//                                         topRight: Radius.circular(10),
//                                         bottomLeft: Radius.circular(10),
//                                       ),
//                                     ),
//                                     child: Text(
//                                       'bed',
//                                       style: TextStyle(
//                                           color: Colors.white, fontSize: 15),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(width: 10),
//                             Column(
//                               children: [
//                                 GestureDetector(
//                                   onTap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                             builder: (context) => first()));
//                                   },
//                                   child: Container(
//                                     alignment: Alignment.center,
//                                     width: 50,
//                                     height: 40,
//                                     decoration: BoxDecoration(
//                                       color: Color.fromARGB(255, 193, 111, 18),
//                                       borderRadius: BorderRadius.only(
//                                         topRight: Radius.circular(10),
//                                         bottomLeft: Radius.circular(10),
//                                       ),
//                                     ),
//                                     child: Text(
//                                       'bed',
//                                       style: TextStyle(
//                                           color: Colors.white, fontSize: 15),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ])),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Color.fromARGB(255, 212, 196, 163),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       width: 180,
//                       height: 195,
//                       child: Column(
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Container(
//                                 width: 180,
//                                 height: 100,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage("images/123456.jpg"),
//                                       fit: BoxFit.fitWidth),
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                               )
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               Text(
//                                 "bed",
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 17,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               Text('5000 s.p',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 17,
//                                   )),
//                               SizedBox(
//                                 width: 60,
//                               ),
//                               InkWell(
//                                 onTap: () {
//                                   showDialog(
//                                     context: context,
//                                     builder: (BuildContext context) {
//                                       return AlertDialog(
//                                         title: Text("Add to Cart"),
//                                         content: Text(
//                                             "Do you want to add this product to your cart?"),
//                                         actions: <Widget>[
//                                           TextButton(
//                                             onPressed: () {
//                                               Navigator.of(context).pop();
//                                             },
//                                             child: Text('No'),
//                                           ),
//                                           TextButton(
//                                             onPressed: () {
//                                               setState(() {
//                                                 showConfirmation = false;
//                                               });
//                                               Navigator.push(
//                                                 context,
//                                                 MaterialPageRoute(
//                                                   builder: (context) =>
//                                                       product(),
//                                                 ),
//                                               );
//                                             },
//                                             child: Text('Yes'),
//                                           ),
//                                         ],
//                                       );
//                                     },
//                                   );
//                                 },
//                                 child: Stack(
//                                   children: [
//                                     IconButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           isAdded = true;
//                                         });
//                                       },
//                                       icon: Icon(Icons.shopping_cart_rounded),
//                                       color: Colors.white,
//                                       iconSize: 20,
//                                     ),
//                                     if (isAdded)
//                                       Container(
//                                         decoration: BoxDecoration(
//                                           color: Colors.black.withOpacity(0.5),
//                                           borderRadius:
//                                               BorderRadius.circular(50),
//                                         ),
//                                         padding: EdgeInsets.all(10),
//                                         child: Text(
//                                           'Add',
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                       ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Color.fromARGB(255, 212, 196, 163),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       width: 180,
//                       height: 195,
//                       child: Column(
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Container(
//                                 width: 175,
//                                 height: 100,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage("images/123456.jpg"),
//                                       fit: BoxFit.fitWidth),
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                               )
//                             ],
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 0),
//                             child: Row(
//                               children: [
//                                 Text(
//                                   "bed",
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 17,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Row(
//                             children: [
//                               Text('5000 s.p',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 17,
//                                   )),
//                               SizedBox(
//                                 width: 60,
//                               ),
//                               InkWell(
//                                 onTap: () {
//                                   showDialog(
//                                     context: context,
//                                     builder: (BuildContext context) {
//                                       return AlertDialog(
//                                         title: Text("Add to Cart"),
//                                         content: Text(
//                                             "Do you want to add this product to your cart?"),
//                                         actions: <Widget>[
//                                           TextButton(
//                                             onPressed: () {
//                                               Navigator.of(context).pop();
//                                             },
//                                             child: Text('No'),
//                                           ),
//                                           TextButton(
//                                             onPressed: () {
//                                               setState(() {
//                                                 showConfirmation = false;
//                                               });
//                                               Navigator.push(
//                                                 context,
//                                                 MaterialPageRoute(
//                                                   builder: (context) =>
//                                                       product(),
//                                                 ),
//                                               );
//                                             },
//                                             child: Text('Yes'),
//                                           ),
//                                         ],
//                                       );
//                                     },
//                                   );
//                                 },
//                                 child: Stack(
//                                   children: [
//                                     IconButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           isAdded = true;
//                                         });
//                                       },
//                                       icon: Icon(Icons.shopping_cart_rounded),
//                                       color: Colors.white,
//                                       iconSize: 20,
//                                     ),
//                                     if (isAdded)
//                                       Container(
//                                         decoration: BoxDecoration(
//                                           color: Colors.black.withOpacity(0.5),
//                                           borderRadius:
//                                               BorderRadius.circular(50),
//                                         ),
//                                         padding: EdgeInsets.all(10),
//                                         child: Text(
//                                           'Add',
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                       ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Color.fromARGB(255, 212, 196, 163),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       width: 180,
//                       height: 195,
//                       child: Column(
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Container(
//                                 width: 180,
//                                 height: 100,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage("images/123456.jpg"),
//                                       fit: BoxFit.fitWidth),
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                               )
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               Text(
//                                 "bed",
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 17,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               Text('5000 s.p',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 17,
//                                   )),
//                               SizedBox(
//                                 width: 60,
//                               ),
//                               InkWell(
//                                 onTap: () {
//                                   showDialog(
//                                     context: context,
//                                     builder: (BuildContext context) {
//                                       return AlertDialog(
//                                         title: Text("Add to Cart"),
//                                         content: Text(
//                                             "Do you want to add this product to your cart?"),
//                                         actions: <Widget>[
//                                           TextButton(
//                                             onPressed: () {
//                                               Navigator.of(context).pop();
//                                             },
//                                             child: Text('No'),
//                                           ),
//                                           TextButton(
//                                             onPressed: () {
//                                               setState(() {
//                                                 showConfirmation = false;
//                                               });
//                                               Navigator.push(
//                                                 context,
//                                                 MaterialPageRoute(
//                                                   builder: (context) =>
//                                                       product(),
//                                                 ),
//                                               );
//                                             },
//                                             child: Text('Yes'),
//                                           ),
//                                         ],
//                                       );
//                                     },
//                                   );
//                                 },
//                                 child: Stack(
//                                   children: [
//                                     IconButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           isAdded = true;
//                                         });
//                                       },
//                                       icon: Icon(Icons.shopping_cart_rounded),
//                                       color: Colors.white,
//                                       iconSize: 20,
//                                     ),
//                                     if (isAdded)
//                                       Container(
//                                         decoration: BoxDecoration(
//                                           color: Colors.black.withOpacity(0.5),
//                                           borderRadius:
//                                               BorderRadius.circular(50),
//                                         ),
//                                         padding: EdgeInsets.all(10),
//                                         child: Text(
//                                           'Add',
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                       ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Color.fromARGB(255, 212, 196, 163),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       width: 180,
//                       height: 195,
//                       child: Column(
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Container(
//                                 width: 175,
//                                 height: 100,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage("images/123456.jpg"),
//                                       fit: BoxFit.fitWidth),
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                               )
//                             ],
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 0),
//                             child: Row(
//                               children: [
//                                 Text(
//                                   "bed",
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 17,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Row(
//                             children: [
//                               Text('5000 s.p',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 17,
//                                   )),
//                               SizedBox(
//                                 width: 60,
//                               ),
//                               InkWell(
//                                 onTap: () {
//                                   showDialog(
//                                     context: context,
//                                     builder: (BuildContext context) {
//                                       return AlertDialog(
//                                         title: Text("Add to Cart"),
//                                         content: Text(
//                                             "Do you want to add this product to your cart?"),
//                                         actions: <Widget>[
//                                           TextButton(
//                                             onPressed: () {
//                                               Navigator.of(context).pop();
//                                             },
//                                             child: Text('No'),
//                                           ),
//                                           TextButton(
//                                             onPressed: () {
//                                               setState(() {
//                                                 showConfirmation = false;
//                                               });
//                                               Navigator.push(
//                                                 context,
//                                                 MaterialPageRoute(
//                                                   builder: (context) =>
//                                                       product(),
//                                                 ),
//                                               );
//                                             },
//                                             child: Text('Yes'),
//                                           ),
//                                         ],
//                                       );
//                                     },
//                                   );
//                                 },
//                                 child: Stack(
//                                   children: [
//                                     IconButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           isAdded = true;
//                                         });
//                                       },
//                                       icon: Icon(Icons.shopping_cart_rounded),
//                                       color: Colors.white,
//                                       iconSize: 20,
//                                     ),
//                                     if (isAdded)
//                                       Container(
//                                         decoration: BoxDecoration(
//                                           color: Colors.black.withOpacity(0.5),
//                                           borderRadius:
//                                               BorderRadius.circular(50),
//                                         ),
//                                         padding: EdgeInsets.all(10),
//                                         child: Text(
//                                           'Add',
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                       ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Color.fromARGB(255, 212, 196, 163),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       width: 180,
//                       height: 195,
//                       child: Column(
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Container(
//                                 width: 180,
//                                 height: 100,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage("images/123456.jpg"),
//                                       fit: BoxFit.fitWidth),
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                               )
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               Text(
//                                 "bed",
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 17,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               Text('5000 s.p',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 17,
//                                   )),
//                               SizedBox(
//                                 width: 60,
//                               ),
//                               InkWell(
//                                 onTap: () {
//                                   showDialog(
//                                     context: context,
//                                     builder: (BuildContext context) {
//                                       return AlertDialog(
//                                         title: Text("Add to Cart"),
//                                         content: Text(
//                                             "Do you want to add this product to your cart?"),
//                                         actions: <Widget>[
//                                           TextButton(
//                                             onPressed: () {
//                                               Navigator.of(context).pop();
//                                             },
//                                             child: Text('No'),
//                                           ),
//                                           TextButton(
//                                             onPressed: () {
//                                               setState(() {
//                                                 showConfirmation = false;
//                                               });
//                                               Navigator.push(
//                                                 context,
//                                                 MaterialPageRoute(
//                                                   builder: (context) =>
//                                                       product(),
//                                                 ),
//                                               );
//                                             },
//                                             child: Text('Yes'),
//                                           ),
//                                         ],
//                                       );
//                                     },
//                                   );
//                                 },
//                                 child: Stack(
//                                   children: [
//                                     IconButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           isAdded = true;
//                                         });
//                                       },
//                                       icon: Icon(Icons.shopping_cart_rounded),
//                                       color: Colors.white,
//                                       iconSize: 20,
//                                     ),
//                                     if (isAdded)
//                                       Container(
//                                         decoration: BoxDecoration(
//                                           color: Colors.black.withOpacity(0.5),
//                                           borderRadius:
//                                               BorderRadius.circular(50),
//                                         ),
//                                         padding: EdgeInsets.all(10),
//                                         child: Text(
//                                           'Add',
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                       ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Color.fromARGB(255, 212, 196, 163),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       width: 180,
//                       height: 195,
//                       child: Column(
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Container(
//                                 width: 175,
//                                 height: 100,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage("images/123456.jpg"),
//                                       fit: BoxFit.fitWidth),
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                               )
//                             ],
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 0),
//                             child: Row(
//                               children: [
//                                 Text(
//                                   "bed",
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 17,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Row(
//                             children: [
//                               Text('5000 s.p',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 17,
//                                   )),
//                               SizedBox(
//                                 width: 60,
//                               ),
//                               InkWell(
//                                 onTap: () {
//                                   showDialog(
//                                     context: context,
//                                     builder: (BuildContext context) {
//                                       return AlertDialog(
//                                         title: Text("Add to Cart"),
//                                         content: Text(
//                                             "Do you want to add this product to your cart?"),
//                                         actions: <Widget>[
//                                           TextButton(
//                                             onPressed: () {
//                                               Navigator.of(context).pop();
//                                             },
//                                             child: Text('No'),
//                                           ),
//                                           TextButton(
//                                             onPressed: () {
//                                               setState(() {
//                                                 showConfirmation = false;
//                                               });
//                                               Navigator.push(
//                                                 context,
//                                                 MaterialPageRoute(
//                                                   builder: (context) =>
//                                                       product(),
//                                                 ),
//                                               );
//                                             },
//                                             child: Text('Yes'),
//                                           ),
//                                         ],
//                                       );
//                                     },
//                                   );
//                                 },
//                                 child: Stack(
//                                   children: [
//                                     IconButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           isAdded = true;
//                                         });
//                                       },
//                                       icon: Icon(Icons.shopping_cart_rounded),
//                                       color: Colors.white,
//                                       iconSize: 20,
//                                     ),
//                                     if (isAdded)
//                                       Container(
//                                         decoration: BoxDecoration(
//                                           color: Colors.black.withOpacity(0.5),
//                                           borderRadius:
//                                               BorderRadius.circular(50),
//                                         ),
//                                         padding: EdgeInsets.all(10),
//                                         child: Text(
//                                           'Add',
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                       ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Color.fromARGB(255, 212, 196, 163),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       width: 180,
//                       height: 200,
//                       child: Column(
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Container(
//                                 width: 180,
//                                 height: 100,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage("images/123456.jpg"),
//                                       fit: BoxFit.fitWidth),
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                                 child: InkWell(
//                                     onTap: () {
//                                       showDialog(
//                                         context: context,
//                                         builder: (BuildContext context) {
//                                           double rating = 0;
//                                           String comment = '';
//                                           return AlertDialog(
//                                             title: Text("product Details"),
//                                             content: SingleChildScrollView(
//                                               child: Column(
//                                                 mainAxisSize: MainAxisSize.min,
//                                                 crossAxisAlignment:
//                                                     CrossAxisAlignment.stretch,
//                                                 children: [
//                                                   Image.asset(
//                                                       'images/123456.jpg'),
//                                                   SizedBox(height: 10),
//                                                   Text(
//                                                     "Mango",
//                                                     style:
//                                                         TextStyle(fontSize: 18),
//                                                   ),
//                                                   SizedBox(height: 10),
//                                                   Text(
//                                                     "5000 s.p",
//                                                     style:
//                                                         TextStyle(fontSize: 16),
//                                                   ),
//                                                   SizedBox(
//                                                     height: 10,
//                                                   ),
//                                                   Column(
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .start,
//                                                     children: [
//                                                       Row(
//                                                         children: [
//                                                           Icon(Icons.star),
//                                                           SizedBox(width: 6),
//                                                           Text("3.5"),
//                                                         ],
//                                                       ),
//                                                     ],
//                                                   ),
//                                                   SizedBox(height: 10),
//                                                   Text(
//                                                     "Description: A sweet and juicy tropical fruit that is rich in vitamins and antioxidants.",
//                                                     style:
//                                                         TextStyle(fontSize: 14),
//                                                   ),
//                                                   SizedBox(height: 10),
//                                                   Row(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment
//                                                             .center,
//                                                     children: [
//                                                       RatingBar.builder(
//                                                         initialRating: rating,
//                                                         minRating: 1,
//                                                         direction:
//                                                             Axis.horizontal,
//                                                         allowHalfRating: true,
//                                                         itemCount: 5,
//                                                         itemSize: 30.0,
//                                                         itemPadding: EdgeInsets
//                                                             .symmetric(
//                                                                 horizontal:
//                                                                     4.0),
//                                                         itemBuilder:
//                                                             (context, _) =>
//                                                                 Icon(
//                                                           Icons.star,
//                                                           color: Colors.amber,
//                                                         ),
//                                                         onRatingUpdate:
//                                                             (value) {
//                                                           rating = value;
//                                                           print(value);
//                                                         },
//                                                       ),
//                                                     ],
//                                                   ),
//                                                   SizedBox(height: 10),
//                                                   TextField(
//                                                     decoration: InputDecoration(
//                                                       labelText:
//                                                           "Add a comment",
//                                                       border:
//                                                           OutlineInputBorder(),
//                                                     ),
//                                                     onChanged: (text) {
//                                                       comment = text;
//                                                     },
//                                                   ),
//                                                   SizedBox(
//                                                     height: 5,
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                             actions: <Widget>[
//                                               TextButton(
//                                                 onPressed: () {
//                                                   Navigator.of(context).pop();
//                                                 },
//                                                 child: Text('Close'),
//                                               ),
//                                               TextButton(
//                                                 onPressed: () {
//                                                   Navigator.of(context).pop();
//                                                 },
//                                                 child: Text('Add Comment'),
//                                               ),
//                                             ],
//                                           );
//                                         },
//                                       );
//                                     },
//                                     child: Container(
//                                         decoration: BoxDecoration(
//                                           color: Color.fromARGB(
//                                               255, 212, 196, 163),
//                                           borderRadius:
//                                               BorderRadius.circular(10),
//                                         ),
//                                         width: 175,
//                                         height: 170,
//                                         child: Column(children: [
//                                           Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.center,
//                                             children: [
//                                               Container(
//                                                 width: 175,
//                                                 height: 100,
//                                                 decoration: BoxDecoration(
//                                                   borderRadius:
//                                                       BorderRadius.circular(10),
//                                                 ),
//                                                 child: Image.asset(
//                                                   'images/123456.jpg',
//                                                 ),
//                                               )
//                                             ],
//                                           ),
//                                           Padding(
//                                             padding:
//                                                 const EdgeInsets.only(left: 0),
//                                             child: Row(
//                                               children: [
//                                                 Text(
//                                                   "bed",
//                                                   style: TextStyle(
//                                                     color: Colors.white,
//                                                     fontSize: 17,
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                           Row(children: [
//                                             Text('5000 s.p',
//                                                 style: TextStyle(
//                                                   color: Colors.white,
//                                                   fontSize: 17,
//                                                 )),
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
//                                                                         product(),
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
//                                                         isAdded = true;
//                                                       });
//                                                     },
//                                                     icon: Icon(Icons
//                                                         .shopping_cart_rounded),
//                                                     color: Colors.white,
//                                                     iconSize: 20,
//                                                   ),
//                                                   if (isAdded)
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
//                                                           color: Colors.white,
//                                                         ),
//                                                       ),
//                                                     ),
//                                                 ],
//                                               ),
//                                             )
//                                           ])
//                                         ]))),
//                               ),
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               Text(
//                                 "bed",
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 17,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               Text('5000 s.p',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 17,
//                                   )),
//                               SizedBox(
//                                 width: 60,
//                               ),
//                               InkWell(
//                                 onTap: () {
//                                   showDialog(
//                                     context: context,
//                                     builder: (BuildContext context) {
//                                       return AlertDialog(
//                                         title: Text("Add to Cart"),
//                                         content: Text(
//                                             "Do you want to add this product to your cart?"),
//                                         actions: <Widget>[
//                                           TextButton(
//                                             onPressed: () {
//                                               Navigator.of(context).pop();
//                                             },
//                                             child: Text('No'),
//                                           ),
//                                           TextButton(
//                                             onPressed: () {
//                                               setState(() {
//                                                 showConfirmation = false;
//                                               });
//                                               Navigator.push(
//                                                 context,
//                                                 MaterialPageRoute(
//                                                   builder: (context) =>
//                                                       product(),
//                                                 ),
//                                               );
//                                             },
//                                             child: Text('Yes'),
//                                           ),
//                                         ],
//                                       );
//                                     },
//                                   );
//                                 },
//                                 child: Stack(
//                                   children: [
//                                     IconButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           isAdded = true;
//                                         });
//                                       },
//                                       icon: Icon(Icons.shopping_cart_rounded),
//                                       color: Colors.white,
//                                       iconSize: 20,
//                                     ),
//                                     if (isAdded)
//                                       Container(
//                                         decoration: BoxDecoration(
//                                           color: Colors.black.withOpacity(0.5),
//                                           borderRadius:
//                                               BorderRadius.circular(50),
//                                         ),
//                                         padding: EdgeInsets.all(10),
//                                         child: Text(
//                                           'Add',
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                       ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Color.fromARGB(255, 212, 196, 163),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       width: 180,
//                       height: 195,
//                       child: Column(
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Container(
//                                 width: 175,
//                                 height: 100,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage("images/123456.jpg"),
//                                       fit: BoxFit.fitWidth),
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                               )
//                             ],
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 0),
//                             child: Row(
//                               children: [
//                                 Text(
//                                   "bed",
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 17,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Row(
//                             children: [
//                               Text('5000 s.p',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 17,
//                                   )),
//                               SizedBox(
//                                 width: 60,
//                               ),
//                               InkWell(
//                                 onTap: () {
//                                   showDialog(
//                                     context: context,
//                                     builder: (BuildContext context) {
//                                       return AlertDialog(
//                                         title: Text("Add to Cart"),
//                                         content: Text(
//                                             "Do you want to add this product to your cart?"),
//                                         actions: <Widget>[
//                                           TextButton(
//                                             onPressed: () {
//                                               Navigator.of(context).pop();
//                                             },
//                                             child: Text('No'),
//                                           ),
//                                           TextButton(
//                                             onPressed: () {
//                                               setState(() {
//                                                 showConfirmation = false;
//                                               });
//                                               Navigator.push(
//                                                 context,
//                                                 MaterialPageRoute(
//                                                   builder: (context) =>
//                                                       product(),
//                                                 ),
//                                               );
//                                             },
//                                             child: Text('Yes'),
//                                           ),
//                                         ],
//                                       );
//                                     },
//                                   );
//                                 },
//                                 child: Stack(
//                                   children: [
//                                     IconButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           isAdded = true;
//                                         });
//                                       },
//                                       icon: Icon(Icons.shopping_cart_rounded),
//                                       color: Colors.white,
//                                       iconSize: 20,
//                                     ),
//                                     if (isAdded)
//                                       Container(
//                                         decoration: BoxDecoration(
//                                           color: Colors.black.withOpacity(0.5),
//                                           borderRadius:
//                                               BorderRadius.circular(50),
//                                         ),
//                                         padding: EdgeInsets.all(10),
//                                         child: Text(
//                                           'Add',
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                       ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           )),
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//             type: BottomNavigationBarType.fixed,
//             showUnselectedLabels: false,
//             selectedItemColor: Color.fromARGB(255, 255, 255, 255),
//             unselectedItemColor: Color.fromARGB(255, 200, 200, 200),
//             backgroundColor: const Color.fromARGB(255, 193, 111, 18),
//             onTap: _onTabTapped,
//             currentIndex: selectedIndex,
//             items: [
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.shopping_cart_rounded),
//                 label: "Cart",
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.home),
//                 label: "Home",
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.border_outer_rounded),
//                 label: "Order",
//               )
//             ]));
//   }
// }
