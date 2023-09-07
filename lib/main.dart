import 'package:flutter/material.dart';

import 'pages/main_page.dart';

void main() {
  runApp(const HNGiXTask1App());
}

class HNGiXTask1App extends StatelessWidget {
  const HNGiXTask1App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HNGi X Task 1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
