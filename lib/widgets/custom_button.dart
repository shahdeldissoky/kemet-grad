import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final String text;
  final void Function()? onTap;
  const CustomButton({
    super.key,
    required this.color,
    required this.text,
     this.onTap,

  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 135),
      ),
      onPressed: onTap,
        
      
      child:  Text(
           text,
        style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}

