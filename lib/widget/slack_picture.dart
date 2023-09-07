import 'package:flutter/material.dart';

import 'description_text.dart';

class SlackPicture extends StatelessWidget {
  const SlackPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const DescriptionText(
          description: 'Display Picture',
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            image: const DecorationImage(
              image: AssetImage('assets/images/profile-picture.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
