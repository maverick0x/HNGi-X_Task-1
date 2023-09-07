import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget {
  final String description;

  const DescriptionText({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w300,
        color: Colors.black,
      ),
    );
  }
}
