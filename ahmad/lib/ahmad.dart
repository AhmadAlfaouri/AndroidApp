// import 'package:flutter/material.dart';
// class Product extends StatefulWidget {
//   final String name;
//   final String image;
//   bool isAddedToCart;

//   Product({required this.name, required this.image, this.isAddedToCart = false});

//   @override
//   _ProductState createState() => _ProductState();
// }

// class _ProductState extends State<Product> {
//   bool showConfirmation = false;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Column(
//             children: [
//               Container(
//                 decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 212, 196, 163),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 width: 175,
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
//                             widget.image,
//                           ),
//                         )
//                       ],
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 10),
//                       child: Row(
//                         children: [
//                           Text(
//                             widget.name,
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
//                                 color: Colors.white,
//                                 fontSize: 17)),
//                         SizedBox(
//                           width: 60,
//                         ),
//                         InkWell(
//                           onTap: () {
//                             setState(() {
//                               widget.isAddedToCart = true;
//                               showConfirmation = true;
//                             });
//                           },
//                           child: Stack(
//                             children: [
//                               IconButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     widget.isAddedToCart = true;
//                                     showConfirmation = true;
//                                   });
//                                 },
//                                 icon: Icon(Icons.shopping_cart_rounded),
//                                 color: Colors.white,
//                                 iconSize: 20,
//                               ),
//                               if (showConfirmation)
//                               Positioned(
//                                   top: 30,
//                                   right: 10,
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                       color: Colors.black.withOpacity(0.5),
//                                       borderRadius: BorderRadius.circular(10),
//                                     ),
//                                     padding: EdgeInsets.all(10),
//                                     child: Text(
//                                       'Added',
//                                     style: TextStyle(
//                                         color: Colors.white),
//                                   ),
//                                   )
//                                 ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         if (widget.isAddedToCart)
//           Container(
//             decoration: BoxDecoration(
//               color: Colors.green,
//               borderRadius: BorderRadius.circular(10),
//             ),
//             padding: EdgeInsets.all(10),
//             child: Text(
//               'Added to cart',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 17,
//               ),
//             ),
//           ),
//       ],
//     );
//   }
// }

// class ahmad extends StatefulWidget {
//   const ahmad({Key? key}) : super(key: key);

//   @override
//   State<ahmad> createState() => _ahmadState();
// }

// class _ahmadState extends State<ahmad> {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 117, 65, 25),
//         actions: [
//           IconButton(
//             icon: Icon(
//               Icons.menu,
//               color: Colors.white,
//             ),
//             onPressed: () {
//               _scaffoldKey.currentState!.openDrawer();
//             },
//           ),
//         ],
//         leading: IconButton(
//           icon: Icon(
//             Icons.search,
//             color: Colors.white,
//             size: 40,
//           ),
//           onPressed: () {
//             Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => Search()));
//           },
//         ),
//         title: TextField(
//           decoration: InputDecoration(
//               hintText: ' ', fillColor: Colors.white, hoverColor: Colors.white),
//         ),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             DrawerHeader(
//               child: Stack(
//                 children: [
//                   Container(
//                     color: Color.fromARGB(255, 82, 39, 10),
//                   ),
//                   Center(
//                     child: CircleAvatar(
//                       backgroundImage:
//                           AssetImage('images/IMG_20240101_000349_866.jpg'),
//                       radius: 40,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             ListTile(
//               title: Text('Item 1'),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               title: Text('Item 2'),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//       ),
//       body: Container(
//         color: Color.fromARGB(255, 255, 253, 222),
//         child: ListView(
//           children: [
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: [
//                   Container(
//                     margin: EdgeInsets.all(10),
//                     width: 100,
//                     height: 100,
//                     child: GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => product_detail(
//                                       title: 'Mango',
//                                       price: '500',
//                                       image: 'images/mango.jpg',
//                                     )));
//                       },
//                       child: Stack(
//                         children: [
//                           Container(ScrollView(
//                           scrollDirection: Axis.horizontal,
//                                 child: Row(
//                                 children: [
//                                      for (var item in productItems)
//                                  GestureDetector(
//                                       onTap: () {
//                                           Navigator.push(
//                                             context,
//                                             MaterialPageRoute(
//                                                 builder: (context) => ItemDetail(item: item)));
                                
//                                       },  ),         
                                      
//                                     EdgeInsets.only( child: 
//                                     Column(
//                                         children: [ 30]),
//                                             child: Image.asset('images/'),
//                                           Container(
//                                             margin: EdgeInsets.allmango.jpg(10),
//                                             width:200,
//                                           color: Colors.black  ,                          
//                            child: Stack(
//                               children: [
//                                 PositionwithOpacity(0.5),
//                               ed.fill(
//                                   child: Text(
//                               'Mango',
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Container(
//                     child: Image.network(
//                                     item.imageUrl,
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                                 Positioned(
//                                   bottom: Insets.all(10),
//                                   width: 10,
//                                   left: 0,
//                                   right: 0,0,
//                                    child: Container(
//                                     height:100,
//                       color: Color.fromARGB(150,  0, 0),
//                  child :  GestureDetector(
//                        onTap: () {
//                         avigator.push(
//                             context,
//                             MaterialPageRoute( padding: EdgeInsets.all(10),
//                                 builder:  (context) => product_(
//                                       item.name,detail(
//                                       title: 'Banana',
//                                       price: '400',
//                                       image: 'images/banana.jpg',
//                                      )
//                                    )
//                                  )
//                                );
//                              } ,
//                              child: Container(
//                               height:100,
//                               color:Color.fromARGB(150, 0, 0, 0),
//                               padding: EdgeInsets.all(10),
//                                   child: Text(
//                                     'View Details',
//                                     style: TextStyle(color: Colors.white),
//                              ),
//                             ),
//                           ),
//                         ) 
//                       ]
//                     )
//                   )
//                  ),
//                 ]
//                )
//               )
//              )
//             ] 
//            )
//           )
//          ]
//         )
//        )
//       );
         
//        child: Stack(
//           children: [
//             Container(
//               color: Colors.white,
//               height: 200,
//               child: Row(
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       // Navigate to item detail screen
//                     },
//                     child: Container(
//                       margin: EdgeInsets.all(10),
//                       child: Column(
//                         children: [
//                           Image.asset('images/banana.jpg'),
//                           Container(
//                             margin: EdgeInsets.all(10),
//                             width: 200,
//                             color: Colors.black,
//                             child: Stack(
//                               children: [
//                                 Positioned.fill(
//                                   child: Container(
//                                     color: Colors.black.withOpacity(0.5),
//                                   ),
//                                 ),
//                                 Positioned(
//                                   bottom: 10,
//                                   left: 0,
//                                   right: 0,
//                                   child: GestureDetector(
//                                     onTap: () {
//                                       // Navigate to product detail screen
//                                     },
//                                     child: Container(
//                                       height: 100,
//                                       color: Color.fromARGB(150, 0, 0, 0),
//                                       padding: EdgeInsets.all(10),
//                                       child: Text(
//                                         'View Details',
//                                         style: TextStyle(color: Colors.white),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         );
//   }
// }

// class ItemDetail extends StatelessWidget {
//   final ProductItem item;

//   ItemDetail({required this.item});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(item.name),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Image.network(
//               item.imageUrl,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(20),
//             child: Image.asset(item.image),
//           ),
//           Padding(
//             padding: EdgeInsets.all(10),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   item.name,
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   item.description,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// class ProductDetail extends StatefulWidget {
//   final String title;
//   final String price;
//   final String image;

//   const ProductDetail({Key? key, required this.title, required this.price, required this.image}) : super(key: key);

//   @override
//   State<ProductDetail> createState() => _ProductDetailState();
// }

// class _ProductDetailState extends State<ProductDetail> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(widget.title, style: TextStyle(fontSize: 18)),
//         SizedBox(height: 20),
//         Text('Price: ${widget.price}', style: TextStyle(fontSize: 24, color: Colors.red)),
//         SizedBox(height: 10),
//         ElevatedButton(
//           onPressed: () {},
//           child: Text('Buy Now'),
//         ),
//       ],
//     );
//   }
// }

// class _product_detail extends StatefulWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 5,
//       child: Container(
//         width: double.infinity,
//         child: Column(
//           children: [
//             Image.asset(widget.image),
//             Text('Add to cart'),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ShoppingCart extends StatefulWidget {
//   final Product productItem;

//   ShoppingCart({required this.productItem});

//   @override
//   _ShoppingCartState createState() => _ShoppingCartState();
// }

// class _ShoppingCartState extends State<ShoppingCart> {
//   int _count = 1;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shopping Cart'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(10),
//         child: Column(
//           children: [
//             Text(widget.title, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
//             Text('Price: ${widget.price}', style: TextStyle(fontSize: 20, color: Colors.grey)),
//             Image.asset(widget.image),
//           ],
//         ),
//       ),
//     );
//   }
// }


// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(
//           children: [
//             Expanded(
//               child: Image.network(
//                 widget.productItem.imageUrl,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     widget.productItem.title,
//                     style: TextStyle(fontSize: 24),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     'Price: 100',
//                     style: TextStyle(fontSize: 24),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//         actions: [
//           Padding(
//             padding: EdgeInsets.all(10),
//             child: Row(
//               children: [
//                 Text(
//                   widget.productItem.title,
//                   style: TextStyle(fontSize: 24),
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.remove_circle),
//                   onPressed: () {
//                     setState(() {
//                       widget.productItem.price -= 100;
//                     });
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(
//           children: [
//             Text('Price: ${widget.productItem.price}', style: TextStyle(fontSize: 24)),
//             SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   widget.productItem.price += 100;
//                 });
//               },
//               child: Text('Add 100'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MyApp());
// }

// class Product {
//   final String title;
//   int price;
//   final String image;

//   Product({required this.title, required this.price, required this.image});
// }

// class MyApp extends StatelessWidget {
//   int _count = 0;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(
//           children: [
//             Text('Price: ${widget.productItem.price}', style: TextStyle(fontSize: 24)),
//             SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       _count += 1;
//                     });
//                   },
//                   child: Text('+', style: TextStyle(fontSize: 20, color: Colors.green)),
//                 ),
//                 Text('Count: $_count', style: TextStyle(fontSize: 20, color: Colors.blue)),
//                 ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       _count -= 1;
//                     });
//                   },
//                   child: Text('-', style: TextStyle(fontSize: 20, color: Colors.red)),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ProductList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shopping Cart'),
//       ),
//       body: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   // Add logic to decrease count
//                 },
//                 child: Text('-'),
//               ),
//               Text('$_count'),
//               ElevatedButton(
//                 onPressed: () {
//                   // Add logic to increase count
//                 },
//                 child: Text('+'),
//               ),
//             ],
//           ),
//           Text('Price: \$${widget.productItem.price}'),
//         ],
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: ListView.builder(
//           itemCount: products.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               leading: Image.network(products[index].imageUrl),
//               title: Text(products[index].title),
//               subtitle: Text('Price: ${products[index].price}'),
//               onTap: () {
                
//               },
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class ShoppingCart extends StatefulWidget {
//   final Product productItem;

//   ShoppingCart({required this.productItem});

//   @override
//   _ShoppingCartState createState() => _ShoppingCartState();
// }

// class _ShoppingCartState extends State<ShoppingCart> {
//   int _count = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         ElevatedButton(
//           onPressed: () {
//             setState(() {
//               _count = _count - 1;
//             });
//           },
//           child: Text('-'),
//         ),
//         Text('$_count'),
//         ElevatedButton(
//           onPressed: () {
//             setState(() {
//               _count = _count + 1;
//             });
//           },
//           child: Text('+'),
//         ),
//       ],
//     );
//   }
// }

// void main() {
//   runApp(MyApp());
// }


// class HomeScreen extends StatelessWidget {
//   final List<Product> products = [
//     Product(
//         imageUrl: 'banana.jpg', title: 'Banana', price: 1.5),
//     Product(
//         imageUrl: 'apple.jpg', title: 'Apple', price: 1.0),
//   ];
//   int _count = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter App'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: products.length,
//               itemBuilder: (context, index) {
//                 return Row(
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {
//                         setState(() {
//                           _count = _count + 1;
//                         });
//                       },
//                       child: Image.asset(products[index].imageUrl),
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           products[index].title,
//                           style: TextStyle(fontSize: 20),
//                         ),
//                         Text(
//                           '\$${products[index].price}',
//                           style: TextStyle(fontSize: 16),
//                         ),
//                       ],
//                     ),
//                     Spacer(),
//                     IconButton(
//                       icon: Icon(Icons.add_shopping_cart),
//                       onPressed: () {
//                         // Navigate to the shopping cart screen
//                       },
//                     ),
//                     Text(
//                       '$_count',
//                       style: TextStyle(fontSize: 20),
//                     ),
//                   ],
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ShoppingCart extends StatefulWidget {
//   final Product productItem;

//   ShoppingCart({required this.productItem});

//   @override
//   State<ShoppingCart> createState() => _ShoppingCartState();
// }

// class _ShoppingCartState extends State<ShoppingCart> {
//   int _count = 1;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shopping Cart'),
//       ),
//       body: Column(
//         children: [
//           product_detail(
//             title: widget.productItem.title,
//             price: widget.productItem.price,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               IconButton(
//                 icon: Icon(Icons.remove),
//                 onPressed: () {
//                   setState(() {
//                     _count--;
//                   });
//                 },
//               ),
//               Text(
//                 '$_count',
//                 style: TextStyle(fontSize: 20),
//               ),
//               IconButton(
//                 icon: Icon(Icons.add),
//                 onPressed: () {
//                   setState(() {
//                     _count++;
//                   });
//                 },
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class product_detail extends StatelessWidget {
//   final String title;
//   final double price;

//   product_detail({required this.title, required this.price});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             title,// Add the title here
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           ),
//           Text(
//             '\$${price.toStringAsFixed(2)}', // Add the price here
//             style: TextStyle(fontSize: 20, color: Colors.grey),
//           ),
//         ],
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomeScreen(),
//     );
//   }
// }


// class _MyAppState extends State<MyApp> {
//   int _count = 1;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter E-commerce App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter E-commerce App'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   List<Map<String, dynamic>> products = [
//     {
//       'title': 'Banana',
//       'price': '400',
//       'image': 'images/banana.jpg',
//     },
//     {
//       'title': 'Mango',
//       'price': '500',
//       'image': 'images/mango.jpg',
//     },
//   ];

//   void _addProductToCart(Map<String, dynamic> productItem) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => ShoppingCart(productItem),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: ListView.builder(
//         itemCount: products.length,
//         itemBuilder: (context, index) {
//           return Card(
//             child: ListTile(
//               leading: Image.asset(products[index]['image']),
//               title: Text(
//                 products[index]['title'],
//                 style: TextStyle(fontSize: 24, color: Colors.blue),
//               ),
//               subtitle: Text(
//                 '\$${products[index]['price']}',
//                 style: TextStyle(fontSize: 18, color: Colors.black),
//               ),
//               trailing: ElevatedButton(
//                 onPressed: () {
//                   _addProductToCart(products[index]);
//                 },
//                 child: Text('Add to Cart'),
//                 style: ElevatedButton.styleFrom(primary: Colors.blue),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// class ShoppingCart extends StatefulWidget {
//   final Map<String, dynamic> productItem;

//   ShoppingCart(this.productItem);

//   @override
//   _ShoppingCartState createState() => _ShoppingCartState();
// }

// class _ShoppingCartState extends State<ShoppingCart> {
//  int _count = 1;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shopping Cart'),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             padding: EdgeInsets.all(10),
//             child: Row(
//               children: [
//                 Image.asset(widget.productItem['image']),
//                 SizedBox(width: 10),
//                 Text(
//                   widget.productItem['title'],
//                   style: TextStyle(fontSize: 24, color: Colors.blue),
//                 ),
//                 SizedBox(width: 10),
//                 Text(
//                   '\$${widget.productItem['price']}',
//                   style: TextStyle(fontSize: 18, color: Colors.black),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 10),
//           Container(
//             padding: EdgeInsets.all(10),
//             child: Row(
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       _count--;
//                     });
//                   },
//                   child: Text('-'),
//                   style: ElevatedButton.styleFrom(primary: Colors.blue),
//                 ),
//                 SizedBox(width: 10),
//                 Text(
//                   '$_count',
//                   style: TextStyle(fontSize: 20),
//                 ),
//                 SizedBox(width: 10),
//                 ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       _count++;
//                     });
//                   },
//                   child: Text('+'),
//                   style: ElevatedButton.styleFrom(primary: Colors.blue),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _count = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Image.network(
//               'https://example.com/image.jpg', // Replace with your image URL
//               fit: BoxFit.cover,
//             ),
//           ),
//           SizedBox(height: 10),
//           Row(
//             children: [
//               Text(
//                 'Price: \$5',
//                 style: TextStyle(fontSize: 20),
//               ),
//               SizedBox(width: 10),
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     _count++;
//                   });
//                 },
//                 child: Text('Add to Cart'),
//               ),
//             ],
//           ),
//           SizedBox(height: 10),
//           Text(
//             'Cart: $_count',
//             style: TextStyle(fontSize: 20),
//           ),
//         ],
//       ),
//     );
//   }
// }
// class _HomeScreenState extends State<HomeScreen> {
//   int _count = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shopping Cart'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView(
//               children: [
//                 Product(
//                   title: 'Banana',
//                   price: '400',
//                   imageUrl: 'images/banana.jpg',
//                 ),
//                 Product(
//                   title: 'Mango',
//                   price: '300',
//                   imageUrl: 'images/mango.jpg',
//                 ),
//                 Product(
//                   title: 'Orange',
//                   price: '500',
//                   imageUrl: 'images/orange.jpg',
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 10),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 'Total: \$$_count',
//                 style: TextStyle(fontSize: 24, color: Colors.red),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     _count += 100;
//                   });
//                 },
//                 child: Text('Add \$100'),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Product extends StatelessWidget {
//   final String title;
//   final String price;
//   final String imageUrl;

//   Product({required this.title, required this.price, required this.imageUrl});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Image.network(
//             imageUrl,
//             fit: BoxFit.cover,
//           ),
//           SizedBox(height: 10),
//           Text(
//             title,
//             style: TextStyle(fontSize: 20),
//           ),
//           SizedBox(height: 5),
//           Text(
//             'Price: \$$price',
//             style: TextStyle(fontSize: 16, color: Colors.grey),
//           ),
//           SizedBox(height: 10),
//           ElevatedButton(
//             onPressed: () {
//               // Handle add to cart logic here
//             },
//             child: Text('Add to Cart'),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _count = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Product Detail'),
//         actions: [
//           Padding(
//             padding: EdgeInsets.all(10),
//             child: ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   _count = 1;
//                 });
//               },
//               child: Text('Reset'),
//             ),
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           product_detail(
//             title: 'Mango',
//             price: '500',
//             imageUrl: 'images/mango.jpg',
//           ),
//         ],
//       ),
//     );
//   }
// }

// class product_detail extends StatelessWidget {
//   final String title;
//   final String price;
//   final String imageUrl;

//   product_detail({required this.title, required this.price, required this.imageUrl});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Image.network(
//           imageUrl,
//           fit: BoxFit.cover,
//         ),
//         SizedBox(height: 10),
//         Text(
//           title,
//           style: TextStyle(fontSize: 24),
//         ),
//         SizedBox(height: 10),
//         Text(
//           'Price: \$$price',
//           style: TextStyle(fontSize: 18),
//         ),
//         SizedBox(height: 10),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   _count = _count - 1;
//                 });
//               },
//               child: Text('-'),
//             ),
//             Text('$_count'),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   _count = _count + 1;
//                 });
//               },
//               child: Text('+'),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
// class ShoppingCart extends StatefulWidget {
//   final Product productItem;

//   ShoppingCart({required this.productItem});

//   @override
//   State<StatefulWidget> createState() => _ShoppingCartState();
// }

// class _ShoppingCartState extends State<ShoppingCart> {
//   int _count = 1;

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 5,
//       child: InkWell(
//         onTap: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => ShoppingCart(
//                 productItem: widget.productItem,
//               ),
//             ),
//           );
//         },
//         child: Padding(
//           padding: EdgeInsets.all(10),
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     widget.productItem.title,
//                     style: TextStyle(fontSize: 24, color: Colors.black),
//                   ),
//                   Text(
//                     'Price: \$${widget.productItem.price}',
//                     style: TextStyle(fontSize: 24),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 10),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'Quantity:',
//                     style: TextStyle(fontSize: 20, color: Colors.black),
//                   ),
//                   Container(
//                     width: 50,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         IconButton(
//                           icon: Icon(Icons.remove),
//                           onPressed: () {
//                             setState(() {
//                               if (_count > 1) _count--;
//                             });
//                           },
//                         ),
//                         Text(
//                           '$_count',
//                           style: TextStyle(fontSize: 20),
//                         ),
//                         IconButton(
//                           icon: Icon(Icons.add),
//                           onPressed: () {
//                             setState(() {
//                               _count++;
//                             });
//                           },
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 10),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {}, // Add your remove logic here
//                     child: Text('Remove'),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ShoppingCart extends StatefulWidget {
//   final Product productItem;

//   ShoppingCart({required this.productItem});

//   @override
//   _ShoppingCartState createState() => _ShoppingCartState();
// }

// class _ShoppingCartState extends State<ShoppingCart> {
//   int _count = 1;

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 5,
//       child: Column(
//         children: [
//           Image.asset(
//             widget.productItem.image,
//             fit: BoxFit.cover,
//           ),
//           Text(
//             widget.productItem.title,
//             style: TextStyle(fontSize: 24),
//           ),
//           SizedBox(height: 10),
//           Row(
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     if (_count > 1) _count--;
//                   });
//                 },
//                 child: Text('-'),
//               ),
//               SizedBox(width: 10),
//               Text(
//                 '$_count',
//                 style: TextStyle(fontSize: 20),
//               ),
//               SizedBox(width: 10),
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     _count++;
//                   });
//                 },
//                 child: Text('+'),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// List<Product> items = [
//   Product(
//     title: 'Banana',
//     price: 400,
//     imageUrl: 'images/banana.jpg',
//   ),
//   Product(
//     title: 'Apple',
//     price: 300,
//     imageUrl: 'images/apple.jpg',
//   ),
// ];

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Shopping Cart',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: ShoppingCart(
//         productItem: items[0],
//       ),
//     );
//   }
// }

// class ShoppingCart extends StatelessWidget {
//   final Product productItem;

//   ShoppingCart({required this.productItem});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shopping Cart'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: items.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   leading: Image.network(
//                     items[index].imageUrl,
//                     width: 50,
//                     height: 50,
//                   ),
//                   title: Text(items[index].title),
//                   subtitle: Text({items[index].price}),
//                   trailing: IconButton(
//                     icon: Icon(Icons.delete),
//                     onPressed: () {
//                       setState(() {
//                         items.removeAt(index);
//                       });
//                     },
//                   ),
//                 );
//               },
//             ),
//           ),
//           Text(
//             Total:₹'${items.fold(0, (sum, item) => sum + item.price)}',
//             style: TextStyle(fontSize: 20),
//           ),
//         ],
//       ),
//     );
//   }
// }

// List<Product> items = [
//   Product(
//     title: 'Banana',
//     price: 400,
//     imageUrl: 'images/banana.jpg',
//   ),
//   Product(
//     title: 'Apple',
//     price: 300,
//     imageUrl: 'images/apple.jpg',
//   ),
// ];

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Shopping Cart',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: ShoppingCart(
//         productItem: items[0],
//       ),
//     );
//   }
// }

// class ShoppingCart extends StatefulWidget {
//   final Product productItem;

//   ShoppingCart({required this.productItem});

//   @override
//   _ShoppingCartState createState() => _ShoppingCartState();
// }

// class _ShoppingCartState extends State<ShoppingCart> {
//   List<Product> _items = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shopping Cart'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: _items.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   leading: Image.network(
//                     _items[index].imageUrl,
//                     width: 50,
//                     height: 50,
//                   ),
//                   title: Text(_items[index].title),
//                   subtitle: Text(₹${_items[index].price}),
//                   trailing: IconButton(
//                     icon: Icon(Icons.delete),
//                     onPressed: () {
//                       setState(() {
//                         _items.removeAt(index);
//                       });
//                     },
//                   ),
//                 );
//               },
//             ),
//           ),
//           Text(
//             Total: ₹${_items.fold(0, (sum, item) => sum + item.price)},
//             style: TextStyle(fontSize: 20),
//           ),
//         ],
//       ),
//     );
//   }
// }

// List<Product> items = [
//   Product(
//     title: 'Banana',
//     price: 400,
//     imageUrl: 'images/banana.jpg',
//   ),
//   Product(
//     title: 'Apple',
//     price: 300,
//     imageUrl: 'images/apple.jpg',
//   ),
// ];

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Shopping Cart',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: ShoppingCart(
//         productItem: items[0],
//       ),
//     );
//   }
// }

// class ShoppingCart extends StatefulWidget {
//   final Product productItem;

//   ShoppingCart({required this.productItem});

//   @override
//   _ShoppingCartState createState() => _ShoppingCartState();
// }

// class _ShoppingCartState extends State<ShoppingCart> {
//   List<Product> _items = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shopping Cart'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
// title),
//                   subtitle: Text(₹${_items[index].price}),
//                   trailing: IconButton(
//                     icon: Icon(Icons.delete),
//                     onPressed: () {
//                       setState(() {
//                         _items.removeAt(index);
//                       });
//                     },
//                   ),
//                 );
//               },
//             ),
//           ),
//           Text(              itemCount: _items.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   leading: Image.network(
//                     _items[index].imageUrl,
//                     width: 50,
//                     height
//             Total: ₹${_items.fold(0, (sum, item) => sum + item.price)},
//             style: TextStyle(fontSize: 20),
//           ),
//         ],
//       ),
//     );
//   }
// }: 50,
//                   ),
//                   title: Text(_items[index].title),
//                   subtitle: Text('₹${_items[index].price}'),
//                   trailing: IconButton(
//                     icon: Icon(Icons.delete),
//                     onPressed: () {
//                       setState(() {
//                         _items.removeAt(index);
//                       });
//                     },
//                   ),
//                 );
//               },
//             ),
//           ),
//           Text(
//             Total:

// List<Product> items = [
//   Product(
//     title: 'Banana',
//     price: 400,
//     imageUrl: 'images/banana.jpg',
//   ),
//   Product(
//     title: 'Apple',
//  ₹${_items.fold(0, (sum, item) => sum + item.price)},
//             style: TextStyle(fontSize: 20),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Product {
//     price: 300,
//     imageUrl: 'images/apple.jpg',
//   ),
// ];

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title:  final String title;
//   final int price;
//   final String imageUrl;

//   Product({required this.title, required this.price, required this.imageUrl});
// }

// List<Product> items = [
//   Product(
//     title: 'BShopping Cart',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: ShoppingCart(
//         productItem: items[0],
//       ),
//     );
//   }
// }

// class Shoppinganana,
//     price: 400,
//     imageUrl: 'images/banana.jpg',
//   ),
//   Product(
//     title: 'Apple',
//     price: 300,
//     imageUrl: images/apple.Cart extends StatefulWidget {
//   final Product productItem;

//   ShoppingCart({required this.productItem});

//   @override
//   _ShoppingCartState createState() => _ShoppingCartState();
// }

// class _Shoppingjp,
//   ),
// ];

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Shopping Cart',
//       theme: ThemeData(
//        CartState extends State<ShoppingCart> {
//   List<Product> _items = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shopping Cart'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: _items.length,
//               itemBuilder: (context, index) { primarySwatch: Colors.red,
//       ),
//       home: ShoppingCart(
//         productItem: items[0],
//       ),
//     );
//   }
// }

// class ShoppingCart extends StatefulWidget {
 
//                 return ListTile(
//                   leading: Image.network(
//                     _items[index].imageUrl,
//                     width: 50,
//                     height: 50, final Product productItem;

//   ShoppingCart({required this.productItem});

//   @override
//   _ShoppingCartState createState() => _ShoppingCartState();
// }
//                   ),
//                   title: Text(_items[index].title),
//                   subtitle: Text('₹${_items[index].price}'),
//                   trailing: IconButton(
//                     icon: Icon(Icons.delete),
//                     onPressed: () {
//                       setState(() {
//                         _items.removeAt(index);

// class _ShoppingCartState extends State<ShoppingCart> {
//   List<Product> _items = [];

//                       });
//                     },
//                   ),
//                 );
//               },
//             ),
//           ),
//           Text(
//             Total: ₹${_items.fold(0, (sum, item) => sum + item.price)},
//             style: TextStyle(fontSize: 20),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Product {
//   final String title;
//   final int price;
//   final String imageUrl;

//   Product({required this.title, required this.price, required this.imageUrl});
// }

// List<Product> items = [
//   Product(
//     title: 'Banana',
//     price: 400,
//     imageUrl: 'images/banana.jpg',
//   ),
//   Product(
//     title: 'Apple',
//     price: 300,
//     imageUrl: 'images/apple.jpg',
//   ),
// ];

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Shopping Cart',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: ShoppingCart(
//         productItem: items[0],
//       ),
//     );
//   }
// }

// class ShoppingCart extends StatefulWidget {
//   final Product productItem;

//   ShoppingCart({required this.productItem});

//   @override
//   _ShoppingCartState createState() => _ShoppingCartState();
// }

// class _ShoppingCartState extends State<ShoppingCart> {
//   List<Product> _items = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(Sho
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shopping Cart'),
//       ),
//       body: Column(
//         children: [
//           Expandedpping Cart,
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: _items.length,
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//             child: ListView.builder(
//               itemCount: _items.length,
//               itemBuilder: (context, index) {
//                 return List
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   leading: Image.network(
//                     _items[indexTile(
//                   leading: Image.network(
//                     _items[index].imageUrl,
//                     width: 50,
//                     height: 50,
//                   ),
//                   title: Text(_items[index].imageUrl,
//                     width: 50,
//                     height: 50,
//                   ),
//                   title: Text(_items[index].title),
//                   subtitle: Text(₹${_items[index].price('Shopping Cart'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: _items.length,
//               itemBuilder: (context, index
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shopping Cart'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shopping Cart'),
//       ),
//       body: Column(
//         children: [
//           Expanded
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shopping Cart'),
//       ),
//       body: Column(
//         children: [
//           Exp(
//               itemCount: _items.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   leading: Image.network(
//                     _items[index].imageUrl,
// ) {
//                 return ListTile(
//                   leading: Image.network(
//                     _items[index].imageUrl,
//                     width: 50,
//                     height: 50,
//                   ),
//                  ].title),
//                   subtitle: Text('₹${_items[index].price}'),
//                   trailing: IconButton(
//                     icon: Icon(Icons.delete),
//                     onPressed: () {
//                 (
//             child: ListView.builder(
//               itemCount: _items.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   leading: Image.network(
//                     _items}),
//                   trailing: IconButton(
//                     icon: Icon(Icons.delete),
//                     onPressed: () {
//                       setState(() {
//                         _items.removeAt(index);
//                       });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shopping Cart'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: _items.length,
//               itemBuilder: (context, index) {anded(
//             child: ListView.builder(
//               itemCount: _items.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   leading: Image.network(
//                     _items[index].imageUrl,
//                                     width: 50,
//                     height: 50,
//                   ),
//                   title: Text(_items[index].title),
//                   subtitle: Text('₹${_items[index].price}'),
//                   trailing: IconButton(
//                     icon: Icon(Icons.delete),
//  title: Text(_items[index].title),
//                   subtitle: Text('₹${_items[index].price}'),
//                   trailing: IconButton(
//                     icon: Icon(Icons.delete),
//                     onPressed: () {
//                       setState(() {
//                         _items.removeAt(index);
//       setState(() {
//                         _items.removeAt(index);
//                       });
//                     },
//                   ),
//                 );
//               },
//             ),
//           ),
//           Text(
//             Total: ₹${_items.fold(0, (sum, item) => sum + item.price[index].imageUrl,
//                     width: 50,
//                     height: 50,
//                   ),
//                   title: Text(_items[index].title),
//                   subtitle: Text('₹${_items[index].price}'),
//                   trailing                    },
//                   ),
//                 );
//               },
//             ),
//           ),
//           Text(
//             Total: ₹${_items.fold(0, (sum, item) => sum + item.price)},
//             style: TextStyle(fontSize: 20),
//              width: 50,
//                     height: 50,
//                   ),
//                   title: Text(_items[index].title),
//                   subtitle: Text('₹${_items[index].price}'),
//                   trailing: IconButton(
//                     icon: Icon(Icons
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shopping Cart'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount
//                 return ListTile(
//                   leading: Image.network(
//                     _items[index].imageUrl,
//                     width: 50,
//                     height: 50,
//                   ),
//                   title: Text(_items[index                      });
//                     },
//                   ),
//                 );
//               },
//             ),
//           ),
//           Text(
//             Total: ₹${_items.fold(0, (sum, item) => sum + item.price)},
//             style: Text: IconButton(
//                     icon: Icon(Icons.delete),
//                     onPressed: () {
//                       setState(() {
//                         _items.removeAt(index);
//                       });
//                     },
//                   ),
//                : _items.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   leading: Image.network(
//                     _items[index].imageUrl,
//                     width: 50,
//                     height: 50,
//                                      onPressed: () {
//                       setState(() {
//                         _items.removeAt(index);
//                       });
//                     },
//                   ),
//                 );
//               },
//             ),
//           ),
//           Text(
//             Total: ₹${_].title),
//                   subtitle: Text('₹${_items[index].price}'),
//                   trailing: IconButton(
//                     icon: Icon(Icons.delete),
//                     onPressed: () {
//                       setState(() {
// )},
//             style: TextStyle(fontSize: 20),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Product {
//   final String title;
//   final int price;
//   final String imageUrl;

//   Product({required this.delete),
//                     onPressed: () {
//                       setState(() {
//                         _items.removeAt(index);
//                       });
//                     },
//                   ),
//                 );
//               },
//             ),
//           ),
//           Text(
//             ),
//         ],
//       ),
//     );
//   }
// }

// class Product {
//   final String title;
//   final int price;
//   final String imageUrl;

//   Product({required this.title, required this.price, required this.imageUrl});
// }

// List );
//               },
//             ),
//           ),
//           Text(
//             Total: ₹${_items.fold(0, (sum, item) => sum + item.price)},
//             style: TextStyle(fontSize: 20),
// .title, required this.price, required this.imageUrl});
// }

// List<Product> items = [
//   Product(
//     title: 'Banana',
//     price: 400,
//     imageUrl: 'images/banana.jpg',
// items.fold(0, (sum, item) => sum + item.price)},
//             style: TextStyle(fontSize: 20),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Product {
//   final String<Product> items = [
//   Product(
//     title: 'Banana',
//     price: 400,
//     imageUrl: 'images/banana.jpg',
//   ),
//   Product(
//     title: 'Apple',
//     price: Style(fontSize: 20),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Product {
//   final String title;
//   final int price;
//   final String imageUrl;

//   Product({required this.title,                        _items.removeAt(index);
//                       });
//                     },
//                   ),
//                 );
//               },
//             ),
//           ),
//           Text(
//             Total: ₹${_items.fold(0, (sum, ),
//                   title: Text(_items[index].title),
//                   subtitle: Text(₹${_items[index].price}),
//                   trailing: IconButton(
//                     icon: Icon(Icons.delete),
//                     onPressed: () {
//  Total: ₹${_items.fold(0, (sum, item) => sum + item.price)},
//             style: TextStyle(fontSize: 20),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Product300,
//     imageUrl: 'images/apple.jpg',
//   ),
// ];

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: Shopping Cart item) => sum + item.price)},
//             style: TextStyle(fontSize: 20),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Product {
//   final String title;
//   final          ),
//         ],
//       ),
//     );
//   }
// }

// class Product {
//   final String title;
//   final int price;
//   final String imageUrl;

//   Product({required this.title, required this.price,  ),
//   Product(
//     title: 'Apple',
//     price: 300,
//     imageUrl: 'images/apple.jpg',
//   ),
// ];

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(Build required this.price, required this.imageUrl});
// }

// List<Product> items = [
//   Product(
//     title: 'Banana',
//     price: 400,
//     imageUrl: 'images/banana.jpg',
//   ), title;
//   final int price;
//   final String imageUrl;

//   Product({required this.title, required this.price, required this.imageUrl});
// }

// List<Product> items = [
//   Product(
//     title:                     setState(() {
//                         _items.removeAt(index);
//                       });
//                     },
//                   ),
//                 );
//               },
//             ),
//           ),
//           Text(
//             Total: ₹${_items.fold(0, {
//   final String title;
//   final int price;
//   final String imageUrl;

//   Product({required this.title, required this.price, required this.imageUrl});
// }

// List<Product> items = [
//   Product(
//     title:anana,
//     price: 400,
//     imageUrl: 'images/banana.jpg',
//   ),
//   Product(
//     title: 'Apple',
//     price: 300,
//     imageUrl: 
//   Product(
//     title: 'Apple',
//     price: 300,
//     imageUrl: 'images/apple.jpg',
//   ),
// ];

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(Build required this.imageUrl});
// }

// List<Product> items = [
//   Product(
//     title: 'Banana',
//     price: 400,
//     imageUrl: images/banana.jpgContext context) {
//     return MaterialApp(
//       title: 'Shopping Cart',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: ShoppingCart(
//         productItem: items[0], int price;
//   final String imageUrl;

//   Product({required this.title, required this.price, required this.imageUrl});
// }

// List<Product> items = [
//   Product(
//     title: '',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: ShoppingCart(
//         productItem: items[0],
//       ),
//     );
//   }
// }

// class ShoppingCart extends StatefulWidget 'Banana',
//     price: 400,
//     imageUrl: 'images/banana.jpg',
//   ),
//   Product(
//     title: 'Apple',
//     price: 300,
//     imageUrl: images/apple (sum, item) => sum + item.price)},
//             style: TextStyle(fontSize: 20),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Product {
//   final String title;
//   final int priceBanana,
//     price: 400,
//     imageUrl: 'images/banana.jpg',
//   ),
//   Product(
//     title: 'Apple',
//     price: 300,
//     imageUrl,
//   ),
//   Product(
//     title: 'Apple',
//     price: 300,
//     imageUrl: 'images/apple.jpg',
//   ),
// ];

// class MyApp extends StatelessWidget {
//  images/apple.jpg,
//   ),
// ];

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Shopping Cart',
//       theme: ThemeData(Context context) {
//     return MaterialApp(
//       title: 'Shopping Cart',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: ShoppingCart(
//         productItem: items[0],
//       ),

//       ),
//     );
//   }
// }

// class ShoppingCart extends StatefulWidget {
//   final Product productItem;

//   ShoppingCart({required this.productItem});

//   @override
//   _ShoppingCartState createState() {
//   final Product productItem;

//   ShoppingCart({required this.productItem});

//   @override
//   _ShoppingCartState createState() => _ShoppingCartState();
// }

// class _ShoppingCartState;
//   final String imageUrl;

//   Product({required this.title, required this.price, required this.imageUrl});
// }

// List<Product> items = [
//   Product(
//     title: 'Banana',
//    .jpg,
//   ),
// ];

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Shopping Cart',
//       theme: ThemeData(
//         primarySw @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Shopping Cart',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: ShoppingCart: 'images/apple.jpg',
//   ),
// ];

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Shopping Cart',
//       theme
//         primarySwatch: Colors.red,
//       ),
//       home: ShoppingCart(
//         productItem: items[0],
//       ),
//     );
//   }
// }

// class ShoppingCart extends StatefulWidget {
//   final Product productItem    );
//   }
// }

// class ShoppingCart extends StatefulWidget {
//   final Product productItem;

//   ShoppingCart({required this.productItem});

//   @override
//   _ShoppingCartState createState() => _ShoppingCart price: 400,
//     imageUrl: 'images/banana.jpg',
//   ),
//   Product(
//     title: 'Apple',
//     price: 300,
//     imageUrl: 'images/apple.jpg',
//   ),
//  => _ShoppingCartState();
// }

// class _ShoppingCartState extends State<ShoppingCart> {
//   List<Product> _items = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaff extends State<ShoppingCart> {
//   List<Product> _items = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(Shoppingatch: Colors.red,
//       ),
//       home: ShoppingCart(
//         productItem: items[0],
//       ),
//     );
//   }
// };

//   ShoppingCart({required this.productItem});

//   @override
//   _ShoppingCartState createState() => _ShoppingCartState();
// }

// class _ShoppingCartState extends State<ShoppingCart> {
//   List<Product> _items =State();
// }

// class _ShoppingCartState extends State<ShoppingCart> {
//   List<Product> _items = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(S(
//         productItem: items[0],
//       ),
//     );
//   }
// }

// class ShoppingCart extends StatefulWidget {
//   final Product productItem;

//   ShoppingCart({required this.productItem});

//   @override
//   _S: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: ShoppingCart(
//         productItem: items[0],
//       ),
//     );
//   }
// }

// class ShoppingCart extends StatefulWidget {
//   final Productold(
//       appBar: AppBar(
//         title: Text('Shopping Cart'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: _items.length,
//               itemBuilder: (context, index Cart),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: _items.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   leading: Image.network(];

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Shopping Cart',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: Shopping productItem;

//   ShoppingCart({required this.productItem});

//   @override
//   _ShoppingCartState createState() => _ShoppingCartState();
// }

// class _ShoppingCartState extends State<ShoppingCartState createState() => _ShoppingCartState();
// }

// class _ShoppingCartState extends State<ShoppingCart> {
//   List<Product> _items = [];

//   @override
//   Widget build( [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shopping Cart'),
//       ),
//       body: Column(
//         children: [
//           Expandedhopping Cart),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: _items.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   leading: Image) {
//                 return ListTile(
//                   leading: Image.network(
//                     _items[index].imageUrl,
//                     width: 50,
//                     height: 50,
//                   ),
//                   title: Text(_items[index].titleCart(
//         productItem: items[0],
//       ),
//     );
//   }
// }

// class ShoppingCart extends StatefulWidget {
//   final Product productItem;

//   ShoppingCart({required this.productItem});

//   @override
//   _Shopping
//                     _items[index].imageUrl,
//                     width: 50,
//                     height: 50,
//                   ),
//                   title: Text(_items[index].title),
//                   subtitle: Text(₹${_items[index].price}),
// BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shopping Cart'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             childhoppingCart> {
//   List<Product> _items = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(Shopping),
//                   subtitle: Text('₹${_items[index].price}'),
//                   trailing: IconButton(
//                     icon: Icon(Icons.delete),
//                     onPressed: () {
//                       setState(() {
//                        .network(
//                     _items[index].imageUrl,
//                     width: 50,
//                     height: 50,
//                   ),
//                   title: Text(_items[index].title),
//                   subtitle: Text(₹${_items[(
//             child: ListView.builder(
//               itemCount: _items.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   leading: Image.network(
//                     _items[index].                  trailing: IconButton(
//                     icon: Icon(Icons.delete),
//                     onPressed: () {
//                       setState(() {
//                         _items.removeAt(index);
//                       });
//                     },
//                   ),CartState createState() => _ShoppingCartState();
// }

// class _ShoppingCartState extends State<ShoppingCart> {
//   List<Product> _items = [];

//   @override
//   Widget build(BuildContext context) _items.removeAt(index);
//                       });
//                     },
//                   ),
//                 );
//               },
//             ),
//           ),
//           Text(
//             Total: ₹${_items.fold(0, (sum,: ListView.builder(
//               itemCount: _items.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   leading: Image.network(
//                     _items[index].imageUrl,
//                     width: Cart),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: _items.length,
//               itemBuilder: (context, index) {
//                 return ListTile(index].price}),
//                   trailing: IconButton(
//                     icon: Icon(Icons.delete),
//                     onPressed: () {
//                       setState(() {
//                         _items.removeAt(index);
//                       });
//                     },
//                  {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shopping Cart'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.imageUrl,
//                     width: 50,
//                     height: 50,
//                   ),
//                   title: Text(_items[index].title),
//                   subtitle: Text(₹${_items[index].price}
//                 );
//               },
//             ),
//           ),
//           Text(
//             Total: ₹${_items.fold(0, (sum, item) => sum + item.price)},
//             style: TextStyle(fontSize: item) => sum + item.price)},
//             style: TextStyle(fontSize: 20),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Product {
//   final String title;
//                   leading: Image.network(
//                     _items[index].imageUrl,
//                     width: 50,
//                     height: 50,
//                   ),
//                   title: Text(_items[index].title 50,
//                     height: 50,
//                   ),
//                   title: Text(_items[index].title),
//                   subtitle: Text(₹${_items[index].price}),
//                   trailing: Iconbuilder(
//               itemCount: _items.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   leading: Image.network(
//                     _items[index].imageUrl,
//                  20),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Product {
//   final String title;
//   final int price;
//   final String imageUrl;

//   Product({required this  ),
//                 );
//               },
//             ),
//           ),
//           Text(
//             Total: ₹${_items.fold(0, (sum, item) => sum + item.price)},
//             style: TextStyle(fontSize: 20),
// ),
//                   trailing: IconButton(
//                     icon: Icon(Icons.delete),
//                     onPressed: () {
//                       setState(() {
//                         _items.removeAt(index);
//                       });
//                     },
//                   ),
               
//   final int price;
//   final String imageUrl;

//   Product({required this.title, required this.price, required this.imageUrl});
// }

// List<Product> items = [
//   Product(
//     title: Ban          ),
//         ],
//       ),
//     );
//   }
// }

// class Product {
//   final String title;
//   final int price;
//   final String imageUrl;

//   Product({required this.title, required this.price, required this.imageUrlButton(
//                     icon: Icon(Icons.delete),
//                     onPressed: () {
//                       setState(() {
//                         _items.removeAt(index);
//                       });
//                     },
//                   ),
//                 );
//               },    width: 50,
//                     height: 50,
//                   ),
//                   title: Text(_items[index].title),
//                   subtitle: Text(₹${_items[index].price}),
//                   trailing),
//                   subtitle: Text(₹${_items[index].price}),
//                   trailing: IconButton(
//                     icon: Icon(Icons.delete),
//                     onPressed: () {
//                       setState(() {
//                         _items.title, required this.price, required this.imageUrl});
// }

// List<Product> items = [
//   Product(
//     title: 'Banana',
//     price: 400,
//     imageUrl: images/ );
//               },
//             ),
//           ),
//           Text(
//             Total: ₹${_items.fold(0, (sum, item) => sum + item.price)},
//             style: TextStyle(fontSize: 20),
//           ),
//             ),
//           ),
//           Text(
//             Total: ₹${_items.fold(0, (sum, item) => sum + item.price)},
//             style: TextStyle(fontSize: 20),
//           ),
//         ],
// });
// }

// List<Product> items = [
//   Product(
//     title: 'Banana',
//     price: 400,
//     imageUrl: 'images/banana.jpg',
//   ),
//   Product(
//     title: 'Apple',: IconButton(
//                     icon: Icon(Icons.delete),
//                     onPressed: () {
//                       setState(() {
//                         _items.removeAt(index);
//                       });
//                     },
//                   ),
//                 );
//              ana,
//     price: 400,
//     imageUrl: 'images/banana.jpg',
//   ),
//   Product(
//     title: 'Apple',
//     price:banana.jpg,
//   ),
//   Product(
//     title: 'Apple',
//     price:
//         ],
//       ),
//     );
//   }
// }

// class Product {
//   final String title;
//   final int price;
//   final String imageUrl;

//   Product({required this.title, required this.price, required this.imageUrl});
// }.removeAt(index);
//                       });
//                     },
//                   ),
//                 );
//               },
//             ),
//           ),
//           Text(
//             Total: ₹${_items.fold(0, (sum, item) => sum + item.price
//     price: },
//             ),
//           ),
//           Text(
//             Total: ₹${_items.fold(0, (sum, item) => sum + item.price)},
//             style: TextStyle(fontSize: 20),
//           ),
//         ],
//       ),


// List<Product> items = [
//   Product(
//     title: 'Banana',
//     price: 400,
//     imageUrl: 'images/banana.jpg',
//   ),
//   Product(
//     title: 'Apple',
// )},
//             style: TextStyle(fontSize: 20),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Product {
//   final String title;
//   final int price;
//   final String imageUrl;
//       ),
//     );
//   }
// }

// class Product {
//   final String title;
//   final int price;
//   final String imageUrl;

//   Product({required this.title, required this.price, required this.imageUrl});
// }

// List<Product> items = [
//   Product(
//     title: 'Banana',
//     price: 400,
//     imageUrl: 'images/banana.jpg',
//   ),
//   Product(
//     title: App
//   Product({required this.title, required this.price, required this.imageUrl});
// }

// List<Product> items = [
//   Product(
//     title: 'Banana',
//     price: 400,
//     );
//   }
// }

// class Product {
//   final String title;
//   final int price;
//   final String imageUrl;

//   Product({required this.title, required this.price, required this.imageUrl});
// }

// List<Product> items = [    price:
//   Product(
//     title: 'Banana',
//     price: 400,
//     imageUrl: 'images/banana.jpg',
//   ),
//   Product(
//     title: 'Apple',
//     price:le,
//     price:    imageUrl: 'images/banana.jpg',
//   ),
//   Product(
//     title: 'Apple',
//     price: 500,
//     imageUrl: 'images/apple.jpg',
//   ),
//   Product(
//     title: 'Apple',
//     price: 600,
//     imageUrl: 'images/apple.jpg',
//   ),
//   Product(
//     title: 'Orange',
//     price: 200,
//     imageUrl: 'images/orange.jpg',
//   ),
//   Product(
//     title: 'Orange',
//     price: 300,
//     imageUrl: 'images/orange.jpg',
//   ),
//   Product(
//     title: 'Orange',
//     400,
//     imageUrl: 'images/apple.jpg',
//   ),
//   Product(
//     title: 'Apple',
//     price: 400,
//     imageUrl: 'images/apple.jpg',
//   ),
//   Product(
//     title: 'Orange',
//     price: 300,
//     imageUrl price: 400,
//     imageUrl: 'images/orange.jpg',
//   ),
//   Product(
//     title: 'Orange',
//     price: 500,
//     imageUrl: 'images/orange.jpg',
//   ),
//   Product(
//     title: 'Orange',
//     price: 600,
//     imageUrl: 'images/orange.jpg',
//   ),
//   Product(
//     title: 'Orange',
//     price: 700,
//     imageUrl: 'images/orange.jpg',
//   ),
// ];

// class: 'images/orange.jpg',
//   ),
//   Product(
//     title: 'Orange',
//     price: 300,
//     imageUrl: 'images/orange.jpg',
//   ),
//   Product(
//     title: 'Banana',
//     price: 400,
//     imageUrl: 'images/banana.jpg',
//   ),
//   Product(
//     title: 'Apple',
//     price: 400,
//     imageUrl: 'images/banana.jpg', _MyHomePageState extends State<MyHomePage> {
//   List<Product> _items = items;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: ListView.builder(
//         itemCount: _items.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             leading: Image.network(_items[index].imageUrl),
//             title: Text(_items[
//   ),
// ];

// class _MyHomePageState extends State<MyHomePage> {
//   List<Product> _items = items;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Shopping App'),
// index].title),
//             subtitle: Text('₹${_items[index].price}'),
//             trailing: IconButton(
//               icon: Icon(Icons.delete),
//               onPressed: () {
//                 setState(() {
//                   _items.removeAt(index);
//                 });
//               },
//             ),
//           );      ),
//       body: ListView.builder(
//         itemCount: _items.length,
//         itemBuilder: (BuildContext context, int index) {
//           return ListTile(
//             leading: Image.network(_items[index].imageUrl),
//             title: Text(_items[index].
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             _items.add(
//               Product(
//                 title: 'New Product',
//                 price: 0,
//                 imageUrl: images/bananatitle),
//             subtitle: Text('₹${_items[index].price}'),
//             trailing: IconButton(
//               icon: Icon(Icons.delete),
//               onPressed: () {
//                 setState(() {
//                   _items.removeAt(index);
//                 });
//               },
//             ),
//           );
//         },
//       ),
//       bottomNavigationBar: Container(
//         height: 50,
//         color: Colors.blue,
//         child: Center(
//           child: Text(
//             Total: ₹${_items.fold(.jpg
//               ),
//             );
//           });
//         },
//         tooltip: 'Add',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

// class Product {
//   final String title;
//   final int price;
//  0, (sum, item) => sum + item.price)},
//             style: TextStyle(fontSize: 20),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Product {
//   final String title;
//   final int price;
//   final String final String imageUrl;

//   Product({required this.title, required this.price, required this.imageUrl});
// }

// class MyHomePage extends StatelessWidget {
//   final String title;

//   MyHomePage({Key? key, required this.title}) : super(key: key);

//  imageUrl;

//   Product({required this.title, required this.price, required this.imageUrl});
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return _MyHomePageState();
//   }
// }

// class  @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: ListView.builder(
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           _MyHomePageState extends State<MyHomePage> {
//   List<Product> _items = items;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(My return ListTile(
//             leading: Image.network(items[index].imageUrl),
//             title: Text(items[index].title),
//             subtitle: Text(₹${items[index].price}),
//             trailing: IconButton(
//               icon: Icon( Shopping App),
//       ),
//       body: ListView.builder(
//         itemCount: _items.length,
//         itemBuilder: (BuildContext context, int index) {
//           return ListTile(
//             leading: Image.network(_items[indexIcons.delete),
//               onPressed: () {
//                 setState(() {
//                   items.removeAt(index);
//                 });
//               },
//             ),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             items.add(
//               Product(
//                 title: 'New Product',
//                 price: 0,
//                 imageUrl: 'images/banana.jpg',
//               ),
//             );
//           });
//         },
//         tooltip: 'Add',
//         child: Icon(Icons.add].imageUrl),
//             title: Text(_items[index].title),
//             subtitle: Text('₹${_items[index].price}'),
//             trailing: IconButton(
//               icon: Icon(Icons.delete),
//               onPressed: () {
//                 setState(() {
//                   _items.removeAt(index);
//                 });
//               },
//             ),
//           );
//         },
//       ),
//       bottomNavigationBar: Container(
//         height: 50,
//         color: Colors.blue,
//         child: Center(
//           child: Text(
//             Total: ₹${_items.fold(0, (sum, item) => sum +),
//       ),
//     );
//   }
// }

// List<Product> items = [
//   Product(
//     title: 'Banana',
//     price: 400,
//     imageUrl: 'images/banana.jpg',
//   ),
//   Product(
//     title: 'App item.price)}',
//             style: TextStyle(fontSize: 20),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Product {
//   final String title;
//   final int price;
//   final String imageUrl;

//   Product({required this.title, required this.price, required this.imageUrl});
// }

// List<Product> items = [
//   Product(
//     title: 'Banana',
//     price: 400,
//     imageUrl: 'images/banana.jpg',
//   ),
//   Product(
//     title: 'Apple',
//     price: 300,
//     imageUrl: 'images/apple.jpg',
//   ),
//   Product(
//     title: 'Orange',
//     price: 200,
//     imageUrl: 'images/orange.jpg',
//   ),
// ];

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Shopping App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Shopping App'),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   final String title;

//   MyHomePage({Key? key, required this.title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: ListView.builder(
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             leading: Image.network(items[index].imageUrl),
//             title: Text(items[index].title),
//             subtitle: Text('₹${items[index].price}'),
//             trailing: IconButton(
//               icon: Icon(Icons.delete),
//               onPressed: () {
//                 items.removeAt(index);
//               },
//             ),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           items.add(
//             Product(
//               title: 'New Product',
//               price: 0,
//               imageUrl: 'images/banana.jpg',
//             ),
//           );
//         },
//         tooltip: 'Add',
//         child: Icon(Icons.add),
//       ),
//       bottomNavigationBar: Container(
//         height: 50,
//         color: Colors.blue,
//         child: Center(
//           child: Text(
//             Total: ₹${items.fold(0, (sum, item) => sum + item.price)},
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }
// }

// List<Product> items = [
//   Product(
//     title: 'Banana',
//     price: 400,
//     imageUrl: 'images/banana.jpg',
//   ),
//   Product(
//     title: 'Apple',
//     price: 300,
//     imageUrl: 'images/apple.jpg',
//   ),
//   Product(
//     title: 'Orange',
//     price: 200,
//     imageUrl: 'images/orange.jpg',
//   ),
// ];

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Shopping App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Shopping App'),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   final String title;

//   MyHomePage({Key? key, required this.title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: ListView.builder(
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             leading: Image.network(items[index].imageUrl),
//             title: Text(items[index].title),
//             subtitle: Text(₹${items[index].price}),
//             trailing: IconButton(
//               icon: Icon(Icons.delete),
//               onPressed: () {
//                 items.removeAt(index);
//               },
//             ),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           items.add(
//             Product(
//               title: 'New Product',
//               price: 0,
//               imageUrl: 'images/banana.jpg',
//             ),
//           );
//         },
//         tooltip: 'Add',
//         child: Icon(Icons.add),
//       ),
//       bottomNavigationBar: Container(
//         height: 50,
//         color: Colors.blue,
//         child: Center(
//           child: Text(
//             Total: ₹${items.fold(0, (sum, item) => sum,
//               imageUrl: 'images/banana.jpg',
//             ),
          
//         },
//         tooltip: 'Add',
//         child: Icon(Icons.add),
//       ),
//       bottomNavigationBar: Container(
//         height: 50,
//         color: Colors.blue,
//         child: Center(
//           child: Text(
//             Total: ₹${items.fold(0, (sum, + item.price))},
//             style: TextStyle(color: Colors.white),

//           ),
//         ),
//       ),
//     );
//   }
// }

// class Product {
//   final String title;
//   final int price item) => sum + item.price)},
//             style: TextStyle(color: Colors.white),

// class Product {
//   final String title;
//   final int price;
//   final;
//   final String imageUrl;

//   Product({required this.title, required this.price, required this.imageUrl});
// }
