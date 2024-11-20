import 'package:flutter/material.dart';

class PlaceholderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
    );
  }
}
