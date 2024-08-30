import 'package:flutter/material.dart';
import 'package:happylaef/Login.dart';
import 'package:happylaef/first%20page.dart';
import 'package:happylaef/product.dart';

class order extends StatefulWidget {
  const order({super.key});

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
  int selectedIndex = 2;
  void _onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
      if (index == 1) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => first()));
      } else if (index == 0) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => product()));
      }
    });
  }

  List<Widget> pages = const [first(), product()];

  String newName = '';
  String newPhoneNumber = '';
  String newaddress = '';
  String newemail = '';
  String enteredUsername = '';
  String enteredemail = '';
  String enteredaddress = '';
  String enteredphonenumber = '';
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 117, 65, 25),
        actions: [
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              _scaffoldKey.currentState!.openDrawer();
            },
          ),
        ],
        leading: IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.white,
            size: 40,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => order()));
          },
        ),
        title: TextField(
          style: TextStyle(
            color: Colors.white,
          ),
          cursorColor: const Color.fromARGB(255, 255, 255, 255),
          decoration: InputDecoration(
              hintText: '',
              fillColor: Color.fromARGB(255, 255, 255, 255),
              hoverColor: Colors.white),
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 255, 253, 222),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 150,
              width: 100,
              color: const Color.fromARGB(255, 117, 65, 25),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text(
                              enteredUsername.isNotEmpty
                                  ? enteredUsername[0].toUpperCase()
                                  : '',
                              style: TextStyle(
                                  fontSize: 40.0, color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Name: $enteredUsername'),
              trailing: IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Enter new name'),
                        content: TextFormField(
                          onChanged: (value) {
                            newName = value;
                          },
                        ),
                        actions: <Widget>[
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredUsername = newName;
                              });
                              Navigator.of(context).pop();
                            },
                            child: Text('Save'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone Number: $enteredphonenumber'),
              trailing: IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Enter new phone number'),
                        content: TextFormField(
                          onChanged: (value) {
                            newPhoneNumber = value;
                          },
                        ),
                        actions: <Widget>[
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredphonenumber = newPhoneNumber;
                              });
                              Navigator.of(context).pop();
                            },
                            child: Text('Save'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email: $enteredemail'),
              trailing: IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Enter new email'),
                        content: TextFormField(
                          onChanged: (value) {
                            newemail = value;
                          },
                        ),
                        actions: <Widget>[
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredemail = newemail;
                              });
                              Navigator.of(context).pop();
                            },
                            child: Text('Save'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Address: $enteredaddress'),
              trailing: IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Enter new address'),
                        content: TextFormField(
                          onChanged: (value) {
                            newaddress = value;
                          },
                        ),
                        actions: <Widget>[
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredaddress = newaddress;
                              });
                              Navigator.of(context).pop();
                            },
                            child: Text('Save'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
            SizedBox(
              height: 525,
            ),
            Row(
              children: [
                SizedBox(
                  width: 100,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 100,
                    height: 40,
                    child: Icon(
                      Icons.logout,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            IndexedStack(
              children: pages,
              index: selectedIndex,
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromARGB(255, 255, 253, 222),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        selectedItemColor: Color.fromARGB(255, 255, 255, 255),
        unselectedItemColor: Color.fromARGB(255, 200, 200, 200),
        backgroundColor: const Color.fromARGB(255, 193, 111, 18),
        onTap: _onTabTapped,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_rounded),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.border_outer_rounded),
            label: "Order",
          ),
        ],
      ),
    );
  }
}
