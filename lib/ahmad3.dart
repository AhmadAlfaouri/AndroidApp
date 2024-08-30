// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/zzz.dart';

// class ahmad3 extends StatefulWidget {
//   const ahmad3({super.key});

//   @override
//   State<ahmad3> createState() => _ahmad3State();
// }

// class _ahmad3State extends State<ahmad3> {
//   bool isali = false;
//   bool showConfirmation = false;
//   bool isProductInList =
//       true; // إضافة حالة جديدة لتتبع ما إذا كان المنتج في القائمة

//   @override
//   Widget build(BuildContext context) {
//     return isProductInList
//         ? Scaffold(
//             body: InkWell(
//               onTap: () {
//                 showDialog(
//                   context: context,
//                   builder: (BuildContext context) {
//                     return AlertDialog(
//                       title: Text("zzz Details"),
//                       content: Column(
//                         mainAxisSize: MainAxisSize.min,
//                         crossAxisAlignment: CrossAxisAlignment.stretch,
//                         children: [
//                           Image.asset('images/123456.jpg'),
//                           SizedBox(height: 10),
//                           Text(
//                             "Mango",
//                             style: TextStyle(fontSize: 18),
//                           ),
//                           SizedBox(height: 10),
//                           Text(
//                             "5000 s.p",
//                             style: TextStyle(fontSize: 16),
//                           ),
//                           SizedBox(height: 10),
//                           Text(
//                             "Description: A sweet and juicy tropical fruit that is rich in vitamins and antioxidants.",
//                             style: TextStyle(fontSize: 14),
//                           ),
//                         ],
//                       ),
//                       actions: <Widget>[
//                         TextButton(
//                           onPressed: () {
//                             Navigator.of(context).pop();
//                           },
//                           child: Text('Close'),
//                         ),
//                       ],
//                     );
//                   },
//                 );
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 212, 196, 163),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 width: 300,
//                 height: 170,
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Container(
//                           width: 175,
//                           height: 100,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           child: Image.asset(
//                             'images/123456.jpg',
//                           ),
//                         )
//                       ],
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 0),
//                       child: Row(
//                         children: [
//                           Text(
//                             "Mango",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 17,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Row(
//                       children: [
//                         Text('5000 s.p',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 17,
//                             )),
//                         SizedBox(
//                           width: 60,
//                         ),
//                         TextButton(
//                           onPressed: () {
//                             Navigator.of(context).pop(); // إغلاق الحوار الحالي

//                             showDialog(
//                               context: context,
//                               builder: (BuildContext context) {
//                                 return AlertDialog(
//                                   title: Text("Confirmation"),
//                                   content: Text(
//                                       "Do you want to add this product to cart?"),
//                                   actions: <Widget>[
//                                     TextButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           showConfirmation = false;
//                                           isProductInList =
//                                               false; // تحديث الحالة عند الضغط على "Yes"
//                                         });

//                                         ScaffoldMessenger.of(context)
//                                             .showSnackBar(
//                                           SnackBar(
//                                             content: Text('Added to Cart!'),
//                                           ),
//                                         );

//                                         // نقل المستخدم إلى الصفحة الجديدة
//                                         Navigator.push(
//                                           context,
//                                           MaterialPageRoute(
//                                             builder: (context) =>
//                                                 zzz(), // استبدل NewPage بصفحة المستهدفة
//                                           ),
//                                         );
//                                       },
//                                       child: Text('Yes'),
//                                     ),
//                                     TextButton(
//                                       onPressed: () {
//                                         Navigator.of(context)
//                                             .pop(); // إغلاق الحوار
//                                       },
//                                       child: Text('No'),
//                                     ),
//                                   ],
//                                 );
//                               },
//                             );
//                           },
//                           child: Text('Add to Cart'),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           )
//         : Container();
//   }
// }
