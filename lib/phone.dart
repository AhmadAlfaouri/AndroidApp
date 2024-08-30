import 'package:flutter/material.dart';

class phone extends StatefulWidget {
  const phone({Key? key}) : super(key: key);

  @override
  State<phone> createState() => _phoneState();
}

class _phoneState extends State<phone> {
  String newPhoneNumber = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Phone Number'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Enter your new phone number:'),
            TextField(
              onChanged: (value) {
                setState(() {
                  newPhoneNumber = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'New Phone Number',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                
                print('New Phone Number: $newPhoneNumber');
                
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
