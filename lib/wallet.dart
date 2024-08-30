// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Electronic Wallet',
//       home: WalletPage(),
//     );
//   }
// }

// class WalletPage extends StatefulWidget {
//   @override
//   _WalletPageState createState() => _WalletPageState();
// }

// class _WalletPageState extends State<WalletPage> {
//   double balance = 500;
//   final amountController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Electronic Wallet'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Current Balance: \$$balance',
//               style: TextStyle(fontSize: 20),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 _showAddCardDialog(context);
//               },
//               child: Text('Add New Card'),
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () {
//                 _showTransferMoneyDialog(context);
//               },
//               child: Text('Transfer Money'),
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () {
//                 _navigateToTransactionHistory(context);
//               },
//               child: Text('View Transaction History'),
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () {
//                 _showAddBalanceDialog(context);
//               },
//               child: Text('Add Balance'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void _showAddCardDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Add New Card'),
//           content: Text('Enter card details here.'),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () {
//                 // Add card logic here
//                 Navigator.of(context).pop();
//               },
//               child: Text('Add'),
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text('Cancel'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   void _showTransferMoneyDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Transfer Money'),
//           content: Text('Enter recipient details and amount.'),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () {
//                 // Transfer money logic here
//                 Navigator.of(context).pop();
//               },
//               child: Text('Transfer'),
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text('Cancel'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   void _navigateToTransactionHistory(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => TransactionHistoryScreen()),
//     );
//   }
// }

// class TransactionHistoryScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Transaction History'),
//       ),
//       body: Center(
//         child: Text('Display transaction history here.'),
//       ),
//     );
//   }
// }

// void _showAddBalanceDialog(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         title: Text('Add Balance'),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             TextField(
//               controller: amountController, 
//               decoration: InputDecoration(labelText: 'Enter Amount'),
//               keyboardType: TextInputType.number,
//             ),
//           ],
//         ),
//         actions: <Widget>[
//           TextButton(
//             onPressed: () {
//               double amount = double.parse(amountController.text);
//               balance += amount;
//               Navigator.of(context).pop();
//               amountController.clear();
//               setState(() {});
//             },
//             child: Text('Add'),
//           ),
//           TextButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//               amountController.clear();
//             },
//             child: Text('Cancel'),
//           ),
//         ],
//       );
//     },
//   );
// }