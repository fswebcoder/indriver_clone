import 'package:flutter/material.dart';

class TextWelcome extends StatelessWidget {
  
  final String label;
  
  const TextWelcome({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(
        fontSize: 30,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}