import 'package:flutter/material.dart';

import '../pages/github_profile_page.dart';
import 'description_text.dart';

class GitHubProfile extends StatelessWidget {
  const GitHubProfile({super.key});

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
        ElevatedButton(
          autofocus: true,
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const GitHubProfilePage()),
          ),
          child: const Text(
            'Open GitHub',
          ),
        )
      ],
    );
  }
}
