// import 'package:flutter/material.dart';


// class IceCream extends StatefulWidget {
//   const IceCream({super.key});

//   @override
//   State<IceCream> createState() => _IceCreamState();
// }

// class _IceCreamState extends State<IceCream> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:
//       Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage('images/1.jpg'),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Column(
//         children: [
//           SizedBox(height: 25,),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//               Text('S w e e t ',style: TextStyle(color: Color.fromARGB(255, 250, 250, 250),fontSize:50,fontStyle:FontStyle.italic ),),
//                ],),
          
//             SizedBox(height: 5),
//            Row(
//              mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//             Text('d r e e m ',style: TextStyle(color: Color.fromARGB(255, 250, 250, 250),fontSize:50 ,fontStyle:FontStyle.italic),),
//             ],),
//             SizedBox(height: 250,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                  decoration: BoxDecoration(color: Color.fromARGB(135, 158, 158, 158),borderRadius: BorderRadius.circular(20) ),
                   
//                   width: 300,
//                   height: 250,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 20,right:2,top: 25),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                               Text("large assor ment of ",style: TextStyle(color: Colors.white,fontSize: 30),),
//                             ],),
//                              SizedBox(height: 3,),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                               Text('ice creame',style: TextStyle(color: Colors.white,fontSize: 30),)
//                             ],
//                             ),
//                              SizedBox(height: 3,),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                               Text("Having tried this ice cream , you will not ",style: TextStyle(color: Colors.white,fontSize: 15),)
//                             ],),
//                             SizedBox(height: 5,),
//                              Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                               Text("be abel to dony yourself in the future. ",style: TextStyle(color: Colors.white,fontSize: 15),)
//                             ],),
//                              SizedBox(height: 20,),
//                              Row( 
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                            Container(
//                             alignment: Alignment.center,
//                             width: 250,
//                            height: 60,
//                              decoration: BoxDecoration(color: Color.fromARGB(255, 255, 0, 30),borderRadius: BorderRadius.circular(20) ),
//                            child:MaterialButton(onPressed: () {
//                       Navigator.push(context, 
//                      MaterialPageRoute(builder: (context)=> IceCream2())
//                       );
//                     },
//                      child:Text("Get Started",style: TextStyle(color: Colors.white,fontSize: 25,)
//                     ),
//                              )  )
//                       ],),

//                     ],),
//                   ),
//                 )

//             ],),
//       ],),
//     ),
    
//     );
   
//   }
// }