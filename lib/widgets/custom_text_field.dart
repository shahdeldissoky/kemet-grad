import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? text; // Label text
  final Icon? suffixIcon; // Optional suffix icon
  final TextEditingController? controller; // Optional text controller
  final double horizontal; // Horizontal padding
  final double vertical; // Vertical padding
  final bool obscureText; // Toggle for password fields

  const CustomTextField({
    super.key,
    this.text,
    this.suffixIcon,
    this.controller,
    required this.horizontal,
    required this.vertical,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller, // Attach the optional controller
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        labelText: text,
        labelStyle: const TextStyle(fontSize: 18),
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: Colors.white, // Set the background color
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Color(0xfffac817), width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Color(0xfffac817), width: 1.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Color(0xfffac817), width: 1.5),
        ),
      ),
    );
  }
}
