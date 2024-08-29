import 'package:ahmad/api/modelsignup.dart';
import 'package:ahmad/basicHome.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Signup extends StatefulWidget {
  const Signup({Key? key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String email = '';
  String password = '';
  String name = '';
  bool _isPasswordVisible = false;
  String enteredUsername = '';
  String enteredphonenumber = '';
  final _formKey = GlobalKey<FormState>();

Future<void> registerUser() async {
  if (_formKey.currentState!.validate()) {
    
    Welcome newUser = Welcome(
      name: name,
      phone: enteredphonenumber,
      email: email,
      password: password,
      address: enteredUsername,
    );

    try {
      print('Attempting to register user with data: ${welcomeToJson(newUser)}'); // Log data being sent
     
      final response = await http.post(
        Uri.parse('http://127.0.0.1:8000/api/register_User'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: welcomeToJson(newUser),
      );

      print('Response status code: ${response.statusCode}'); 
      print('Response body: ${response.body}'); 

      if (response.statusCode == 200) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BasicHome()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Registration failed. Please try again. Status code: ${response.statusCode}')),
        );
      }
    } catch (e) {
      print('Error occurred: $e'); 
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to register. Error: $e')),
      );
    }
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/789.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            SizedBox(height: 125),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(183, 65, 25, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 370,
                  height: 625,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/asd.png',
                              width: 150,
                              height: 100,
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 350,
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(horizontal: 20),
                              labelText: 'Name',
                              labelStyle: TextStyle(color: Color.fromARGB(255, 192, 190, 190)),
                              enabled: true,
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 187, 115, 14),
                                  width: 3,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 187, 115, 14),
                                  width: 3,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 187, 115, 14),
                                  width: 3,
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 255, 0, 0),
                                  width: 3,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 255, 0, 0),
                                  width: 3,
                                ),
                              ),
                            ),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a name';
                              }
                              if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                                return 'Please enter a valid name';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              setState(() {
                                name = value;
                              });
                            },
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 350,
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(horizontal: 20),
                              labelText: 'Phone number',
                              labelStyle: TextStyle(color: Color.fromARGB(255, 192,190, 190)),
                              enabled: true,
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 187, 115, 14),
                                  width: 3,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 187, 115, 14),
                                  width: 3,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 187, 115, 14),
                                  width: 3,
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 255, 0, 0),
                                  width: 3,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 255, 0, 0),
                                  width: 3,
                                ),
                              ),
                            ),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a phone number';
                              }
                              if (!RegExp(r'^\d{10,}$').hasMatch(value)) {
                                return 'Please enter a valid phone number';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              setState(() {
                                enteredphonenumber = value;
                              });
                            },
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 350,
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(horizontal: 20),
                              labelText: 'Address',
                              labelStyle: TextStyle(color: Color.fromARGB(255, 192, 190, 190)),
                              enabled: true,
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 187, 115, 14),
                                  width: 3,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 187, 115, 14),
                                  width: 3,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 187, 115, 14),
                                  width: 3,
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 255, 0, 0),
                                  width: 3,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 255, 0, 0),
                                  width: 3,
                                ),
                              ),
                            ),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter an address';
                              }
                              if (!RegExp(r'^[a-zA-Z\s]{3,}$').hasMatch(value)) {
                                return 'Please enter a valid address';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              setState(() {
                                enteredUsername = value;
                              });
                            },
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 350,
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter an email';
                              }
                              if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                  .hasMatch(value)) {
                                return 'Please enter a valid email';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(horizontal: 20),
                              labelText: 'Email',
                              labelStyle: TextStyle(color: Color.fromARGB(255, 192, 190, 190), fontSize: 15),
                              enabled: true,
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 187, 115, 14),
                                  width: 3,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
color: const Color.fromARGB(255, 187, 115, 14),
                                  width: 3,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 187, 115, 14),
                                  width: 3,
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 255, 0, 0),
                                  width: 3,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 255, 0, 0),
                                  width: 3,
                                ),
                              ),
                            ),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            onChanged: (value) {
                              setState(() {
                                email = value;
                              });
                            },
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 350,
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a password';
                              }
                              if (value.length < 6) {
                                return 'Password should be at least 6 characters long';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _isPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Color.fromARGB(255, 192, 190, 190),
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isPasswordVisible = !_isPasswordVisible;
                                  });
                                },
                              ),
                              contentPadding: EdgeInsets.symmetric(horizontal: 20),
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Color.fromARGB(255, 192, 190, 190)),
                              enabled: true,
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 187, 115, 14),
                                  width: 3,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 187, 115, 14),
                                  width: 3,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 187, 115, 14),
                                  width: 3,
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                 color: const Color.fromARGB(255, 255, 0, 0),
                                  width: 3,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 255, 0, 0),
                                  width: 3,
                                ),
                              ),
                            ),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            obscureText: !_isPasswordVisible,
                            onChanged: (value) {
                              setState(() {
                                password = value;
                              });
                            },
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 300,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 187, 115, 14),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: MaterialButton(
                                onPressed: registerUser,
                                child: Text(
                                  "Signup",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
