import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({super.key, this.height = 200});

  final double height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/quiz-logo.png',
      height: height,
      color: const Color.fromARGB(150, 255, 255, 255),
    );
  }
}
