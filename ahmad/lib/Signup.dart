import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String email = '';
  String password = '';
  bool _isPasswordVisible = false;
  String enteredUsername = '';
  String enteredphonenumber = '';

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    print(email);
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
                        SizedBox(
                          height: 10,
                        ),
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
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a name';
                            }
                            if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                              return 'Please enter a valid name';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 10)),
                              filled: true,
                              hintText: 'Name',
                              hintStyle: TextStyle(color: Colors.white)),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          onChanged: (value) {
                            setState(() {
                              email = value;
                            });
                          },
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a phone nomber';
                            }
                            if (!RegExp(r'^\d{10,}$').hasMatch(value)) {
                              return 'Please enter a valid phone nomber';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              filled: true,
                              hintText: 'Phone Nomber',
                              hintStyle: TextStyle(color: Colors.white)),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          onChanged: (value) {
                            setState(() {
                              email = value;
                            });
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a Address';
                            }
                            if (!RegExp(r'^[a-zA-Z\s]{3,}$').hasMatch(value)) {
                              return 'Please enter a valid Address';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              filled: true,
                              hintText: 'Address',
                              hintStyle: TextStyle(color: Colors.white)),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          onChanged: (value) {
                            setState(() {
                              email = value;
                            });
                          },
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a Email';
                            }
                            if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                .hasMatch(value)) {
                              return 'Please enter a valid email';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              filled: true,
                              hintText: 'Email',
                              hintStyle: TextStyle(color: Colors.white)),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          onChanged: (value) {
                            setState(() {
                              email = value;
                            });
                          },
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a Password';
                            }
                            if (value.length < 6) {
                              return 'Password should be at least 6 characters long';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              filled: true,
                              hintText: 'Password',
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _isPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isPasswordVisible = !_isPasswordVisible;
                                  });
                                },
                              ),
                              hintStyle: TextStyle(color: Colors.white)),
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
                                    borderRadius: BorderRadius.circular(20)),
                                child: MaterialButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate())
                                      Navigator.pushNamed(context, "/order");
                                  },
                                  child: Text("Signup",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      )),
                                ))
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
