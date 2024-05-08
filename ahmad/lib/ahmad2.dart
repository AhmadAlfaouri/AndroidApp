

// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/ahmad3.dart';

// class IceCream2 extends StatefulWidget {
//   const IceCream2({super.key});

//   @override
//   State<IceCream2> createState() => _IceCream2State();
// }

// class _IceCream2State extends State<IceCream2> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         actions: [
//           Icon(Icons.menu,color: Colors.black,), ],
//          leading: IconButton(
//            icon: Icon(Icons.search,color: Colors.black,size: 40,),
//            onPressed: () {
//              setState(() {
//              });
//            },),
        
//         title: TextField(
//           decoration: InputDecoration(
//             hintText: 'ice cream search',
        
//       ),
//       )
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 20),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//   children: <Widget>[
//     Container(
//       alignment: Alignment.center,
//       width: 50,
//       height: 40, 
//       decoration: BoxDecoration(
//         color: Colors.black,
//         borderRadius: BorderRadius.only(
//     topRight: Radius.circular(10),
//     bottomLeft: Radius.circular(10),
//   )),
//   child: Text("All",style: TextStyle(color: Colors.white,fontSize: 25),),
//     ),
//     SizedBox(width: 10,),
//     Container(
//       width: 50,
//       height: 40,
//      decoration: BoxDecoration(
//         color: Color.fromARGB(255, 145, 145, 145),
//         borderRadius: BorderRadius.only(
//     topRight: Radius.circular(10),
//     bottomLeft: Radius.circular(10),
//   )),
//   child: Icon(Icons.icecream,color: Color.fromARGB(255, 255, 255, 255),size: 35,),
//     ),
//     SizedBox(width: 10,),
//     Container(
//       width: 50,
//       height: 40,
//      decoration: BoxDecoration(
//         color: Color.fromARGB(255, 145, 145, 145),
//         borderRadius: BorderRadius.only(
//     topRight: Radius.circular(10),
//     bottomLeft: Radius.circular(10),
//   )),
//   child: Icon(Icons.cake,color: Color.fromARGB(255, 255, 255, 255),size: 35),
//     ),
//     SizedBox(width: 10,),
//     Container(
//       width: 50,
//       height: 40,
//      decoration: BoxDecoration(
//         color: Color.fromARGB(255, 145, 145, 145),
//         borderRadius: BorderRadius.only(
//     topRight: Radius.circular(10),
//     bottomLeft: Radius.circular(10),
//   )),
//   child: Icon(Icons.icecream,color: Color.fromARGB(255, 255, 255, 255),size: 35),
//     ),
//     SizedBox(width: 10,),
//     Container(
//       width: 50,
//       height: 40,
//      decoration: BoxDecoration(
//         color: Color.fromARGB(255, 145, 145, 145),
//         borderRadius: BorderRadius.only(
//     topRight: Radius.circular(10),
//     bottomLeft: Radius.circular(10),
//   )),
//   child: Icon(Icons.cake,color: Color.fromARGB(255, 255, 255, 255),size: 35),
//     ),
//   ],
// )
//           ),
//           SizedBox(height: 30,),
//           Padding(
//             padding: const EdgeInsets.only(left: 20),
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                          Column(
//                           children: [
//                         Container(
//                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
//                           child: Column(
//                             children: [
//                               Image.asset(
//                                 width: 185,
//                                 height:185,
//                                 'images/2.jpg'),
//                            Container(
//                           width: 185,
//                           height:60 ,
//                           color: Colors.grey,
//                           child:
//                           Column(
//                             children: [
//                               Row(children: [
//                                  Text("Strawberry",style: TextStyle(color: Colors.white,fontSize: 20),),
//                               ],),
//                                      Row(
//                                        children: [
//                                          Text('5000 s.p',style: TextStyle(color: Colors.white,fontSize: 20)),
//                                              SizedBox(width: 60,), 
//                                               Icon(Icons.shopping_cart_rounded,size: 35,), 
//                                               ],
//                                      ),
                                      
//                             ],
//                           )
//                         ), 
//                         ],
//                           )),
//                         ],
//                         ),
//                         SizedBox(width: 50,),
//                         Column(
//                           children: [
//                         Container(
//                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
//                           child: Column(
//                             children: [
//                               Image.asset(
//                                 width: 185,
//                                 height:185,
//                                 'images/3.jpg'),
//                            Container(
//                           width: 185,
//                           height:60 ,
//                           color: Colors.grey,
//                           child:
//                           Column(
//                             children: [
//                               Row(children: [
//                                  Text("Mango",style: TextStyle(color: Colors.white,fontSize: 20),),
//                               ],),
//                                      Row(
//                                        children: [
//                                          Text('5000 s.p',style: TextStyle(color: Colors.white,fontSize: 20)),
//                                              SizedBox(width: 60,), 
//                                               Icon(Icons.shopping_cart_rounded,size: 35,), 
//                                               ],
//                                      ),
                                      
//                             ],
//                           )
//                         ), 
//                         ],
//                           )),
//                         ],
//                         ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 10,),
//             Padding(
//             padding: const EdgeInsets.only(left: 20),
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                          Column(
//                           children: [
//                         Container(
//                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
//                           child: Column(
//                             children: [
//                               Image.asset(
//                                 width: 185,
//                                 height:185,
//                                 'images/4.jpg'),
//                            Container(
//                           width: 185,
//                           height:60 ,
//                           color: Colors.grey,
//                           child:
//                           Column(
//                             children: [
//                               Row(children: [
//                                  Text("Strawberry",style: TextStyle(color: Colors.white,fontSize: 20),),
//                               ],),
//                                      Row(
//                                        children: [
//                                          Text('5000 s.p',style: TextStyle(color: Colors.white,fontSize: 20)),
//                                              SizedBox(width: 60,), 
//                                               Icon(Icons.shopping_cart_rounded,size: 35,), 
//                                               ],
//                                      ),
                                      
//                             ],
//                           )
//                         ), 
//                         ],
//                           )),
//                         ],
//                         ),
//                         SizedBox(width: 50,),
//                         Column(
//                           children: [
//                         Container(
//                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
//                           child: Column(
//                             children: [
//                               Image.asset(
//                                 width: 185,
//                                 height:185,
//                                 'images/5.jpg'),
//                            Container(
//                           width: 185,
//                           height:60 ,
//                           color: Colors.grey,
//                           child:
//                           Column(
//                             children: [
//                               Row(children: [
//                                  Text("Milk",style: TextStyle(color: Colors.white,fontSize: 20),),
//                               ],),
//                                      Row(
//                                        children: [
//                                          Text('5000 s.p',style: TextStyle(color: Colors.white,fontSize: 20)),
//                                              SizedBox(width: 60,), 
//                                               Icon(Icons.shopping_cart_rounded,size: 35,), 
//                                               ],
//                                      ),
                                      
//                             ],
//                           )
//                         ), 
//                         ],
//                           )),
//                         ],
//                         ),
//                   ],
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         onTap: (value) {
//           setState(() {
//             Navigator.push(context,
//             MaterialPageRoute(builder: (context) =>IceCream()),
//             );
//           });
//         },
    
//         items: [
//         BottomNavigationBarItem(icon: Icon(Icons.favorite),label: ""),
//         BottomNavigationBarItem(icon: Icon(Icons.home),label: "",),
//         BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_rounded),label: ""),
//       ]),
//       );
//   }
// }