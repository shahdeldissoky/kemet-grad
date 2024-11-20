import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

final String? text;
final Icon? suffixIcon;
final double horizontal;
final double vertical;


  const CustomTextField({
    super.key,
     this.text,
    this.suffixIcon,
   required this.horizontal,
  required  this.vertical,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: horizontal,vertical: vertical),
        labelText: text,
        labelStyle: const TextStyle(fontSize: 18),
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: Colors.white, // Set the background color
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Color(0xfffac817),width: 1.5)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Color(0xfffac817), width: 1.5),
        ),
        enabledBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Color(0xfffac817),width: 1.5)
        ), 
      ),
    );
  }
}
