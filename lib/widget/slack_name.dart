import 'package:flutter/material.dart';

import 'description_text.dart';

class SlackName extends StatelessWidget {
  const SlackName({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DescriptionText(
          description: 'Slack Name',
        ),
        Text(
          'Farouk Bello',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
