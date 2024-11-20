import 'package:flutter/material.dart';

BoxDecoration backgroundDecoration() {
    return const BoxDecoration(
        gradient: RadialGradient(
          colors: [Color.fromARGB(255, 239, 216, 131), Colors.white],
          center: Alignment.center,
          radius: 0.85,
        ),
      );
  }
