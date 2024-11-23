import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final String text;
  final void Function()? onTap;
  final double horizontal;
  final double vertical;
  const CustomButton({
    super.key,
    required this.color,
    required this.text,
     this.onTap,
    required this.horizontal,
    required this.vertical,

  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        padding:  EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      ),
      onPressed: onTap,
        
      
      child:  Text(
           text,
        style:const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}

