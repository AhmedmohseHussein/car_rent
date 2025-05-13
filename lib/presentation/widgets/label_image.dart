import 'package:flutter/material.dart';

class LabelImage extends StatelessWidget {
  const LabelImage({
    super.key,
    required this.imagePath,
    required this.label,
    required this.color,
  });

  final String imagePath;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(imagePath),
        const SizedBox(
          width: 5,
        ),
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: color,
          ),
        ),
      ],
    );
  }
}
