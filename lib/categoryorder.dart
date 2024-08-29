import 'package:flutter/material.dart';

class categoryorder extends StatelessWidget {
  categoryorder({
    required this.title,
    this.function,
    super.key,
  });

  final String title;
  final Function? function;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => function?.call(),
      child: Container(
        width: 150,
        height: 60,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 193, 111, 18),
              Color.fromARGB(255, 255, 255, 255)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Text(title),
      ),
    );
  }
}
