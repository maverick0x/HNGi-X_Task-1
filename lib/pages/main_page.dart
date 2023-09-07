import 'package:flutter/material.dart';

import '../widget/github_profile.dart';
import '../widget/slack_name.dart';
import '../widget/slack_picture.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HNGi-X Task 1',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        elevation: 1,
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20.0),
        child: const Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Requirement 1: The application’s main screen should prominently display your Slack name.
            SlackName(),

            // Requirement 2: Integrate your Slack display picture onto the main screen, ensuring it’s clear and of high quality.
            SlackPicture(),

            // Requirement 3: Add a button labeled “Open GitHub” to the main screen.
            // When pressed, it should correctly redirect users to your GitHub profile using a WebView component within the application.
            GitHubProfile(),
          ],
        ),
      ),
    );
  }
}
