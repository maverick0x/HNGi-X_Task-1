import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GitHubProfilePage extends StatefulWidget {
  const GitHubProfilePage({super.key});

  @override
  State<GitHubProfilePage> createState() => _GitHubProfilePageState();
}

class _GitHubProfilePageState extends State<GitHubProfilePage> {
  late final WebViewController webViewController;
  late final String url;
  var loadingPercentage = 0;

  @override
  void initState() {
    super.initState();
    url = 'https://github.com/maverick0x';
    webViewController = WebViewController()
      ..setNavigationDelegate(NavigationDelegate(
        onPageStarted: (url) {
          setState(() {
            loadingPercentage = 0;
          });
        },
        onProgress: (value) {
          setState(() {
            loadingPercentage = value;
          });
        },
        onPageFinished: (url) {
          setState(() {
            loadingPercentage = 100;
          });
        },
      ))
      ..loadRequest(Uri.parse(url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: Text(
          "Farouk Bello's GitHub Profile",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: Stack(
        children: [
          WebViewWidget(
            controller: webViewController,
          ),
          loadingPercentage < 100
              ? LinearProgressIndicator(
                  value: loadingPercentage / 100.0,
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
