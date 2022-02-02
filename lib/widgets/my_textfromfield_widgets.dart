import 'package:flutter/material.dart';

class MyTextFromField extends StatelessWidget {
  final String hinText;
  bool obscureText = false;
  MyTextFromField({required this.hinText, required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          fillColor: Colors.green[100],
          filled: true,
          hintText: hinText,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.0)),
        ),
      ),
    );
  }
}
